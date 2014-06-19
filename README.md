as3Chardet
==========

as3Chardet is an ActionScript port of the source from mozilla's automatic charset detection algorithm

The original author is Frank Tang. What is available here is the ActionScript port of that code. 
The original source in C++ can be found from http://lxr.mozilla.org/mozilla/source/intl/chardet/
More information can be found at http://www.mozilla.org/projects/intl/chardet.html

Example

```ActionScript

    var file:File = new File("...");
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
        while (fileStream.bytesAvailable > 0 && result == null)
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
```