package
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;

    import mx.logging.ILogger;
    import mx.logging.Log;

    import org.flexunit.asserts.assertEquals;
    import org.kemsky.Charset;

    import org.kemsky.nsDetector;

    import org.kemsky.nsPSMDetector;

    public class DetectorTest
    {
        private static const log:ILogger = Log.getLogger("DetectorTest");

        private static const path:String = "D:\\Dev\\Projects\\as3Chardet\\testSrc\\";

        private var root:File;

        public function DetectorTest()
        {
            root = new File(path);
        }

        [Test]
        public function testUtf8():void
        {
            var utf8:File = root.resolvePath("UTF-8.properties");

            var charset:String = getCharset(utf8);
            assertEquals(Charset.UTF_8, charset);
        }

        [Test]
        public function testISO_8859_1():void
        {
            var iso_8859_1:File = root.resolvePath("ISO-8859-1.properties");

            var charset:String = getCharset(iso_8859_1);
            assertEquals(Charset.Ascii, charset);
        }

        private function getCharset(file:File):String
        {
            log.info("detect: {0}", file.nativePath);

            var det:nsDetector = new nsDetector(nsPSMDetector.ALL);
            det.Init(function (charset:String):void
            {
                log.info(charset);
            });

            var done:Boolean = false;
            var isAscii:Boolean = true;

            var buffer:ByteArray = new ByteArray();

            var fileStream:FileStream = new FileStream();
            fileStream.open(file, FileMode.READ);
            try
            {
                while (fileStream.bytesAvailable > 0)
                {
                    var len:int = fileStream.bytesAvailable > 1024 ? 1024 : fileStream.bytesAvailable;

                    fileStream.readBytes(buffer, 0, len);

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

            var result:String = Charset.Ascii;

            if (!isAscii)
            {
                var prob:Vector.<String> = det.getProbableCharsets();
                result = prob[0];
                for (var i:int = 0; i < prob.length; i++)
                {
                    log.info("Probable Charset = " + prob[i]);
                }
            }

            log.info("Charset: {0}\n", result);

            return result;
        }
    }
}
