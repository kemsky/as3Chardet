package
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;

    import mx.logging.ILogger;
    import mx.logging.Log;

    import org.flexunit.asserts.assertEquals;
    import org.kemsky.Charset;
    import org.kemsky.CharsetDetector;

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


            var fileStream:FileStream = new FileStream();
            fileStream.open(file, FileMode.READ);
            try
            {
                result = new CharsetDetector().detect(fileStream, 4)[0];
            }
            finally
            {
                fileStream.close();
            }

            log.info("Charset: {0}\n", result);

            return result;
        }
    }
}
