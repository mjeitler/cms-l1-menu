-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        379, -- module_index: 0, name: L1_TripleMu_5_3_0_DoubleMu_5_3_OS_Mass_Max17
        268, -- module_index: 1, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        302, -- module_index: 2, name: L1_DoubleJet30_Mass_Min400_Mu10
        301, -- module_index: 3, name: L1_DoubleJet30_Mass_Min400_Mu6
        292, -- module_index: 4, name: L1_DoubleJet60er3p0_ETM80
        189, -- module_index: 5, name: L1_ETM95
        358, -- module_index: 6, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        203, -- module_index: 7, name: L1_ETMHF100
        190, -- module_index: 8, name: L1_ETM100
        359, -- module_index: 9, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        414, -- module_index: 10, name: L1_DoubleJet60er3p0_ETM60
        350, -- module_index: 11, name: L1_ETMHF70_Jet60_OR_DiJet30woTT28
        294, -- module_index: 12, name: L1_DoubleJet60er3p0_ETM100
        345, -- module_index: 13, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        354, -- module_index: 14, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        291, -- module_index: 15, name: L1_DoubleJet60er3p0_ETM70
        204, -- module_index: 16, name: L1_ETMHF110
        346, -- module_index: 17, name: L1_ETMHF105_Jet60_OR_DoubleJet30
        360, -- module_index: 18, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        317, -- module_index: 19, name: L1_Mu15_HTT100er
        293, -- module_index: 20, name: L1_DoubleJet60er3p0_ETM90
        200, -- module_index: 21, name: L1_ETMHF70
        168, -- module_index: 22, name: L1_HTT300er
        258, -- module_index: 23, name: L1_Mu18_HTT100er
        420, -- module_index: 24, name: L1_DoubleMu0_ETM65
        355, -- module_index: 25, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        259, -- module_index: 26, name: L1_Mu18_Jet24er3p0
        348, -- module_index: 27, name: L1_ETMHF115_Jet60_OR_DoubleJet30
        353, -- module_index: 28, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        162, -- module_index: 29, name: L1_HTT200er
         20, -- module_index: 30, name: L1_DoubleMu0
        347, -- module_index: 31, name: L1_ETMHF110_Jet60_OR_DoubleJet30
        163, -- module_index: 32, name: L1_HTT220er
        349, -- module_index: 33, name: L1_ETMHF120_Jet60_OR_DoubleJet30
        343, -- module_index: 34, name: L1_ETMHF90_Jet60_OR_DoubleJet30
        417, -- module_index: 35, name: L1_DoubleMu0_ETM40
        164, -- module_index: 36, name: L1_HTT240er
        356, -- module_index: 37, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        201, -- module_index: 38, name: L1_ETMHF80
        418, -- module_index: 39, name: L1_DoubleMu0_ETM55
        183, -- module_index: 40, name: L1_ETM60
        419, -- module_index: 41, name: L1_DoubleMu0_ETM60
        424, -- module_index: 42, name: L1_DoubleEG6_HTT255er
        184, -- module_index: 43, name: L1_ETM70
        279, -- module_index: 44, name: L1_IsoTau40er_ETM85
        421, -- module_index: 45, name: L1_DoubleMu0_ETM70
        167, -- module_index: 46, name: L1_HTT280er
        340, -- module_index: 47, name: L1_ETMHF75_Jet60_OR_DoubleJet30
        285, -- module_index: 48, name: L1_Mu22er2p1_IsoTau40er2p1
        318, -- module_index: 49, name: L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30
        202, -- module_index: 50, name: L1_ETMHF90
        205, -- module_index: 51, name: L1_ETMHF120
        319, -- module_index: 52, name: L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30
        351, -- module_index: 53, name: L1_ETMHF80_Jet60_OR_DiJet30woTT28
        341, -- module_index: 54, name: L1_ETMHF80_Jet60_OR_DoubleJet30
        188, -- module_index: 55, name: L1_ETM90
        187, -- module_index: 56, name: L1_ETM85
        123, -- module_index: 57, name: L1_SingleJet60
        344, -- module_index: 58, name: L1_ETMHF95_Jet60_OR_DoubleJet30
        342, -- module_index: 59, name: L1_ETMHF85_Jet60_OR_DoubleJet30
        186, -- module_index: 60, name: L1_ETM80
        323, -- module_index: 61, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        269, -- module_index: 62, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        326, -- module_index: 63, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        352, -- module_index: 64, name: L1_ETMHF90_Jet60_OR_DiJet30woTT28
        325, -- module_index: 65, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        329, -- module_index: 66, name: L1_DoubleMu3_SQ_HTT200er
          8, -- module_index: 67, name: L1_SingleMu18
        327, -- module_index: 68, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        427, -- module_index: 69, name: L1_Mu6_DoubleEG10
        165, -- module_index: 70, name: L1_HTT255er
        390, -- module_index: 71, name: L1_Mu6_DoubleEG17
        124, -- module_index: 72, name: L1_SingleJet90
        331, -- module_index: 73, name: L1_DoubleMu3_SQ_HTT240er
        410, -- module_index: 74, name: L1_Mu6_HTT200er
        270, -- module_index: 75, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        254, -- module_index: 76, name: L1_IsoEG24er2p1_HTT100er
        315, -- module_index: 77, name: L1_Mu6_HTT240er
        257, -- module_index: 78, name: L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        316, -- module_index: 79, name: L1_Mu6_HTT250er
        328, -- module_index: 80, name: L1_DoubleMu3_SQ_HTT100er
        321, -- module_index: 81, name: L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30
        255, -- module_index: 82, name: L1_IsoEG26er2p1_HTT100er
        320, -- module_index: 83, name: L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30
        256, -- module_index: 84, name: L1_IsoEG28er2p1_HTT100er
        324, -- module_index: 85, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        181, -- module_index: 86, name: L1_ETM40
        330, -- module_index: 87, name: L1_DoubleMu3_SQ_HTT220er
        278, -- module_index: 88, name: L1_IsoTau40er_ETM80
        322, -- module_index: 89, name: L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30
        282, -- module_index: 90, name: L1_IsoTau40er_ETM100
        336, -- module_index: 91, name: L1_DoubleEG6_HTT250er
        335, -- module_index: 92, name: L1_DoubleEG6_HTT240er
        280, -- module_index: 93, name: L1_IsoTau40er_ETM90
        281, -- module_index: 94, name: L1_IsoTau40er_ETM95
        284, -- module_index: 95, name: L1_IsoTau40er_ETMHF90
        283, -- module_index: 96, name: L1_IsoTau40er_ETMHF80
        337, -- module_index: 97, name: L1_DoubleEG6_HTT270er
        339, -- module_index: 98, name: L1_ETMHF70_Jet60_OR_DoubleJet30
        142, -- module_index: 99, name: L1_DoubleJet60er3p0
        338, -- module_index: 100, name: L1_DoubleEG6_HTT300er
        166, -- module_index: 101, name: L1_HTT270er
        357, -- module_index: 102, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        413, -- module_index: 103, name: L1_EG27er2p1_HTT200er
        251, -- module_index: 104, name: L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3
        299, -- module_index: 105, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        298, -- module_index: 106, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        235, -- module_index: 107, name: L1_CDC_3_er1p2_TOP120_DPHI1p570_4p711
        233, -- module_index: 108, name: L1_CDC_3_er2p1_TOP120_DPHI1p570_4p711
        225, -- module_index: 109, name: L1_CDC_SingleMu_3_er2p1_TOP120_DPHI2p618_3p665
        425, -- module_index: 110, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        290, -- module_index: 111, name: L1_ETM110_Jet60_dPhi_Min0p4
        288, -- module_index: 112, name: L1_ETM90_Jet60_dPhi_Min0p4
        391, -- module_index: 113, name: L1_DoubleMu7_EG7
        361, -- module_index: 114, name: L1_DoubleMu7_SQ_EG7
         91, -- module_index: 115, name: L1_TripleEG_14_10_8
         81, -- module_index: 116, name: L1_DoubleEG_18_17
         84, -- module_index: 117, name: L1_DoubleEG_22_12
         89, -- module_index: 118, name: L1_DoubleEG_25_13
        107, -- module_index: 119, name: L1_DoubleIsoTau30er2p1
        112, -- module_index: 120, name: L1_DoubleIsoTau36er2p1
        140, -- module_index: 121, name: L1_DoubleJet40er3p0
        412, -- module_index: 122, name: L1_EG25er2p1_HTT125er
         31, -- module_index: 123, name: L1_TripleMu_5_3_3
         25, -- module_index: 124, name: L1_DoubleMu_15_5
         45, -- module_index: 125, name: L1_SingleEG26
         54, -- module_index: 126, name: L1_SingleEG34er2p1
         52, -- module_index: 127, name: L1_SingleEG40
         59, -- module_index: 128, name: L1_SingleIsoEG22
         72, -- module_index: 129, name: L1_SingleIsoEG26er2p1
         64, -- module_index: 130, name: L1_SingleIsoEG32
         77, -- module_index: 131, name: L1_SingleIsoEG36er2p1
        120, -- module_index: 132, name: L1_SingleJet16
        122, -- module_index: 133, name: L1_SingleJet35
          6, -- module_index: 134, name: L1_SingleMu11_LowQ
          2, -- module_index: 135, name: L1_SingleMu3
        192, -- module_index: 136, name: L1_ETM110
        182, -- module_index: 137, name: L1_ETM50
        169, -- module_index: 138, name: L1_HTT320er
        174, -- module_index: 139, name: L1_HTT500er
    others => 0
);

-- ========================================================