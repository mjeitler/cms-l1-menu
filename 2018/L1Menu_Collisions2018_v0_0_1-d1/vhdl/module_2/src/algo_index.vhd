-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_1

-- Unique ID of L1 Trigger Menu:
-- f7e2044d-0bfe-4e94-a2b8-79dd9116012f

-- Unique ID of firmware implementation:
-- 0d6d822f-ff5a-48d9-97a8-269062462d60

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        500, -- module_index: 3, name: L1_TOTEM_1
        478, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        197, -- module_index: 5, name: L1_ETM120
        185, -- module_index: 6, name: L1_ETM50
        202, -- module_index: 7, name: L1_ETMHF100
        316, -- module_index: 8, name: L1_Mu6_HTT250er
        229, -- module_index: 9, name: L1_LooseIsoEG24er2p1_HTT100er
        326, -- module_index: 10, name: L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30
        267, -- module_index: 11, name: L1_IsoTau40er_ETMHF110
        366, -- module_index: 12, name: L1_ETMHF80_HTT60er
        341, -- module_index: 13, name: L1_DoubleEG8er2p6_HTT270er
        330, -- module_index: 14, name: L1_DoubleMu3_SQ_HTT220er
        358, -- module_index: 15, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        204, -- module_index: 16, name: L1_ETMHF120
        134, -- module_index: 17, name: L1_SingleJet60
        342, -- module_index: 18, name: L1_DoubleEG8er2p6_HTT300er
        362, -- module_index: 19, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        323, -- module_index: 20, name: L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30
        266, -- module_index: 21, name: L1_IsoTau40er_ETMHF100
        135, -- module_index: 22, name: L1_SingleJet90
        201, -- module_index: 23, name: L1_ETMHF90
        230, -- module_index: 24, name: L1_LooseIsoEG26er2p1_HTT100er
        324, -- module_index: 25, name: L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30
        361, -- module_index: 26, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        170, -- module_index: 27, name: L1_HTT200er
        428, -- module_index: 28, name: L1_EG27er2p1_HTT200er
        336, -- module_index: 29, name: L1_DoubleEG6_HTT240er
        329, -- module_index: 30, name: L1_DoubleMu3_SQ_HTT200er
        340, -- module_index: 31, name: L1_DoubleEG8er2p6_HTT255er
        368, -- module_index: 32, name: L1_ETMHF100_HTT60er
        176, -- module_index: 33, name: L1_HTT300er
        405, -- module_index: 34, name: L1_Mu6_DoubleEG17
        327, -- module_index: 35, name: L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30
        359, -- module_index: 36, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        268, -- module_index: 37, name: L1_IsoTau40er_ETMHF120
        315, -- module_index: 38, name: L1_Mu6_HTT240er
        203, -- module_index: 39, name: L1_ETMHF110
        439, -- module_index: 40, name: L1_DoubleEG6_HTT255er
        269, -- module_index: 41, name: L1_Mu22er2p1_IsoTau40er2p1
        325, -- module_index: 42, name: L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30
        442, -- module_index: 43, name: L1_Mu6_DoubleEG10
        231, -- module_index: 44, name: L1_LooseIsoEG28er2p1_HTT100er
        367, -- module_index: 45, name: L1_ETMHF90_HTT60er
        200, -- module_index: 46, name: L1_ETMHF80
        357, -- module_index: 47, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        172, -- module_index: 48, name: L1_HTT240er
        265, -- module_index: 49, name: L1_IsoTau40er_ETMHF90
        174, -- module_index: 50, name: L1_HTT270er
        331, -- module_index: 51, name: L1_DoubleMu3_SQ_HTT240er
        363, -- module_index: 52, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        328, -- module_index: 53, name: L1_DoubleMu3_SQ_HTT100er
        337, -- module_index: 54, name: L1_DoubleEG6_HTT250er
        360, -- module_index: 55, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        199, -- module_index: 56, name: L1_ETMHF70
        173, -- module_index: 57, name: L1_HTT255er
        244, -- module_index: 58, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        370, -- module_index: 59, name: L1_ETMHF120_HTT60er
        339, -- module_index: 60, name: L1_DoubleEG6_HTT300er
        175, -- module_index: 61, name: L1_HTT280er
        369, -- module_index: 62, name: L1_ETMHF110_HTT60er
        245, -- module_index: 63, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        349, -- module_index: 64, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        364, -- module_index: 65, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        338, -- module_index: 66, name: L1_DoubleEG6_HTT270er
        232, -- module_index: 67, name: L1_LooseIsoEG24er2p1_TripleJet_26er2p7_26_26er2p7
        171, -- module_index: 68, name: L1_HTT220er
        252, -- module_index: 69, name: L1_DoubleJet112er2p3_dEta_Max1p6
        377, -- module_index: 70, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        504, -- module_index: 71, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        283, -- module_index: 72, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 73, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        219, -- module_index: 74, name: L1_DoubleJet30_Mass_Min360_dEta_Max1p5
        225, -- module_index: 75, name: L1_LooseIsoEG24er2p1_Jet26er2p7_dR_Min0p3
        444, -- module_index: 76, name: L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4
        292, -- module_index: 77, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================