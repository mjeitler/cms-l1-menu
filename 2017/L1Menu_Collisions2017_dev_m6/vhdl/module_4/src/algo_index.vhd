-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        373, -- module_index: 0, name: L1_DoubleMu5_SQ_OS_Mass7to18
        276, -- module_index: 1, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        152, -- module_index: 2, name: L1_QuadJet60er3p0
        252, -- module_index: 3, name: L1_IsoEG28er2p1_Jet34er3p0_dR_Min0p3
        300, -- module_index: 4, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        219, -- module_index: 5, name: L1_CDC_3_er1p2_TOP120_DPHI2p618_3p665
        217, -- module_index: 6, name: L1_CDC_3_er2p1_TOP120_DPHI2p618_3p665
        231, -- module_index: 7, name: L1_CDCp1_3_er1p2_TOP120_DPHI2p618_3p665
        372, -- module_index: 8, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        147, -- module_index: 9, name: L1_TripleJet_84_68_48_VBF
        408, -- module_index: 10, name: L1_MU20_EG15
        409, -- module_index: 11, name: L1_Mu20_IsoEG6
         41, -- module_index: 12, name: L1_SingleEG10
          4, -- module_index: 13, name: L1_SingleMu7
        262, -- module_index: 14, name: L1_Mu23_IsoEG10
         57, -- module_index: 15, name: L1_SingleIsoEG18
        265, -- module_index: 16, name: L1_Mu7_EG23
         42, -- module_index: 17, name: L1_SingleEG15
        260, -- module_index: 18, name: L1_Mu20_EG17
        266, -- module_index: 19, name: L1_Mu7_IsoEG20
        404, -- module_index: 20, name: L1_Mu5_EG20
        261, -- module_index: 21, name: L1_Mu23_EG10
        263, -- module_index: 22, name: L1_Mu5_EG23
          3, -- module_index: 23, name: L1_SingleMu5
        405, -- module_index: 24, name: L1_Mu5_IsoEG18
        406, -- module_index: 25, name: L1_Mu12_EG10
        267, -- module_index: 26, name: L1_Mu7_IsoEG23
        403, -- module_index: 27, name: L1_Mu5_EG15
         58, -- module_index: 28, name: L1_SingleIsoEG20
          9, -- module_index: 29, name: L1_SingleMu20
        264, -- module_index: 30, name: L1_Mu5_IsoEG20
        407, -- module_index: 31, name: L1_Mu20_EG10
         29, -- module_index: 32, name: L1_TripleMu_4_4_4
         23, -- module_index: 33, name: L1_DoubleMu_12_8
         43, -- module_index: 34, name: L1_SingleEG18
         47, -- module_index: 35, name: L1_SingleEG30
         55, -- module_index: 36, name: L1_SingleEG36er2p1
         40, -- module_index: 37, name: L1_SingleEG5
         60, -- module_index: 38, name: L1_SingleIsoEG24
         73, -- module_index: 39, name: L1_SingleIsoEG28er2p1
         65, -- module_index: 40, name: L1_SingleIsoEG34
        125, -- module_index: 41, name: L1_SingleJet120
        130, -- module_index: 42, name: L1_SingleJet180
        100, -- module_index: 43, name: L1_SingleTau20
         17, -- module_index: 44, name: L1_SingleMu22er2p1
        236, -- module_index: 45, name: L1_SingleMuOpen_Bottom
        478, -- module_index: 46, name: L1_BPTX_AND_NIM
        462, -- module_index: 47, name: L1_BPTX_AND_Ref1_VME
        466, -- module_index: 48, name: L1_BPTX_AND_Ref2_NIM
        470, -- module_index: 49, name: L1_BPTX_AND_Ref3_VME
        474, -- module_index: 50, name: L1_BPTX_AND_Ref4_VME
        467, -- module_index: 51, name: L1_BPTX_B1NotB2_NIM
        463, -- module_index: 52, name: L1_BPTX_B1NotB2_VME
        479, -- module_index: 53, name: L1_BPTX_B1_NIM
        468, -- module_index: 54, name: L1_BPTX_B2NotB1_NIM
        464, -- module_index: 55, name: L1_BPTX_B2NotB1_VME
        480, -- module_index: 56, name: L1_BPTX_B2_NIM
        456, -- module_index: 57, name: L1_BPTX_BeamGas_B1_VME
        457, -- module_index: 58, name: L1_BPTX_BeamGas_B2_VME
        454, -- module_index: 59, name: L1_BPTX_BeamGas_Ref1_VME
        455, -- module_index: 60, name: L1_BPTX_BeamGas_Ref2_VME
        469, -- module_index: 61, name: L1_BPTX_NotOR_NIM
        465, -- module_index: 62, name: L1_BPTX_NotOR_VME
        481, -- module_index: 63, name: L1_BPTX_OR_NIM
        471, -- module_index: 64, name: L1_BPTX_OR_Ref3_VME
        475, -- module_index: 65, name: L1_BPTX_OR_Ref4_VME
        472, -- module_index: 66, name: L1_BPTX_RefAND_VME
        460, -- module_index: 67, name: L1_BptxMinus
        452, -- module_index: 68, name: L1_BptxXOR
        459, -- module_index: 69, name: L1_BptxPlus
        473, -- module_index: 70, name: L1_FirstCollisionInOrbit
        477, -- module_index: 71, name: L1_FirstCollisionInTrain
        476, -- module_index: 72, name: L1_LastCollisionInTrain
    others => 0
);

-- ========================================================