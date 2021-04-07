-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        417, -- module_index: 0, name: L1_ETM150
        412, -- module_index: 1, name: L1_ETT2000
        404, -- module_index: 2, name: L1_HTT360er
        162, -- module_index: 3, name: L1_SingleEG26er2p5
        167, -- module_index: 4, name: L1_SingleEG34er2p5
        171, -- module_index: 5, name: L1_SingleEG42er2p5
        159, -- module_index: 6, name: L1_SingleEG8er2p5
        186, -- module_index: 7, name: L1_SingleIsoEG26er2p1
        193, -- module_index: 8, name: L1_SingleIsoEG30er2p1
        330, -- module_index: 9, name: L1_SingleJet10erHE
        313, -- module_index: 10, name: L1_SingleJet180
        316, -- module_index: 11, name: L1_SingleJet35er2p5
        318, -- module_index: 12, name: L1_SingleJet90er2p5
        179, -- module_index: 13, name: L1_SingleLooseIsoEG28er2p1
        238, -- module_index: 14, name: L1_LooseIsoEG24er2p1_HTT100er
        239, -- module_index: 15, name: L1_LooseIsoEG26er2p1_HTT100er
        241, -- module_index: 16, name: L1_LooseIsoEG30er2p1_HTT100er
        240, -- module_index: 17, name: L1_LooseIsoEG28er2p1_HTT100er
        210, -- module_index: 18, name: L1_DoubleEG_27_14_er2p5
        215, -- module_index: 19, name: L1_DoubleEG_LooseIso25_12_er2p5
        272, -- module_index: 20, name: L1_DoubleIsoTau34er2p1
        343, -- module_index: 21, name: L1_DoubleJet150er2p5
        163, -- module_index: 22, name: L1_SingleEG28_FWD2p5
        325, -- module_index: 23, name: L1_SingleJet60_FWD3p0
        224, -- module_index: 24, name: L1_TripleEG_16_12_8_er2p5
        300, -- module_index: 25, name: L1_Mu0upt0
        153, -- module_index: 26, name: L1_Mu0upt20ip0
        156, -- module_index: 27, name: L1_Mu0upt20ip3
          5, -- module_index: 28, name: L1_SingleMu0_DQ
         13, -- module_index: 29, name: L1_SingleMu12_DQ_BMTF
         31, -- module_index: 30, name: L1_SingleMu14er1p5
         33, -- module_index: 31, name: L1_SingleMu18er1p5
         21, -- module_index: 32, name: L1_SingleMu22_OMTF
         25, -- module_index: 33, name: L1_SingleMu6er1p5
         27, -- module_index: 34, name: L1_SingleMu8er1p5
          1, -- module_index: 35, name: L1_SingleMuCosmics_BMTF
        308, -- module_index: 36, name: L1_SingleMuOpenupt100
        373, -- module_index: 37, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
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
         24, -- module_index: 52, name: L1_MASSUPT_0_0_10
         35, -- module_index: 53, name: L1_MASSUPT_5_5_10
         59, -- module_index: 54, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 55, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         65, -- module_index: 56, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
        298, -- module_index: 57, name: L1_QuadJet36er2p5_IsoTau52er2p1
        356, -- module_index: 58, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        355, -- module_index: 59, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        349, -- module_index: 60, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        257, -- module_index: 61, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 62, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        121, -- module_index: 63, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        135, -- module_index: 64, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================