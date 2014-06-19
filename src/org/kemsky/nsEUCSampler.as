package org.kemsky
{
    public class nsEUCSampler
    {
        internal var mTotal:int = 0;
        internal var mThreshold:int = 200;
        internal var mState:int = 0;
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
            for (var i:int = 0; i < 94; i++)
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

        internal function Sample(aIn:Vector.<int>, aLen:int):Boolean
        {
            if (mState == 1)
            {
                return false;
            }

            var p:int = 0;

            var i:int;
            for (i = 0; (i < aLen) && (1 != mState); i++, p++)
            {
                switch (mState)
                {
                    case 0:
                        if ((aIn[p] & 0x0080) != 0)
                        {
                            if ((0xff == (0xff & aIn[p])) || (0xa1 > (0xff & aIn[p])))
                            {
                                mState = 1;
                            }
                            else
                            {
                                mTotal++;
                                mFirstByteCnt[(0xff & aIn[p]) - 0xa1]++;
                                mState = 2;
                            }
                        }
                        break;
                    case 1:
                        break;
                    case 2:
                        if ((aIn[p] & 0x0080) != 0)
                        {
                            if ((0xff == (0xff & aIn[p]))
                                    || (0xa1 > (0xff & aIn[p])))
                            {
                                mState = 1;
                            }
                            else
                            {
                                mTotal++;
                                mSecondByteCnt[(0xff & aIn[p]) - 0xa1]++;
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
                mFirstByteFreq[i] = mFirstByteCnt[i] / (mTotal + 0.0);
                mSecondByteFreq[i] = mSecondByteCnt[i] / (mTotal + 0.0);
            }
        }

        internal function GetScore(aFirstByteFreq:Vector.<Number>, aFirstByteWeight:Number, aSecondByteFreq:Vector.<Number>, aSecondByteWeight:Number):Number
        {
            return aFirstByteWeight * GetScore0(aFirstByteFreq, mFirstByteFreq) +  aSecondByteWeight * GetScore0(aSecondByteFreq, mSecondByteFreq);
        }

        internal function GetScore0(array1:Vector.<Number>, array2:Vector.<Number>):Number
        {
            var s:Number;
            var sum:Number = 0.0;

            for (var i:int = 0; i < 94; i++)
            {
                s = array1[i] - array2[i];
                sum += s * s;
            }
            return Math.sqrt(sum) /
                    94.0;
        }
    }
}
