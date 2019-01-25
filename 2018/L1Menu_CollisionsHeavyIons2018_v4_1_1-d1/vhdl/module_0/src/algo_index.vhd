-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_1

-- Unique ID of L1 Trigger Menu:
-- eb09cfc5-b4bc-4870-ac3c-0e7fa91c5c5d

-- Unique ID of firmware implementation:
-- 709f0a32-40b7-4539-af4a-dc697a3eb4f3

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        384, -- module_index: 0, name: L1_SingleEG12_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
        394, -- module_index: 1, name: L1_SingleEG15_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
        238, -- module_index: 2, name: L1_DoubleMuOpen_MaxDr2p0_BptxAND
        311, -- module_index: 3, name: L1_SingleJet36_FWD_Centrality_30_100_BptxAND
        313, -- module_index: 4, name: L1_SingleJet56_FWD_Centrality_30_100_BptxAND
        308, -- module_index: 5, name: L1_SingleJet8_FWD_Centrality_30_100_BptxAND
         41, -- module_index: 6, name: L1_SingleEG26er2p5
         35, -- module_index: 7, name: L1_SingleEG5
        352, -- module_index: 8, name: L1_SingleIsoEG3_BptxAND
        296, -- module_index: 9, name: L1_SingleJet16_Centrality_50_100_BptxAND
        285, -- module_index: 10, name: L1_SingleJet28_Centrality_30_100_BptxAND
         56, -- module_index: 11, name: L1_SingleJet35er2p5
        301, -- module_index: 12, name: L1_SingleJet40_Centrality_50_100_BptxAND
        290, -- module_index: 13, name: L1_SingleJet48_Centrality_30_100_BptxAND
        269, -- module_index: 14, name: L1_SingleJet60_BptxAND
        306, -- module_index: 15, name: L1_SingleJet64_Centrality_50_100_BptxAND
        282, -- module_index: 16, name: L1_SingleJet8_Centrality_30_100_BptxAND
        443, -- module_index: 17, name: L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        475, -- module_index: 18, name: L1_ETT50_NotETT120_BptxAND
        491, -- module_index: 19, name: L1_NotETT110_MinimumBiasHF1_OR_BptxAND
        481, -- module_index: 20, name: L1_NotETT20_MinimumBiasHF2_OR_BptxAND
         72, -- module_index: 21, name: L1_HTT360er
    others => 0
);

-- ========================================================