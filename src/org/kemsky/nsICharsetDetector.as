package org.kemsky
{
    public interface nsICharsetDetector
    {
        function Init(observer:nsICharsetDetectionObserver):void;

        function DoIt(aBuf:Vector.<int>, aLen:int, oDontFeedMe:Boolean):Boolean;

        function Done():void;
    }
}
