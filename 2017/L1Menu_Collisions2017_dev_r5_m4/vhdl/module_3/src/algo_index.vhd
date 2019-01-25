-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 0d154197-83e2-480d-8634-262a4ce4f9da

-- Scale set:
-- scales_2017_04_26

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        371, -- module_index: 0, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        373, -- module_index: 1, name: L1_DoubleMu5_SQ_OS_Mass7to18
        277, -- module_index: 2, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        152, -- module_index: 3, name: L1_QuadJet60er3p0
        304, -- module_index: 4, name: L1_IsoEG20er2p1_IsoTau25er2p1_dEta_Min0p2
        252, -- module_index: 5, name: L1_IsoEG28er2p1_Jet34er3p0_dR_Min0p3
        429, -- module_index: 6, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
        425, -- module_index: 7, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        426, -- module_index: 8, name: L1_DoubleMu_10_0_dEta_Max1p8
        149, -- module_index: 9, name: L1_TripleJet_92_76_64_VBF
         91, -- module_index: 10, name: L1_TripleEG_14_10_8
        297, -- module_index: 11, name: L1_TripleEG_Iso20_10_5
         82, -- module_index: 12, name: L1_DoubleEG_20_18
         85, -- module_index: 13, name: L1_DoubleEG_22_15
         88, -- module_index: 14, name: L1_DoubleEG_25_12
        295, -- module_index: 15, name: L1_DoubleEG_Iso23_10
        107, -- module_index: 16, name: L1_DoubleIsoTau30er2p1
        110, -- module_index: 17, name: L1_DoubleIsoTau34er2p1
        144, -- module_index: 18, name: L1_DoubleJet100er3p0
        141, -- module_index: 19, name: L1_DoubleJet50er3p0
        412, -- module_index: 20, name: L1_EG25er2p1_HTT125er
        334, -- module_index: 21, name: L1_TripleMu3_SQ
        381, -- module_index: 22, name: L1_DoubleMu6_SQ_OS
         24, -- module_index: 23, name: L1_DoubleMu_13_6
        411, -- module_index: 24, name: L1_Mu8_HTT150er
         45, -- module_index: 25, name: L1_SingleEG26
         48, -- module_index: 26, name: L1_SingleEG32
         50, -- module_index: 27, name: L1_SingleEG36
         56, -- module_index: 28, name: L1_SingleEG38er2p1
         40, -- module_index: 29, name: L1_SingleEG5
         59, -- module_index: 30, name: L1_SingleIsoEG22
         71, -- module_index: 31, name: L1_SingleIsoEG24er2p1
         62, -- module_index: 32, name: L1_SingleIsoEG28
         64, -- module_index: 33, name: L1_SingleIsoEG32
         66, -- module_index: 34, name: L1_SingleIsoEG36
        126, -- module_index: 35, name: L1_SingleJet140
        129, -- module_index: 36, name: L1_SingleJet170
        122, -- module_index: 37, name: L1_SingleJet35
        101, -- module_index: 38, name: L1_SingleTau80er2p1
         17, -- module_index: 39, name: L1_SingleMu22er2p1
          0, -- module_index: 40, name: L1_SingleMuCosmics
        195, -- module_index: 41, name: L1_ETM150
        160, -- module_index: 42, name: L1_HTT120er
        171, -- module_index: 43, name: L1_HTT380er
        478, -- module_index: 44, name: L1_BPTX_AND_NIM
        462, -- module_index: 45, name: L1_BPTX_AND_Ref1_VME
        466, -- module_index: 46, name: L1_BPTX_AND_Ref2_NIM
        470, -- module_index: 47, name: L1_BPTX_AND_Ref3_VME
        474, -- module_index: 48, name: L1_BPTX_AND_Ref4_VME
        467, -- module_index: 49, name: L1_BPTX_B1NotB2_NIM
        463, -- module_index: 50, name: L1_BPTX_B1NotB2_VME
        479, -- module_index: 51, name: L1_BPTX_B1_NIM
        468, -- module_index: 52, name: L1_BPTX_B2NotB1_NIM
        464, -- module_index: 53, name: L1_BPTX_B2NotB1_VME
        480, -- module_index: 54, name: L1_BPTX_B2_NIM
        456, -- module_index: 55, name: L1_BPTX_BeamGas_B1_VME
        457, -- module_index: 56, name: L1_BPTX_BeamGas_B2_VME
        454, -- module_index: 57, name: L1_BPTX_BeamGas_Ref1_VME
        455, -- module_index: 58, name: L1_BPTX_BeamGas_Ref2_VME
        469, -- module_index: 59, name: L1_BPTX_NotOR_NIM
        465, -- module_index: 60, name: L1_BPTX_NotOR_VME
        481, -- module_index: 61, name: L1_BPTX_OR_NIM
        471, -- module_index: 62, name: L1_BPTX_OR_Ref3_VME
        475, -- module_index: 63, name: L1_BPTX_OR_Ref4_VME
        472, -- module_index: 64, name: L1_BPTX_RefAND_VME
        460, -- module_index: 65, name: L1_BptxMinus
        452, -- module_index: 66, name: L1_BptxXOR
        459, -- module_index: 67, name: L1_BptxPlus
        473, -- module_index: 68, name: L1_FirstCollisionInOrbit
        477, -- module_index: 69, name: L1_FirstCollisionInTrain
        476, -- module_index: 70, name: L1_LastCollisionInTrain
    others => 0
);

-- ========================================================