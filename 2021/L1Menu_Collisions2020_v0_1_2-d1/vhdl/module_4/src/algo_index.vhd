-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_2

-- Unique ID of L1 Trigger Menu:
-- a55448f7-430f-4308-91f2-5dd4d886290b

-- Unique ID of firmware implementation:
-- ac2706bf-9e49-4bab-9185-ab61982ba331

-- Scale set:
-- scales_2020_10_04

-- VHDL producer version
-- v2.9.0

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
         97, -- module_index: 32, name: L1_Mu7_EG20er2p5
         96, -- module_index: 33, name: L1_Mu5_EG23er2p5
         12, -- module_index: 34, name: L1_SingleMu7
         98, -- module_index: 35, name: L1_Mu7_EG23er2p5
        101, -- module_index: 36, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 37, name: L1_Mu5_LooseIsoEG20er2p5
        102, -- module_index: 38, name: L1_Mu7_LooseIsoEG23er2p5
        306, -- module_index: 39, name: L1_SingleMuOpenupt5
        372, -- module_index: 40, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        376, -- module_index: 41, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
         80, -- module_index: 42, name: L1_TripleMu_5_5_3
         89, -- module_index: 43, name: L1_QuadMu0
         88, -- module_index: 44, name: L1_QuadMu0_OQ
         90, -- module_index: 45, name: L1_QuadMu0_SQ
        198, -- module_index: 46, name: L1_IsoEG32er2p5_Mt44
        345, -- module_index: 47, name: L1_DoubleJet100er2p3_dEta_Max1p6
         57, -- module_index: 48, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         63, -- module_index: 49, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         50, -- module_index: 50, name: L1_DoubleMu_15_7_Mass_Min1
        275, -- module_index: 51, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        357, -- module_index: 52, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        350, -- module_index: 53, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        259, -- module_index: 54, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        112, -- module_index: 55, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        122, -- module_index: 56, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        142, -- module_index: 57, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================