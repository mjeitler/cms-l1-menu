-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v2

-- Unique ID of L1 Trigger Menu:
-- e3d0f07f-f1ad-4fee-842a-79441531f4b3

-- Unique ID of firmware implementation:
-- bc29c622-7f74-4d05-8536-eab541c325b5

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        260, -- module_index: 0, name: L1_ETT5
        239, -- module_index: 1, name: L1_ETTAsym50_BptxAND
        243, -- module_index: 2, name: L1_ETTAsym80
          7, -- module_index: 3, name: L1_MinimumBiasHF2_AND_BptxAND
          8, -- module_index: 4, name: L1_MinimumBiasHF2_OR_BptxAND
        249, -- module_index: 5, name: L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        250, -- module_index: 6, name: L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        252, -- module_index: 7, name: L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
         17, -- module_index: 8, name: L1_NotMinimumBiasHF2_OR_BptxAND
        234, -- module_index: 9, name: L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        233, -- module_index: 10, name: L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        235, -- module_index: 11, name: L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        251, -- module_index: 12, name: L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        236, -- module_index: 13, name: L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        237, -- module_index: 14, name: L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        253, -- module_index: 15, name: L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        171, -- module_index: 16, name: L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        126, -- module_index: 17, name: L1_SingleEG21_Centrality_30_100_BptxAND
        129, -- module_index: 18, name: L1_SingleEG21_Centrality_50_100_BptxAND
        111, -- module_index: 19, name: L1_SingleEG5_BptxAND
        117, -- module_index: 20, name: L1_SingleIsoEG3_BptxAND
         32, -- module_index: 21, name: L1_SingleJet24_BptxAND
         34, -- module_index: 22, name: L1_SingleJet32_BptxAND
         36, -- module_index: 23, name: L1_SingleJet44_BptxAND
         38, -- module_index: 24, name: L1_SingleJet60_BptxAND
         30, -- module_index: 25, name: L1_SingleJet8_BptxAND
        120, -- module_index: 26, name: L1_DoubleEG2_BptxAND
         95, -- module_index: 27, name: L1_DoubleJet16And12_MidEta2p7_Centrality_30_100
        100, -- module_index: 28, name: L1_DoubleJet16And12_MidEta2p7_Centrality_50_100
         96, -- module_index: 29, name: L1_DoubleJet20And12_MidEta2p7_Centrality_30_100
        101, -- module_index: 30, name: L1_DoubleJet20And12_MidEta2p7_Centrality_50_100
        158, -- module_index: 31, name: L1_SingleEG10_SingleEG40
        155, -- module_index: 32, name: L1_SingleEG5_SingleJet40_MidEta2p7
         63, -- module_index: 33, name: L1_SingleJet36_FWD_BptxAND
         72, -- module_index: 34, name: L1_SingleJet56_FWD_Centrality_30_100_BptxAND
         79, -- module_index: 35, name: L1_SingleJet56_FWD_Centrality_50_100_BptxAND
         19, -- module_index: 36, name: L1_DoubleEG2_NotMinimumBiasHF2_OR
         18, -- module_index: 37, name: L1_DoubleEG5_NotMinimumBiasHF2_OR
        206, -- module_index: 38, name: L1_SingleMu16
        141, -- module_index: 39, name: L1_SingleMu3_SingleEG15
        149, -- module_index: 40, name: L1_SingleMu7_SingleEG10
        213, -- module_index: 41, name: L1_DoubleMuOpen_OS
        266, -- module_index: 42, name: L1_DoubleMuOpen_NotMinimumBiasHF2_OR
    others => 0
);

-- ========================================================