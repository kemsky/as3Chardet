package org.kemsky
{
    import flash.utils.ByteArray;

    public class nsPSMDetector
    {
        public static const ALL:int = 0;
        public static const JAPANESE:int = 1;
        public static const CHINESE:int = 2;
        public static const SIMPLIFIED_CHINESE:int = 3;
        public static const TRADITIONAL_CHINESE:int = 4;
        public static const KOREAN:int = 5;

        public static const NO_OF_LANGUAGES:int = 6;
        public static const MAX_VERIFIERS:int = 16;

        internal var mVerifier:Vector.<nsVerifier>;

        internal var mStatisticsData:Vector.<nsEUCStatistics>;

        internal var mSampler:nsEUCSampler = new nsEUCSampler();

        //MAX_VERIFIERS
        internal var mState:Vector.<int> = new Vector.<int>();/*byte*/

        internal var mItemIdx:Vector.<int> = new Vector.<int>(MAX_VERIFIERS, true);

        internal var mItems:int;
        internal var mClassItems:int;

        internal var mDone:Boolean;
        internal var mRunSampler:Boolean;
        internal var mClassRunSampler:Boolean;


        public function nsPSMDetector(langFlag:int = -1, aItems:int = -1, aVerifierSet:Vector.<nsVerifier> = null, aStatisticsSet:Vector.<nsEUCStatistics> = null)
        {
            if(langFlag == -1 && aItems == -1)
            {
                initVerifiers(ALL);
                Reset();
            }
            else if(aItems == -1)
            {
                initVerifiers(langFlag);
                Reset();
            }
            else
            {
                mClassRunSampler = (aStatisticsSet != null);
                mStatisticsData = aStatisticsSet;
                mVerifier = aVerifierSet;

                mClassItems = aItems;
                Reset();
            }
        }


        public function Reset():void
        {
            mRunSampler = mClassRunSampler;
            mDone = false;
            mItems = mClassItems;

            for (var i:int = 0; i < mItems; i++)
            {
                mState[i] = 0;
                mItemIdx[i] = i;
            }
            mSampler.Reset();
        }

        protected function initVerifiers(currVerSet:int):void
        {
            var idx:int = 0;
            var currVerifierSet:int;

            if (currVerSet >= 0 && currVerSet < NO_OF_LANGUAGES)
            {
                currVerifierSet = currVerSet;
            }
            else
            {
                currVerifierSet = nsPSMDetector.ALL;
            }

            mVerifier = null;
            mStatisticsData = null;

            if (currVerifierSet == nsPSMDetector.TRADITIONAL_CHINESE)
            {
                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsBIG5Verifier(),
                    new nsISO2022CNVerifier(),
                    new nsEUCTWVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);
                mStatisticsData = Vector.<nsEUCStatistics>([
                    null,
                    new Big5Statistics(),
                    null,
                    new EUCTWStatistics(),
                    null,
                    null,
                    null
                ]);
            }

            else if (currVerifierSet == nsPSMDetector.KOREAN)
            {
                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsEUCKRVerifier(),
                    new nsISO2022KRVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);
            }
            else if (currVerifierSet == nsPSMDetector.SIMPLIFIED_CHINESE)
            {
                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsGB2312Verifier(),
                    new nsGB18030Verifier(),
                    new nsISO2022CNVerifier(),
                    new nsHZVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);
            }
            else if (currVerifierSet == nsPSMDetector.JAPANESE)
            {
                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsSJISVerifier(),
                    new nsEUCJPVerifier(),
                    new nsISO2022JPVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);
            }
            else if (currVerifierSet == nsPSMDetector.CHINESE)
            {
                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsGB2312Verifier(),
                    new nsGB18030Verifier(),
                    new nsBIG5Verifier(),
                    new nsISO2022CNVerifier(),
                    new nsHZVerifier(),
                    new nsEUCTWVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);

                mStatisticsData = Vector.<nsEUCStatistics>([
                    null,
                    new GB2312Statistics(),
                    null,
                    new Big5Statistics(),
                    null,
                    null,
                    new EUCTWStatistics(),
                    null,
                    null,
                    null
                ]);
            }
            else if (currVerifierSet == nsPSMDetector.ALL)
            {

                mVerifier = Vector.<nsVerifier>([
                    new nsUTF8Verifier(),
                    new nsSJISVerifier(),
                    new nsEUCJPVerifier(),
                    new nsISO2022JPVerifier(),
                    new nsEUCKRVerifier(),
                    new nsISO2022KRVerifier(),
                    new nsBIG5Verifier(),
                    new nsEUCTWVerifier(),
                    new nsGB2312Verifier(),
                    new nsGB18030Verifier(),
                    new nsISO2022CNVerifier(),
                    new nsHZVerifier(),
                    new nsCP1252Verifier(),
                    new nsUCS2BEVerifier(),
                    new nsUCS2LEVerifier()
                ]);

                mStatisticsData = Vector.<nsEUCStatistics>([
                    null,
                    null,
                    new EUCJPStatistics(),
                    null,
                    new EUCKRStatistics(),
                    null,
                    new Big5Statistics(),
                    new EUCTWStatistics(),
                    new GB2312Statistics(),
                    null,
                    null,
                    null,
                    null,
                    null,
                    null
                ]);
            }

            mClassRunSampler = (mStatisticsData != null);
            mClassItems = mVerifier.length;

        }

        public function Report(charset:String):void
        {
        }

        public function HandleData(aBuf:ByteArray):Boolean
        {
            var i:int;
            var j:int;

            var b:int; /*byte*/
            var st:int; /*byte*/

            for (i = 0; i < aBuf.bytesAvailable; i++)
            {
                b = aBuf.readByte();

                for (j = 0; j < mItems;)
                {
                    st = nsVerifier.getNextState(mVerifier[mItemIdx[j]], b, mState[j]);
                    if (st == nsVerifier.eItsMe)
                    {
                        Report(mVerifier[mItemIdx[j]].charset());
                        mDone = true;
                        return mDone;
                    }
                    else if (st == nsVerifier.eError)
                    {
                        mItems--;
                        if (j < mItems)
                        {
                            mItemIdx[j] = mItemIdx[mItems];
                            mState[j] = mState[mItems];
                        }
                    }
                    else
                    {
                        mState[j++] = st;
                    }
                }

                if (mItems <= 1)
                {
                    if (1 == mItems)
                    {
                        Report(mVerifier[mItemIdx[0]].charset());
                    }
                    mDone = true;
                    return mDone;

                }
                else
                {
                    var nonUCS2Num:int = 0;
                    var nonUCS2Idx:int = 0;

                    for (j = 0; j < mItems; j++)
                    {
                        if ((!(mVerifier[mItemIdx[j]].isUCS2())) &&
                                (!(mVerifier[mItemIdx[j]].isUCS2())))
                        {
                            nonUCS2Num++;
                            nonUCS2Idx = j;
                        }
                    }

                    if (1 == nonUCS2Num)
                    {
                        Report(mVerifier[mItemIdx[nonUCS2Idx]].charset());
                        mDone = true;
                        return mDone;
                    }
                }


            } // End of for( i=0; i < len ...

            if (mRunSampler)
            {
                Sample(aBuf);
            }

            return mDone;
        }


        public function DataEnd():void
        {

            if (mDone == true)
            {
                return;
            }

            if (mItems == 2)
            {
                if ((mVerifier[mItemIdx[0]].charset()) == "GB18030")
                {
                    Report(mVerifier[mItemIdx[1]].charset());
                    mDone = true;
                }
                else if ((mVerifier[mItemIdx[1]].charset()) == "GB18030")
                {
                    Report(mVerifier[mItemIdx[0]].charset());
                    mDone = true;
                }
            }

            if (mRunSampler)
            {
                Sample(null, true);
            }
        }

        public function Sample(aBuf:ByteArray, aLastChance:Boolean = false):void
        {
            var possibleCandidateNum:int = 0;
            var j:int;
            var eucNum:int = 0;

            for (j = 0; j < mItems; j++)
            {
                if (null != mStatisticsData[mItemIdx[j]])
                {
                    eucNum++;
                }
                if ((!mVerifier[mItemIdx[j]].isUCS2()) &&
                        (!(mVerifier[mItemIdx[j]].charset()) == "GB18030"))
                {
                    possibleCandidateNum++;
                }
            }

            mRunSampler = (eucNum > 1);

            if (mRunSampler)
            {
                mRunSampler = mSampler.Sample(aBuf);
                if (((aLastChance && mSampler.GetSomeData()) ||
                        mSampler.EnoughData())
                        && (eucNum == possibleCandidateNum))
                {
                    mSampler.CalFreq();

                    var bestIdx:int = -1;
                    var eucCnt:int = 0;
                    var bestScore:Number = 0.0;
                    for (j = 0; j < mItems; j++)
                    {
                        if ((null != mStatisticsData[mItemIdx[j]]) &&
                                (!(mVerifier[mItemIdx[j]].charset()) == "Big5"))
                        {
                            var score:Number = mSampler.GetScore(
                                    mStatisticsData[mItemIdx[j]].mFirstByteFreq(),
                                    mStatisticsData[mItemIdx[j]].mFirstByteWeight(),
                                    mStatisticsData[mItemIdx[j]].mSecondByteFreq(),
                                    mStatisticsData[mItemIdx[j]].mSecondByteWeight());
                            if ((0 == eucCnt++) || (bestScore > score))
                            {
                                bestScore = score;
                                bestIdx = j;
                            } // if(( 0 == eucCnt++) || (bestScore > score ))
                        } // if(null != ...)
                    } // for
                    if (bestIdx >= 0)
                    {
                        Report(mVerifier[mItemIdx[bestIdx]].charset());
                        mDone = true;
                    }
                } // if (eucNum == possibleCandidateNum)
            } // if(mRunSampler)
        }

        public function getProbableCharsets():Vector.<String>
        {
            if (mItems <= 0)
            {
                var nomatch:Vector.<String> = new Vector.<String>(1);
                nomatch[0] = "nomatch";
                return nomatch;
            }

            var ret:Vector.<String> = new Vector.<String>(mItems);
            for (var i:int = 0; i < mItems; i++)
            {
                ret[i] = mVerifier[mItemIdx[i]].charset();
            }
            return ret;
        }
    }
}
