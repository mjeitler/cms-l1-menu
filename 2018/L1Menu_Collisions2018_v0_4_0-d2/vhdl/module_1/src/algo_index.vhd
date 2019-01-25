-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        481, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        480, -- module_index: 1, name: L1_BPTX_NotOR_VME
        484, -- module_index: 2, name: L1_FirstCollisionInOrbit
        487, -- module_index: 3, name: L1_LastCollisionInTrain
        479, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        205, -- module_index: 5, name: L1_ETMHF130
        183, -- module_index: 6, name: L1_ETT1600
        170, -- module_index: 7, name: L1_HTT200er
        181, -- module_index: 8, name: L1_HTT450er
         69, -- module_index: 9, name: L1_SingleEG34er2p5
         72, -- module_index: 10, name: L1_SingleEG40er2p5
         65, -- module_index: 11, name: L1_SingleEG50
         86, -- module_index: 12, name: L1_SingleIsoEG24er2p1
         91, -- module_index: 13, name: L1_SingleIsoEG26er2p5
         89, -- module_index: 14, name: L1_SingleIsoEG30er2p1
         95, -- module_index: 15, name: L1_SingleIsoEG34er2p5
        509, -- module_index: 16, name: L1_SingleJet12erHE
        131, -- module_index: 17, name: L1_SingleJet16
        140, -- module_index: 18, name: L1_SingleJet170
        132, -- module_index: 19, name: L1_SingleJet20
        152, -- module_index: 20, name: L1_SingleJet35er2p5
         81, -- module_index: 21, name: L1_SingleLooseIsoEG28er1p5
        119, -- module_index: 22, name: L1_SingleTau130er2p1
        103, -- module_index: 23, name: L1_DoubleEG_22_10_er2p5
        109, -- module_index: 24, name: L1_DoubleEG_27_14_er2p5
        284, -- module_index: 25, name: L1_DoubleEG_LooseIso25_12_er2p5
        155, -- module_index: 26, name: L1_DoubleJet100er2p5
        112, -- module_index: 27, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 28, name: L1_SingleJet60_FWD
        116, -- module_index: 29, name: L1_TripleEG_16_15_8_er2p5
          7, -- module_index: 30, name: L1_SingleMu0_EMTF
         13, -- module_index: 31, name: L1_SingleMu12_LowQ_BMTF
        429, -- module_index: 32, name: L1_SingleMu14er1p5
        431, -- module_index: 33, name: L1_SingleMu18er1p5
         21, -- module_index: 34, name: L1_SingleMu22_OMTF
        423, -- module_index: 35, name: L1_SingleMu6er1p5
        425, -- module_index: 36, name: L1_SingleMu8er1p5
          2, -- module_index: 37, name: L1_SingleMuCosmics_BMTF
        307, -- module_index: 38, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 39, name: L1_Mu22er2p1_IsoTau34er2p1
        301, -- module_index: 40, name: L1_Mu22er2p1_Tau70er2p1
        311, -- module_index: 41, name: L1_Mu22er2p1_IsoTau36er2p1
        344, -- module_index: 42, name: L1_DoubleMu0_OQ
        397, -- module_index: 43, name: L1_DoubleMu0er1p5_SQ
        392, -- module_index: 44, name: L1_DoubleMu10_SQ
        396, -- module_index: 45, name: L1_DoubleMu4_SQ_OS
        394, -- module_index: 46, name: L1_DoubleMu4p5er2p0_SQ_OS
         32, -- module_index: 47, name: L1_DoubleMu_12_5
         36, -- module_index: 48, name: L1_DoubleMu_15_7
        372, -- module_index: 49, name: L1_DoubleMu4_SQ_EG9er2p5
        365, -- module_index: 50, name: L1_DoubleMu5_SQ_EG9er2p5
        399, -- module_index: 51, name: L1_TripleMu0_OQ
         40, -- module_index: 52, name: L1_TripleMu3
        400, -- module_index: 53, name: L1_TripleMu_5SQ_3SQ_0OQ
         42, -- module_index: 54, name: L1_TripleMu_5_3_3_SQ
         44, -- module_index: 55, name: L1_TripleMu_5_5_3
         45, -- module_index: 56, name: L1_QuadMu0
         46, -- module_index: 57, name: L1_QuadMu0_OQ
         47, -- module_index: 58, name: L1_QuadMu0_SQ
         98, -- module_index: 59, name: L1_IsoEG32er2p5_Mt44
        251, -- module_index: 60, name: L1_DoubleJet100er2p3_dEta_Max1p6
        223, -- module_index: 61, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        382, -- module_index: 62, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        334, -- module_index: 63, name: L1_DoubleMu_15_7_Mass_Min1
        283, -- module_index: 64, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 65, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        221, -- module_index: 66, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        294, -- module_index: 67, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        228, -- module_index: 68, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        443, -- module_index: 69, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        256, -- module_index: 70, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
    others => 0
);

-- ========================================================