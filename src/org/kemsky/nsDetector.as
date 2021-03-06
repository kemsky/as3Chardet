package org.kemsky
{
    import flash.utils.IDataInput;

    public class nsDetector extends nsPSMDetector
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

        public function DoIt(aBuf:IDataInput, oDontFeedMe:Boolean):Boolean
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

        public function isAscii(aBuf:IDataInput):Boolean
        {
            var result:Boolean = true;
            while (aBuf.bytesAvailable > 0)
            {
                var b:int = aBuf.readByte();
                if ((0x0080 & b) != 0)
                {
                    result = false;
                    break;
                }
            }
            return result;
        }
    }
}
