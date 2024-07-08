-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2024_v1_3_0

-- Unique ID of L1 Trigger Menu:
-- b767c77f-2f60-4ce7-94e4-e16f097941b0

-- Unique ID of firmware implementation:
-- 1f6f1c24-5c15-48da-9403-5fbf3a32540a

-- Scale set:
-- scales_2024_05_15

-- VHDL producer
-- version: 2.20.0
-- hash value: 01d3461e956f1972cb9cbbbbb32745d60d52a3d208431bb6763622d65d6a8291

-- tmEventSetup
-- version: 0.13.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        441, -- module_index: 0, name: L1_AXO_Nominal
        366, -- module_index: 1, name: L1_DoubleJet45_Mass_Min550_LooseIsoEG20er2p1_RmOvlp_dR0p2
        259, -- module_index: 2, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        348, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        144, -- module_index: 4, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
        284, -- module_index: 5, name: L1_DoubleIsoTau26er2p1_Jet70_RmOvlp_dR0p5
         68, -- module_index: 6, name: L1_DoubleMu0er1p5_SQ_OS_dEta_Max1p2
        385, -- module_index: 7, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        225, -- module_index: 8, name: L1_DoubleEG_LooseIso16_LooseIso12_er1p5
        228, -- module_index: 9, name: L1_DoubleEG_LooseIso22_LooseIso12_er1p5
        268, -- module_index: 10, name: L1_DoubleIsoTau30er2p1
        271, -- module_index: 11, name: L1_DoubleIsoTau35er2p1
        231, -- module_index: 12, name: L1_DoubleLooseIsoEG24er2p1
        281, -- module_index: 13, name: L1_Mu18er2p1_Tau26er2p1_Jet55
        279, -- module_index: 14, name: L1_Mu18er2p1_Tau24er2p1
        280, -- module_index: 15, name: L1_Mu18er2p1_Tau26er2p1
        282, -- module_index: 16, name: L1_Mu18er2p1_Tau26er2p1_Jet70
        343, -- module_index: 17, name: L1_DoubleJet150er2p5
         53, -- module_index: 18, name: L1_DoubleMu0_Upt7_SQ_er2p0
        323, -- module_index: 19, name: L1_SingleJet120_FWD2p5
        321, -- module_index: 20, name: L1_SingleJet60_FWD2p5
        102, -- module_index: 21, name: L1_QuadMu0
        111, -- module_index: 22, name: L1_Mu5_LooseIsoEG20er2p5
        112, -- module_index: 23, name: L1_Mu7_LooseIsoEG20er2p5
        107, -- module_index: 24, name: L1_Mu5_EG23er2p5
         20, -- module_index: 25, name: L1_SingleMu5
        113, -- module_index: 26, name: L1_Mu7_LooseIsoEG23er2p5
         22, -- module_index: 27, name: L1_SingleMu7
        108, -- module_index: 28, name: L1_Mu7_EG20er2p5
        109, -- module_index: 29, name: L1_Mu7_EG23er2p5
        191, -- module_index: 30, name: L1_SingleIsoEG28er1p5
        192, -- module_index: 31, name: L1_SingleIsoEG30er2p5
        176, -- module_index: 32, name: L1_SingleLooseIsoEG26er1p5
         11, -- module_index: 33, name: L1_SingleMu0_EMTF
          7, -- module_index: 34, name: L1_SingleMuOpen_EMTF
        164, -- module_index: 35, name: L1_SingleEG28er2p5
        172, -- module_index: 36, name: L1_SingleEG45er2p5
        318, -- module_index: 37, name: L1_SingleJet180er2p5
        199, -- module_index: 38, name: L1_SingleMu0_Upt15_SQ14_BMTF
        263, -- module_index: 39, name: L1_SingleTau120er2p1
         39, -- module_index: 40, name: L1_DoubleMu0
         45, -- module_index: 41, name: L1_DoubleMu_12_5
         12, -- module_index: 42, name: L1_SingleMu0_SQ13_BMTF
         25, -- module_index: 43, name: L1_SingleMu12_DQ_BMTF
        205, -- module_index: 44, name: L1_SingleMu8_SQ14_BMTF
         15, -- module_index: 45, name: L1_SingleMu0_Upt10
        173, -- module_index: 46, name: L1_SingleEG50
        310, -- module_index: 47, name: L1_SingleJet200
         28, -- module_index: 48, name: L1_SingleMu15_DQ
         37, -- module_index: 49, name: L1_SingleMu25
        425, -- module_index: 50, name: L1_ETMHF140
        409, -- module_index: 51, name: L1_HTT400er
        437, -- module_index: 52, name: L1_MHTHF130
        491, -- module_index: 53, name: L1_BPTX_BeamGas_B1_VME
        483, -- module_index: 54, name: L1_BPTX_OR_Ref3_VME
        479, -- module_index: 55, name: L1_FirstCollisionInTrain
        104, -- module_index: 56, name: L1_SingleMuShower_Nominal
        505, -- module_index: 57, name: L1_TOTEM_3
    others => 0
);

-- ========================================================