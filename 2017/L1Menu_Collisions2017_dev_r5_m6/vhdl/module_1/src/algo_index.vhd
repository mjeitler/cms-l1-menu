-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 38c2787b-f3a1-48e6-b3f8-b7625293f15a

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        379, -- module_index: 0, name: L1_TripleMu_5_3_0_DoubleMu_5_3_OS_Mass_Max17
        268, -- module_index: 1, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        285, -- module_index: 2, name: L1_Mu22er2p1_IsoTau40er2p1
        202, -- module_index: 3, name: L1_ETMHF90
        186, -- module_index: 4, name: L1_ETM80
        168, -- module_index: 5, name: L1_HTT300er
        270, -- module_index: 6, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        279, -- module_index: 7, name: L1_IsoTau40er_ETM85
        187, -- module_index: 8, name: L1_ETM85
        123, -- module_index: 9, name: L1_SingleJet60
        342, -- module_index: 10, name: L1_ETMHF85_Jet60_OR_DoubleJet30
        124, -- module_index: 11, name: L1_SingleJet90
        205, -- module_index: 12, name: L1_ETMHF120
        188, -- module_index: 13, name: L1_ETM90
        352, -- module_index: 14, name: L1_ETMHF90_Jet60_OR_DiJet30woTT28
        201, -- module_index: 15, name: L1_ETMHF80
        413, -- module_index: 16, name: L1_EG27er2p1_HTT200er
        343, -- module_index: 17, name: L1_ETMHF90_Jet60_OR_DoubleJet30
        358, -- module_index: 18, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        344, -- module_index: 19, name: L1_ETMHF95_Jet60_OR_DoubleJet30
        203, -- module_index: 20, name: L1_ETMHF100
        190, -- module_index: 21, name: L1_ETM100
          8, -- module_index: 22, name: L1_SingleMu18
        359, -- module_index: 23, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        427, -- module_index: 24, name: L1_Mu6_DoubleEG10
        390, -- module_index: 25, name: L1_Mu6_DoubleEG17
        354, -- module_index: 26, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        204, -- module_index: 27, name: L1_ETMHF110
        346, -- module_index: 28, name: L1_ETMHF105_Jet60_OR_DoubleJet30
        410, -- module_index: 29, name: L1_Mu6_HTT200er
        254, -- module_index: 30, name: L1_IsoEG24er2p1_HTT100er
        315, -- module_index: 31, name: L1_Mu6_HTT240er
        200, -- module_index: 32, name: L1_ETMHF70
        316, -- module_index: 33, name: L1_Mu6_HTT250er
        355, -- module_index: 34, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        255, -- module_index: 35, name: L1_IsoEG26er2p1_HTT100er
        348, -- module_index: 36, name: L1_ETMHF115_Jet60_OR_DoubleJet30
        350, -- module_index: 37, name: L1_ETMHF70_Jet60_OR_DiJet30woTT28
        162, -- module_index: 38, name: L1_HTT200er
        256, -- module_index: 39, name: L1_IsoEG28er2p1_HTT100er
        163, -- module_index: 40, name: L1_HTT220er
        167, -- module_index: 41, name: L1_HTT280er
        181, -- module_index: 42, name: L1_ETM40
        164, -- module_index: 43, name: L1_HTT240er
        278, -- module_index: 44, name: L1_IsoTau40er_ETM80
        340, -- module_index: 45, name: L1_ETMHF75_Jet60_OR_DoubleJet30
        349, -- module_index: 46, name: L1_ETMHF120_Jet60_OR_DoubleJet30
        351, -- module_index: 47, name: L1_ETMHF80_Jet60_OR_DiJet30woTT28
        183, -- module_index: 48, name: L1_ETM60
        165, -- module_index: 49, name: L1_HTT255er
        281, -- module_index: 50, name: L1_IsoTau40er_ETM95
        341, -- module_index: 51, name: L1_ETMHF80_Jet60_OR_DoubleJet30
        184, -- module_index: 52, name: L1_ETM70
        283, -- module_index: 53, name: L1_IsoTau40er_ETMHF80
        356, -- module_index: 54, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        345, -- module_index: 55, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        284, -- module_index: 56, name: L1_IsoTau40er_ETMHF90
        319, -- module_index: 57, name: L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30
        337, -- module_index: 58, name: L1_DoubleEG6_HTT270er
        320, -- module_index: 59, name: L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30
        357, -- module_index: 60, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        321, -- module_index: 61, name: L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30
        338, -- module_index: 62, name: L1_DoubleEG6_HTT300er
        322, -- module_index: 63, name: L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30
        302, -- module_index: 64, name: L1_DoubleJet30_Mass_Min400_Mu10
        323, -- module_index: 65, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        301, -- module_index: 66, name: L1_DoubleJet30_Mass_Min400_Mu6
        324, -- module_index: 67, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        282, -- module_index: 68, name: L1_IsoTau40er_ETM100
        325, -- module_index: 69, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        329, -- module_index: 70, name: L1_DoubleMu3_SQ_HTT200er
        326, -- module_index: 71, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        327, -- module_index: 72, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        414, -- module_index: 73, name: L1_DoubleJet60er3p0_ETM60
        328, -- module_index: 74, name: L1_DoubleMu3_SQ_HTT100er
        294, -- module_index: 75, name: L1_DoubleJet60er3p0_ETM100
        360, -- module_index: 76, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        330, -- module_index: 77, name: L1_DoubleMu3_SQ_HTT220er
        291, -- module_index: 78, name: L1_DoubleJet60er3p0_ETM70
        331, -- module_index: 79, name: L1_DoubleMu3_SQ_HTT240er
        292, -- module_index: 80, name: L1_DoubleJet60er3p0_ETM80
        317, -- module_index: 81, name: L1_Mu15_HTT100er
        293, -- module_index: 82, name: L1_DoubleJet60er3p0_ETM90
        280, -- module_index: 83, name: L1_IsoTau40er_ETM90
        258, -- module_index: 84, name: L1_Mu18_HTT100er
        339, -- module_index: 85, name: L1_ETMHF70_Jet60_OR_DoubleJet30
        259, -- module_index: 86, name: L1_Mu18_Jet24er3p0
        142, -- module_index: 87, name: L1_DoubleJet60er3p0
        424, -- module_index: 88, name: L1_DoubleEG6_HTT255er
         20, -- module_index: 89, name: L1_DoubleMu0
        336, -- module_index: 90, name: L1_DoubleEG6_HTT250er
        417, -- module_index: 91, name: L1_DoubleMu0_ETM40
        335, -- module_index: 92, name: L1_DoubleEG6_HTT240er
        257, -- module_index: 93, name: L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        353, -- module_index: 94, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        418, -- module_index: 95, name: L1_DoubleMu0_ETM55
        166, -- module_index: 96, name: L1_HTT270er
        421, -- module_index: 97, name: L1_DoubleMu0_ETM70
        269, -- module_index: 98, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        419, -- module_index: 99, name: L1_DoubleMu0_ETM60
        347, -- module_index: 100, name: L1_ETMHF110_Jet60_OR_DoubleJet30
        420, -- module_index: 101, name: L1_DoubleMu0_ETM65
        318, -- module_index: 102, name: L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30
        189, -- module_index: 103, name: L1_ETM95
        251, -- module_index: 104, name: L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3
        299, -- module_index: 105, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        298, -- module_index: 106, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        378, -- module_index: 107, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        149, -- module_index: 108, name: L1_TripleJet_92_76_64_VBF
         81, -- module_index: 109, name: L1_DoubleEG_18_17
         83, -- module_index: 110, name: L1_DoubleEG_22_10
         87, -- module_index: 111, name: L1_DoubleEG_24_17
        296, -- module_index: 112, name: L1_DoubleEG_Iso24_10
        110, -- module_index: 113, name: L1_DoubleIsoTau34er2p1
        145, -- module_index: 114, name: L1_DoubleJet112er3p0
        104, -- module_index: 115, name: L1_DoubleTau50er2p1
         29, -- module_index: 116, name: L1_TripleMu_4_4_4
         22, -- module_index: 117, name: L1_DoubleMu_12_5
        411, -- module_index: 118, name: L1_Mu8_HTT150er
        431, -- module_index: 119, name: L1_SingleEG2_BptxAND
        432, -- module_index: 120, name: L1_SingleJet12_BptxAND
        451, -- module_index: 121, name: L1_NotBptxOR
        400, -- module_index: 122, name: L1_IsolatedBunch
        437, -- module_index: 123, name: L1_MinimumBiasHF0_OR_BptxAND
        402, -- module_index: 124, name: L1_FirstBunchAfterTrain
        243, -- module_index: 125, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        461, -- module_index: 126, name: L1_BptxOR
        245, -- module_index: 127, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        434, -- module_index: 128, name: L1_ETT70_BptxAND
        436, -- module_index: 129, name: L1_MinimumBiasHF0_AND_BptxAND
        453, -- module_index: 130, name: L1_ZeroBias_copy
        450, -- module_index: 131, name: L1_AlwaysTrue
        241, -- module_index: 132, name: L1_SingleMuOpen_NotBptxOR_3BX
        435, -- module_index: 133, name: L1_ETT75_BptxAND
        433, -- module_index: 134, name: L1_ETT55_BptxAND
          1, -- module_index: 135, name: L1_SingleMuOpen
        458, -- module_index: 136, name: L1_ZeroBias
        240, -- module_index: 137, name: L1_SingleMuOpen_NotBptxOR
        242, -- module_index: 138, name: L1_SingleJet20er3p0_NotBptxOR
        401, -- module_index: 139, name: L1_FirstBunchInTrain
        244, -- module_index: 140, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        128, -- module_index: 141, name: L1_SingleJet160
        102, -- module_index: 142, name: L1_SingleTau100er2p1
          7, -- module_index: 143, name: L1_SingleMu16
          0, -- module_index: 144, name: L1_SingleMuCosmics
        170, -- module_index: 145, name: L1_HTT340er
    others => 0
);

-- ========================================================