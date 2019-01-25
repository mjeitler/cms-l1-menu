-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_3_0

-- Unique ID of L1 Trigger Menu:
-- 13f60d08-d9e3-4e6d-ad9b-3fd19ac86467

-- Unique ID of firmware implementation:
-- 6a0fa015-1c57-4ae1-8232-f2325ddad00d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        511, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        502, -- module_index: 3, name: L1_TOTEM_3
        205, -- module_index: 4, name: L1_ETMHF130
        169, -- module_index: 5, name: L1_HTT160er
        180, -- module_index: 6, name: L1_HTT400er
         55, -- module_index: 7, name: L1_SingleEG26
         72, -- module_index: 8, name: L1_SingleEG40er2p5
         65, -- module_index: 9, name: L1_SingleEG50
         88, -- module_index: 10, name: L1_SingleIsoEG28er2p1
         90, -- module_index: 11, name: L1_SingleIsoEG32er2p1
        136, -- module_index: 12, name: L1_SingleJet120
        287, -- module_index: 13, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        286, -- module_index: 14, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        254, -- module_index: 15, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================