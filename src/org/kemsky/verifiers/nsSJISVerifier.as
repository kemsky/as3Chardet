package org.kemsky.verifiers
{
    import org.kemsky.Charset;

    public class nsSJISVerifier extends nsVerifier
    {
        public function nsSJISVerifier()
        {
            smCclass = new Vector.<int>(256 / 8);

            smCclass[0] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (0)))))))));
            smCclass[1] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[2] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[3] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((0) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[4] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[5] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[6] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[7] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[8] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[9] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[10] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[11] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[12] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[13] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[14] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[15] = ( (((( (((( (((1) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[16] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[17] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[18] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[19] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[20] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (4)))))))));
            smCclass[21] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[22] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[23] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[24] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[25] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[26] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[27] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[28] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[29] = ( (((( (((( (((4) << 4) | (4)))) << 8) | (( (((4) << 4) | (5))))))) << 16) | (( (((( (((5) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[30] = ( (((( (((( (((4) << 4) | (4)))) << 8) | (( (((4) << 4) | (4))))))) << 16) | (( (((( (((4) << 4) | (4)))) << 8) | (( (((4) << 4) | (4)))))))));
            smCclass[31] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((0) << 4) | (4))))))) << 16) | (( (((( (((4) << 4) | (4)))) << 8) | (( (((4) << 4) | (4)))))))));


            smStates = new Vector.<int>(3);

            smStates[0] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((3) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eError)))))))));
            smStates[1] = ( (((( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eItsMe) << 4) | (eItsMe))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[2] = ( (((( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eItsMe) << 4) | (eItsMe)))))))));


            smCharset = Charset.Shift_JIS;
            smStFactor = 6;
        }
    }
}
