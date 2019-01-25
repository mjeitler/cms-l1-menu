-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- bf4bfc65-9d4c-4074-8054-cefe91c0eba5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        190, -- module_index: 0, name: L1_ETM100
        272, -- module_index: 1, name: L1_DoubleJet60er3p0_ETM100
        342, -- module_index: 2, name: L1_ETMHF90_Jet60_OR_DoubleJet30
        196, -- module_index: 3, name: L1_ETMHF70
        331, -- module_index: 4, name: L1_DoubleEG6_HTT240er
        255, -- module_index: 5, name: L1_IsoTau40er_ETM110
        270, -- module_index: 6, name: L1_DoubleJet60er3p0_ETM80
        424, -- module_index: 7, name: L1_DoubleEG6_HTT255er
        271, -- module_index: 8, name: L1_DoubleJet60er3p0_ETM90
        197, -- module_index: 9, name: L1_ETMHF80
        333, -- module_index: 10, name: L1_DoubleEG6_HTT270er
        312, -- module_index: 11, name: L1_Mu15_HTT100er
        349, -- module_index: 12, name: L1_ETMHF70_Jet60_OR_DiJet30woTT28
        357, -- module_index: 13, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        420, -- module_index: 14, name: L1_DoubleMu0_ETM65
        338, -- module_index: 15, name: L1_ETMHF70_Jet60_OR_DoubleJet30
        319, -- module_index: 16, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        355, -- module_index: 17, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        320, -- module_index: 18, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        335, -- module_index: 19, name: L1_DoubleEG8er2p6_HTT255er
        321, -- module_index: 20, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        167, -- module_index: 21, name: L1_HTT200er
        332, -- module_index: 22, name: L1_DoubleEG6_HTT250er
        322, -- module_index: 23, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        336, -- module_index: 24, name: L1_DoubleEG8er2p6_HTT270er
        168, -- module_index: 25, name: L1_HTT220er
        198, -- module_index: 26, name: L1_ETMHF90
        339, -- module_index: 27, name: L1_ETMHF75_Jet60_OR_DoubleJet30
        192, -- module_index: 28, name: L1_ETM110
        325, -- module_index: 29, name: L1_DoubleMu3_SQ_HTT220er
        169, -- module_index: 30, name: L1_HTT240er
        323, -- module_index: 31, name: L1_DoubleMu3_SQ_HTT100er
        340, -- module_index: 32, name: L1_ETMHF80_Jet60_OR_DoubleJet30
        326, -- module_index: 33, name: L1_DoubleMu3_SQ_HTT240er
        356, -- module_index: 34, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        341, -- module_index: 35, name: L1_ETMHF85_Jet60_OR_DoubleJet30
        170, -- module_index: 36, name: L1_HTT255er
        171, -- module_index: 37, name: L1_HTT270er
        263, -- module_index: 38, name: L1_Mu22er2p1_IsoTau40er2p1
        362, -- module_index: 39, name: L1_ETMHF90_HTT60er
        421, -- module_index: 40, name: L1_DoubleMu0_ETM70
        172, -- module_index: 41, name: L1_HTT280er
        351, -- module_index: 42, name: L1_ETMHF90_Jet60_OR_DiJet30woTT28
        337, -- module_index: 43, name: L1_DoubleEG8er2p6_HTT300er
        191, -- module_index: 44, name: L1_ETM105
        418, -- module_index: 45, name: L1_DoubleMu0_ETM55
        419, -- module_index: 46, name: L1_DoubleMu0_ETM60
        345, -- module_index: 47, name: L1_ETMHF105_Jet60_OR_DoubleJet30
        173, -- module_index: 48, name: L1_HTT300er
        343, -- module_index: 49, name: L1_ETMHF95_Jet60_OR_DoubleJet30
        240, -- module_index: 50, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        283, -- module_index: 51, name: L1_DoubleJet30_Mass_Min400_Mu6
        361, -- module_index: 52, name: L1_ETMHF80_HTT60er
        193, -- module_index: 53, name: L1_ETM115
        313, -- module_index: 54, name: L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30
        314, -- module_index: 55, name: L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30
        315, -- module_index: 56, name: L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30
        316, -- module_index: 57, name: L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30
        153, -- module_index: 58, name: L1_DoubleJet60er3p0
        181, -- module_index: 59, name: L1_ETM40
        258, -- module_index: 60, name: L1_IsoTau40er_ETMHF80
        414, -- module_index: 61, name: L1_DoubleJet60er3p0_ETM60
        284, -- module_index: 62, name: L1_DoubleJet30_Mass_Min400_Mu10
        224, -- module_index: 63, name: L1_LooseIsoEG24er2p1_HTT100er
        413, -- module_index: 64, name: L1_EG27er2p1_HTT200er
        184, -- module_index: 65, name: L1_ETM70
        269, -- module_index: 66, name: L1_DoubleJet60er3p0_ETM70
        183, -- module_index: 67, name: L1_ETM60
        427, -- module_index: 68, name: L1_Mu6_DoubleEG10
        227, -- module_index: 69, name: L1_LooseIsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        396, -- module_index: 70, name: L1_Mu6_DoubleEG17
        226, -- module_index: 71, name: L1_LooseIsoEG28er2p1_HTT100er
         30, -- module_index: 72, name: L1_DoubleMu0
        225, -- module_index: 73, name: L1_LooseIsoEG26er2p1_HTT100er
        254, -- module_index: 74, name: L1_IsoTau40er_ETM105
        194, -- module_index: 75, name: L1_ETM120
        186, -- module_index: 76, name: L1_ETM80
        253, -- module_index: 77, name: L1_IsoTau40er_ETM100
        417, -- module_index: 78, name: L1_DoubleMu0_ETM40
        310, -- module_index: 79, name: L1_Mu6_HTT240er
        311, -- module_index: 80, name: L1_Mu6_HTT250er
        200, -- module_index: 81, name: L1_ETMHF110
        187, -- module_index: 82, name: L1_ETM85
        256, -- module_index: 83, name: L1_IsoTau40er_ETM115
        250, -- module_index: 84, name: L1_IsoTau40er_ETM85
        318, -- module_index: 85, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        257, -- module_index: 86, name: L1_IsoTau40er_ETM120
        188, -- module_index: 87, name: L1_ETM90
        410, -- module_index: 88, name: L1_Mu6_HTT200er
        359, -- module_index: 89, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        239, -- module_index: 90, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        249, -- module_index: 91, name: L1_IsoTau40er_ETM80
        363, -- module_index: 92, name: L1_ETMHF100_HTT60er
        189, -- module_index: 93, name: L1_ETM95
        135, -- module_index: 94, name: L1_SingleJet90
        199, -- module_index: 95, name: L1_ETMHF100
        251, -- module_index: 96, name: L1_IsoTau40er_ETM90
        358, -- module_index: 97, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        260, -- module_index: 98, name: L1_IsoTau40er_ETMHF100
        334, -- module_index: 99, name: L1_DoubleEG6_HTT300er
        252, -- module_index: 100, name: L1_IsoTau40er_ETM95
        317, -- module_index: 101, name: L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30
        261, -- module_index: 102, name: L1_IsoTau40er_ETMHF110
        352, -- module_index: 103, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        262, -- module_index: 104, name: L1_IsoTau40er_ETMHF120
        350, -- module_index: 105, name: L1_ETMHF80_Jet60_OR_DiJet30woTT28
        344, -- module_index: 106, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        364, -- module_index: 107, name: L1_ETMHF110_HTT60er
        228, -- module_index: 108, name: L1_Mu18_HTT100er
        134, -- module_index: 109, name: L1_SingleJet60
        238, -- module_index: 110, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        259, -- module_index: 111, name: L1_IsoTau40er_ETMHF90
        229, -- module_index: 112, name: L1_Mu18_Jet24er3p0
        353, -- module_index: 113, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        348, -- module_index: 114, name: L1_ETMHF120_Jet60_OR_DoubleJet30
        346, -- module_index: 115, name: L1_ETMHF110_Jet60_OR_DoubleJet30
        365, -- module_index: 116, name: L1_ETMHF120_HTT60er
        354, -- module_index: 117, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        201, -- module_index: 118, name: L1_ETMHF120
        347, -- module_index: 119, name: L1_ETMHF115_Jet60_OR_DoubleJet30
         17, -- module_index: 120, name: L1_SingleMu18
        324, -- module_index: 121, name: L1_DoubleMu3_SQ_HTT200er
        490, -- module_index: 122, name: L1_CDC_3_TOP120_DPHI1p570_3p142
        496, -- module_index: 123, name: L1_CDC_3_er1p2_TOP120_DPHI2p618_3p142
        502, -- module_index: 124, name: L1_CDC_3_er2p1_TOP120_DPHI2p618_3p142
        508, -- module_index: 125, name: L1_CDCp1_3_er1p2_TOP120_DPHI2p618_3p142
        164, -- module_index: 126, name: L1_QuadJet60er3p0
        211, -- module_index: 127, name: L1_DoubleJet30_Mass_Min300_dEta_Max1p5
        285, -- module_index: 128, name: L1_LooseIsoEG18er2p1_IsoTau24er2p1_dR_Min0p3
        222, -- module_index: 129, name: L1_LooseIsoEG28er2p1_Jet34er3p0_dR_Min0p3
        247, -- module_index: 130, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================