-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        259, -- module_index: 0, name: L1_ETT5_BptxAND
        245, -- module_index: 1, name: L1_ETTAsym60
        242, -- module_index: 2, name: L1_ETTAsym80_BptxAND
        258, -- module_index: 3, name: L1_ETT5_ETTAsym40_BptxAND
        255, -- module_index: 4, name: L1_ETT5_ETTAsym70_BptxAND
        254, -- module_index: 5, name: L1_ETT5_ETTAsym80_BptxAND
        262, -- module_index: 6, name: L1_ETT5_NotMinimumBiasHF2_OR
        169, -- module_index: 7, name: L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        113, -- module_index: 8, name: L1_SingleEG12_BptxAND
        116, -- module_index: 9, name: L1_SingleEG30_BptxAND
        112, -- module_index: 10, name: L1_SingleEG7_BptxAND
        118, -- module_index: 11, name: L1_SingleIsoEG7_BptxAND
         42, -- module_index: 12, name: L1_SingleJet24_Centrality_30_100_BptxAND
         52, -- module_index: 13, name: L1_SingleJet24_Centrality_50_100_BptxAND
         44, -- module_index: 14, name: L1_SingleJet32_Centrality_30_100_BptxAND
         54, -- module_index: 15, name: L1_SingleJet32_Centrality_50_100_BptxAND
         46, -- module_index: 16, name: L1_SingleJet44_Centrality_30_100_BptxAND
         56, -- module_index: 17, name: L1_SingleJet44_Centrality_50_100_BptxAND
         48, -- module_index: 18, name: L1_SingleJet60_Centrality_30_100_BptxAND
         58, -- module_index: 19, name: L1_SingleJet60_Centrality_50_100_BptxAND
         40, -- module_index: 20, name: L1_SingleJet8_Centrality_30_100_BptxAND
         50, -- module_index: 21, name: L1_SingleJet8_Centrality_50_100_BptxAND
        121, -- module_index: 22, name: L1_DoubleEG5_BptxAND
         88, -- module_index: 23, name: L1_DoubleJet16And8_MidEta2p7
         94, -- module_index: 24, name: L1_DoubleJet20And8_MidEta2p7_Centrality_30_100
         99, -- module_index: 25, name: L1_DoubleJet20And8_MidEta2p7_Centrality_50_100
        157, -- module_index: 26, name: L1_SingleEG5_SingleEG40
         62, -- module_index: 27, name: L1_SingleJet28_FWD_BptxAND
         71, -- module_index: 28, name: L1_SingleJet44_FWD_Centrality_30_100_BptxAND
         78, -- module_index: 29, name: L1_SingleJet44_FWD_Centrality_50_100_BptxAND
         60, -- module_index: 30, name: L1_SingleJet8_FWD_BptxAND
        203, -- module_index: 31, name: L1_SingleMu12
        263, -- module_index: 32, name: L1_SingleMuOpen_NotMinimumBiasHF2_OR
        144, -- module_index: 33, name: L1_SingleMu5_SingleEG10
        209, -- module_index: 34, name: L1_DoubleMuOpen_BptxAND
        267, -- module_index: 35, name: L1_DoubleMu0_NotMinimumBiasHF2_OR
    others => 0
);

-- ========================================================