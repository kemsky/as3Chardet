package org.kemsky.verifiers
{
    public class nsVerifier
    {
        public static const eStart:int = 0; //byte
        public static const eError:int = 1; //byte
        public static const eItsMe:int = 2; //byte
        public static const eidxSft4bits:int = 3;
        public static const eSftMsk4bits:int = 7;
        public static const eBitSft4bits:int = 2;
        public static const eUnitMsk4bits:int = 0x0000000F;

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
