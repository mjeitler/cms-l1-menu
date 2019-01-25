-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- e4115c89-8693-4f08-bb9f-493f844c4d15

-- Unique ID of firmware implementation:
-- ea19fb64-9f87-4584-b967-74fcff8d0681

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        474, -- module_index: 2, name: L1_BptxPlus
        467, -- module_index: 3, name: L1_BptxXOR
        194, -- module_index: 4, name: L1_ETM105
        198, -- module_index: 5, name: L1_ETM150
        188, -- module_index: 6, name: L1_ETM75
        205, -- module_index: 7, name: L1_ETMHF150
        177, -- module_index: 8, name: L1_HTT320er
        248, -- module_index: 9, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        247, -- module_index: 10, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        246, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        250, -- module_index: 12, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        249, -- module_index: 13, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        178, -- module_index: 14, name: L1_HTT340er
        334, -- module_index: 15, name: L1_DoubleMu_15_7_Mass_Min1
        283, -- module_index: 16, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 17, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        219, -- module_index: 18, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        225, -- module_index: 19, name: L1_LooseIsoEG24er2p1_Jet26er2p7_dR_Min0p3
        444, -- module_index: 20, name: L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4
        292, -- module_index: 21, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================