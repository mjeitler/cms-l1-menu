-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v3

-- Unique ID of L1 Trigger Menu:
-- bb9a82eb-17df-4991-b806-4028ee613a4c

-- Unique ID of firmware implementation:
-- 721d74e7-03e3-48ab-938d-1e8242e7c1dd

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        224, -- module_index: 0, name: L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        336, -- module_index: 1, name: L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
         49, -- module_index: 2, name: L1_SingleJet64_Centrality_30_100_BptxAND
        326, -- module_index: 3, name: L1_Centrality_20_100_MinimumBiasHF1_AND_BptxAND
        222, -- module_index: 4, name: L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
        294, -- module_index: 5, name: L1_DoubleMuOpen_Centrality_30_100_BptxAND
         48, -- module_index: 6, name: L1_SingleJet60_Centrality_30_100_BptxAND
        225, -- module_index: 7, name: L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
         46, -- module_index: 8, name: L1_SingleJet44_Centrality_30_100_BptxAND
         47, -- module_index: 9, name: L1_SingleJet56_Centrality_30_100_BptxAND
        483, -- module_index: 10, name: L1_SingleEG15_Centrality_30_100_BptxAND
        481, -- module_index: 11, name: L1_SingleEG3_Centrality_30_100_BptxAND
        484, -- module_index: 12, name: L1_SingleEG21_Centrality_30_100_BptxAND
        211, -- module_index: 13, name: L1_DoubleMuOpen_Centrality_10_100_BptxAND
        482, -- module_index: 14, name: L1_SingleEG7_Centrality_30_100_BptxAND
         43, -- module_index: 15, name: L1_SingleJet28_Centrality_30_100_BptxAND
         41, -- module_index: 16, name: L1_SingleJet16_Centrality_30_100_BptxAND
         44, -- module_index: 17, name: L1_SingleJet32_Centrality_30_100_BptxAND
         45, -- module_index: 18, name: L1_SingleJet36_Centrality_30_100_BptxAND
         42, -- module_index: 19, name: L1_SingleJet24_Centrality_30_100_BptxAND
         40, -- module_index: 20, name: L1_SingleJet8_Centrality_30_100_BptxAND
        210, -- module_index: 21, name: L1_DoubleMuOpen
        209, -- module_index: 22, name: L1_DoubleMuOpen_BptxAND
        295, -- module_index: 23, name: L1_DoubleMuOpen_Centrality_40_100_BptxAND
        212, -- module_index: 24, name: L1_DoubleMuOpen_Centrality_50_100_BptxAND
         74, -- module_index: 25, name: L1_SingleJet8_FWD_Centrality_50_100_BptxAND
         58, -- module_index: 26, name: L1_SingleJet60_Centrality_50_100_BptxAND
        432, -- module_index: 27, name: L1_DoubleJet16And8_MidEta2p7_Centrality_30_100
         76, -- module_index: 28, name: L1_SingleJet28_FWD_Centrality_50_100_BptxAND
         68, -- module_index: 29, name: L1_SingleJet16_FWD_Centrality_30_100_BptxAND
        434, -- module_index: 30, name: L1_DoubleJet16And12_MidEta2p7_Centrality_30_100
         73, -- module_index: 31, name: L1_SingleJet64_FWD_Centrality_30_100_BptxAND
        486, -- module_index: 32, name: L1_SingleEG7_Centrality_50_100_BptxAND
         80, -- module_index: 33, name: L1_SingleJet64_FWD_Centrality_50_100_BptxAND
         51, -- module_index: 34, name: L1_SingleJet16_Centrality_50_100_BptxAND
         59, -- module_index: 35, name: L1_SingleJet64_Centrality_50_100_BptxAND
         78, -- module_index: 36, name: L1_SingleJet44_FWD_Centrality_50_100_BptxAND
         72, -- module_index: 37, name: L1_SingleJet56_FWD_Centrality_30_100_BptxAND
         70, -- module_index: 38, name: L1_SingleJet36_FWD_Centrality_30_100_BptxAND
         75, -- module_index: 39, name: L1_SingleJet16_FWD_Centrality_50_100_BptxAND
         53, -- module_index: 40, name: L1_SingleJet28_Centrality_50_100_BptxAND
        435, -- module_index: 41, name: L1_DoubleJet20And12_MidEta2p7_Centrality_30_100
         55, -- module_index: 42, name: L1_SingleJet36_Centrality_50_100_BptxAND
         67, -- module_index: 43, name: L1_SingleJet8_FWD_Centrality_30_100_BptxAND
         57, -- module_index: 44, name: L1_SingleJet56_Centrality_50_100_BptxAND
        485, -- module_index: 45, name: L1_SingleEG3_Centrality_50_100_BptxAND
         52, -- module_index: 46, name: L1_SingleJet24_Centrality_50_100_BptxAND
        433, -- module_index: 47, name: L1_DoubleJet20And8_MidEta2p7_Centrality_30_100
         77, -- module_index: 48, name: L1_SingleJet36_FWD_Centrality_50_100_BptxAND
         54, -- module_index: 49, name: L1_SingleJet32_Centrality_50_100_BptxAND
         69, -- module_index: 50, name: L1_SingleJet28_FWD_Centrality_30_100_BptxAND
         56, -- module_index: 51, name: L1_SingleJet44_Centrality_50_100_BptxAND
         50, -- module_index: 52, name: L1_SingleJet8_Centrality_50_100_BptxAND
         79, -- module_index: 53, name: L1_SingleJet56_FWD_Centrality_50_100_BptxAND
         71, -- module_index: 54, name: L1_SingleJet44_FWD_Centrality_30_100_BptxAND
        436, -- module_index: 55, name: L1_DoubleJet28And16_MidEta2p7_Centrality_30_100
        487, -- module_index: 56, name: L1_SingleEG15_Centrality_50_100_BptxAND
         18, -- module_index: 57, name: L1_Centrality_30_100
        488, -- module_index: 58, name: L1_SingleEG21_Centrality_50_100_BptxAND
         19, -- module_index: 59, name: L1_Centrality_50_100
        190, -- module_index: 60, name: L1_SingleMuOpen
        191, -- module_index: 61, name: L1_SingleMuOpen_BptxAND
        363, -- module_index: 62, name: L1_DoubleJet16And12_MidEta2p7
        439, -- module_index: 63, name: L1_DoubleJet16And12_MidEta2p7_Centrality_50_100
        440, -- module_index: 64, name: L1_DoubleJet20And12_MidEta2p7_Centrality_50_100
        441, -- module_index: 65, name: L1_DoubleJet28And16_MidEta2p7_Centrality_50_100
        437, -- module_index: 66, name: L1_DoubleJet16And8_MidEta2p7_Centrality_50_100
        438, -- module_index: 67, name: L1_DoubleJet20And8_MidEta2p7_Centrality_50_100
        358, -- module_index: 68, name: L1_DoubleJet16And8_MidEta2p7
        360, -- module_index: 69, name: L1_DoubleJet20And12_MidEta2p7
        359, -- module_index: 70, name: L1_DoubleJet20And8_MidEta2p7
        361, -- module_index: 71, name: L1_DoubleJet28And16_MidEta2p7
        490, -- module_index: 72, name: L1_SingleEG12_SingleJet32_MidEta2p7
        333, -- module_index: 73, name: L1_SingleEG7_SingleJet32_MidEta2p7
        489, -- module_index: 74, name: L1_SingleEG7_SingleJet40_MidEta2p7
         63, -- module_index: 75, name: L1_SingleJet36_FWD_BptxAND
         64, -- module_index: 76, name: L1_SingleJet44_FWD_BptxAND
         65, -- module_index: 77, name: L1_SingleJet56_FWD_BptxAND
         66, -- module_index: 78, name: L1_SingleJet64_FWD_BptxAND
         60, -- module_index: 79, name: L1_SingleJet8_FWD_BptxAND
        477, -- module_index: 80, name: L1_SingleEG12_BptxAND
        478, -- module_index: 81, name: L1_SingleEG15_BptxAND
        479, -- module_index: 82, name: L1_SingleEG21_BptxAND
        472, -- module_index: 83, name: L1_SingleEG3
        474, -- module_index: 84, name: L1_SingleEG3_BptxAND
        480, -- module_index: 85, name: L1_SingleEG30_BptxAND
        475, -- module_index: 86, name: L1_SingleEG5_BptxAND
        141, -- module_index: 87, name: L1_SingleIsoEG21_BptxAND
         29, -- module_index: 88, name: L1_SingleJet16_BptxAND
         30, -- module_index: 89, name: L1_SingleJet24_BptxAND
         31, -- module_index: 90, name: L1_SingleJet28_BptxAND
         32, -- module_index: 91, name: L1_SingleJet32_BptxAND
         33, -- module_index: 92, name: L1_SingleJet36_BptxAND
         34, -- module_index: 93, name: L1_SingleJet40_BptxAND
         37, -- module_index: 94, name: L1_SingleJet56_BptxAND
         38, -- module_index: 95, name: L1_SingleJet60_BptxAND
         39, -- module_index: 96, name: L1_SingleJet64_BptxAND
         27, -- module_index: 97, name: L1_SingleJet8
         28, -- module_index: 98, name: L1_SingleJet8_BptxAND
        417, -- module_index: 99, name: L1_ETT5_ETTAsym40_BptxAND
        259, -- module_index: 100, name: L1_ETT5_BptxAND
        419, -- module_index: 101, name: L1_ETTAsym60_BptxAND
        413, -- module_index: 102, name: L1_ETT5_ETTAsym80_BptxAND
        400, -- module_index: 103, name: L1_ETTAsym70_BptxAND
        414, -- module_index: 104, name: L1_ETT5_ETTAsym70_BptxAND
        401, -- module_index: 105, name: L1_ETTAsym80_BptxAND
        161, -- module_index: 106, name: L1_ETT5_NotETT30_BptxAND
        415, -- module_index: 107, name: L1_ETT5_ETTAsym60_BptxAND
        420, -- module_index: 108, name: L1_ETTAsym40_BptxAND
    others => 0
);

-- ========================================================