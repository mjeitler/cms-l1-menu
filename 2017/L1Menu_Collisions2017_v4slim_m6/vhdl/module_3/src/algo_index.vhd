-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- 3b802383-09ac-4bcb-9a87-6df7db8aa175

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        471, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        486, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        487, -- module_index: 2, name: L1_LastCollisionInTrain
        198, -- module_index: 3, name: L1_ETM150
        205, -- module_index: 4, name: L1_ETMHF150
        177, -- module_index: 5, name: L1_HTT320er
        178, -- module_index: 6, name: L1_HTT340er
        248, -- module_index: 7, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        247, -- module_index: 8, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        249, -- module_index: 9, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        246, -- module_index: 10, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        250, -- module_index: 11, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        378, -- module_index: 12, name: L1_DoubleMu5_SQ_OS_Mass7to18
        167, -- module_index: 13, name: L1_QuadJet60er2p7
        217, -- module_index: 14, name: L1_DoubleJet30_Mass_Min320_dEta_Max1p5
        295, -- module_index: 15, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        443, -- module_index: 16, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 17, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================