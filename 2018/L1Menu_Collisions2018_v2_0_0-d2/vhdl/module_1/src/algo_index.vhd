-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- ae40d742-4801-4141-81f1-705de0c26a4d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        487, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        482, -- module_index: 1, name: L1_BPTX_NotOR_VME
        480, -- module_index: 2, name: L1_FirstCollisionInOrbit
        478, -- module_index: 3, name: L1_LastCollisionInTrain
        469, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        426, -- module_index: 5, name: L1_ETMHF150
        399, -- module_index: 6, name: L1_HTT160er
        406, -- module_index: 7, name: L1_HTT450er
        165, -- module_index: 8, name: L1_SingleEG28er2p1
        169, -- module_index: 9, name: L1_SingleEG38er2p5
        173, -- module_index: 10, name: L1_SingleEG50
        183, -- module_index: 11, name: L1_SingleIsoEG24er2p1
        191, -- module_index: 12, name: L1_SingleIsoEG28er1p5
        195, -- module_index: 13, name: L1_SingleIsoEG32er2p1
        319, -- module_index: 14, name: L1_SingleJet120er2p5
        322, -- module_index: 15, name: L1_SingleJet180er2p5
        310, -- module_index: 16, name: L1_SingleJet60
        176, -- module_index: 17, name: L1_SingleLooseIsoEG26er1p5
        178, -- module_index: 18, name: L1_SingleLooseIsoEG28er2p5
        270, -- module_index: 19, name: L1_SingleTau120er2p1
        206, -- module_index: 20, name: L1_DoubleEG_20_10_er2p5
        209, -- module_index: 21, name: L1_DoubleEG_25_14_er2p5
        214, -- module_index: 22, name: L1_DoubleEG_LooseIso22_12_er2p5
        277, -- module_index: 23, name: L1_DoubleIsoTau36er2p1
        217, -- module_index: 24, name: L1_DoubleLooseIsoEG22er2p1
        188, -- module_index: 25, name: L1_SingleIsoEG28_FWD2p5
        326, -- module_index: 26, name: L1_SingleJet90_FWD3p0
        225, -- module_index: 27, name: L1_TripleEG_16_15_8_er2p5
          5, -- module_index: 28, name: L1_SingleMu0_DQ
         13, -- module_index: 29, name: L1_SingleMu12_DQ_BMTF
         31, -- module_index: 30, name: L1_SingleMu14er1p5
         33, -- module_index: 31, name: L1_SingleMu18er1p5
         21, -- module_index: 32, name: L1_SingleMu22_OMTF
         25, -- module_index: 33, name: L1_SingleMu6er1p5
         27, -- module_index: 34, name: L1_SingleMu8er1p5
          1, -- module_index: 35, name: L1_SingleMuCosmics_BMTF
        281, -- module_index: 36, name: L1_Mu18er2p1_Tau24er2p1
        282, -- module_index: 37, name: L1_Mu18er2p1_Tau26er2p1
         39, -- module_index: 38, name: L1_DoubleMu0_OQ
         55, -- module_index: 39, name: L1_DoubleMu0er1p5_SQ
         51, -- module_index: 40, name: L1_DoubleMu18er2p1
         62, -- module_index: 41, name: L1_DoubleMu4p5_SQ_OS
         44, -- module_index: 42, name: L1_DoubleMu8_SQ
         46, -- module_index: 43, name: L1_DoubleMu_12_5
         48, -- module_index: 44, name: L1_DoubleMu_15_7
        109, -- module_index: 45, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 46, name: L1_DoubleMu5_SQ_EG9er2p5
         71, -- module_index: 47, name: L1_TripleMu0_OQ
         74, -- module_index: 48, name: L1_TripleMu3
         76, -- module_index: 49, name: L1_TripleMu_5SQ_3SQ_0OQ
         85, -- module_index: 50, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         86, -- module_index: 51, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         59, -- module_index: 52, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 53, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         66, -- module_index: 54, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        382, -- module_index: 55, name: L1_QuadJet60er2p5
        357, -- module_index: 56, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        350, -- module_index: 57, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        259, -- module_index: 58, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        112, -- module_index: 59, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        122, -- module_index: 60, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        142, -- module_index: 61, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================