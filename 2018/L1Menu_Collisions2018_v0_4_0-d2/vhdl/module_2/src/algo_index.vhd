-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        500, -- module_index: 3, name: L1_TOTEM_1
        478, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        206, -- module_index: 5, name: L1_ETMHF140
        184, -- module_index: 6, name: L1_ETT2000
        173, -- module_index: 7, name: L1_HTT255er
         51, -- module_index: 8, name: L1_SingleEG10er2p5
        422, -- module_index: 9, name: L1_Mu20_EG10er2p5
         18, -- module_index: 10, name: L1_SingleMu20
         85, -- module_index: 11, name: L1_SingleIsoEG28er1p5
         93, -- module_index: 12, name: L1_SingleIsoEG30er2p5
        508, -- module_index: 13, name: L1_SingleJet10erHE
        137, -- module_index: 14, name: L1_SingleJet140
        139, -- module_index: 15, name: L1_SingleJet160
        141, -- module_index: 16, name: L1_SingleJet180
        142, -- module_index: 17, name: L1_SingleJet200
        507, -- module_index: 18, name: L1_SingleJet8erHE
         82, -- module_index: 19, name: L1_SingleLooseIsoEG30er1p5
        101, -- module_index: 20, name: L1_DoubleEG_15_10_er2p5
        108, -- module_index: 21, name: L1_DoubleEG_25_12_er2p5
        279, -- module_index: 22, name: L1_DoubleEG_LooseIso22_10_er2p5
        127, -- module_index: 23, name: L1_DoubleIsoTau34er2p1
        150, -- module_index: 24, name: L1_DoubleJet150er2p5
        146, -- module_index: 25, name: L1_SingleJet120_FWD
        113, -- module_index: 26, name: L1_TripleEG16er2p5
        117, -- module_index: 27, name: L1_TripleEG_18_18_12_er2p5
          6, -- module_index: 28, name: L1_SingleMu0_OMTF
         14, -- module_index: 29, name: L1_SingleMu12_LowQ_OMTF
        430, -- module_index: 30, name: L1_SingleMu16er1p5
         20, -- module_index: 31, name: L1_SingleMu22_BMTF
          8, -- module_index: 32, name: L1_SingleMu3
        371, -- module_index: 33, name: L1_Mu3_Jet30er2p5
        424, -- module_index: 34, name: L1_SingleMu7er1p5
          0, -- module_index: 35, name: L1_SingleMuCosmics
        299, -- module_index: 36, name: L1_Mu18er2p1_Tau24er2p1
        300, -- module_index: 37, name: L1_Mu18er2p1_Tau26er2p1
        162, -- module_index: 38, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        243, -- module_index: 39, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD
         97, -- module_index: 40, name: L1_IsoEG32er2p5_Mt40
         99, -- module_index: 41, name: L1_IsoEG32er2p5_Mt48
        252, -- module_index: 42, name: L1_DoubleJet112er2p3_dEta_Max1p6
        224, -- module_index: 43, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
        376, -- module_index: 44, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        387, -- module_index: 45, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 46, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        285, -- module_index: 47, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        217, -- module_index: 48, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        293, -- module_index: 49, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        402, -- module_index: 50, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        444, -- module_index: 51, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        449, -- module_index: 52, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================