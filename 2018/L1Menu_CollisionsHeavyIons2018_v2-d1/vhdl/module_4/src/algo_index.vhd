-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        238, -- module_index: 0, name: L1_ETTAsym40_BptxAND
        244, -- module_index: 1, name: L1_ETTAsym70
          2, -- module_index: 2, name: L1_MinimumBiasHF1_AND_BptxAND
        228, -- module_index: 3, name: L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        199, -- module_index: 4, name: L1_SingleMu5_MinimumBiasHF1_AND_BptxAND
        165, -- module_index: 5, name: L1_NotETT100_MinimumBiasHF1_AND_BptxAND
        168, -- module_index: 6, name: L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        219, -- module_index: 7, name: L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND
        248, -- module_index: 8, name: L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        230, -- module_index: 9, name: L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        261, -- module_index: 10, name: L1_ETT5_MinimumBiasHF1_OR_BptxAND
        180, -- module_index: 11, name: L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND
          3, -- module_index: 12, name: L1_MinimumBiasHF1_OR_BptxAND
        196, -- module_index: 13, name: L1_SingleMu3_MinimumBiasHF1_AND_BptxAND
        167, -- module_index: 14, name: L1_NotETT200_MinimumBiasHF1_AND_BptxAND
         16, -- module_index: 15, name: L1_NotMinimumBiasHF1_OR_BptxAND
        174, -- module_index: 16, name: L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        229, -- module_index: 17, name: L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        231, -- module_index: 18, name: L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        176, -- module_index: 19, name: L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        205, -- module_index: 20, name: L1_SingleMu12_MinimumBiasHF1_AND_BptxAND
        173, -- module_index: 21, name: L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND
          4, -- module_index: 22, name: L1_MinimumBiasHF1_XOR_BptxAND
        166, -- module_index: 23, name: L1_NotETT150_MinimumBiasHF1_AND_BptxAND
        178, -- module_index: 24, name: L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        170, -- module_index: 25, name: L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        179, -- module_index: 26, name: L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        182, -- module_index: 27, name: L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        232, -- module_index: 28, name: L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        184, -- module_index: 29, name: L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        185, -- module_index: 30, name: L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        202, -- module_index: 31, name: L1_SingleMu7_MinimumBiasHF1_AND_BptxAND
        208, -- module_index: 32, name: L1_SingleMu16_MinimumBiasHF1_AND_BptxAND
        172, -- module_index: 33, name: L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        207, -- module_index: 34, name: L1_SingleMu16_BptxAND
        194, -- module_index: 35, name: L1_SingleMu3
        195, -- module_index: 36, name: L1_SingleMu3_BptxAND
        197, -- module_index: 37, name: L1_SingleMu5
        198, -- module_index: 38, name: L1_SingleMu5_BptxAND
        200, -- module_index: 39, name: L1_SingleMu7
        201, -- module_index: 40, name: L1_SingleMu7_BptxAND
        190, -- module_index: 41, name: L1_SingleMuOpen
        142, -- module_index: 42, name: L1_SingleMu3_SingleEG20
        143, -- module_index: 43, name: L1_SingleMu3_SingleEG30
        138, -- module_index: 44, name: L1_SingleMu3_SingleJet32_MidEta2p7
        145, -- module_index: 45, name: L1_SingleMu5_SingleEG12
        150, -- module_index: 46, name: L1_SingleMu7_SingleEG12
        151, -- module_index: 47, name: L1_SingleMu7_SingleEG15
        148, -- module_index: 48, name: L1_SingleMu7_SingleEG7
        218, -- module_index: 49, name: L1_DoubleMu0
        217, -- module_index: 50, name: L1_DoubleMu0_BptxAND
        223, -- module_index: 51, name: L1_DoubleMu10_BptxAND
        215, -- module_index: 52, name: L1_DoubleMuOpen_SS_BptxAND
    others => 0
);

-- ========================================================