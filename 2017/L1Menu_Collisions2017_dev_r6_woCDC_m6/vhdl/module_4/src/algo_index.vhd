-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        474, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        457, -- module_index: 1, name: L1_BPTX_BeamGas_B2_VME
        471, -- module_index: 2, name: L1_BPTX_OR_Ref3_VME
        477, -- module_index: 3, name: L1_FirstCollisionInTrain
        200, -- module_index: 4, name: L1_ETM100
        354, -- module_index: 5, name: L1_ETMHF100_HTT60
        315, -- module_index: 6, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        410, -- module_index: 7, name: L1_Mu6_HTT200er
        133, -- module_index: 8, name: L1_SingleJet60
        333, -- module_index: 9, name: L1_ETMHF90_Jet60_OR_DoubleJet30
        348, -- module_index: 10, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        349, -- module_index: 11, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        334, -- module_index: 12, name: L1_ETMHF95_Jet60_OR_DoubleJet30
        346, -- module_index: 13, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        214, -- module_index: 14, name: L1_ETMHF110
        336, -- module_index: 15, name: L1_ETMHF105_Jet60_OR_DoubleJet30
        134, -- module_index: 16, name: L1_SingleJet90
        314, -- module_index: 17, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
         17, -- module_index: 18, name: L1_SingleMu18
        337, -- module_index: 19, name: L1_ETMHF110_Jet60_OR_DoubleJet30
        356, -- module_index: 20, name: L1_ETMHF120_HTT60
        215, -- module_index: 21, name: L1_ETMHF120
        338, -- module_index: 22, name: L1_ETMHF115_Jet60_OR_DoubleJet30
        283, -- module_index: 23, name: L1_DoubleJet30_Mass_Min400_Mu10
        191, -- module_index: 24, name: L1_ETM40
        309, -- module_index: 25, name: L1_DoubleMu0_ETMHF50_Jet60_OR_DoubleJet30
        248, -- module_index: 26, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        307, -- module_index: 27, name: L1_Mu15_HTT100er
        210, -- module_index: 28, name: L1_ETMHF70
        345, -- module_index: 29, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        238, -- module_index: 30, name: L1_Mu18_HTT100er
        193, -- module_index: 31, name: L1_ETM60
        239, -- module_index: 32, name: L1_Mu18_Jet24er3p0
        194, -- module_index: 33, name: L1_ETM70
        211, -- module_index: 34, name: L1_ETMHF80
        172, -- module_index: 35, name: L1_HTT200er
        414, -- module_index: 36, name: L1_DoubleJet60er3p0_ETM60
        340, -- module_index: 37, name: L1_ETMHF70_Jet60_OR_DiJet30woTT28
        353, -- module_index: 38, name: L1_ETMHF90_HTT60
        329, -- module_index: 39, name: L1_ETMHF70_Jet60_OR_DoubleJet30
        196, -- module_index: 40, name: L1_ETM80
        350, -- module_index: 41, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        271, -- module_index: 42, name: L1_DoubleJet60er3p0_ETM70
        175, -- module_index: 43, name: L1_HTT255er
        330, -- module_index: 44, name: L1_ETMHF75_Jet60_OR_DoubleJet30
        272, -- module_index: 45, name: L1_DoubleJet60er3p0_ETM80
        197, -- module_index: 46, name: L1_ETM85
        273, -- module_index: 47, name: L1_DoubleJet60er3p0_ETM90
        352, -- module_index: 48, name: L1_ETMHF80_HTT60
        176, -- module_index: 49, name: L1_HTT270er
        250, -- module_index: 50, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        282, -- module_index: 51, name: L1_DoubleJet30_Mass_Min400_Mu6
        198, -- module_index: 52, name: L1_ETM90
        177, -- module_index: 53, name: L1_HTT280er
        355, -- module_index: 54, name: L1_ETMHF110_HTT60
        347, -- module_index: 55, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        212, -- module_index: 56, name: L1_ETMHF90
        199, -- module_index: 57, name: L1_ETM95
        413, -- module_index: 58, name: L1_EG27er2p1_HTT200er
        332, -- module_index: 59, name: L1_ETMHF85_Jet60_OR_DoubleJet30
        213, -- module_index: 60, name: L1_ETMHF100
        342, -- module_index: 61, name: L1_ETMHF90_Jet60_OR_DiJet30woTT28
        343, -- module_index: 62, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        341, -- module_index: 63, name: L1_ETMHF80_Jet60_OR_DiJet30woTT28
        339, -- module_index: 64, name: L1_ETMHF120_Jet60_OR_DoubleJet30
        417, -- module_index: 65, name: L1_DoubleMu0_ETM40
        274, -- module_index: 66, name: L1_DoubleJet60er3p0_ETM100
        325, -- module_index: 67, name: L1_DoubleEG6_HTT240er
        418, -- module_index: 68, name: L1_DoubleMu0_ETM55
        419, -- module_index: 69, name: L1_DoubleMu0_ETM60
        424, -- module_index: 70, name: L1_DoubleEG6_HTT255er
        420, -- module_index: 71, name: L1_DoubleMu0_ETM65
        331, -- module_index: 72, name: L1_ETMHF80_Jet60_OR_DoubleJet30
        421, -- module_index: 73, name: L1_DoubleMu0_ETM70
        327, -- module_index: 74, name: L1_DoubleEG6_HTT270er
        308, -- module_index: 75, name: L1_DoubleMu0_ETMHF40_Jet60_OR_DoubleJet30
        261, -- module_index: 76, name: L1_IsoTau40er_ETM95
        328, -- module_index: 77, name: L1_DoubleEG6_HTT300er
        152, -- module_index: 78, name: L1_DoubleJet60er3p0
        310, -- module_index: 79, name: L1_DoubleMu0_ETMHF60_Jet60_OR_DoubleJet30
        259, -- module_index: 80, name: L1_IsoTau40er_ETM85
        311, -- module_index: 81, name: L1_DoubleMu0_ETMHF70_Jet60_OR_DoubleJet30
        335, -- module_index: 82, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        312, -- module_index: 83, name: L1_DoubleMu0_ETMHF80_Jet60_OR_DoubleJet30
        174, -- module_index: 84, name: L1_HTT240er
        234, -- module_index: 85, name: L1_IsoEG24er2p1_HTT100er
        249, -- module_index: 86, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        237, -- module_index: 87, name: L1_IsoEG24er2p1_TripleJet_26er3p0_26_26er3p0
        235, -- module_index: 88, name: L1_IsoEG26er2p1_HTT100er
        236, -- module_index: 89, name: L1_IsoEG28er2p1_HTT100er
        313, -- module_index: 90, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        258, -- module_index: 91, name: L1_IsoTau40er_ETM80
        344, -- module_index: 92, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        262, -- module_index: 93, name: L1_IsoTau40er_ETM100
        265, -- module_index: 94, name: L1_Mu22er2p1_IsoTau40er2p1
        178, -- module_index: 95, name: L1_HTT300er
        319, -- module_index: 96, name: L1_DoubleMu3_SQ_HTT200er
        316, -- module_index: 97, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        427, -- module_index: 98, name: L1_Mu6_DoubleEG10
        317, -- module_index: 99, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        390, -- module_index: 100, name: L1_Mu6_DoubleEG17
        318, -- module_index: 101, name: L1_DoubleMu3_SQ_HTT100er
         30, -- module_index: 102, name: L1_DoubleMu0
        260, -- module_index: 103, name: L1_IsoTau40er_ETM90
        320, -- module_index: 104, name: L1_DoubleMu3_SQ_HTT220er
        173, -- module_index: 105, name: L1_HTT220er
        326, -- module_index: 106, name: L1_DoubleEG6_HTT250er
        264, -- module_index: 107, name: L1_IsoTau40er_ETMHF90
        321, -- module_index: 108, name: L1_DoubleMu3_SQ_HTT240er
        263, -- module_index: 109, name: L1_IsoTau40er_ETMHF80
        305, -- module_index: 110, name: L1_Mu6_HTT240er
        306, -- module_index: 111, name: L1_Mu6_HTT250er
        162, -- module_index: 112, name: L1_QuadJet60er3p0
        230, -- module_index: 113, name: L1_IsoEG24er2p1_Jet26er3p0_dR_Min0p3
        430, -- module_index: 114, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================