-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 4132978b-4b38-436f-89a5-ee797d7a9120

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        363, -- module_index: 0, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
        135, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        123, -- module_index: 2, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        234, -- module_index: 3, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        349, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        357, -- module_index: 5, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        277, -- module_index: 6, name: L1_DoubleIsoTau30er2p1_Mass_Max80
        386, -- module_index: 7, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
         82, -- module_index: 8, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         50, -- module_index: 9, name: L1_DoubleMu_15_7_Mass_Min1
         24, -- module_index: 10, name: L1_MASSUPT_0_0_10
         35, -- module_index: 11, name: L1_MASSUPT_5_5_10
        197, -- module_index: 12, name: L1_IsoEG32er2p5_Mt40
         89, -- module_index: 13, name: L1_QuadMu0
         68, -- module_index: 14, name: L1_QuadMu0_OS
         71, -- module_index: 15, name: L1_TripleMu0_OQ
         75, -- module_index: 16, name: L1_TripleMu3_SQ
         80, -- module_index: 17, name: L1_TripleMu_5_5_3
        109, -- module_index: 18, name: L1_DoubleMu4_SQ_EG9er2p5
         42, -- module_index: 19, name: L1_DoubleMu0_SQ_OS
         62, -- module_index: 20, name: L1_DoubleMu4p5_SQ_OS
         48, -- module_index: 21, name: L1_DoubleMu_15_7
        373, -- module_index: 22, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        280, -- module_index: 23, name: L1_Mu18er2p1_Tau26er2p1
        286, -- module_index: 24, name: L1_Mu22er2p1_IsoTau36er2p1
         98, -- module_index: 25, name: L1_Mu7_EG23er2p5
        303, -- module_index: 26, name: L1_Mu0upt20
        301, -- module_index: 27, name: L1_Mu0upt5
         29, -- module_index: 28, name: L1_SingleMu10er1p5
         16, -- module_index: 29, name: L1_SingleMu15_DQ
         22, -- module_index: 30, name: L1_SingleMu22_EMTF
         27, -- module_index: 31, name: L1_SingleMu8er1p5
          4, -- module_index: 32, name: L1_SingleMuOpen
        463, -- module_index: 33, name: L1_NotBptxOR
        446, -- module_index: 34, name: L1_SingleMuOpen_NotBptxOR
        464, -- module_index: 35, name: L1_BptxOR
        224, -- module_index: 36, name: L1_TripleEG_16_12_8_er2p5
        248, -- module_index: 37, name: L1_DoubleEG8er2p5_HTT280er
        206, -- module_index: 38, name: L1_DoubleEG_20_10_er2p5
        213, -- module_index: 39, name: L1_DoubleEG_LooseIso22_10_er2p5
        272, -- module_index: 40, name: L1_DoubleIsoTau34er2p1
        217, -- module_index: 41, name: L1_DoubleLooseIsoEG22er2p1
        324, -- module_index: 42, name: L1_SingleJet35_FWD3p0
        239, -- module_index: 43, name: L1_LooseIsoEG26er2p1_HTT100er
        161, -- module_index: 44, name: L1_SingleEG15er2p5
        168, -- module_index: 45, name: L1_SingleEG36er2p5
        174, -- module_index: 46, name: L1_SingleEG60
        185, -- module_index: 47, name: L1_SingleIsoEG26er2p5
        195, -- module_index: 48, name: L1_SingleIsoEG32er2p1
        331, -- module_index: 49, name: L1_SingleJet12erHE
        309, -- module_index: 50, name: L1_SingleJet35
        176, -- module_index: 51, name: L1_SingleLooseIsoEG26er1p5
        264, -- module_index: 52, name: L1_SingleTau120er2p1
    others => 0
);

-- ========================================================