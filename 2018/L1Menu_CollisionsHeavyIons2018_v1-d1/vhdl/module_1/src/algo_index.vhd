-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        267, -- module_index: 0, name: L1_DoubleMu0_NotMinimumBiasHF2_OR
         12, -- module_index: 1, name: L1_MinimumBiasHF2_OR
        236, -- module_index: 2, name: L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
         15, -- module_index: 3, name: L1_NotMinimumBiasHF2_OR
          8, -- module_index: 4, name: L1_MinimumBiasHF2_OR_BptxAND
        234, -- module_index: 5, name: L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        258, -- module_index: 6, name: L1_ETT5_ETTAsym40_BptxAND
         19, -- module_index: 7, name: L1_DoubleEG2_NotMinimumBiasHF2_OR
        266, -- module_index: 8, name: L1_DoubleMuOpen_NotMinimumBiasHF2_OR
        237, -- module_index: 9, name: L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        249, -- module_index: 10, name: L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        253, -- module_index: 11, name: L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        250, -- module_index: 12, name: L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
         17, -- module_index: 13, name: L1_NotMinimumBiasHF2_OR_BptxAND
        268, -- module_index: 14, name: L1_SingleEG3_NotMinimumBiasHF2_OR
        233, -- module_index: 15, name: L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        252, -- module_index: 16, name: L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        262, -- module_index: 17, name: L1_ETT5_NotMinimumBiasHF2_OR
        264, -- module_index: 18, name: L1_SingleMu0_NotMinimumBiasHF2_OR
        265, -- module_index: 19, name: L1_SingleMu3_NotMinimumBiasHF2_OR
          7, -- module_index: 20, name: L1_MinimumBiasHF2_AND_BptxAND
        269, -- module_index: 21, name: L1_SingleEG5_NotMinimumBiasHF2_OR
        235, -- module_index: 22, name: L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        263, -- module_index: 23, name: L1_SingleMuOpen_NotMinimumBiasHF2_OR
         11, -- module_index: 24, name: L1_MinimumBiasHF2_AND
        251, -- module_index: 25, name: L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
         18, -- module_index: 26, name: L1_DoubleEG5_NotMinimumBiasHF2_OR
        157, -- module_index: 27, name: L1_SingleEG5_SingleEG40
         61, -- module_index: 28, name: L1_SingleJet16_FWD_BptxAND
         66, -- module_index: 29, name: L1_SingleJet64_FWD_BptxAND
        112, -- module_index: 30, name: L1_SingleEG7_BptxAND
         32, -- module_index: 31, name: L1_SingleJet24_BptxAND
         37, -- module_index: 32, name: L1_SingleJet56_BptxAND
    others => 0
);

-- ========================================================