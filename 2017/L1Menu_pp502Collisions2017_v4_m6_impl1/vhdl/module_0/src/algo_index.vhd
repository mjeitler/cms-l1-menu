-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 19c85715-3234-40e0-a608-952f97944368

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        239, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        232, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        238, -- module_index: 2, name: L1_BptxOR
        228, -- module_index: 3, name: L1_NotBptxOR
        273, -- module_index: 4, name: L1_ETT100_BptxAND
        252, -- module_index: 5, name: L1_FirstBunchAfterTrain
        272, -- module_index: 6, name: L1_ETT95_BptxAND
         66, -- module_index: 7, name: L1_SingleEG2_BptxAND
        230, -- module_index: 8, name: L1_ZeroBias_copy
        181, -- module_index: 9, name: L1_SingleJet46er2p7_NotBptxOR_3BX
          1, -- module_index: 10, name: L1_SingleMuOpen
        251, -- module_index: 11, name: L1_FirstBunchInTrain
        177, -- module_index: 12, name: L1_SingleMuOpen_NotBptxOR_3BX
        179, -- module_index: 13, name: L1_SingleJet20er2p7_NotBptxOR_3BX
        235, -- module_index: 14, name: L1_ZeroBias
        178, -- module_index: 15, name: L1_SingleJet20er2p7_NotBptxOR
        176, -- module_index: 16, name: L1_SingleMuOpen_NotBptxOR
        270, -- module_index: 17, name: L1_ETT85_BptxAND
        274, -- module_index: 18, name: L1_ETT110_BptxAND
        147, -- module_index: 19, name: L1_SingleJet12_BptxAND
        264, -- module_index: 20, name: L1_ETT40_BptxAND
        226, -- module_index: 21, name: L1_MinimumBiasHF0_OR_BptxAND
        265, -- module_index: 22, name: L1_ETT50_BptxAND
        225, -- module_index: 23, name: L1_MinimumBiasHF0_AND_BptxAND
        266, -- module_index: 24, name: L1_ETT60_BptxAND
        267, -- module_index: 25, name: L1_ETT70_BptxAND
        119, -- module_index: 26, name: L1_SingleJet8_BptxAND
        224, -- module_index: 27, name: L1_IsolatedBunch
        268, -- module_index: 28, name: L1_ETT75_BptxAND
        227, -- module_index: 29, name: L1_AlwaysTrue
        269, -- module_index: 30, name: L1_ETT80_BptxAND
        271, -- module_index: 31, name: L1_ETT90_BptxAND
        180, -- module_index: 32, name: L1_SingleJet43er2p7_NotBptxOR_3BX
         99, -- module_index: 33, name: L1_DoubleEG_15_5
        106, -- module_index: 34, name: L1_DoubleEG_23_10
        156, -- module_index: 35, name: L1_DoubleJet112er2p7
        161, -- module_index: 36, name: L1_DoubleJet20And8er2p7
        150, -- module_index: 37, name: L1_DoubleJet8er2p7
        129, -- module_index: 38, name: L1_SingleJet40_FWD
         12, -- module_index: 39, name: L1_SingleMu11_LowQ
         23, -- module_index: 40, name: L1_SingleMu25
          2, -- module_index: 41, name: L1_SingleMuCosmics_BMTF
        199, -- module_index: 42, name: L1_DoubleMu0_SQ_OS
        197, -- module_index: 43, name: L1_DoubleMu_15_7_SQ
    others => 0
);

-- ========================================================