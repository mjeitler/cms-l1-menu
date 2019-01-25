-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_4_0

-- Unique ID of L1 Trigger Menu:
-- e8dddb91-1834-4d3a-ac09-0f3064f4581b

-- Unique ID of firmware implementation:
-- 14726b19-bc8d-457c-8fe2-ac3605843de7

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
        206, -- module_index: 5, name: L1_ETMHF140
        184, -- module_index: 6, name: L1_ETT2000
        173, -- module_index: 7, name: L1_HTT255er
         51, -- module_index: 8, name: L1_SingleEG10er2p5
         18, -- module_index: 9, name: L1_SingleMu20
        422, -- module_index: 10, name: L1_Mu20_EG10er2p5
         88, -- module_index: 11, name: L1_SingleIsoEG28er2p1
         90, -- module_index: 12, name: L1_SingleIsoEG32er2p1
        136, -- module_index: 13, name: L1_SingleJet120
        287, -- module_index: 14, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        286, -- module_index: 15, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        254, -- module_index: 16, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================