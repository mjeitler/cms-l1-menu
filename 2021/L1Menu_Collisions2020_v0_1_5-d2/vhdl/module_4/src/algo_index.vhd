-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- dc57c735-a5e1-42af-83aa-e544104a35c4

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        143, -- module_index: 0, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        126, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        122, -- module_index: 2, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        258, -- module_index: 3, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        348, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        352, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        359, -- module_index: 6, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        298, -- module_index: 7, name: L1_QuadJet36er2p5_IsoTau52er2p1
        494, -- module_index: 8, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
         50, -- module_index: 9, name: L1_DoubleMu_15_7_Mass_Min1
         24, -- module_index: 10, name: L1_MASSUPT_0_0_10
         35, -- module_index: 11, name: L1_MASSUPT_5_5_10
        346, -- module_index: 12, name: L1_DoubleJet112er2p3_dEta_Max1p6
         39, -- module_index: 13, name: L1_DoubleMu0_OQ
         56, -- module_index: 14, name: L1_DoubleMu0er1p5_SQ_OS
         45, -- module_index: 15, name: L1_DoubleMu9_SQ
        374, -- module_index: 16, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        300, -- module_index: 17, name: L1_Mu0upt0
        157, -- module_index: 18, name: L1_Mu0upt20ip03
        304, -- module_index: 19, name: L1_Mu0upt50
         29, -- module_index: 20, name: L1_SingleMu10er1p5
         16, -- module_index: 21, name: L1_SingleMu15_DQ
         22, -- module_index: 22, name: L1_SingleMu22_EMTF
         27, -- module_index: 23, name: L1_SingleMu8er1p5
        308, -- module_index: 24, name: L1_SingleMuOpenupt100
        226, -- module_index: 25, name: L1_TripleEG_18_17_8_er2p5
        210, -- module_index: 26, name: L1_DoubleEG_27_14_er2p5
        270, -- module_index: 27, name: L1_DoubleIsoTau30er2p1
        343, -- module_index: 28, name: L1_DoubleJet150er2p5
        327, -- module_index: 29, name: L1_SingleJet120_FWD3p0
        161, -- module_index: 30, name: L1_SingleEG15er2p5
        164, -- module_index: 31, name: L1_SingleEG28er2p5
        171, -- module_index: 32, name: L1_SingleEG42er2p5
        184, -- module_index: 33, name: L1_SingleIsoEG24er1p5
        190, -- module_index: 34, name: L1_SingleIsoEG28er2p1
        196, -- module_index: 35, name: L1_SingleIsoEG34er2p5
        322, -- module_index: 36, name: L1_SingleJet180er2p5
        311, -- module_index: 37, name: L1_SingleJet90
        182, -- module_index: 38, name: L1_SingleLooseIsoEG30er1p5
        398, -- module_index: 39, name: L1_HTT120er
        401, -- module_index: 40, name: L1_HTT255er
        486, -- module_index: 41, name: L1_BPTX_AND_Ref1_VME
        487, -- module_index: 42, name: L1_BPTX_AND_Ref3_VME
        488, -- module_index: 43, name: L1_BPTX_AND_Ref4_VME
        491, -- module_index: 44, name: L1_BPTX_BeamGas_B1_VME
        492, -- module_index: 45, name: L1_BPTX_BeamGas_B2_VME
        489, -- module_index: 46, name: L1_BPTX_BeamGas_Ref1_VME
        490, -- module_index: 47, name: L1_BPTX_BeamGas_Ref2_VME
        482, -- module_index: 48, name: L1_BPTX_NotOR_VME
        483, -- module_index: 49, name: L1_BPTX_OR_Ref3_VME
        484, -- module_index: 50, name: L1_BPTX_OR_Ref4_VME
        485, -- module_index: 51, name: L1_BPTX_RefAND_VME
        467, -- module_index: 52, name: L1_BptxMinus
        466, -- module_index: 53, name: L1_BptxPlus
        465, -- module_index: 54, name: L1_BptxXOR
        480, -- module_index: 55, name: L1_FirstCollisionInOrbit
        479, -- module_index: 56, name: L1_FirstCollisionInTrain
        500, -- module_index: 57, name: L1_HCAL_LaserMon_Trig
        501, -- module_index: 58, name: L1_HCAL_LaserMon_Veto
        478, -- module_index: 59, name: L1_LastCollisionInTrain
        503, -- module_index: 60, name: L1_TOTEM_1
        504, -- module_index: 61, name: L1_TOTEM_2
        505, -- module_index: 62, name: L1_TOTEM_3
        506, -- module_index: 63, name: L1_TOTEM_4
        469, -- module_index: 64, name: L1_UnpairedBunchBptxMinus
        468, -- module_index: 65, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================