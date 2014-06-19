package
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;

    import mx.logging.ILogger;
    import mx.logging.Log;

    import org.kemsky.nsDetector;

    import org.kemsky.nsPSMDetector;

    public class DetectorTest
    {
        private static const log:ILogger = Log.getLogger("DetectorTest");

        private static const path:String = "D:\\Dev\\Projects\\as3Chardet\\testSrc\\";

        public function DetectorTest()
        {
        }

        [Test]
        public function testUtf8():void
        {
            var root:File = new File(path);

            var utf8:File = root.resolvePath("utf8.properties");

            var det:nsDetector = new nsDetector(nsPSMDetector.ALL);
            det.Init(function (charset:String):void
            {
                log.info(charset);
            });

            var done:Boolean = false;
            var isAscii:Boolean = true;

            var buffer:ByteArray = new ByteArray();

            var fileStream:FileStream = new FileStream();
            fileStream.open(utf8, FileMode.READ);
            try
            {
                while (fileStream.bytesAvailable > 0)
                {
                    var len:int = fileStream.bytesAvailable > 1024 ? 1024 : fileStream.bytesAvailable;

                    fileStream.readBytes(buffer, 0, len);

                    buffer.position = 0;

                    // Check if the stream is only ascii.
                    if (isAscii)
                    {
                        isAscii = det.isAscii(buffer);
                    }

                    // DoIt if non-ascii and not done yet.
                    if (!isAscii && !done)
                    {
                        done = det.DoIt(buffer, false);
                    }

                    buffer.length = 0;
                }
            }
            finally
            {
                fileStream.close();
            }

            det.DataEnd();

            if (isAscii)
            {
                log.info("CHARSET = ASCII");
            }
            else
            {
                var prob:Vector.<String> = det.getProbableCharsets();
                for (var i:int = 0; i < prob.length; i++)
                {
                    log.info("Probable Charset = " + prob[i]);
                }
            }
        }
    }
}
