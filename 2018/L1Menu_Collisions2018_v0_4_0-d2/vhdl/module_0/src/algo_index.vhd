-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_4_0

-- Unique ID of L1 Trigger Menu:
-- e8dddb91-1834-4d3a-ac09-0f3064f4581b

-- Unique ID of firmware implementation:
-- 07139670-e655-4511-8196-29176997bb33

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
        465, -- module_index: 3, name: L1_AlwaysTrue
        214, -- module_index: 4, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        213, -- module_index: 5, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        211, -- module_index: 6, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        468, -- module_index: 7, name: L1_ZeroBias_copy
        473, -- module_index: 8, name: L1_ZeroBias
        215, -- module_index: 9, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        209, -- module_index: 10, name: L1_SingleMuOpen_NotBptxOR
        212, -- module_index: 11, name: L1_SingleJet20er2p5_NotBptxOR
        420, -- module_index: 12, name: L1_SecondLastBunchInTrain
        417, -- module_index: 13, name: L1_FirstBunchAfterTrain
        418, -- module_index: 14, name: L1_LastBunchInTrain
        459, -- module_index: 15, name: L1_MinimumBiasHF0_AND_BptxAND
        466, -- module_index: 16, name: L1_NotBptxOR
        210, -- module_index: 17, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
          1, -- module_index: 18, name: L1_SingleMuOpen
        419, -- module_index: 19, name: L1_SecondBunchInTrain
        415, -- module_index: 20, name: L1_IsolatedBunch
        416, -- module_index: 21, name: L1_FirstBunchInTrain
        229, -- module_index: 22, name: L1_LooseIsoEG24er2p1_HTT100er
        232, -- module_index: 23, name: L1_LooseIsoEG30er2p1_HTT100er
        230, -- module_index: 24, name: L1_LooseIsoEG26er2p1_HTT100er
        231, -- module_index: 25, name: L1_LooseIsoEG28er2p1_HTT100er
        280, -- module_index: 26, name: L1_DoubleEG_LooseIso20_10_er2p5
        125, -- module_index: 27, name: L1_DoubleIsoTau32er2p1
        149, -- module_index: 28, name: L1_DoubleJet120er2p5
        122, -- module_index: 29, name: L1_DoubleTau70er2p1
        145, -- module_index: 30, name: L1_SingleJet90_FWD
        114, -- module_index: 31, name: L1_TripleEG_18_17_8_er2p5
         12, -- module_index: 32, name: L1_SingleMu0_LowQ
         15, -- module_index: 33, name: L1_SingleMu12_LowQ_EMTF
         16, -- module_index: 34, name: L1_SingleMu15_LowQ
         19, -- module_index: 35, name: L1_SingleMu22
         23, -- module_index: 36, name: L1_SingleMu25
         11, -- module_index: 37, name: L1_SingleMu7_LowQ
        426, -- module_index: 38, name: L1_SingleMu9er1p5
          4, -- module_index: 39, name: L1_SingleMuCosmics_EMTF
        163, -- module_index: 40, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
         30, -- module_index: 41, name: L1_DoubleMu0
        391, -- module_index: 42, name: L1_DoubleMu0_SQ_OS
        395, -- module_index: 43, name: L1_DoubleMu0er1p5_SQ_OS
         37, -- module_index: 44, name: L1_DoubleMu18er2p1
        393, -- module_index: 45, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 46, name: L1_DoubleMu9_SQ
        332, -- module_index: 47, name: L1_DoubleMu_15_5_SQ
        333, -- module_index: 48, name: L1_DoubleMu_15_7_SQ
         39, -- module_index: 49, name: L1_TripleMu0
        407, -- module_index: 50, name: L1_TripleMu0_SQ
        335, -- module_index: 51, name: L1_TripleMu3_SQ
         43, -- module_index: 52, name: L1_TripleMu_5_3_3
        398, -- module_index: 53, name: L1_TripleMu_5_3p5_2p5
        385, -- module_index: 54, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        386, -- module_index: 55, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        375, -- module_index: 56, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        377, -- module_index: 57, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        343, -- module_index: 58, name: L1_DoubleMu0_Mass_Min1
        270, -- module_index: 59, name: L1_QuadJet36er2p5_IsoTau52er2p1
        220, -- module_index: 60, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        219, -- module_index: 61, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        227, -- module_index: 62, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        448, -- module_index: 63, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        253, -- module_index: 64, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        292, -- module_index: 65, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
    others => 0
);

-- ========================================================