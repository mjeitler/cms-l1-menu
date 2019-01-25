-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- f5f8369a-7595-4101-ba04-ba7f70eab3a7

-- Unique ID of firmware implementation:
-- ac0bbb8c-f586-40cd-b48e-54dc34f99857

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
        253, -- module_index: 3, name: L1_ETT70_BptxAND
        363, -- module_index: 4, name: L1_DoubleJet32er2p5_TOTEM_2
        250, -- module_index: 5, name: L1_ETT40_BptxAND
        358, -- module_index: 6, name: L1_DoubleJet20er2p5_TOTEM_4
        286, -- module_index: 7, name: L1_NotBptxOR
        302, -- module_index: 8, name: L1_SecondLastBunchInTrain
        255, -- module_index: 9, name: L1_ETT80_BptxAND
          4, -- module_index: 10, name: L1_SingleMuOpen
        256, -- module_index: 11, name: L1_ETT85_BptxAND
        230, -- module_index: 12, name: L1_SingleJet20er2p5_NotBptxOR
        260, -- module_index: 13, name: L1_ETT110_BptxAND
        281, -- module_index: 14, name: L1_NotMinimumBiasHF0_AND_BptxAND
        257, -- module_index: 15, name: L1_ETT90_BptxAND
        231, -- module_index: 16, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        304, -- module_index: 17, name: L1_FirstBunchAfterTrain
        299, -- module_index: 18, name: L1_FirstBunchBeforeTrain
        370, -- module_index: 19, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_1
        152, -- module_index: 20, name: L1_DoubleJet32er2p5
        371, -- module_index: 21, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_2
        223, -- module_index: 22, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        273, -- module_index: 23, name: L1_ZeroBias_copy
        372, -- module_index: 24, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_4
        301, -- module_index: 25, name: L1_SecondBunchInTrain
        364, -- module_index: 26, name: L1_DoubleJet32er2p5_TOTEM_4
        272, -- module_index: 27, name: L1_ZeroBias
        254, -- module_index: 28, name: L1_ETT75_BptxAND
        282, -- module_index: 29, name: L1_NotMinimumBiasHF0_OR_BptxAND
        357, -- module_index: 30, name: L1_DoubleJet20er2p5_TOTEM_2
        348, -- module_index: 31, name: L1_TOTEM_2
        362, -- module_index: 32, name: L1_DoubleJet32er2p5_TOTEM_1
        376, -- module_index: 33, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_1
        151, -- module_index: 34, name: L1_DoubleJet20er2p5
        232, -- module_index: 35, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        233, -- module_index: 36, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        350, -- module_index: 37, name: L1_TOTEM_4
        259, -- module_index: 38, name: L1_ETT100_BptxAND
        378, -- module_index: 39, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_4
        377, -- module_index: 40, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_2
        279, -- module_index: 41, name: L1_MinimumBiasHF0_AND_BptxAND
        222, -- module_index: 42, name: L1_SingleMuOpen_NotBptxOR
        300, -- module_index: 43, name: L1_FirstBunchInTrain
        271, -- module_index: 44, name: L1_AlwaysTrue
        280, -- module_index: 45, name: L1_MinimumBiasHF0_OR_BptxAND
        298, -- module_index: 46, name: L1_IsolatedBunch
        356, -- module_index: 47, name: L1_DoubleJet20er2p5_TOTEM_1
        347, -- module_index: 48, name: L1_TOTEM_1
        251, -- module_index: 49, name: L1_ETT50_BptxAND
        224, -- module_index: 50, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        303, -- module_index: 51, name: L1_LastBunchInTrain
        258, -- module_index: 52, name: L1_ETT95_BptxAND
        252, -- module_index: 53, name: L1_ETT60_BptxAND
        244, -- module_index: 54, name: L1_SingleJet12_BptxAND
         16, -- module_index: 55, name: L1_SingleMu15_DQ
         23, -- module_index: 56, name: L1_SingleMu22_EMTF
         11, -- module_index: 57, name: L1_SingleMu7_DQ
         34, -- module_index: 58, name: L1_DoubleMu0_OQ
         42, -- module_index: 59, name: L1_DoubleMu_15_5_SQ
        329, -- module_index: 60, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
    others => 0
);

-- ========================================================