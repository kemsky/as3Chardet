package org.kemsky.verifiers
{
    import org.kemsky.*;

    public class nsEUCTWVerifier extends nsVerifier
    {
        public function nsEUCTWVerifier()
        {

            smCclass = new Vector.<int>(256 / 8);

            smCclass[0] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[1] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[2] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[3] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((0) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[4] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[5] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[6] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[7] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[8] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[9] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[10] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[11] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[12] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[13] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[14] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[15] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[16] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[17] = ( (((( (((( (((0) << 4) | (6)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[18] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[19] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0))))))) << 16) | (( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (0)))))))));
            smCclass[20] = ( (((( (((( (((4) << 4) | (4)))) << 8) | (( (((4) << 4) | (4))))))) << 16) | (( (((( (((4) << 4) | (4)))) << 8) | (( (((3) << 4) | (0)))))))));
            smCclass[21] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((5) << 4) | (5)))))))));
            smCclass[22] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[23] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[24] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((1) << 4) | (3)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[25] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[26] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[27] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[28] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[29] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[30] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[31] = ( (((( (((( (((0) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));


            smStates = new Vector.<int>(6);

            smStates[0] = ( (((( (((( (((eError) << 4) | (4)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[1] = ( (((( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[2] = ( (((( (((( (((eError) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (eItsMe))))))) << 16) | (( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eItsMe) << 4) | (eItsMe)))))))));
            smStates[3] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((eError) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eStart)))))))));
            smStates[4] = ( (((( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (eStart))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (5)))))))));
            smStates[5] = ( (((( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (eStart)))))))));


            smCharset = Charset.x_euc_tw;
            smStFactor = 7;

        }
    }
}
