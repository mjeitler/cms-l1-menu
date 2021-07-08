-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        112, -- module_index: 0, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        348, -- module_index: 1, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        274, -- module_index: 2, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        122, -- module_index: 3, name: L1_Mu3_Jet35er2p5_dR_Max0p4
         82, -- module_index: 4, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         50, -- module_index: 5, name: L1_DoubleMu_15_7_Mass_Min1
         58, -- module_index: 6, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         54, -- module_index: 7, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         61, -- module_index: 8, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        376, -- module_index: 9, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        372, -- module_index: 10, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        382, -- module_index: 11, name: L1_QuadJet60er2p5
        228, -- module_index: 12, name: L1_TripleEG16er2p5
        226, -- module_index: 13, name: L1_TripleEG_18_17_8_er2p5
        270, -- module_index: 14, name: L1_DoubleIsoTau30er2p1
        217, -- module_index: 15, name: L1_DoubleLooseIsoEG22er2p1
        494, -- module_index: 16, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
         90, -- module_index: 17, name: L1_QuadMu0_SQ
         56, -- module_index: 18, name: L1_DoubleMu0er1p5_SQ_OS
         55, -- module_index: 19, name: L1_DoubleMu0er1p5_SQ
        330, -- module_index: 20, name: L1_SingleJet10erHE
        329, -- module_index: 21, name: L1_SingleJet8erHE
        119, -- module_index: 22, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 23, name: L1_SingleMu3
         68, -- module_index: 24, name: L1_QuadMu0_OS
         38, -- module_index: 25, name: L1_MASSUPT_0_0_20_open
         67, -- module_index: 26, name: L1_MASSUPT_5_5_20_open
         71, -- module_index: 27, name: L1_TripleMu0_OQ
         74, -- module_index: 28, name: L1_TripleMu3
         78, -- module_index: 29, name: L1_TripleMu_5_3_3
         80, -- module_index: 30, name: L1_TripleMu_5_5_3
        197, -- module_index: 31, name: L1_IsoEG32er2p5_Mt40
        184, -- module_index: 32, name: L1_SingleIsoEG24er1p5
        183, -- module_index: 33, name: L1_SingleIsoEG24er2p1
        187, -- module_index: 34, name: L1_SingleIsoEG26er1p5
        185, -- module_index: 35, name: L1_SingleIsoEG26er2p5
        190, -- module_index: 36, name: L1_SingleIsoEG28er2p1
        192, -- module_index: 37, name: L1_SingleIsoEG30er2p5
        196, -- module_index: 38, name: L1_SingleIsoEG34er2p5
        180, -- module_index: 39, name: L1_SingleLooseIsoEG28er1p5
        181, -- module_index: 40, name: L1_SingleLooseIsoEG30er2p5
          8, -- module_index: 41, name: L1_SingleMu0_EMTF
         21, -- module_index: 42, name: L1_SingleMu22_OMTF
        164, -- module_index: 43, name: L1_SingleEG28er2p5
        171, -- module_index: 44, name: L1_SingleEG42er2p5
        322, -- module_index: 45, name: L1_SingleJet180er2p5
        264, -- module_index: 46, name: L1_SingleTau120er2p1
         62, -- module_index: 47, name: L1_DoubleMu4p5_SQ_OS
         46, -- module_index: 48, name: L1_DoubleMu_12_5
         29, -- module_index: 49, name: L1_SingleMu10er1p5
         33, -- module_index: 50, name: L1_SingleMu18er1p5
         28, -- module_index: 51, name: L1_SingleMu9er1p5
        156, -- module_index: 52, name: L1_Mu0upt20ip3
        300, -- module_index: 53, name: L1_Mu0upt0
        304, -- module_index: 54, name: L1_Mu0upt50
        309, -- module_index: 55, name: L1_SingleJet35
         17, -- module_index: 56, name: L1_SingleMu18
        416, -- module_index: 57, name: L1_ETM120
        411, -- module_index: 58, name: L1_ETT1600
        401, -- module_index: 59, name: L1_HTT255er
        487, -- module_index: 60, name: L1_BPTX_AND_Ref3_VME
        490, -- module_index: 61, name: L1_BPTX_BeamGas_Ref2_VME
        467, -- module_index: 62, name: L1_BptxMinus
        465, -- module_index: 63, name: L1_BptxXOR
        466, -- module_index: 64, name: L1_BptxPlus
    others => 0
);

-- ========================================================