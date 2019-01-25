-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
        220, -- module_index: 0, name: L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        219, -- module_index: 1, name: L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND
        212, -- module_index: 2, name: L1_DoubleMuOpen_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
          6, -- module_index: 3, name: L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
          5, -- module_index: 4, name: L1_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        221, -- module_index: 5, name: L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        222, -- module_index: 6, name: L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
        211, -- module_index: 7, name: L1_DoubleMuOpen_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        147, -- module_index: 8, name: L1_SingleMu5_SingleEG20
        205, -- module_index: 9, name: L1_SingleMu12_MinimumBiasHF1_AND_BptxAND
         10, -- module_index: 10, name: L1_MinimumBiasHF1_AND
        202, -- module_index: 11, name: L1_SingleMu7_MinimumBiasHF1_AND_BptxAND
         13, -- module_index: 12, name: L1_MinimumBiasHF1_OR
        208, -- module_index: 13, name: L1_SingleMu16_MinimumBiasHF1_AND_BptxAND
        172, -- module_index: 14, name: L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        179, -- module_index: 15, name: L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        182, -- module_index: 16, name: L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        228, -- module_index: 17, name: L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        165, -- module_index: 18, name: L1_NotETT100_MinimumBiasHF1_AND_BptxAND
        166, -- module_index: 19, name: L1_NotETT150_MinimumBiasHF1_AND_BptxAND
        174, -- module_index: 20, name: L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        248, -- module_index: 21, name: L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        230, -- module_index: 22, name: L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        261, -- module_index: 23, name: L1_ETT5_MinimumBiasHF1_OR_BptxAND
        177, -- module_index: 24, name: L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        168, -- module_index: 25, name: L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        199, -- module_index: 26, name: L1_SingleMu5_MinimumBiasHF1_AND_BptxAND
        231, -- module_index: 27, name: L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        170, -- module_index: 28, name: L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        180, -- module_index: 29, name: L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND
          3, -- module_index: 30, name: L1_MinimumBiasHF1_OR_BptxAND
         14, -- module_index: 31, name: L1_NotMinimumBiasHF1_OR
        169, -- module_index: 32, name: L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        181, -- module_index: 33, name: L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        229, -- module_index: 34, name: L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        175, -- module_index: 35, name: L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        176, -- module_index: 36, name: L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND
         16, -- module_index: 37, name: L1_NotMinimumBiasHF1_OR_BptxAND
        173, -- module_index: 38, name: L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        196, -- module_index: 39, name: L1_SingleMu3_MinimumBiasHF1_AND_BptxAND
        167, -- module_index: 40, name: L1_NotETT200_MinimumBiasHF1_AND_BptxAND
          4, -- module_index: 41, name: L1_MinimumBiasHF1_XOR_BptxAND
        178, -- module_index: 42, name: L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        183, -- module_index: 43, name: L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        171, -- module_index: 44, name: L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        232, -- module_index: 45, name: L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        185, -- module_index: 46, name: L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        184, -- module_index: 47, name: L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        204, -- module_index: 48, name: L1_SingleMu12_BptxAND
          2, -- module_index: 49, name: L1_MinimumBiasHF1_AND_BptxAND
         65, -- module_index: 50, name: L1_SingleJet56_FWD_BptxAND
        111, -- module_index: 51, name: L1_SingleEG5_BptxAND
         31, -- module_index: 52, name: L1_SingleJet16_BptxAND
         36, -- module_index: 53, name: L1_SingleJet44_BptxAND
        257, -- module_index: 54, name: L1_ETT5_ETTAsym50_BptxAND
        239, -- module_index: 55, name: L1_ETTAsym50_BptxAND
        240, -- module_index: 56, name: L1_ETTAsym60_BptxAND
        242, -- module_index: 57, name: L1_ETTAsym80_BptxAND
        241, -- module_index: 58, name: L1_ETTAsym70_BptxAND
        259, -- module_index: 59, name: L1_ETT5_BptxAND
        254, -- module_index: 60, name: L1_ETT5_ETTAsym80_BptxAND
        256, -- module_index: 61, name: L1_ETT5_ETTAsym60_BptxAND
        255, -- module_index: 62, name: L1_ETT5_ETTAsym70_BptxAND
        260, -- module_index: 63, name: L1_ETT5
        247, -- module_index: 64, name: L1_ETTAsym40
        238, -- module_index: 65, name: L1_ETTAsym40_BptxAND
        246, -- module_index: 66, name: L1_ETTAsym50
        245, -- module_index: 67, name: L1_ETTAsym60
        244, -- module_index: 68, name: L1_ETTAsym70
        243, -- module_index: 69, name: L1_ETTAsym80
    others => 0
);

-- ========================================================