-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        467, -- module_index: 2, name: L1_BptxXOR
        474, -- module_index: 3, name: L1_BptxPlus
        198, -- module_index: 4, name: L1_ETM150
        205, -- module_index: 5, name: L1_ETMHF150
        177, -- module_index: 6, name: L1_HTT320er
        249, -- module_index: 7, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        178, -- module_index: 8, name: L1_HTT340er
        250, -- module_index: 9, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        248, -- module_index: 10, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        246, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        247, -- module_index: 12, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        378, -- module_index: 13, name: L1_DoubleMu5_SQ_OS_Mass7to18
        167, -- module_index: 14, name: L1_QuadJet60er2p7
        217, -- module_index: 15, name: L1_DoubleJet30_Mass_Min320_dEta_Max1p5
        295, -- module_index: 16, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        443, -- module_index: 17, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 18, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================