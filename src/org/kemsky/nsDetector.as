package org.kemsky
{
    public class nsDetector extends nsPSMDetector implements nsICharsetDetector
    {
        internal var mObserver:nsICharsetDetectionObserver = null;

        public function nsDetector(langFlag:int = -1)
        {
            super(langFlag);
        }

        public function Init(aObserver:nsICharsetDetectionObserver):void
        {
            mObserver = aObserver;
        }

        public function DoIt(aBuf:Vector.<int>, aLen:int, oDontFeedMe:Boolean):Boolean
        {
            if (aBuf == null || oDontFeedMe)
            {
                return false;
            }

            this.HandleData(aBuf, aLen);
            return mDone;
        }

        public function Done():void
        {
            this.DataEnd();
        }

        public override function Report(charset:String):void
        {
            if (mObserver != null)
            {
                mObserver.Notify(charset);
            }
        }

        public function isAscii(aBuf:Vector.<int>, aLen:int):Boolean
        {
            for (var i:int = 0; i < aLen; i++)
            {
                if ((0x0080 & aBuf[i]) != 0)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
