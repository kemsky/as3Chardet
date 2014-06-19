package
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;

    public class DetectorTest
    {
        private static const path:String = "D:\\Dev\\Projects\\as3Chardet\\testSrc\\";

        public function DetectorTest()
        {
        }

        [Test]
        public function testUtf8():void
        {
            var root:File = new File(path);

            var utf8:File = root.resolvePath("utf8.properties");

            var buffer:ByteArray = new ByteArray();

            var fileStream:FileStream = new FileStream();
            fileStream.open(utf8, FileMode.READ);
            try
            {
                while(fileStream.bytesAvailable > 0)
                {
                    fileStream.readBytes(buffer, 0, fileStream.bytesAvailable > 1024 ? 1024 : fileStream.bytesAvailable);
                    buffer.length = 0;
                }
            }
            finally
            {
                fileStream.close();
            }
        }
    }
}
