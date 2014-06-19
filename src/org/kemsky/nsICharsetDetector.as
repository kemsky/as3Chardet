package org.kemsky
{
    import flash.utils.ByteArray;

    public interface nsICharsetDetector
    {
        function Init(observer:Function):void;

        function DoIt(aBuf:ByteArray, oDontFeedMe:Boolean):Boolean;

        function Done():void;
    }
}
