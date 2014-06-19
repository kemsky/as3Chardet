package org.kemsky
{
    /**
     * Supported charset enum,
     * @see http://help.adobe.com/en_US/air/reference/html/charset-codes.html
     */
    public class Charset
    {
        public static const UTF_8:String = "utf-8";
        public static const UTF_16LE:String = "unicode";
        public static const UTF_16BE:String = "unicodeFFFE";
        public static const Shift_JIS:String = "shift_jis";
        public static const ISO_2022_KR:String = "iso-2022-kr";
        public static const ISO_2022_JP:String = "iso-2022-jp";
        public static const ISO_2022_CN:String = "ISO-2022-CN";     //not supported by air runtime
        public static const GB18030:String = "gb18030";
        public static const GB2312:String = "gb2312";
        public static const x_euc_tw:String = "x-euc-tw";           //not supported by air runtime
        public static const EUC_KR:String = "euc-kr";
        public static const EUC_JP:String = "euc-jp";
        public static const windows_1252:String = "Windows-1252";
        public static const Big5:String = "big5";
        public static const ASCII:String = "us-ascii";
        public static const HZ_GB_2312:String = "hz-gb-2312";
    }
}
