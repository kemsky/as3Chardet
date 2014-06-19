package org.kemsky
{
    import flash.utils.IDataInput;

    public class nsEUCSampler
    {
        private var mTotal:int = 0;
        private var mThreshold:int = 200;
        private var mState:int = 0;

        public var mFirstByteCnt:Vector.<int> = new Vector.<int>(94);
        public var mSecondByteCnt:Vector.<int> = new Vector.<int>(94);
        public var mFirstByteFreq:Vector.<Number> = new Vector.<Number>(94);
        public var mSecondByteFreq:Vector.<Number> = new Vector.<Number>(94);

        public function nsEUCSampler()
        {
            Reset();
        }

        public function Reset():void
        {
            mTotal = 0;
            mState = 0;

            var i:int = 0;
            for (i = 0; i < 94; i++)
            {
                mFirstByteCnt[i] = mSecondByteCnt[i] = 0;
            }
        }

        internal function EnoughData():Boolean
        {
            return mTotal > mThreshold;
        }

        internal function GetSomeData():Boolean
        {
            return mTotal > 1;
        }

        internal function Sample(aIn:IDataInput):Boolean
        {
            if (mState == 1)
            {
                return false;
            }

            var p:int = 0;

            var i:int;
            for (i = 0; aIn != null && (i < aIn.bytesAvailable) && (1 != mState); i++, p++)
            {
                var b:int = aIn.readByte();

                switch (mState)
                {
                    case 0:
                        if ((b & 0x0080) != 0)
                        {
                            if ((0xff == (0xff & b)) || (0xa1 > (0xff & b)))
                            {
                                mState = 1;
                            }
                            else
                            {
                                mTotal++;
                                mFirstByteCnt[(0xff & b) - 0xa1]++;
                                mState = 2;
                            }
                        }
                        break;
                    case 1:
                        break;
                    case 2:
                        if ((b & 0x0080) != 0)
                        {
                            if ((0xff == (0xff & b)) || (0xa1 > (0xff & b)))
                            {
                                mState = 1;
                            }
                            else
                            {
                                mTotal++;
                                mSecondByteCnt[(0xff & b) - 0xa1]++;
                                mState = 0;
                            }
                        }
                        else
                        {
                            mState = 1;
                        }
                        break;
                    default:
                        mState = 1;
                }
            }
            return (1 != mState);
        }


        internal function CalFreq():void
        {
            for (var i:int = 0; i < 94; i++)
            {
                mFirstByteFreq[i] = (mFirstByteCnt[i] + 0.0) / (mTotal + 0.0);
                mSecondByteFreq[i] = (mSecondByteCnt[i] + 0.0) / (mTotal + 0.0);
            }
        }

        internal function GetScore(aFirstByteFreq:Vector.<Number>, aFirstByteWeight:Number, aSecondByteFreq:Vector.<Number>, aSecondByteWeight:Number):Number
        {
            return aFirstByteWeight * GetScore0(aFirstByteFreq, mFirstByteFreq) + aSecondByteWeight * GetScore0(aSecondByteFreq, mSecondByteFreq);
        }

        internal function GetScore0(array1:Vector.<Number>, array2:Vector.<Number>):Number
        {
            var s:Number;
            var sum:Number = 0.0;

            var i:int = 0;
            for (i = 0; i < 94; i++)
            {
                s = array1[i] - array2[i];
                sum += s * s;
            }
            return Math.sqrt(sum) / 94.0;
        }
    }
}
