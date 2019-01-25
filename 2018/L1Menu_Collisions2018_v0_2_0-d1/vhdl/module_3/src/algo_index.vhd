-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_2_0

-- Unique ID of L1 Trigger Menu:
-- 2eb60aa6-04d5-4c65-83d7-c3d1765d0009

-- Unique ID of firmware implementation:
-- f13b8808-493b-4e3f-bce1-f3afb77b8cfc

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        471, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        486, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        510, -- module_index: 2, name: L1_HCAL_LaserMon_Trig
        501, -- module_index: 3, name: L1_TOTEM_2
        202, -- module_index: 4, name: L1_ETMHF100
        246, -- module_index: 5, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        244, -- module_index: 6, name: L1_HTT280er_QuadJet_70_55_40_35_er2p5
        268, -- module_index: 7, name: L1_IsoTau40er_ETMHF120
        245, -- module_index: 8, name: L1_HTT300er_QuadJet_70_55_40_35_er2p5
        247, -- module_index: 9, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        321, -- module_index: 10, name: L1_SingleJet140er2p5_ETMHF90
        265, -- module_index: 11, name: L1_IsoTau40er_ETMHF90
        134, -- module_index: 12, name: L1_SingleJet60
        178, -- module_index: 13, name: L1_HTT340er
        200, -- module_index: 14, name: L1_ETMHF80
        337, -- module_index: 15, name: L1_DoubleEG8er2p5_HTT280er
        175, -- module_index: 16, name: L1_HTT280er
        330, -- module_index: 17, name: L1_DoubleMu3_SQ_HTT220er
        322, -- module_index: 18, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        361, -- module_index: 19, name: L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30
        366, -- module_index: 20, name: L1_ETMHF80_HTT60er
        357, -- module_index: 21, name: L1_ETMHF100_Jet60_OR_DiJet30woTT28
        320, -- module_index: 22, name: L1_SingleJet140er2p5_ETMHF80
        369, -- module_index: 23, name: L1_ETMHF110_HTT60er
        331, -- module_index: 24, name: L1_DoubleMu3_SQ_HTT240er
        201, -- module_index: 25, name: L1_ETMHF90
        204, -- module_index: 26, name: L1_ETMHF120
        135, -- module_index: 27, name: L1_SingleJet90
        363, -- module_index: 28, name: L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30
        358, -- module_index: 29, name: L1_ETMHF110_Jet60_OR_DiJet30woTT28
        315, -- module_index: 30, name: L1_Mu6_HTT240er
        360, -- module_index: 31, name: L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30
        324, -- module_index: 32, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        177, -- module_index: 33, name: L1_HTT320er
        362, -- module_index: 34, name: L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30
        368, -- module_index: 35, name: L1_ETMHF100_HTT60er
        370, -- module_index: 36, name: L1_ETMHF120_HTT60er
        340, -- module_index: 37, name: L1_DoubleEG8er2p5_HTT340er
        323, -- module_index: 38, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        327, -- module_index: 39, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        203, -- module_index: 40, name: L1_ETMHF110
        316, -- module_index: 41, name: L1_Mu6_HTT250er
        336, -- module_index: 42, name: L1_DoubleEG8er2p5_HTT260er
        339, -- module_index: 43, name: L1_DoubleEG8er2p5_HTT320er
        364, -- module_index: 44, name: L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30
        266, -- module_index: 45, name: L1_IsoTau40er_ETMHF100
        440, -- module_index: 46, name: L1_Mu6_DoubleEG15er2p5
        367, -- module_index: 47, name: L1_ETMHF90_HTT60er
        199, -- module_index: 48, name: L1_ETMHF70
        442, -- module_index: 49, name: L1_Mu6_DoubleEG10er2p5
        441, -- module_index: 50, name: L1_Mu6_DoubleEG12er2p5
        326, -- module_index: 51, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        329, -- module_index: 52, name: L1_DoubleMu3_SQ_HTT260er
        405, -- module_index: 53, name: L1_Mu6_DoubleEG17er2p5
        176, -- module_index: 54, name: L1_HTT300er
        267, -- module_index: 55, name: L1_IsoTau40er_ETMHF110
        325, -- module_index: 56, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        338, -- module_index: 57, name: L1_DoubleEG8er2p5_HTT300er
        359, -- module_index: 58, name: L1_ETMHF120_Jet60_OR_DiJet30woTT28
        269, -- module_index: 59, name: L1_Mu22er2p1_IsoTau40er2p1
        349, -- module_index: 60, name: L1_ETMHF100_Jet60_OR_DoubleJet30
        249, -- module_index: 61, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        218, -- module_index: 62, name: L1_DoubleJet30er2p5_Mass_Min340_dEta_Max1p5
        295, -- module_index: 63, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        444, -- module_index: 64, name: L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 65, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================