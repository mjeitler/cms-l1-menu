-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r3

-- Unique ID of L1 Trigger Menu:
-- 091bc7c1-adf4-41be-8dc2-8bc3797597d2

-- Unique ID of firmware implementation:
-- debf71c9-b13a-43c4-9e1b-df86e2425514

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
        250, -- module_index: 7, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        248, -- module_index: 8, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        178, -- module_index: 9, name: L1_HTT340er
        249, -- module_index: 10, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        246, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        247, -- module_index: 12, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        378, -- module_index: 13, name: L1_DoubleMu5_SQ_OS_Mass7to18
        167, -- module_index: 14, name: L1_QuadJet60er2p7
        217, -- module_index: 15, name: L1_DoubleJet30_Mass_Min320_dEta_Max1p5
    others => 0
);

-- ========================================================