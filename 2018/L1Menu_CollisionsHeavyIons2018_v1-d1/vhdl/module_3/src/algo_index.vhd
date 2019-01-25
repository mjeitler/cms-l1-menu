-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v1

-- Unique ID of L1 Trigger Menu:
-- 41e89c13-7e5a-4610-a477-a238c4a72331

-- Unique ID of firmware implementation:
-- 45336cdc-d724-464d-a3a6-196f2fa31e86

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        223, -- module_index: 0, name: L1_DoubleMu10_BptxAND
        152, -- module_index: 1, name: L1_SingleMu12_SingleEG7
        203, -- module_index: 2, name: L1_SingleMu12
        142, -- module_index: 3, name: L1_SingleMu3_SingleEG20
        149, -- module_index: 4, name: L1_SingleMu7_SingleEG10
        200, -- module_index: 5, name: L1_SingleMu7
        192, -- module_index: 6, name: L1_SingleMu0
        193, -- module_index: 7, name: L1_SingleMu0_BptxAND
        120, -- module_index: 8, name: L1_DoubleEG2_BptxAND
         95, -- module_index: 9, name: L1_DoubleJet16And12_MidEta2p7_Centrality_30_100
         47, -- module_index: 10, name: L1_SingleJet56_Centrality_30_100_BptxAND
         77, -- module_index: 11, name: L1_SingleJet36_FWD_Centrality_50_100_BptxAND
         99, -- module_index: 12, name: L1_DoubleJet20And8_MidEta2p7_Centrality_50_100
         54, -- module_index: 13, name: L1_SingleJet32_Centrality_50_100_BptxAND
         68, -- module_index: 14, name: L1_SingleJet16_FWD_Centrality_30_100_BptxAND
         76, -- module_index: 15, name: L1_SingleJet28_FWD_Centrality_50_100_BptxAND
         40, -- module_index: 16, name: L1_SingleJet8_Centrality_30_100_BptxAND
         71, -- module_index: 17, name: L1_SingleJet44_FWD_Centrality_30_100_BptxAND
        126, -- module_index: 18, name: L1_SingleEG21_Centrality_30_100_BptxAND
         75, -- module_index: 19, name: L1_SingleJet16_FWD_Centrality_50_100_BptxAND
         45, -- module_index: 20, name: L1_SingleJet36_Centrality_30_100_BptxAND
        129, -- module_index: 21, name: L1_SingleEG21_Centrality_50_100_BptxAND
        127, -- module_index: 22, name: L1_SingleEG3_Centrality_50_100_BptxAND
         42, -- module_index: 23, name: L1_SingleJet24_Centrality_30_100_BptxAND
         55, -- module_index: 24, name: L1_SingleJet36_Centrality_50_100_BptxAND
         73, -- module_index: 25, name: L1_SingleJet64_FWD_Centrality_30_100_BptxAND
         72, -- module_index: 26, name: L1_SingleJet56_FWD_Centrality_30_100_BptxAND
        125, -- module_index: 27, name: L1_SingleEG7_Centrality_30_100_BptxAND
         56, -- module_index: 28, name: L1_SingleJet44_Centrality_50_100_BptxAND
         67, -- module_index: 29, name: L1_SingleJet8_FWD_Centrality_30_100_BptxAND
         70, -- module_index: 30, name: L1_SingleJet36_FWD_Centrality_30_100_BptxAND
         80, -- module_index: 31, name: L1_SingleJet64_FWD_Centrality_50_100_BptxAND
        128, -- module_index: 32, name: L1_SingleEG7_Centrality_50_100_BptxAND
        124, -- module_index: 33, name: L1_SingleEG3_Centrality_30_100_BptxAND
         52, -- module_index: 34, name: L1_SingleJet24_Centrality_50_100_BptxAND
         74, -- module_index: 35, name: L1_SingleJet8_FWD_Centrality_50_100_BptxAND
         43, -- module_index: 36, name: L1_SingleJet28_Centrality_30_100_BptxAND
         69, -- module_index: 37, name: L1_SingleJet28_FWD_Centrality_30_100_BptxAND
         46, -- module_index: 38, name: L1_SingleJet44_Centrality_30_100_BptxAND
        100, -- module_index: 39, name: L1_DoubleJet16And12_MidEta2p7_Centrality_50_100
         94, -- module_index: 40, name: L1_DoubleJet20And8_MidEta2p7_Centrality_30_100
         79, -- module_index: 41, name: L1_SingleJet56_FWD_Centrality_50_100_BptxAND
         78, -- module_index: 42, name: L1_SingleJet44_FWD_Centrality_50_100_BptxAND
        102, -- module_index: 43, name: L1_DoubleJet28And16_MidEta2p7_Centrality_50_100
         93, -- module_index: 44, name: L1_DoubleJet16And8_MidEta2p7_Centrality_30_100
         50, -- module_index: 45, name: L1_SingleJet8_Centrality_50_100_BptxAND
         49, -- module_index: 46, name: L1_SingleJet64_Centrality_30_100_BptxAND
         98, -- module_index: 47, name: L1_DoubleJet16And8_MidEta2p7_Centrality_50_100
         53, -- module_index: 48, name: L1_SingleJet28_Centrality_50_100_BptxAND
         97, -- module_index: 49, name: L1_DoubleJet28And16_MidEta2p7_Centrality_30_100
         57, -- module_index: 50, name: L1_SingleJet56_Centrality_50_100_BptxAND
         59, -- module_index: 51, name: L1_SingleJet64_Centrality_50_100_BptxAND
         48, -- module_index: 52, name: L1_SingleJet60_Centrality_30_100_BptxAND
         41, -- module_index: 53, name: L1_SingleJet16_Centrality_30_100_BptxAND
         96, -- module_index: 54, name: L1_DoubleJet20And12_MidEta2p7_Centrality_30_100
         51, -- module_index: 55, name: L1_SingleJet16_Centrality_50_100_BptxAND
        101, -- module_index: 56, name: L1_DoubleJet20And12_MidEta2p7_Centrality_50_100
         58, -- module_index: 57, name: L1_SingleJet60_Centrality_50_100_BptxAND
         44, -- module_index: 58, name: L1_SingleJet32_Centrality_30_100_BptxAND
    others => 0
);

-- ========================================================