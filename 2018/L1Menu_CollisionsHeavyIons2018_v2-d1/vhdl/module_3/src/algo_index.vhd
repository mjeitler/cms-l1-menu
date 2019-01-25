-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        247, -- module_index: 0, name: L1_ETTAsym40
        240, -- module_index: 1, name: L1_ETTAsym60_BptxAND
         10, -- module_index: 2, name: L1_MinimumBiasHF1_AND
         13, -- module_index: 3, name: L1_MinimumBiasHF1_OR
         14, -- module_index: 4, name: L1_NotMinimumBiasHF1_OR
        257, -- module_index: 5, name: L1_ETT5_ETTAsym50_BptxAND
        181, -- module_index: 6, name: L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        175, -- module_index: 7, name: L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        177, -- module_index: 8, name: L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        115, -- module_index: 9, name: L1_SingleEG21_BptxAND
        124, -- module_index: 10, name: L1_SingleEG3_Centrality_30_100_BptxAND
        127, -- module_index: 11, name: L1_SingleEG3_Centrality_50_100_BptxAND
        119, -- module_index: 12, name: L1_SingleIsoEG10_BptxAND
         41, -- module_index: 13, name: L1_SingleJet16_Centrality_30_100_BptxAND
         51, -- module_index: 14, name: L1_SingleJet16_Centrality_50_100_BptxAND
         43, -- module_index: 15, name: L1_SingleJet28_Centrality_30_100_BptxAND
         53, -- module_index: 16, name: L1_SingleJet28_Centrality_50_100_BptxAND
         45, -- module_index: 17, name: L1_SingleJet36_Centrality_30_100_BptxAND
         55, -- module_index: 18, name: L1_SingleJet36_Centrality_50_100_BptxAND
         47, -- module_index: 19, name: L1_SingleJet56_Centrality_30_100_BptxAND
         57, -- module_index: 20, name: L1_SingleJet56_Centrality_50_100_BptxAND
         49, -- module_index: 21, name: L1_SingleJet64_Centrality_30_100_BptxAND
         59, -- module_index: 22, name: L1_SingleJet64_Centrality_50_100_BptxAND
        123, -- module_index: 23, name: L1_DoubleEG10_BptxAND
         90, -- module_index: 24, name: L1_DoubleJet16And12_MidEta2p7
         91, -- module_index: 25, name: L1_DoubleJet20And12_MidEta2p7
         97, -- module_index: 26, name: L1_DoubleJet28And16_MidEta2p7_Centrality_30_100
        102, -- module_index: 27, name: L1_DoubleJet28And16_MidEta2p7_Centrality_50_100
         61, -- module_index: 28, name: L1_SingleJet16_FWD_BptxAND
         70, -- module_index: 29, name: L1_SingleJet36_FWD_Centrality_30_100_BptxAND
         77, -- module_index: 30, name: L1_SingleJet36_FWD_Centrality_50_100_BptxAND
         66, -- module_index: 31, name: L1_SingleJet64_FWD_BptxAND
        192, -- module_index: 32, name: L1_SingleMu0
        191, -- module_index: 33, name: L1_SingleMuOpen_BptxAND
        137, -- module_index: 34, name: L1_SingleMu3_SingleJet28_MidEta2p7
        210, -- module_index: 35, name: L1_DoubleMuOpen
        222, -- module_index: 36, name: L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
    others => 0
);

-- ========================================================