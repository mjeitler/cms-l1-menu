-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test

-- Unique ID of L1 Trigger Menu:
-- cd1736f5-2c73-49e7-bb57-ba14e8ac44cd

-- Unique ID of firmware implementation:
-- bafbf2d2-d2a5-4d4e-a6f8-e391e3ff31e5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        474, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        457, -- module_index: 1, name: L1_BPTX_BeamGas_B2_VME
        471, -- module_index: 2, name: L1_BPTX_OR_Ref3_VME
        477, -- module_index: 3, name: L1_FirstCollisionInTrain
        190, -- module_index: 4, name: L1_ETM100
        173, -- module_index: 5, name: L1_HTT300er
        315, -- module_index: 6, name: L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30
        316, -- module_index: 7, name: L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30
        153, -- module_index: 8, name: L1_DoubleJet60er3p0
        317, -- module_index: 9, name: L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30
        414, -- module_index: 10, name: L1_DoubleJet60er3p0_ETM60
        194, -- module_index: 11, name: L1_ETM120
        359, -- module_index: 12, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        272, -- module_index: 13, name: L1_DoubleJet60er3p0_ETM100
        314, -- module_index: 14, name: L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30
        332, -- module_index: 15, name: L1_DoubleEG6_HTT250er
        256, -- module_index: 16, name: L1_IsoTau40er_ETM115
        172, -- module_index: 17, name: L1_HTT280er
        331, -- module_index: 18, name: L1_DoubleEG6_HTT240er
         17, -- module_index: 19, name: L1_SingleMu18
        424, -- module_index: 20, name: L1_DoubleEG6_HTT255er
        361, -- module_index: 21, name: L1_ETMHF80_HTT60er
        181, -- module_index: 22, name: L1_ETM40
        271, -- module_index: 23, name: L1_DoubleJet60er3p0_ETM90
        333, -- module_index: 24, name: L1_DoubleEG6_HTT270er
        258, -- module_index: 25, name: L1_IsoTau40er_ETMHF80
        318, -- module_index: 26, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        183, -- module_index: 27, name: L1_ETM60
        334, -- module_index: 28, name: L1_DoubleEG6_HTT300er
        319, -- module_index: 29, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        184, -- module_index: 30, name: L1_ETM70
        320, -- module_index: 31, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        324, -- module_index: 32, name: L1_DoubleMu3_SQ_HTT200er
        321, -- module_index: 33, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        351, -- module_index: 34, name: L1_ETMHF90_Jet60_OR_DiJet30woTT28
        322, -- module_index: 35, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        254, -- module_index: 36, name: L1_IsoTau40er_ETM105
        200, -- module_index: 37, name: L1_ETMHF110
        186, -- module_index: 38, name: L1_ETM80
        253, -- module_index: 39, name: L1_IsoTau40er_ETM100
        325, -- module_index: 40, name: L1_DoubleMu3_SQ_HTT220er
        255, -- module_index: 41, name: L1_IsoTau40er_ETM110
        326, -- module_index: 42, name: L1_DoubleMu3_SQ_HTT240er
        259, -- module_index: 43, name: L1_IsoTau40er_ETMHF90
        187, -- module_index: 44, name: L1_ETM85
        134, -- module_index: 45, name: L1_SingleJet60
         30, -- module_index: 46, name: L1_DoubleMu0
        417, -- module_index: 47, name: L1_DoubleMu0_ETM40
        257, -- module_index: 48, name: L1_IsoTau40er_ETM120
        188, -- module_index: 49, name: L1_ETM90
        193, -- module_index: 50, name: L1_ETM115
        249, -- module_index: 51, name: L1_IsoTau40er_ETM80
        363, -- module_index: 52, name: L1_ETMHF100_HTT60er
        189, -- module_index: 53, name: L1_ETM95
        135, -- module_index: 54, name: L1_SingleJet90
        418, -- module_index: 55, name: L1_DoubleMu0_ETM55
        250, -- module_index: 56, name: L1_IsoTau40er_ETM85
        419, -- module_index: 57, name: L1_DoubleMu0_ETM60
        356, -- module_index: 58, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        251, -- module_index: 59, name: L1_IsoTau40er_ETM90
        284, -- module_index: 60, name: L1_DoubleJet30_Mass_Min400_Mu10
        313, -- module_index: 61, name: L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30
        283, -- module_index: 62, name: L1_DoubleJet30_Mass_Min400_Mu6
        191, -- module_index: 63, name: L1_ETM105
        358, -- module_index: 64, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        396, -- module_index: 65, name: L1_Mu6_DoubleEG17
        262, -- module_index: 66, name: L1_IsoTau40er_ETMHF120
        364, -- module_index: 67, name: L1_ETMHF110_HTT60er
        228, -- module_index: 68, name: L1_Mu18_HTT100er
        345, -- module_index: 69, name: L1_ETMHF105_Jet60_OR_DoubleJet30
        335, -- module_index: 70, name: L1_DoubleEG8er2p6_HTT255er
        229, -- module_index: 71, name: L1_Mu18_Jet24er3p0
        353, -- module_index: 72, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        346, -- module_index: 73, name: L1_ETMHF110_Jet60_OR_DoubleJet30
        365, -- module_index: 74, name: L1_ETMHF120_HTT60er
        199, -- module_index: 75, name: L1_ETMHF100
        338, -- module_index: 76, name: L1_ETMHF70_Jet60_OR_DoubleJet30
        224, -- module_index: 77, name: L1_LooseIsoEG24er2p1_HTT100er
        347, -- module_index: 78, name: L1_ETMHF115_Jet60_OR_DoubleJet30
        196, -- module_index: 79, name: L1_ETMHF70
        354, -- module_index: 80, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        348, -- module_index: 81, name: L1_ETMHF120_Jet60_OR_DoubleJet30
        352, -- module_index: 82, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        344, -- module_index: 83, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        427, -- module_index: 84, name: L1_Mu6_DoubleEG10
        227, -- module_index: 85, name: L1_LooseIsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        336, -- module_index: 86, name: L1_DoubleEG8er2p6_HTT270er
        197, -- module_index: 87, name: L1_ETMHF80
        226, -- module_index: 88, name: L1_LooseIsoEG28er2p1_HTT100er
        349, -- module_index: 89, name: L1_ETMHF70_Jet60_OR_DiJet30woTT28
        420, -- module_index: 90, name: L1_DoubleMu0_ETM65
        225, -- module_index: 91, name: L1_LooseIsoEG26er2p1_HTT100er
        410, -- module_index: 92, name: L1_Mu6_HTT200er
        323, -- module_index: 93, name: L1_DoubleMu3_SQ_HTT100er
        362, -- module_index: 94, name: L1_ETMHF90_HTT60er
        355, -- module_index: 95, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        269, -- module_index: 96, name: L1_DoubleJet60er3p0_ETM70
        310, -- module_index: 97, name: L1_Mu6_HTT240er
        339, -- module_index: 98, name: L1_ETMHF75_Jet60_OR_DoubleJet30
        252, -- module_index: 99, name: L1_IsoTau40er_ETM95
        311, -- module_index: 100, name: L1_Mu6_HTT250er
        167, -- module_index: 101, name: L1_HTT200er
        201, -- module_index: 102, name: L1_ETMHF120
        168, -- module_index: 103, name: L1_HTT220er
        198, -- module_index: 104, name: L1_ETMHF90
        192, -- module_index: 105, name: L1_ETM110
        350, -- module_index: 106, name: L1_ETMHF80_Jet60_OR_DiJet30woTT28
        421, -- module_index: 107, name: L1_DoubleMu0_ETM70
        169, -- module_index: 108, name: L1_HTT240er
        337, -- module_index: 109, name: L1_DoubleEG8er2p6_HTT300er
        340, -- module_index: 110, name: L1_ETMHF80_Jet60_OR_DoubleJet30
        238, -- module_index: 111, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        261, -- module_index: 112, name: L1_IsoTau40er_ETMHF110
        341, -- module_index: 113, name: L1_ETMHF85_Jet60_OR_DoubleJet30
        170, -- module_index: 114, name: L1_HTT255er
        357, -- module_index: 115, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        171, -- module_index: 116, name: L1_HTT270er
        270, -- module_index: 117, name: L1_DoubleJet60er3p0_ETM80
        263, -- module_index: 118, name: L1_Mu22er2p1_IsoTau40er2p1
        312, -- module_index: 119, name: L1_Mu15_HTT100er
        240, -- module_index: 120, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        343, -- module_index: 121, name: L1_ETMHF95_Jet60_OR_DoubleJet30
        260, -- module_index: 122, name: L1_IsoTau40er_ETMHF100
        239, -- module_index: 123, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        413, -- module_index: 124, name: L1_EG27er2p1_HTT200er
        342, -- module_index: 125, name: L1_ETMHF90_Jet60_OR_DoubleJet30
        373, -- module_index: 126, name: L1_DoubleMu5_SQ_OS_Mass7to18
        494, -- module_index: 127, name: L1_CDC_3_er1p2_TOP120_DPHI1p570_3p142
        500, -- module_index: 128, name: L1_CDC_3_er2p1_TOP120_DPHI1p570_3p142
        506, -- module_index: 129, name: L1_CDC_SingleMu_3_er2p1_TOP120_DPHI2p618_3p142
        162, -- module_index: 130, name: L1_QuadJet40er3p0
        278, -- module_index: 131, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        279, -- module_index: 132, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        281, -- module_index: 133, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        215, -- module_index: 134, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        220, -- module_index: 135, name: L1_LooseIsoEG24er2p1_Jet26er3p0_dR_Min0p3
        429, -- module_index: 136, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================