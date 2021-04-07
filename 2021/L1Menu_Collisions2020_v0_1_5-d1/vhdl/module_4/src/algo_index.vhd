-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 1ff5c215-857f-4848-acb2-9b38b55fb425

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.3

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        426, -- module_index: 0, name: L1_ETMHF150
        399, -- module_index: 1, name: L1_HTT160er
        406, -- module_index: 2, name: L1_HTT450er
        165, -- module_index: 3, name: L1_SingleEG28er2p1
        169, -- module_index: 4, name: L1_SingleEG38er2p5
        173, -- module_index: 5, name: L1_SingleEG50
        183, -- module_index: 6, name: L1_SingleIsoEG24er2p1
        191, -- module_index: 7, name: L1_SingleIsoEG28er1p5
        195, -- module_index: 8, name: L1_SingleIsoEG32er2p1
        319, -- module_index: 9, name: L1_SingleJet120er2p5
        322, -- module_index: 10, name: L1_SingleJet180er2p5
        310, -- module_index: 11, name: L1_SingleJet60
        176, -- module_index: 12, name: L1_SingleLooseIsoEG26er1p5
        178, -- module_index: 13, name: L1_SingleLooseIsoEG28er2p5
        264, -- module_index: 14, name: L1_SingleTau120er2p1
        206, -- module_index: 15, name: L1_DoubleEG_20_10_er2p5
        209, -- module_index: 16, name: L1_DoubleEG_25_14_er2p5
        214, -- module_index: 17, name: L1_DoubleEG_LooseIso22_12_er2p5
        271, -- module_index: 18, name: L1_DoubleIsoTau32er2p1
        342, -- module_index: 19, name: L1_DoubleJet120er2p5
        267, -- module_index: 20, name: L1_DoubleTau70er2p1
        324, -- module_index: 21, name: L1_SingleJet35_FWD3p0
        228, -- module_index: 22, name: L1_TripleEG16er2p5
        227, -- module_index: 23, name: L1_TripleEG_18_18_12_er2p5
        303, -- module_index: 24, name: L1_Mu0upt20
        155, -- module_index: 25, name: L1_Mu0upt20ip2
          6, -- module_index: 26, name: L1_SingleMu0_BMTF
         29, -- module_index: 27, name: L1_SingleMu10er1p5
         30, -- module_index: 28, name: L1_SingleMu12er1p5
         17, -- module_index: 29, name: L1_SingleMu18
         22, -- module_index: 30, name: L1_SingleMu22_EMTF
         10, -- module_index: 31, name: L1_SingleMu5
         96, -- module_index: 32, name: L1_Mu5_EG23er2p5
         98, -- module_index: 33, name: L1_Mu7_EG23er2p5
        101, -- module_index: 34, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 35, name: L1_Mu5_LooseIsoEG20er2p5
         12, -- module_index: 36, name: L1_SingleMu7
        102, -- module_index: 37, name: L1_Mu7_LooseIsoEG23er2p5
         97, -- module_index: 38, name: L1_Mu7_EG20er2p5
        306, -- module_index: 39, name: L1_SingleMuOpenupt5
        372, -- module_index: 40, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        376, -- module_index: 41, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
         80, -- module_index: 42, name: L1_TripleMu_5_5_3
         89, -- module_index: 43, name: L1_QuadMu0
         88, -- module_index: 44, name: L1_QuadMu0_OQ
         69, -- module_index: 45, name: L1_QuadMu0_OQ_OS
         90, -- module_index: 46, name: L1_QuadMu0_SQ
        198, -- module_index: 47, name: L1_IsoEG32er2p5_Mt44
        345, -- module_index: 48, name: L1_DoubleJet100er2p3_dEta_Max1p6
         34, -- module_index: 49, name: L1_MASSUPT_0_0_20
         36, -- module_index: 50, name: L1_MASSUPT_5_5_20
         57, -- module_index: 51, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         43, -- module_index: 52, name: L1_DoubleMu0_Mass_Min1
         82, -- module_index: 53, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        277, -- module_index: 54, name: L1_DoubleIsoTau30er2p1_Mass_Max80
        359, -- module_index: 55, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        352, -- module_index: 56, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        234, -- module_index: 57, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        126, -- module_index: 58, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        134, -- module_index: 59, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        364, -- module_index: 60, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
    others => 0
);

-- ========================================================