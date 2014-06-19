package org.kemsky
{
    public class nsVerifier
    {
        internal static const eStart:int = 0; //byte
        internal static const eError:int = 1; //byte
        internal static const eItsMe:int = 2; //byte
        internal static const eidxSft4bits:int = 3;
        internal static const eSftMsk4bits:int = 7;
        internal static const eBitSft4bits:int = 2;
        internal static const eUnitMsk4bits:int = 0x0000000F;

        /**
         * Abstract
         * @return
         */
        public function charset():String
        {
            return null;
        }

        /**
         * Abstract
         * @return
         */
        public function stFactor():int
        {
            return 0;
        }

        /**
         * Abstract
         * @return
         */
        public function cclass():Vector.<int>
        {
            return null;
        }

        /**
         * Abstract
         * @return
         */
        public function states():Vector.<int>
        {
            return null;
        }

        /**
         * Abstract
         * @return
         */
        public function isUCS2():Boolean
        {
            return false;
        }

        public static function getNextState(v:nsVerifier, b:int/* byte */, s:int/*byte*/):int/*byte*/
        {
            return (0xFF &
                    (((v.states()[((
                            (s * v.stFactor() + (((v.cclass()[((b & 0xFF) >> nsVerifier.eidxSft4bits)])
                                    >> ((b & nsVerifier.eSftMsk4bits) << nsVerifier.eBitSft4bits))
                                    & nsVerifier.eUnitMsk4bits)) & 0xFF)
                            >> nsVerifier.eidxSft4bits)]) >> (((
                            (s * v.stFactor() + (((v.cclass()[((b & 0xFF) >> nsVerifier.eidxSft4bits)])
                                    >> ((b & nsVerifier.eSftMsk4bits) << nsVerifier.eBitSft4bits))
                                    & nsVerifier.eUnitMsk4bits)) & 0xFF)
                            & nsVerifier.eSftMsk4bits) << nsVerifier.eBitSft4bits)) & nsVerifier.eUnitMsk4bits)
                    );

        }

    }
}
