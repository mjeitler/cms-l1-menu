-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        221, -- module_index: 0, name: L1_DoubleMu0_NotMinimumBiasHF2_AND
        410, -- module_index: 1, name: L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
          7, -- module_index: 2, name: L1_MinimumBiasHF2_AND_BptxAND
        408, -- module_index: 3, name: L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
          8, -- module_index: 4, name: L1_MinimumBiasHF2_OR_BptxAND
        334, -- module_index: 5, name: L1_SingleEG5_NotMinimumBiasHF2_AND
        335, -- module_index: 6, name: L1_SingleEG3_NotMinimumBiasHF2_AND
        381, -- module_index: 7, name: L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        327, -- module_index: 8, name: L1_SingleMu0_NotMinimumBiasHF2_AND
        268, -- module_index: 9, name: L1_SingleEG3_NotMinimumBiasHF2_OR
        382, -- module_index: 10, name: L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        411, -- module_index: 11, name: L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        264, -- module_index: 12, name: L1_SingleMu0_NotMinimumBiasHF2_OR
        422, -- module_index: 13, name: L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        423, -- module_index: 14, name: L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        332, -- module_index: 15, name: L1_DoubleEG2_NotMinimumBiasHF2_AND
        266, -- module_index: 16, name: L1_DoubleMuOpen_NotMinimumBiasHF2_OR
        412, -- module_index: 17, name: L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        220, -- module_index: 18, name: L1_DoubleMu0_NotMinimumBiasHF2_OR
         12, -- module_index: 19, name: L1_MinimumBiasHF2_OR
        330, -- module_index: 20, name: L1_DoubleEG5_NotMinimumBiasHF2_AND
        285, -- module_index: 21, name: L1_NotMinimumBiasHF2_AND
        262, -- module_index: 22, name: L1_ETT5_NotMinimumBiasHF2_OR
        409, -- module_index: 23, name: L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
         17, -- module_index: 24, name: L1_NotMinimumBiasHF2_OR_BptxAND
        265, -- module_index: 25, name: L1_SingleMu3_NotMinimumBiasHF2_OR
        286, -- module_index: 26, name: L1_SingleMuOpen_NotMinimumBiasHF2_AND
         15, -- module_index: 27, name: L1_NotMinimumBiasHF2_OR
         11, -- module_index: 28, name: L1_MinimumBiasHF2_AND
        269, -- module_index: 29, name: L1_SingleEG5_NotMinimumBiasHF2_OR
        421, -- module_index: 30, name: L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        416, -- module_index: 31, name: L1_ETT5_ETTAsym50_BptxAND
        263, -- module_index: 32, name: L1_SingleMuOpen_NotMinimumBiasHF2_OR
        302, -- module_index: 33, name: L1_DoubleEG5_NotMinimumBiasHF2_OR
        300, -- module_index: 34, name: L1_DoubleEG2_NotMinimumBiasHF2_OR
        213, -- module_index: 35, name: L1_DoubleMuOpen_OS
        214, -- module_index: 36, name: L1_DoubleMuOpen_OS_BptxAND
        152, -- module_index: 37, name: L1_SingleMu12_SingleEG7
        203, -- module_index: 38, name: L1_SingleMu12
        281, -- module_index: 39, name: L1_SingleMu3_SingleJet28_MidEta2p7
        198, -- module_index: 40, name: L1_SingleMu3_SingleJet40_MidEta2p7
        168, -- module_index: 41, name: L1_SingleMu5_SingleEG12
        204, -- module_index: 42, name: L1_SingleMu12_BptxAND
        206, -- module_index: 43, name: L1_SingleMu16
        207, -- module_index: 44, name: L1_SingleMu16_BptxAND
        238, -- module_index: 45, name: L1_SingleMu5_BptxAND
        227, -- module_index: 46, name: L1_SingleMu7_BptxAND
        289, -- module_index: 47, name: L1_DoubleEG5
        128, -- module_index: 48, name: L1_DoubleEG5_BptxAND
        129, -- module_index: 49, name: L1_DoubleEG8_BptxAND
        153, -- module_index: 50, name: L1_SingleEG5_SingleJet28_MidEta2p7
        473, -- module_index: 51, name: L1_SingleEG5
        154, -- module_index: 52, name: L1_SingleEG5_SingleJet32_MidEta2p7
         61, -- module_index: 53, name: L1_SingleJet16_FWD_BptxAND
        476, -- module_index: 54, name: L1_SingleEG7_BptxAND
        132, -- module_index: 55, name: L1_SingleIsoEG12_BptxAND
        134, -- module_index: 56, name: L1_SingleIsoEG3_BptxAND
         35, -- module_index: 57, name: L1_SingleJet44_BptxAND
        174, -- module_index: 58, name: L1_NotETT20_MinimumBiasHF2_OR_BptxAND
        260, -- module_index: 59, name: L1_ETT5
        406, -- module_index: 60, name: L1_ETTAsym40
        405, -- module_index: 61, name: L1_ETTAsym50
        418, -- module_index: 62, name: L1_ETTAsym50_BptxAND
        404, -- module_index: 63, name: L1_ETTAsym60
        403, -- module_index: 64, name: L1_ETTAsym70
        402, -- module_index: 65, name: L1_ETTAsym80
        346, -- module_index: 66, name: L1_Castor1
        344, -- module_index: 67, name: L1_Castor2
        345, -- module_index: 68, name: L1_Castor3
        343, -- module_index: 69, name: L1_Castor4
          5, -- module_index: 70, name: L1_Centrality_Saturation
    others => 0
);

-- ========================================================