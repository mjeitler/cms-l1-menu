-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        386, -- module_index: 0, name: L1_SingleEG12_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
        378, -- module_index: 1, name: L1_SingleEG7_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
        240, -- module_index: 2, name: L1_DoubleMuOpen_MaxDr3p5
        278, -- module_index: 3, name: L1_SingleJet44_FWD_BptxAND
         63, -- module_index: 4, name: L1_SingleJet60_FWD3p0
        274, -- module_index: 5, name: L1_SingleJet8_FWD_BptxAND
        366, -- module_index: 6, name: L1_SingleEG21_Centrality_30_100_BptxAND
        368, -- module_index: 7, name: L1_SingleEG3_Centrality_50_100_BptxAND
        356, -- module_index: 8, name: L1_SingleIsoEG21_BptxAND
        283, -- module_index: 9, name: L1_SingleJet16_Centrality_30_100_BptxAND
        262, -- module_index: 10, name: L1_SingleJet28_BptxAND
         49, -- module_index: 11, name: L1_SingleJet35
        288, -- module_index: 12, name: L1_SingleJet40_Centrality_30_100_BptxAND
        303, -- module_index: 13, name: L1_SingleJet48_Centrality_50_100_BptxAND
        292, -- module_index: 14, name: L1_SingleJet60_Centrality_30_100_BptxAND
        271, -- module_index: 15, name: L1_SingleJet72_BptxAND
         51, -- module_index: 16, name: L1_SingleJet90
        445, -- module_index: 17, name: L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        436, -- module_index: 18, name: L1_ETT5_ETTAsym40_BptxAND
        489, -- module_index: 19, name: L1_NotETT150_MinimumBiasHF1_AND_BptxAND
        493, -- module_index: 20, name: L1_NotETT150_MinimumBiasHF1_OR_BptxAND
        486, -- module_index: 21, name: L1_NotETT80_MinimumBiasHF1_AND_BptxAND
        479, -- module_index: 22, name: L1_NotETT80_MinimumBiasHF1_OR_BptxAND
         77, -- module_index: 23, name: L1_ETT5
        432, -- module_index: 24, name: L1_ETT5_BptxAND
        407, -- module_index: 25, name: L1_ETTAsym40
        413, -- module_index: 26, name: L1_ETTAsym40_BptxAND
        408, -- module_index: 27, name: L1_ETTAsym50
    others => 0
);

-- ========================================================