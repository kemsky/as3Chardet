package org.kemsky.verifiers
{
    import org.kemsky.*;

    public class nsISO2022KRVerifier extends nsVerifier
    {
        public function nsISO2022KRVerifier()
        {
            smCclass = new Vector.<int>(256 / 8);

            smCclass[0] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (2)))))))));
            smCclass[1] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[2] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[3] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((1) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[4] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (3))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[5] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((4) << 4) | (0)))))))));
            smCclass[6] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[7] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[8] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((5) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[9] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[10] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[11] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[12] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[13] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[14] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[15] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[16] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[17] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[18] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[19] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[20] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[21] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[22] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[23] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[24] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[25] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[26] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[27] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[28] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[29] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[30] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[31] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));


            smStates = new Vector.<int>(5);

            smStates[0] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eStart) << 4) | (eError)))) << 8) | (( (((3) << 4) | (eStart)))))))));
            smStates[1] = ( (((( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eItsMe) << 4) | (eItsMe))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[2] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((4) << 4) | (eError))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eItsMe) << 4) | (eItsMe)))))))));
            smStates[3] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (5))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[4] = ( (((( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eItsMe) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));


            smCharset = Charset.ISO_2022_KR;
            smStFactor = 6;
        }
    }
}
