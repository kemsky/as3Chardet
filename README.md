as3Chardet
==========

as3Chardet is an ActionScript port of the source from mozilla's automatic charset detection algorithm

The original author is Frank Tang. What is available here is the ActionScript port of the (outdated :( ) Java port 
http://jchardet.sourceforge.net/. 
The original source in C++ can be found from http://lxr.mozilla.org/mozilla/source/intl/chardet/
More information can be found at http://www.mozilla.org/projects/intl/chardet.html.

UTF8, UNICODE LE, UNICODE BE and ASCII charsets are detected reliably.

<b>Example</b>

```ActionScript

    var result:Vector.<String> = new Vector.<String>();
    
    var file:File = new File("...");
    var fileStream:FileStream = new FileStream();
    fileStream.open(file, FileMode.READ);
    try
    {
        result = new CharsetDetector().detect(fileStream, 4 /*buffer size*/);
    }
    finally
    {
        fileStream.close();
    }
    
    log.info("Charsets: {0}", result);
```