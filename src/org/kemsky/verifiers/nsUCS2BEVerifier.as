package org.kemsky.verifiers
{
    import org.kemsky.*;

    public class nsUCS2BEVerifier extends nsVerifier
    {
        public function nsUCS2BEVerifier()
        {
            smCclass = new Vector.<int>(256 / 8);

            smCclass[0] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[1] = ((((((((((((0) << 4) | (0)))) << 8) | (((((2) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (1)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[2] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[3] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((3) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[4] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[5] = ((((((((((((0) << 4) | (0)))) << 8) | (((((3) << 4) | (3))))))) << 16) | (((((((((3) << 4) | (3)))) << 8) | (((((3) << 4) | (0)))))))));
            smCclass[6] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[7] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[8] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[9] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[10] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[11] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[12] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[13] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[14] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[15] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[16] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[17] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[18] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[19] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[20] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[21] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[22] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[23] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[24] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[25] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[26] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[27] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[28] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[29] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[30] = ((((((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));
            smCclass[31] = ((((((((((((5) << 4) | (4)))) << 8) | (((((0) << 4) | (0))))))) << 16) | (((((((((0) << 4) | (0)))) << 8) | (((((0) << 4) | (0)))))))));


            smStates = new Vector.<int>(7);

            smStates[0] = ((((((((((((eError) << 4) | (eError)))) << 8) | (((((3) << 4) | (4))))))) << 16) | (((((((((eError) << 4) | (7)))) << 8) | (((((7) << 4) | (5)))))))));
            smStates[1] = ((((((((((((eItsMe) << 4) | (eItsMe)))) << 8) | (((((eItsMe) << 4) | (eItsMe))))))) << 16) | (((((((((eError) << 4) | (eError)))) << 8) | (((((eError) << 4) | (eError)))))))));
            smStates[2] = ((((((((((((eError) << 4) | (eError)))) << 8) | (((((6) << 4) | (6))))))) << 16) | (((((((((6) << 4) | (6)))) << 8) | (((((eItsMe) << 4) | (eItsMe)))))))));
            smStates[3] = ((((((((((((6) << 4) | (6)))) << 8) | (((((eItsMe) << 4) | (6))))))) << 16) | (((((((((6) << 4) | (6)))) << 8) | (((((6) << 4) | (6)))))))));
            smStates[4] = ((((((((((((eError) << 4) | (7)))) << 8) | (((((7) << 4) | (5))))))) << 16) | (((((((((6) << 4) | (6)))) << 8) | (((((6) << 4) | (6)))))))));
            smStates[5] = ((((((((((((6) << 4) | (6)))) << 8) | (((((6) << 4) | (eError))))))) << 16) | (((((((((6) << 4) | (6)))) << 8) | (((((8) << 4) | (5)))))))));
            smStates[6] = ((((((((((((eStart) << 4) | (eStart)))) << 8) | (((((eError) << 4) | (eError))))))) << 16) | (((((((((6) << 4) | (6)))) << 8) | (((((6) << 4) | (6)))))))));


            smCharset = Charset.UTF_16BE;
            smStFactor = 6;

            smIsUCS2 = true;
        }
    }
}
