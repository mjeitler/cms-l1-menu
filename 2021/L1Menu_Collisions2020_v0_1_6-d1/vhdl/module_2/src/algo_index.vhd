-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_6

-- Unique ID of L1 Trigger Menu:
-- 272a3710-a984-42d5-a8e6-2d4ffb8b7a2e

-- Unique ID of firmware implementation:
-- f344731e-51dc-4ff8-a41c-a33671803224

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.2

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        113, -- module_index: 0, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        349, -- module_index: 1, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        277, -- module_index: 2, name: L1_DoubleIsoTau30er2p1_Mass_Max80
        123, -- module_index: 3, name: L1_Mu3_Jet60er2p5_dR_Max0p4
         66, -- module_index: 4, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         43, -- module_index: 5, name: L1_DoubleMu0_Mass_Min1
         59, -- module_index: 6, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         57, -- module_index: 7, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         53, -- module_index: 8, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        345, -- module_index: 9, name: L1_DoubleJet100er2p3_dEta_Max1p6
        346, -- module_index: 10, name: L1_DoubleJet112er2p3_dEta_Max1p6
        373, -- module_index: 11, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        224, -- module_index: 12, name: L1_TripleEG_16_12_8_er2p5
        227, -- module_index: 13, name: L1_TripleEG_18_18_12_er2p5
        271, -- module_index: 14, name: L1_DoubleIsoTau32er2p1
        218, -- module_index: 15, name: L1_DoubleLooseIsoEG24er2p1
        212, -- module_index: 16, name: L1_DoubleEG_LooseIso20_10_er2p5
        205, -- module_index: 17, name: L1_DoubleEG_15_10_er2p5
        209, -- module_index: 18, name: L1_DoubleEG_25_14_er2p5
        343, -- module_index: 19, name: L1_DoubleJet150er2p5
        324, -- module_index: 20, name: L1_SingleJet35_FWD3p0
         69, -- module_index: 21, name: L1_QuadMu0_OQ_OS
         88, -- module_index: 22, name: L1_QuadMu0_OQ
        100, -- module_index: 23, name: L1_Mu5_LooseIsoEG20er2p5
         10, -- module_index: 24, name: L1_SingleMu5
         97, -- module_index: 25, name: L1_Mu7_EG20er2p5
         98, -- module_index: 26, name: L1_Mu7_EG23er2p5
         12, -- module_index: 27, name: L1_SingleMu7
        101, -- module_index: 28, name: L1_Mu7_LooseIsoEG20er2p5
         96, -- module_index: 29, name: L1_Mu5_EG23er2p5
        102, -- module_index: 30, name: L1_Mu7_LooseIsoEG23er2p5
         52, -- module_index: 31, name: L1_MASSUPT_5_5_10_open
         72, -- module_index: 32, name: L1_TripleMu0
         73, -- module_index: 33, name: L1_TripleMu0_SQ
         75, -- module_index: 34, name: L1_TripleMu3_SQ
         79, -- module_index: 35, name: L1_TripleMu_5_3_3_SQ
        238, -- module_index: 36, name: L1_LooseIsoEG24er2p1_HTT100er
        241, -- module_index: 37, name: L1_LooseIsoEG30er2p1_HTT100er
        179, -- module_index: 38, name: L1_SingleLooseIsoEG28er2p1
        239, -- module_index: 39, name: L1_LooseIsoEG26er2p1_HTT100er
        240, -- module_index: 40, name: L1_LooseIsoEG28er2p1_HTT100er
        199, -- module_index: 41, name: L1_IsoEG32er2p5_Mt48
        189, -- module_index: 42, name: L1_SingleIsoEG28er2p5
        195, -- module_index: 43, name: L1_SingleIsoEG32er2p1
        176, -- module_index: 44, name: L1_SingleLooseIsoEG26er1p5
        178, -- module_index: 45, name: L1_SingleLooseIsoEG28er2p5
         34, -- module_index: 46, name: L1_MASSUPT_0_0_20
         15, -- module_index: 47, name: L1_SingleMu12_DQ_EMTF
        162, -- module_index: 48, name: L1_SingleEG26er2p5
        168, -- module_index: 49, name: L1_SingleEG36er2p5
        159, -- module_index: 50, name: L1_SingleEG8er2p5
        318, -- module_index: 51, name: L1_SingleJet90er2p5
         70, -- module_index: 52, name: L1_TripleMu_0_3InvMass_Mass1to4
         39, -- module_index: 53, name: L1_DoubleMu0_OQ
         48, -- module_index: 54, name: L1_DoubleMu_15_7
         30, -- module_index: 55, name: L1_SingleMu12er1p5
         25, -- module_index: 56, name: L1_SingleMu6er1p5
        157, -- module_index: 57, name: L1_Mu0upt20ip03
        308, -- module_index: 58, name: L1_SingleMuOpenupt100
        305, -- module_index: 59, name: L1_Mu0upt100
        174, -- module_index: 60, name: L1_SingleEG60
        311, -- module_index: 61, name: L1_SingleJet90
         23, -- module_index: 62, name: L1_SingleMu25
        425, -- module_index: 63, name: L1_ETMHF140
        398, -- module_index: 64, name: L1_HTT120er
        405, -- module_index: 65, name: L1_HTT400er
        491, -- module_index: 66, name: L1_BPTX_BeamGas_B1_VME
        483, -- module_index: 67, name: L1_BPTX_OR_Ref3_VME
        479, -- module_index: 68, name: L1_FirstCollisionInTrain
        503, -- module_index: 69, name: L1_TOTEM_1
        469, -- module_index: 70, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================