package
{
    import flash.filesystem.File;
    import flash.filesystem.FileMode;
    import flash.filesystem.FileStream;
    import flash.utils.ByteArray;

    import org.kemsky.nsDetector;

    import org.kemsky.nsPSMDetector;

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

            var det:nsDetector = new nsDetector(nsPSMDetector.ALL);
            det.Init(function (charset:String):void
            {
                trace(charset);
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
                    fileStream.readBytes(buffer, 0, fileStream.bytesAvailable > 1024 ? 1024 : fileStream.bytesAvailable);

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
                trace("CHARSET = ASCII");
            }
            else
            {
                var prob:Vector.<String> = det.getProbableCharsets();
                for (var i:int = 0; i < prob.length; i++)
                {
                    trace("Probable Charset = " + prob[i]);
                }
            }
        }
    }
}
