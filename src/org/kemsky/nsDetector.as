package org.kemsky
{
    import flash.utils.ByteArray;

    public class nsDetector extends nsPSMDetector implements nsICharsetDetector
    {
        internal var mObserver:Function = null;

        public function nsDetector(langFlag:int = -1)
        {
            super(langFlag);
        }

        public function Init(aObserver:Function):void
        {
            mObserver = aObserver;
        }

        public function DoIt(aBuf:ByteArray, oDontFeedMe:Boolean):Boolean
        {
            if (aBuf == null || oDontFeedMe)
            {
                return false;
            }

            this.HandleData(aBuf);
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
                mObserver(charset);
            }
        }

        public function isAscii(aBuf:ByteArray):Boolean
        {
            for (var i:int = 0; i < aBuf.bytesAvailable; i++)
            {
                if ((0x0080 & aBuf.readByte()) != 0)
                {
                    return false;
                }
            }
            return true;
        }
    }
}
