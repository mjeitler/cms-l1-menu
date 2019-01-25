-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r2

-- Unique ID of L1 Trigger Menu:
-- 04d867d5-3c53-47f0-a97b-d8a1846f61a4

-- Unique ID of firmware implementation:
-- 1617e19e-196f-43a1-922a-63b5e360f44d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        193, -- module_index: 3, name: L1_ETM100
        231, -- module_index: 4, name: L1_LooseIsoEG28er2p1_HTT100er
        230, -- module_index: 5, name: L1_LooseIsoEG26er2p1_HTT100er
        269, -- module_index: 6, name: L1_Mu22er2p1_IsoTau40er2p1
        366, -- module_index: 7, name: L1_ETMHF80_HTT60er
        134, -- module_index: 8, name: L1_SingleJet60
        153, -- module_index: 9, name: L1_DoubleJet60er2p7
        277, -- module_index: 10, name: L1_DoubleJet60er2p7_ETM90
        184, -- module_index: 11, name: L1_ETM40
        170, -- module_index: 12, name: L1_HTT200er
        278, -- module_index: 13, name: L1_DoubleJet60er2p7_ETM100
        337, -- module_index: 14, name: L1_DoubleEG6_HTT250er
        171, -- module_index: 15, name: L1_HTT220er
        336, -- module_index: 16, name: L1_DoubleEG6_HTT240er
        186, -- module_index: 17, name: L1_ETM60
        172, -- module_index: 18, name: L1_HTT240er
        276, -- module_index: 19, name: L1_DoubleJet60er2p7_ETM80
        439, -- module_index: 20, name: L1_DoubleEG6_HTT255er
        202, -- module_index: 21, name: L1_ETMHF100
        243, -- module_index: 22, name: L1_HTT250er_QuadJet_70_55_40_35_er2p5
        323, -- module_index: 23, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        173, -- module_index: 24, name: L1_HTT255er
        338, -- module_index: 25, name: L1_DoubleEG6_HTT270er
        255, -- module_index: 26, name: L1_IsoTau40er_ETM80
        324, -- module_index: 27, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        174, -- module_index: 28, name: L1_HTT270er
        189, -- module_index: 29, name: L1_ETM80
        339, -- module_index: 30, name: L1_DoubleEG6_HTT300er
        175, -- module_index: 31, name: L1_HTT280er
        317, -- module_index: 32, name: L1_Mu15_HTT100er
        327, -- module_index: 33, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        244, -- module_index: 34, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        190, -- module_index: 35, name: L1_ETM85
        176, -- module_index: 36, name: L1_HTT300er
        341, -- module_index: 37, name: L1_DoubleEG8er2p6_HTT270er
        245, -- module_index: 38, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        331, -- module_index: 39, name: L1_DoubleMu3_SQ_HTT240er
        342, -- module_index: 40, name: L1_DoubleEG8er2p6_HTT300er
        325, -- module_index: 41, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        368, -- module_index: 42, name: L1_ETMHF100_HTT60er
        192, -- module_index: 43, name: L1_ETM95
        340, -- module_index: 44, name: L1_DoubleEG8er2p6_HTT255er
         17, -- module_index: 45, name: L1_SingleMu18
        432, -- module_index: 46, name: L1_DoubleMu0_ETM40
        329, -- module_index: 47, name: L1_DoubleMu3_SQ_HTT200er
        363, -- module_index: 48, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        442, -- module_index: 49, name: L1_Mu6_DoubleEG10
        405, -- module_index: 50, name: L1_Mu6_DoubleEG17
        203, -- module_index: 51, name: L1_ETMHF110
        326, -- module_index: 52, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        357, -- module_index: 53, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        433, -- module_index: 54, name: L1_DoubleMu0_ETM55
        349, -- module_index: 55, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        434, -- module_index: 56, name: L1_DoubleMu0_ETM60
        290, -- module_index: 57, name: L1_DoubleJet30_Mass_Min400_Mu10
        315, -- module_index: 58, name: L1_Mu6_HTT240er
        289, -- module_index: 59, name: L1_DoubleJet30_Mass_Min400_Mu6
        316, -- module_index: 60, name: L1_Mu6_HTT250er
        204, -- module_index: 61, name: L1_ETMHF120
        234, -- module_index: 62, name: L1_Mu18_Jet24er2p7
        370, -- module_index: 63, name: L1_ETMHF120_HTT60er
        199, -- module_index: 64, name: L1_ETMHF70
         30, -- module_index: 65, name: L1_DoubleMu0
        233, -- module_index: 66, name: L1_Mu18_HTT100er
        359, -- module_index: 67, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        429, -- module_index: 68, name: L1_DoubleJet60er2p7_ETM60
        260, -- module_index: 69, name: L1_IsoTau40er_ETM105
        369, -- module_index: 70, name: L1_ETMHF110_HTT60er
        259, -- module_index: 71, name: L1_IsoTau40er_ETM100
        328, -- module_index: 72, name: L1_DoubleMu3_SQ_HTT100er
        261, -- module_index: 73, name: L1_IsoTau40er_ETM110
        360, -- module_index: 74, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        200, -- module_index: 75, name: L1_ETMHF80
        262, -- module_index: 76, name: L1_IsoTau40er_ETM115
        263, -- module_index: 77, name: L1_IsoTau40er_ETM120
        425, -- module_index: 78, name: L1_Mu6_HTT200er
        361, -- module_index: 79, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        201, -- module_index: 80, name: L1_ETMHF90
        330, -- module_index: 81, name: L1_DoubleMu3_SQ_HTT220er
        135, -- module_index: 82, name: L1_SingleJet90
        367, -- module_index: 83, name: L1_ETMHF90_HTT60er
        256, -- module_index: 84, name: L1_IsoTau40er_ETM85
        362, -- module_index: 85, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        257, -- module_index: 86, name: L1_IsoTau40er_ETM90
        266, -- module_index: 87, name: L1_IsoTau40er_ETMHF100
        258, -- module_index: 88, name: L1_IsoTau40er_ETM95
        435, -- module_index: 89, name: L1_DoubleMu0_ETM65
        267, -- module_index: 90, name: L1_IsoTau40er_ETMHF110
        268, -- module_index: 91, name: L1_IsoTau40er_ETMHF120
        275, -- module_index: 92, name: L1_DoubleJet60er2p7_ETM70
        264, -- module_index: 93, name: L1_IsoTau40er_ETMHF80
        364, -- module_index: 94, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        428, -- module_index: 95, name: L1_EG27er2p1_HTT200er
        191, -- module_index: 96, name: L1_ETM90
        265, -- module_index: 97, name: L1_IsoTau40er_ETMHF90
        436, -- module_index: 98, name: L1_DoubleMu0_ETM70
        229, -- module_index: 99, name: L1_LooseIsoEG24er2p1_HTT100er
        358, -- module_index: 100, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        194, -- module_index: 101, name: L1_ETM105
        232, -- module_index: 102, name: L1_LooseIsoEG24er2p1_TripleJet_26er2p7_26_26er2p7
        195, -- module_index: 103, name: L1_ETM110
        197, -- module_index: 104, name: L1_ETM120
        196, -- module_index: 105, name: L1_ETM115
        187, -- module_index: 106, name: L1_ETM70
        377, -- module_index: 107, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        387, -- module_index: 108, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 109, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        286, -- module_index: 110, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        288, -- module_index: 111, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        221, -- module_index: 112, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
        228, -- module_index: 113, name: L1_LooseIsoEG30er2p1_Jet34er2p7_dR_Min0p3
        401, -- module_index: 114, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
    others => 0
);

-- ========================================================