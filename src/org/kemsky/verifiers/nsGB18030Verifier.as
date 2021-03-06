package org.kemsky.verifiers
{
    import org.kemsky.*;

    public class nsGB18030Verifier extends nsVerifier
    {
        public function nsGB18030Verifier()
        {
            smCclass = new Vector.<int>(256 / 8);

            smCclass[0] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[1] = ( (((( (((( (((0) << 4) | (0)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[2] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[3] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((0) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[4] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[5] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1)))))))));
            smCclass[6] = ( (((( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3))))))) << 16) | (( (((( (((3) << 4) | (3)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[7] = ( (((( (((( (((1) << 4) | (1)))) << 8) | (( (((1) << 4) | (1))))))) << 16) | (( (((( (((1) << 4) | (1)))) << 8) | (( (((3) << 4) | (3)))))))));
            smCclass[8] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[9] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[10] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[11] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[12] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[13] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[14] = ( (((( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[15] = ( (((( (((( (((4) << 4) | (2)))) << 8) | (( (((2) << 4) | (2))))))) << 16) | (( (((( (((2) << 4) | (2)))) << 8) | (( (((2) << 4) | (2)))))))));
            smCclass[16] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (5)))))))));
            smCclass[17] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[18] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[19] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[20] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[21] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[22] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[23] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[24] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[25] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[26] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[27] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[28] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[29] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[30] = ( (((( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));
            smCclass[31] = ( (((( (((( (((0) << 4) | (6)))) << 8) | (( (((6) << 4) | (6))))))) << 16) | (( (((( (((6) << 4) | (6)))) << 8) | (( (((6) << 4) | (6)))))))));

            smStates = new Vector.<int>(6);

            smStates[0] = ( (((( (((( (((eError) << 4) | (3)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eError)))))))));
            smStates[1] = ( (((( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[2] = ( (((( (((( (((eStart) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eItsMe))))))) << 16) | (( (((( (((eItsMe) << 4) | (eItsMe)))) << 8) | (( (((eItsMe) << 4) | (eItsMe)))))))));
            smStates[3] = ( (((( (((( (((eError) << 4) | (eError)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (4)))))))));
            smStates[4] = ( (((( (((( (((eError) << 4) | (eItsMe)))) << 8) | (( (((eError) << 4) | (eError))))))) << 16) | (( (((( (((eError) << 4) | (5)))) << 8) | (( (((eError) << 4) | (eError)))))))));
            smStates[5] = ( (((( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eStart) << 4) | (eStart))))))) << 16) | (( (((( (((eStart) << 4) | (eStart)))) << 8) | (( (((eError) << 4) | (eError)))))))));


            smCharset = Charset.GB18030;
            smStFactor = 7;
        }
    }
}
