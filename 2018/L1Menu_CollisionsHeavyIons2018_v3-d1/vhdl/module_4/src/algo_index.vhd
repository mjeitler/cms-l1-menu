-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        219, -- module_index: 0, name: L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND
         16, -- module_index: 1, name: L1_NotMinimumBiasHF1_OR_BptxAND
        194, -- module_index: 2, name: L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        377, -- module_index: 3, name: L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        380, -- module_index: 4, name: L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        226, -- module_index: 5, name: L1_SingleMu7_MinimumBiasHF1_AND_BptxAND
        466, -- module_index: 6, name: L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        234, -- module_index: 7, name: L1_SingleMu5_MinimumBiasHF1_AND_BptxAND
        276, -- module_index: 8, name: L1_SingleMu3_MinimumBiasHF1_AND_BptxAND
        301, -- module_index: 9, name: L1_NotETT200_MinimumBiasHF1_AND_BptxAND
        376, -- module_index: 10, name: L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        457, -- module_index: 11, name: L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        205, -- module_index: 12, name: L1_SingleMu12_MinimumBiasHF1_AND_BptxAND
        275, -- module_index: 13, name: L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        166, -- module_index: 14, name: L1_NotETT150_MinimumBiasHF1_AND_BptxAND
        407, -- module_index: 15, name: L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        165, -- module_index: 16, name: L1_NotETT100_MinimumBiasHF1_AND_BptxAND
        261, -- module_index: 17, name: L1_ETT5_MinimumBiasHF1_OR_BptxAND
        378, -- module_index: 18, name: L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        456, -- module_index: 19, name: L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND
         10, -- module_index: 20, name: L1_MinimumBiasHF1_AND
        461, -- module_index: 21, name: L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        162, -- module_index: 22, name: L1_NotETT20_MinimumBiasHF1_AND_BptxAND
        460, -- module_index: 23, name: L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND
          3, -- module_index: 24, name: L1_MinimumBiasHF1_OR_BptxAND
          2, -- module_index: 25, name: L1_MinimumBiasHF1_AND_BptxAND
        171, -- module_index: 26, name: L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND
         14, -- module_index: 27, name: L1_NotMinimumBiasHF1_OR
        467, -- module_index: 28, name: L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        468, -- module_index: 29, name: L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        465, -- module_index: 30, name: L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        459, -- module_index: 31, name: L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        288, -- module_index: 32, name: L1_NotMinimumBiasHF1_AND
        217, -- module_index: 33, name: L1_DoubleMu0_BptxAND
        379, -- module_index: 34, name: L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        196, -- module_index: 35, name: L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        464, -- module_index: 36, name: L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        462, -- module_index: 37, name: L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND
         13, -- module_index: 38, name: L1_MinimumBiasHF1_OR
        463, -- module_index: 39, name: L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        458, -- module_index: 40, name: L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        469, -- module_index: 41, name: L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND
          4, -- module_index: 42, name: L1_MinimumBiasHF1_XOR_BptxAND
        208, -- module_index: 43, name: L1_SingleMu16_MinimumBiasHF1_AND_BptxAND
        163, -- module_index: 44, name: L1_NotETT20_MinimumBiasHF1_OR_BptxAND
        218, -- module_index: 45, name: L1_DoubleMu0
        223, -- module_index: 46, name: L1_DoubleMu10_BptxAND
        216, -- module_index: 47, name: L1_DoubleMuOpen_SS
        215, -- module_index: 48, name: L1_DoubleMuOpen_SS_BptxAND
        170, -- module_index: 49, name: L1_SingleMu3_SingleEG12
        237, -- module_index: 50, name: L1_SingleMu3
        195, -- module_index: 51, name: L1_SingleMu3_SingleEG15
        279, -- module_index: 52, name: L1_SingleMu3_SingleEG20
        167, -- module_index: 53, name: L1_SingleMu3_SingleEG30
        197, -- module_index: 54, name: L1_SingleMu3_SingleJet32_MidEta2p7
        189, -- module_index: 55, name: L1_SingleMu5_SingleEG10
        277, -- module_index: 56, name: L1_SingleMu5
        164, -- module_index: 57, name: L1_SingleMu5_SingleEG15
        313, -- module_index: 58, name: L1_SingleMu5_SingleEG20
        312, -- module_index: 59, name: L1_SingleMu7_SingleEG10
        235, -- module_index: 60, name: L1_SingleMu7
        150, -- module_index: 61, name: L1_SingleMu7_SingleEG12
        151, -- module_index: 62, name: L1_SingleMu7_SingleEG15
        311, -- module_index: 63, name: L1_SingleMu7_SingleEG7
        192, -- module_index: 64, name: L1_SingleMu0
        193, -- module_index: 65, name: L1_SingleMu0_BptxAND
        278, -- module_index: 66, name: L1_SingleMu3_BptxAND
        293, -- module_index: 67, name: L1_SingleMu3_Centrality_80_100_BptxAND
        291, -- module_index: 68, name: L1_SingleMuOpen_Centrality_80_100_BptxAND
        298, -- module_index: 69, name: L1_SingleMu3_Centrality_70_100_BptxAND
        299, -- module_index: 70, name: L1_SingleMuOpen_Centrality_70_100_BptxAND
        127, -- module_index: 71, name: L1_DoubleEG10_BptxAND
        282, -- module_index: 72, name: L1_DoubleEG2
        130, -- module_index: 73, name: L1_DoubleEG2_BptxAND
        491, -- module_index: 74, name: L1_SingleEG12_SingleJet40_MidEta2p7
        155, -- module_index: 75, name: L1_SingleEG5_SingleJet40_MidEta2p7
         62, -- module_index: 76, name: L1_SingleJet28_FWD_BptxAND
        140, -- module_index: 77, name: L1_SingleIsoEG15_BptxAND
        131, -- module_index: 78, name: L1_SingleIsoEG7_BptxAND
         36, -- module_index: 79, name: L1_SingleJet48_BptxAND
    others => 0
);

-- ========================================================