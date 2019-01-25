-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_3_0

-- Unique ID of L1 Trigger Menu:
-- 13f60d08-d9e3-4e6d-ad9b-3fd19ac86467

-- Unique ID of firmware implementation:
-- 6a0fa015-1c57-4ae1-8232-f2325ddad00d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        467, -- module_index: 2, name: L1_BptxXOR
        474, -- module_index: 3, name: L1_BptxPlus
        503, -- module_index: 4, name: L1_TOTEM_4
        206, -- module_index: 5, name: L1_ETMHF140
        170, -- module_index: 6, name: L1_HTT200er
        181, -- module_index: 7, name: L1_HTT450er
         69, -- module_index: 8, name: L1_SingleEG34er2p5
         78, -- module_index: 9, name: L1_SingleEG42er2p5
         86, -- module_index: 10, name: L1_SingleIsoEG24er2p1
         92, -- module_index: 11, name: L1_SingleIsoEG28er2p5
         94, -- module_index: 12, name: L1_SingleIsoEG32er2p5
        156, -- module_index: 13, name: L1_SingleJet120er2p5
        138, -- module_index: 14, name: L1_SingleJet150
        158, -- module_index: 15, name: L1_SingleJet160er2p5
        159, -- module_index: 16, name: L1_SingleJet180er2p5
        133, -- module_index: 17, name: L1_SingleJet35
        152, -- module_index: 18, name: L1_SingleJet35er2p5
        507, -- module_index: 19, name: L1_SingleJet8erHE
        119, -- module_index: 20, name: L1_SingleTau130er2p1
        102, -- module_index: 21, name: L1_DoubleEG_20_10_er2p5
        110, -- module_index: 22, name: L1_DoubleEG_25_14_er2p5
        279, -- module_index: 23, name: L1_DoubleEG_LooseIso22_10_er2p5
        127, -- module_index: 24, name: L1_DoubleIsoTau34er2p1
        112, -- module_index: 25, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 26, name: L1_SingleJet60_FWD
        116, -- module_index: 27, name: L1_TripleEG_16_15_8_er2p5
          7, -- module_index: 28, name: L1_SingleMu0_EMTF
         13, -- module_index: 29, name: L1_SingleMu12_LowQ_BMTF
        429, -- module_index: 30, name: L1_SingleMu14er1p5
        431, -- module_index: 31, name: L1_SingleMu18er1p5
         22, -- module_index: 32, name: L1_SingleMu22_EMTF
          9, -- module_index: 33, name: L1_SingleMu5
        239, -- module_index: 34, name: L1_Mu5_LooseIsoEG20er2p5
        240, -- module_index: 35, name: L1_Mu7_EG23er2p5
         10, -- module_index: 36, name: L1_SingleMu7
        241, -- module_index: 37, name: L1_Mu7_LooseIsoEG20er2p5
        238, -- module_index: 38, name: L1_Mu5_EG23er2p5
        242, -- module_index: 39, name: L1_Mu7_LooseIsoEG23er2p5
          3, -- module_index: 40, name: L1_SingleMuCosmics_OMTF
        164, -- module_index: 41, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
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