-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- 162b5874-65c5-446b-9c69-261e1dde5400

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        134, -- module_index: 0, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        136, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        112, -- module_index: 2, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        257, -- module_index: 3, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 4, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        351, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        358, -- module_index: 6, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        382, -- module_index: 7, name: L1_QuadJet60er2p5
         43, -- module_index: 8, name: L1_DoubleMu0_Mass_Min1
         58, -- module_index: 9, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         63, -- module_index: 10, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         55, -- module_index: 11, name: L1_DoubleMu0er1p5_SQ
         62, -- module_index: 12, name: L1_DoubleMu4p5_SQ_OS
         47, -- module_index: 13, name: L1_DoubleMu_15_5_SQ
        374, -- module_index: 14, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        119, -- module_index: 15, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 16, name: L1_SingleMu3
          5, -- module_index: 17, name: L1_SingleMu0_DQ
         13, -- module_index: 18, name: L1_SingleMu12_DQ_BMTF
         31, -- module_index: 19, name: L1_SingleMu14er1p5
         19, -- module_index: 20, name: L1_SingleMu22
         25, -- module_index: 21, name: L1_SingleMu6er1p5
          0, -- module_index: 22, name: L1_SingleMuCosmics
        224, -- module_index: 23, name: L1_TripleEG_16_12_8_er2p5
        205, -- module_index: 24, name: L1_DoubleEG_15_10_er2p5
        207, -- module_index: 25, name: L1_DoubleEG_22_10_er2p5
        213, -- module_index: 26, name: L1_DoubleEG_LooseIso22_10_er2p5
        277, -- module_index: 27, name: L1_DoubleIsoTau36er2p1
        217, -- module_index: 28, name: L1_DoubleLooseIsoEG22er2p1
        327, -- module_index: 29, name: L1_SingleJet120_FWD3p0
        238, -- module_index: 30, name: L1_LooseIsoEG24er2p1_HTT100er
        240, -- module_index: 31, name: L1_LooseIsoEG28er2p1_HTT100er
        179, -- module_index: 32, name: L1_SingleLooseIsoEG28er2p1
        239, -- module_index: 33, name: L1_LooseIsoEG26er2p1_HTT100er
        241, -- module_index: 34, name: L1_LooseIsoEG30er2p1_HTT100er
        183, -- module_index: 35, name: L1_SingleIsoEG24er2p1
        190, -- module_index: 36, name: L1_SingleIsoEG28er2p1
        194, -- module_index: 37, name: L1_SingleIsoEG32er2p5
        321, -- module_index: 38, name: L1_SingleJet160er2p5
        316, -- module_index: 39, name: L1_SingleJet35er2p5
        176, -- module_index: 40, name: L1_SingleLooseIsoEG26er1p5
        181, -- module_index: 41, name: L1_SingleLooseIsoEG30er2p5
        411, -- module_index: 42, name: L1_ETT1600
        399, -- module_index: 43, name: L1_HTT160er
        405, -- module_index: 44, name: L1_HTT400er
        489, -- module_index: 45, name: L1_BPTX_BeamGas_Ref1_VME
        485, -- module_index: 46, name: L1_BPTX_RefAND_VME
        478, -- module_index: 47, name: L1_LastCollisionInTrain
        469, -- module_index: 48, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================