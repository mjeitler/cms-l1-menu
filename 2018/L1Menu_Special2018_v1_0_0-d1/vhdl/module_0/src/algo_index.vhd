-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- fc29be71-db7f-4aff-9e46-094f956ff1d1

-- Unique ID of firmware implementation:
-- ede4df2a-e7ec-4ef1-b0f0-3d2b2b7fe1ac

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        317, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        321, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        287, -- module_index: 2, name: L1_BptxOR
        280, -- module_index: 3, name: L1_MinimumBiasHF0_OR_BptxAND
        272, -- module_index: 4, name: L1_ZeroBias
        301, -- module_index: 5, name: L1_SecondBunchInTrain
        257, -- module_index: 6, name: L1_ETT90_BptxAND
        302, -- module_index: 7, name: L1_SecondLastBunchInTrain
        258, -- module_index: 8, name: L1_ETT95_BptxAND
        252, -- module_index: 9, name: L1_ETT60_BptxAND
        273, -- module_index: 10, name: L1_ZeroBias_copy
        253, -- module_index: 11, name: L1_ETT70_BptxAND
        299, -- module_index: 12, name: L1_FirstBunchBeforeTrain
        259, -- module_index: 13, name: L1_ETT100_BptxAND
        254, -- module_index: 14, name: L1_ETT75_BptxAND
        300, -- module_index: 15, name: L1_FirstBunchInTrain
        224, -- module_index: 16, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
          4, -- module_index: 17, name: L1_SingleMuOpen
        230, -- module_index: 18, name: L1_SingleJet20er2p5_NotBptxOR
        222, -- module_index: 19, name: L1_SingleMuOpen_NotBptxOR
        304, -- module_index: 20, name: L1_FirstBunchAfterTrain
        231, -- module_index: 21, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        279, -- module_index: 22, name: L1_MinimumBiasHF0_AND_BptxAND
        286, -- module_index: 23, name: L1_NotBptxOR
        223, -- module_index: 24, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        250, -- module_index: 25, name: L1_ETT40_BptxAND
        298, -- module_index: 26, name: L1_IsolatedBunch
        251, -- module_index: 27, name: L1_ETT50_BptxAND
        303, -- module_index: 28, name: L1_LastBunchInTrain
        271, -- module_index: 29, name: L1_AlwaysTrue
        244, -- module_index: 30, name: L1_SingleJet12_BptxAND
        232, -- module_index: 31, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        233, -- module_index: 32, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        260, -- module_index: 33, name: L1_ETT110_BptxAND
        255, -- module_index: 34, name: L1_ETT80_BptxAND
        256, -- module_index: 35, name: L1_ETT85_BptxAND
          5, -- module_index: 36, name: L1_SingleMu0_DQ
         16, -- module_index: 37, name: L1_SingleMu15_DQ
         21, -- module_index: 38, name: L1_SingleMu22_OMTF
          0, -- module_index: 39, name: L1_SingleMuCosmics
         36, -- module_index: 40, name: L1_DoubleMu0_SQ
         43, -- module_index: 41, name: L1_DoubleMu_15_7
    others => 0
);

-- ========================================================