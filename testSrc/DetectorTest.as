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
            var file:File = root.resolvePath("UTF-8.properties");

            var charset:String = getCharset(file);
            assertEquals(Charset.UTF_8, charset);
        }

        [Test]
        public function testISO_8859_1():void
        {
            var file:File = root.resolvePath("ISO-8859-1.properties");

            var charset:String = getCharset(file);
            assertEquals(Charset.Ascii, charset);
        }

        [Test]
        public function testUTF16LE():void
        {
            var file:File = root.resolvePath("UTF16LE.properties");

            var charset:String = getCharset(file);
            assertEquals(Charset.UTF_16LE, charset);
        }

        [Test]
        public function testUTF16BE():void
        {
            var file:File = root.resolvePath("UTF16BE.properties");

            var charset:String = getCharset(file);
            assertEquals(Charset.UTF_16BE, charset);
        }

        private function getCharset(file:File):String
        {
            log.info("file: {0}", file.nativePath);

            var result:String = null;

            var det:nsDetector = new nsDetector(nsPSMDetector.ALL);
            det.Init(function (charset:String):void
            {
                log.info("observer: {0}", charset);
                result = charset;
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
                }
            }
            finally
            {
                fileStream.close();
            }

            det.DataEnd();


            if(result == null)
            {
                if (isAscii)
                {
                    result = Charset.Ascii;
                }
                else
                {
                    var probable:Vector.<String> = det.getProbableCharsets();
                    for each (var charset:String in probable)
                    {
                        log.info("Probable Charset = {0}", charset);
                    }
                    result = probable[0];
                }
            }

            log.info("Charset: {0}\n", result);

            return result;
        }
    }
}
