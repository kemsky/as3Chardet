package org.kemsky.statistics
{
    public class nsEUCStatistics
    {
        protected var mFirstByteFreq:Vector.<Number>;
        protected var mFirstByteStdDev:Number;
        protected var mFirstByteMean:Number;
        protected var mFirstByteWeight:Number;
        protected var mSecondByteFreq:Vector.<Number>;
        protected var mSecondByteStdDev:Number;
        protected var mSecondByteMean:Number;
        protected var mSecondByteWeight:Number;

        public function getFirstByteFreq():Vector.<Number>
        {
            return mFirstByteFreq;
        }

        public function getFirstByteStdDev():Number
        {
            return mFirstByteStdDev;
        }

        public function getFirstByteMean():Number
        {
            return mFirstByteMean;
        }

        public function getFirstByteWeight():Number
        {
            return mFirstByteWeight;
        }


        public function getSecondByteFreq():Vector.<Number>
        {
            return mSecondByteFreq;
        }

        public function getSecondByteStdDev():Number
        {
            return mSecondByteStdDev;
        }

        public function getSecondByteMean():Number
        {
            return mSecondByteMean;
        }

        public function getSecondByteWeight():Number
        {
            return mSecondByteWeight;
        }
    }
}
