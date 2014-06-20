package org.kemsky
{
    import flash.utils.ByteArray;
    import flash.utils.IDataInput;

    import mx.logging.ILogger;
    import mx.logging.Log;

    public class CharsetDetector
    {
        private static const log:ILogger = Log.getLogger("org.kemsky.CharsetDetector");

        public function CharsetDetector()
        {
        }

        public function detect(input:IDataInput, bufferSize:int = -1):Vector.<String>
        {
            var result:Vector.<String> = new Vector.<String>();

            if (bufferSize == -1)
            {
                bufferSize = input.bytesAvailable;
            }

            if(Log.isDebug())
            {
                log.debug("Data size {0} bytes", input.bytesAvailable);
                log.debug("Using buffer size {0} bytes", bufferSize);
            }

            var det:nsDetector = new nsDetector(nsPSMDetector.ALL);
            det.Init(function onDetect(charset:String):void
            {
                if(Log.isDebug())
                {
                    log.debug("Detected charset {0}", charset);
                }
                result.push(charset);
            });

            var done:Boolean = false;
            var isAscii:Boolean = true;

            var buffer:ByteArray = new ByteArray();
            buffer.length = bufferSize;

            while (input.bytesAvailable > 0 && result.length == 0)
            {
                var len:int = input.bytesAvailable > bufferSize ? bufferSize : input.bytesAvailable;

                input.readBytes(buffer, 0, len);

                // Check if the stream is only ascii.
                if (isAscii)
                {
                    isAscii = det.isAscii(buffer);
                }

                //rewind
                buffer.position = 0;

                // DoIt if non-ascii and not done yet.
                if (!isAscii && !done)
                {
                    done = det.DoIt(buffer, false);
                }
            }

            det.DataEnd();

            if (result.length == 0)
            {
                if (isAscii)
                {
                    if(Log.isDebug())
                    {
                        log.debug("Detected charset {0}", Charset.ASCII);
                    }
                    result.push(Charset.ASCII);
                }
                else
                {
                    result = det.getProbableCharsets();
                    if(Log.isDebug())
                    {
                        log.debug("Probable charsets {0}", result);
                    }
                }
            }
            return result;
        }
    }
}
