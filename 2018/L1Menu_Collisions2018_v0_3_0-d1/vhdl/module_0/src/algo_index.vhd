-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_3_0

-- Unique ID of L1 Trigger Menu:
-- 13f60d08-d9e3-4e6d-ad9b-3fd19ac86467

-- Unique ID of firmware implementation:
-- 6a0fa015-1c57-4ae1-8232-f2325ddad00d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        477, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        470, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        476, -- module_index: 2, name: L1_BptxOR
        211, -- module_index: 3, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
          1, -- module_index: 4, name: L1_SingleMuOpen
        210, -- module_index: 5, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        465, -- module_index: 6, name: L1_AlwaysTrue
        417, -- module_index: 7, name: L1_FirstBunchAfterTrain
        416, -- module_index: 8, name: L1_FirstBunchInTrain
        415, -- module_index: 9, name: L1_IsolatedBunch
        466, -- module_index: 10, name: L1_NotBptxOR
        468, -- module_index: 11, name: L1_ZeroBias_copy
        209, -- module_index: 12, name: L1_SingleMuOpen_NotBptxOR
        418, -- module_index: 13, name: L1_LastBunchInTrain
        419, -- module_index: 14, name: L1_SecondBunchInTrain
        420, -- module_index: 15, name: L1_SecondLastBunchInTrain
        459, -- module_index: 16, name: L1_MinimumBiasHF0_AND_BptxAND
        215, -- module_index: 17, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        473, -- module_index: 18, name: L1_ZeroBias
        212, -- module_index: 19, name: L1_SingleJet20er2p5_NotBptxOR
        214, -- module_index: 20, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        213, -- module_index: 21, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        103, -- module_index: 22, name: L1_DoubleEG_22_10_er2p5
        109, -- module_index: 23, name: L1_DoubleEG_27_14_er2p5
        284, -- module_index: 24, name: L1_DoubleEG_LooseIso25_12_er2p5
        155, -- module_index: 25, name: L1_DoubleJet100er2p5
        146, -- module_index: 26, name: L1_SingleJet120_FWD
        113, -- module_index: 27, name: L1_TripleEG16er2p5
        117, -- module_index: 28, name: L1_TripleEG_18_18_12_er2p5
          6, -- module_index: 29, name: L1_SingleMu0_OMTF
         14, -- module_index: 30, name: L1_SingleMu12_LowQ_OMTF
        430, -- module_index: 31, name: L1_SingleMu16er1p5
         19, -- module_index: 32, name: L1_SingleMu22
         23, -- module_index: 33, name: L1_SingleMu25
         11, -- module_index: 34, name: L1_SingleMu7_LowQ
        426, -- module_index: 35, name: L1_SingleMu9er1p5
          4, -- module_index: 36, name: L1_SingleMuCosmics_EMTF
        163, -- module_index: 37, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        162, -- module_index: 38, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        243, -- module_index: 39, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD
         97, -- module_index: 40, name: L1_IsoEG32er2p5_Mt40
         99, -- module_index: 41, name: L1_IsoEG32er2p5_Mt48
        252, -- module_index: 42, name: L1_DoubleJet112er2p3_dEta_Max1p6
        224, -- module_index: 43, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
        376, -- module_index: 44, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        387, -- module_index: 45, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 46, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        285, -- module_index: 47, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        217, -- module_index: 48, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        293, -- module_index: 49, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        402, -- module_index: 50, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        444, -- module_index: 51, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        449, -- module_index: 52, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================