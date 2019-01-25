-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
          9, -- module_index: 0, name: L1_AlwaysTrue
          0, -- module_index: 1, name: L1_ZeroBias
          1, -- module_index: 2, name: L1_ZeroBias_copy
        501, -- module_index: 3, name: L1_Castor1
        502, -- module_index: 4, name: L1_Castor2
        503, -- module_index: 5, name: L1_Castor3
        504, -- module_index: 6, name: L1_Castor4
          5, -- module_index: 7, name: L1_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
          6, -- module_index: 8, name: L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        220, -- module_index: 9, name: L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        212, -- module_index: 10, name: L1_DoubleMuOpen_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
        221, -- module_index: 11, name: L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        211, -- module_index: 12, name: L1_DoubleMuOpen_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
         89, -- module_index: 13, name: L1_DoubleJet20And8_MidEta2p7
        156, -- module_index: 14, name: L1_SingleEG5_SingleEG32
         68, -- module_index: 15, name: L1_SingleJet16_FWD_Centrality_30_100_BptxAND
         75, -- module_index: 16, name: L1_SingleJet16_FWD_Centrality_50_100_BptxAND
         64, -- module_index: 17, name: L1_SingleJet44_FWD_BptxAND
         73, -- module_index: 18, name: L1_SingleJet64_FWD_Centrality_30_100_BptxAND
         80, -- module_index: 19, name: L1_SingleJet64_FWD_Centrality_50_100_BptxAND
        193, -- module_index: 20, name: L1_SingleMu0_BptxAND
        264, -- module_index: 21, name: L1_SingleMu0_NotMinimumBiasHF2_OR
        265, -- module_index: 22, name: L1_SingleMu3_NotMinimumBiasHF2_OR
        139, -- module_index: 23, name: L1_SingleMu3_SingleJet40_MidEta2p7
        146, -- module_index: 24, name: L1_SingleMu5_SingleEG15
        214, -- module_index: 25, name: L1_DoubleMuOpen_OS_BptxAND
    others => 0
);

-- ========================================================