-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- a062fa36-6b9d-4302-9842-2e606a849e32

-- Unique ID of firmware implementation:
-- d2bef55e-4757-4a07-8032-f42a7daea756

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        355, -- module_index: 0, name: L1_TripleMu_5_0_0_DoubleMu_5_0_OS_Mass_Max17
         30, -- module_index: 1, name: L1_TripleMu_5_0_0
        432, -- module_index: 2, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
        431, -- module_index: 3, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        277, -- module_index: 4, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        425, -- module_index: 5, name: L1_DoubleMu0_ETM65cer
        332, -- module_index: 6, name: L1_ETMHF110c_Jet60_OR_DoubleJet30
        326, -- module_index: 7, name: L1_ETMHF80c_Jet60_OR_DoubleJet30
        335, -- module_index: 8, name: L1_ETMHF70c_Jet60_OR_DiJet30woTT28
        329, -- module_index: 9, name: L1_ETMHF95c_Jet60_OR_DoubleJet30
        264, -- module_index: 10, name: L1_IsoEG26er2p1_HTT100er
        331, -- module_index: 11, name: L1_ETMHF105c_Jet60_OR_DoubleJet30
        306, -- module_index: 12, name: L1_DoubleMu0_ETMHF70c_Jet60_OR_DoubleJet30
        340, -- module_index: 13, name: L1_ETMHF120c_Jet60_OR_DiJet30woTT28
          8, -- module_index: 14, name: L1_SingleMu18
        142, -- module_index: 15, name: L1_DoubleJet60er3p0
        204, -- module_index: 16, name: L1_ETMHF110c
        327, -- module_index: 17, name: L1_ETMHF85c_Jet60_OR_DoubleJet30
        303, -- module_index: 18, name: L1_DoubleMu0_ETMHF40c_Jet60_OR_DoubleJet30
        333, -- module_index: 19, name: L1_ETMHF115c_Jet60_OR_DoubleJet30
        310, -- module_index: 20, name: L1_DoubleMu3_SQ_ETMHF60c_Jet60_OR_DoubleJet30
        302, -- module_index: 21, name: L1_Mu15_HTT100er
        201, -- module_index: 22, name: L1_ETMHF80c
        200, -- module_index: 23, name: L1_ETMHF70c
        304, -- module_index: 24, name: L1_DoubleMu0_ETMHF50c_Jet60_OR_DoubleJet30
        339, -- module_index: 25, name: L1_ETMHF110c_Jet60_OR_DiJet30woTT28
        320, -- module_index: 26, name: L1_DoubleEG6_HTT240er
        167, -- module_index: 27, name: L1_HTT280er
        334, -- module_index: 28, name: L1_ETMHF120c_Jet60_OR_DoubleJet30
        337, -- module_index: 29, name: L1_ETMHF90c_Jet60_OR_DiJet30woTT28
        330, -- module_index: 30, name: L1_ETMHF100c_Jet60_OR_DoubleJet30
        164, -- module_index: 31, name: L1_HTT240er
        321, -- module_index: 32, name: L1_DoubleEG6_HTT250er
        338, -- module_index: 33, name: L1_ETMHF100c_Jet60_OR_DiJet30woTT28
        328, -- module_index: 34, name: L1_ETMHF90c_Jet60_OR_DoubleJet30
        162, -- module_index: 35, name: L1_HTT200er
        430, -- module_index: 36, name: L1_DoubleEG6_HTT255er
        422, -- module_index: 37, name: L1_DoubleMu0_ETM40cer
        370, -- module_index: 38, name: L1_Mu6_DoubleEG17
        267, -- module_index: 39, name: L1_Mu18_HTT100er
        203, -- module_index: 40, name: L1_ETMHF100c
        181, -- module_index: 41, name: L1_ETM40cer
        123, -- module_index: 42, name: L1_SingleJet60
        409, -- module_index: 43, name: L1_Mu6_DoubleEG10
        429, -- module_index: 44, name: L1_EG27er2p1_HTT200er
        322, -- module_index: 45, name: L1_DoubleEG6_HTT270er
        202, -- module_index: 46, name: L1_ETMHF90c
        344, -- module_index: 47, name: L1_ETMHF100c_Jet90_OR_DoubleJet45_OR_TripleJet30
        293, -- module_index: 48, name: L1_DoubleJet30_Mass_Min400_Mu6
        268, -- module_index: 49, name: L1_Mu18_Jet24er3p0
        166, -- module_index: 50, name: L1_HTT270er
        165, -- module_index: 51, name: L1_HTT255er
        342, -- module_index: 52, name: L1_ETMHF80c_Jet90_OR_DoubleJet45_OR_TripleJet30
        423, -- module_index: 53, name: L1_DoubleMu0_ETM55cer
        301, -- module_index: 54, name: L1_Mu6_HTT250er
        308, -- module_index: 55, name: L1_DoubleMu3_SQ_ETMHF40c_Jet60_OR_DoubleJet30
        307, -- module_index: 56, name: L1_DoubleMu0_ETMHF80c_Jet60_OR_DoubleJet30
        205, -- module_index: 57, name: L1_ETMHF120c
        345, -- module_index: 58, name: L1_ETMHF110c_Jet90_OR_DoubleJet45_OR_TripleJet30
        433, -- module_index: 59, name: L1_DoubleJet60er3p0_ETM60cer
        305, -- module_index: 60, name: L1_DoubleMu0_ETMHF60c_Jet60_OR_DoubleJet30
        410, -- module_index: 61, name: L1_Mu6_HTT200er
        300, -- module_index: 62, name: L1_Mu6_HTT240er
        168, -- module_index: 63, name: L1_HTT300er
        309, -- module_index: 64, name: L1_DoubleMu3_SQ_ETMHF50c_Jet60_OR_DoubleJet30
        343, -- module_index: 65, name: L1_ETMHF90c_Jet90_OR_DoubleJet45_OR_TripleJet30
        124, -- module_index: 66, name: L1_SingleJet90
        278, -- module_index: 67, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
         20, -- module_index: 68, name: L1_DoubleMu0
        341, -- module_index: 69, name: L1_ETMHF70c_Jet90_OR_DoubleJet45_OR_TripleJet30
        184, -- module_index: 70, name: L1_ETM70cer
        183, -- module_index: 71, name: L1_ETM60cer
        294, -- module_index: 72, name: L1_DoubleJet30_Mass_Min400_Mu10
        265, -- module_index: 73, name: L1_IsoEG28er2p1_HTT100er
        314, -- module_index: 74, name: L1_DoubleMu3_SQ_HTT200er
        336, -- module_index: 75, name: L1_ETMHF80c_Jet60_OR_DiJet30woTT28
        311, -- module_index: 76, name: L1_DoubleMu3_SQ_ETMHF70c_Jet60_OR_DoubleJet30
        163, -- module_index: 77, name: L1_HTT220er
        315, -- module_index: 78, name: L1_DoubleMu3_SQ_HTT220er
        316, -- module_index: 79, name: L1_DoubleMu3_SQ_HTT240er
        313, -- module_index: 80, name: L1_DoubleMu3_SQ_HTT100er
        324, -- module_index: 81, name: L1_ETMHF70c_Jet60_OR_DoubleJet30
        263, -- module_index: 82, name: L1_IsoEG24er2p1_HTT100er
        325, -- module_index: 83, name: L1_ETMHF75c_Jet60_OR_DoubleJet30
        279, -- module_index: 84, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        424, -- module_index: 85, name: L1_DoubleMu0_ETM60cer
        312, -- module_index: 86, name: L1_DoubleMu3_SQ_ETMHF80c_Jet60_OR_DoubleJet30
        266, -- module_index: 87, name: L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        426, -- module_index: 88, name: L1_DoubleMu0_ETM70cer
        323, -- module_index: 89, name: L1_DoubleEG6_HTT300er
        297, -- module_index: 90, name: L1_IsoEG22er2p1_IsoTau26er2p1_dEta_Min0p2
        405, -- module_index: 91, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        357, -- module_index: 92, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        352, -- module_index: 93, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        148, -- module_index: 94, name: L1_TripleJet_88_72_56_VBF
        371, -- module_index: 95, name: L1_DoubleMu7_EG7
        346, -- module_index: 96, name: L1_DoubleMu7_SQ_EG7
        418, -- module_index: 97, name: L1_Mu18er2p1_IsoTau26er2p1
        420, -- module_index: 98, name: L1_Mu20er2p1_IsoTau26er2p1
        413, -- module_index: 99, name: L1_Mu18er2p1_Tau20er2p1
         16, -- module_index: 100, name: L1_SingleMu20er2p1
         15, -- module_index: 101, name: L1_SingleMu18er2p1
        290, -- module_index: 102, name: L1_TripleEG_Iso20_10_5
         82, -- module_index: 103, name: L1_DoubleEG_20_18
         85, -- module_index: 104, name: L1_DoubleEG_22_15
         88, -- module_index: 105, name: L1_DoubleEG_25_12
        288, -- module_index: 106, name: L1_DoubleEG_Iso23_10
        106, -- module_index: 107, name: L1_DoubleIsoTau30er2p1
        109, -- module_index: 108, name: L1_DoubleIsoTau34er2p1
        144, -- module_index: 109, name: L1_DoubleJet100er3p0
        141, -- module_index: 110, name: L1_DoubleJet50er3p0
        428, -- module_index: 111, name: L1_EG25er2p1_HTT125er
         28, -- module_index: 112, name: L1_TripleMu3
         32, -- module_index: 113, name: L1_TripleMu_5_5_3
         25, -- module_index: 114, name: L1_DoubleMu_15_5
         43, -- module_index: 115, name: L1_SingleEG18
         46, -- module_index: 116, name: L1_SingleEG28
         49, -- module_index: 117, name: L1_SingleEG34
         55, -- module_index: 118, name: L1_SingleEG36er2p1
         52, -- module_index: 119, name: L1_SingleEG40
         68, -- module_index: 120, name: L1_SingleIsoEG18er2p1
         70, -- module_index: 121, name: L1_SingleIsoEG22er2p1
         61, -- module_index: 122, name: L1_SingleIsoEG26
         63, -- module_index: 123, name: L1_SingleIsoEG30
         65, -- module_index: 124, name: L1_SingleIsoEG34
         67, -- module_index: 125, name: L1_SingleIsoEG38
        120, -- module_index: 126, name: L1_SingleJet16
        121, -- module_index: 127, name: L1_SingleJet20
        102, -- module_index: 128, name: L1_SingleTau120er2p1
          7, -- module_index: 129, name: L1_SingleMu16
         11, -- module_index: 130, name: L1_SingleMu25
        191, -- module_index: 131, name: L1_ETM105cer
        192, -- module_index: 132, name: L1_ETM110cer
        193, -- module_index: 133, name: L1_ETM115cer
        194, -- module_index: 134, name: L1_ETM120cer
        187, -- module_index: 135, name: L1_ETM85cer
        160, -- module_index: 136, name: L1_HTT120er
        171, -- module_index: 137, name: L1_HTT380er
        467, -- module_index: 138, name: L1_BRIL_bit008
        468, -- module_index: 139, name: L1_BRIL_bit009
        469, -- module_index: 140, name: L1_BRIL_bit010
        470, -- module_index: 141, name: L1_BRIL_bit011
        471, -- module_index: 142, name: L1_BRIL_bit012
        472, -- module_index: 143, name: L1_BRIL_bit013
        473, -- module_index: 144, name: L1_BRIL_bit014
        474, -- module_index: 145, name: L1_BRIL_bit015
        475, -- module_index: 146, name: L1_BRIL_bit016
        476, -- module_index: 147, name: L1_BRIL_bit017
        477, -- module_index: 148, name: L1_BRIL_bit018
        478, -- module_index: 149, name: L1_BRIL_bit020
        479, -- module_index: 150, name: L1_BRIL_bit021
        459, -- module_index: 151, name: L1_BeamGasB1
        460, -- module_index: 152, name: L1_BeamGasB2
        461, -- module_index: 153, name: L1_BeamGasMinus
        463, -- module_index: 154, name: L1_BeamGasPlus
        452, -- module_index: 155, name: L1_BptxMinus
        455, -- module_index: 156, name: L1_BptxXOR
        451, -- module_index: 157, name: L1_BptxPlus
        465, -- module_index: 158, name: L1_BptxMinus_VME
        466, -- module_index: 159, name: L1_BptxOR_VME
        464, -- module_index: 160, name: L1_BptxPlus_VME
        481, -- module_index: 161, name: L1_First_Collision_in_Train
        480, -- module_index: 162, name: L1_Last_Collision_in_Train
        458, -- module_index: 163, name: L1_ZeroBias_FirstCollidingBunch
        462, -- module_index: 164, name: L1_ZeroBias_VME
    others => 0
);

-- ========================================================