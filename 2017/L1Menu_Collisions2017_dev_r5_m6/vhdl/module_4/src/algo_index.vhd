-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 38c2787b-f3a1-48e6-b3f8-b7625293f15a

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
        289, -- module_index: 5, name: L1_ETM100_Jet60_dPhi_Min0p4
        287, -- module_index: 6, name: L1_ETM80_Jet60_dPhi_Min0p4
         33, -- module_index: 7, name: L1_QuadMu0
         91, -- module_index: 8, name: L1_TripleEG_14_10_8
         80, -- module_index: 9, name: L1_DoubleEG_15_10
         82, -- module_index: 10, name: L1_DoubleEG_20_18
         86, -- module_index: 11, name: L1_DoubleEG_23_10
        295, -- module_index: 12, name: L1_DoubleEG_Iso23_10
        109, -- module_index: 13, name: L1_DoubleIsoTau33er2p1
        144, -- module_index: 14, name: L1_DoubleJet100er3p0
        143, -- module_index: 15, name: L1_DoubleJet80er3p0
        334, -- module_index: 16, name: L1_TripleMu3_SQ
        381, -- module_index: 17, name: L1_DoubleMu6_SQ_OS
        438, -- module_index: 18, name: L1_Mu10er2p1_ETM30
         13, -- module_index: 19, name: L1_SingleMu14er2p1
        439, -- module_index: 20, name: L1_Mu14er2p1_ETM30
        180, -- module_index: 21, name: L1_ETM30
         54, -- module_index: 22, name: L1_SingleEG34er2p1
         52, -- module_index: 23, name: L1_SingleEG40
         59, -- module_index: 24, name: L1_SingleIsoEG22
         72, -- module_index: 25, name: L1_SingleIsoEG26er2p1
         64, -- module_index: 26, name: L1_SingleIsoEG32
         77, -- module_index: 27, name: L1_SingleIsoEG36er2p1
        120, -- module_index: 28, name: L1_SingleJet16
        122, -- module_index: 29, name: L1_SingleJet35
          6, -- module_index: 30, name: L1_SingleMu11_LowQ
         12, -- module_index: 31, name: L1_SingleMu30
        169, -- module_index: 32, name: L1_HTT320er
        478, -- module_index: 33, name: L1_BPTX_AND_NIM
        462, -- module_index: 34, name: L1_BPTX_AND_Ref1_VME
        466, -- module_index: 35, name: L1_BPTX_AND_Ref2_NIM
        470, -- module_index: 36, name: L1_BPTX_AND_Ref3_VME
        474, -- module_index: 37, name: L1_BPTX_AND_Ref4_VME
        467, -- module_index: 38, name: L1_BPTX_B1NotB2_NIM
        463, -- module_index: 39, name: L1_BPTX_B1NotB2_VME
        479, -- module_index: 40, name: L1_BPTX_B1_NIM
        468, -- module_index: 41, name: L1_BPTX_B2NotB1_NIM
        464, -- module_index: 42, name: L1_BPTX_B2NotB1_VME
        480, -- module_index: 43, name: L1_BPTX_B2_NIM
        456, -- module_index: 44, name: L1_BPTX_BeamGas_B1_VME
        457, -- module_index: 45, name: L1_BPTX_BeamGas_B2_VME
        454, -- module_index: 46, name: L1_BPTX_BeamGas_Ref1_VME
        455, -- module_index: 47, name: L1_BPTX_BeamGas_Ref2_VME
        469, -- module_index: 48, name: L1_BPTX_NotOR_NIM
        465, -- module_index: 49, name: L1_BPTX_NotOR_VME
        481, -- module_index: 50, name: L1_BPTX_OR_NIM
        471, -- module_index: 51, name: L1_BPTX_OR_Ref3_VME
        475, -- module_index: 52, name: L1_BPTX_OR_Ref4_VME
        472, -- module_index: 53, name: L1_BPTX_RefAND_VME
        460, -- module_index: 54, name: L1_BptxMinus
        452, -- module_index: 55, name: L1_BptxXOR
        459, -- module_index: 56, name: L1_BptxPlus
        473, -- module_index: 57, name: L1_FirstCollisionInOrbit
        477, -- module_index: 58, name: L1_FirstCollisionInTrain
        476, -- module_index: 59, name: L1_LastCollisionInTrain
    others => 0
);

-- ========================================================