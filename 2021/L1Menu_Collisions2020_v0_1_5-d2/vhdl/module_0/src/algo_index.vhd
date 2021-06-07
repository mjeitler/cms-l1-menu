-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        312, -- module_index: 1, name: L1_SingleJet120
        361, -- module_index: 2, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        276, -- module_index: 3, name: L1_DoubleIsoTau30er2p1_Mass_Max90
         83, -- module_index: 4, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 5, name: L1_TripleMu_5_3p5_2p5
         84, -- module_index: 6, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         65, -- module_index: 7, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         54, -- module_index: 8, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         37, -- module_index: 9, name: L1_MASSUPT_0_0_10_open
         36, -- module_index: 10, name: L1_MASSUPT_5_5_20
         68, -- module_index: 11, name: L1_QuadMu0_OS
         71, -- module_index: 12, name: L1_TripleMu0_OQ
         75, -- module_index: 13, name: L1_TripleMu3_SQ
         40, -- module_index: 14, name: L1_DoubleMu0
         55, -- module_index: 15, name: L1_DoubleMu0er1p5_SQ
         64, -- module_index: 16, name: L1_DoubleMu4p5er2p0_SQ_OS
         49, -- module_index: 17, name: L1_DoubleMu_15_7_SQ
        305, -- module_index: 18, name: L1_Mu0upt100
        155, -- module_index: 19, name: L1_Mu0upt20ip2
          5, -- module_index: 20, name: L1_SingleMu0_DQ
         14, -- module_index: 21, name: L1_SingleMu12_DQ_OMTF
         33, -- module_index: 22, name: L1_SingleMu18er1p5
         25, -- module_index: 23, name: L1_SingleMu6er1p5
          1, -- module_index: 24, name: L1_SingleMuCosmics_BMTF
        228, -- module_index: 25, name: L1_TripleEG16er2p5
        205, -- module_index: 26, name: L1_DoubleEG_15_10_er2p5
        209, -- module_index: 27, name: L1_DoubleEG_25_14_er2p5
        269, -- module_index: 28, name: L1_DoubleIsoTau28er2p1
        342, -- module_index: 29, name: L1_DoubleJet120er2p5
        188, -- module_index: 30, name: L1_SingleIsoEG28_FWD2p5
        238, -- module_index: 31, name: L1_LooseIsoEG24er2p1_HTT100er
        239, -- module_index: 32, name: L1_LooseIsoEG26er2p1_HTT100er
        179, -- module_index: 33, name: L1_SingleLooseIsoEG28er2p1
        241, -- module_index: 34, name: L1_LooseIsoEG30er2p1_HTT100er
        240, -- module_index: 35, name: L1_LooseIsoEG28er2p1_HTT100er
        191, -- module_index: 36, name: L1_SingleIsoEG28er1p5
        194, -- module_index: 37, name: L1_SingleIsoEG32er2p5
        313, -- module_index: 38, name: L1_SingleJet180
        329, -- module_index: 39, name: L1_SingleJet8erHE
        178, -- module_index: 40, name: L1_SingleLooseIsoEG28er2p5
        411, -- module_index: 41, name: L1_ETT1600
        399, -- module_index: 42, name: L1_HTT160er
        404, -- module_index: 43, name: L1_HTT360er
    others => 0
);

-- ========================================================