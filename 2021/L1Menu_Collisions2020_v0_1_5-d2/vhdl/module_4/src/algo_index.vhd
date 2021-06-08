-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        142, -- module_index: 0, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
        134, -- module_index: 1, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        121, -- module_index: 2, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        259, -- module_index: 3, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        366, -- module_index: 4, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
         41, -- module_index: 5, name: L1_DoubleMu0_SQ
        365, -- module_index: 6, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        356, -- module_index: 7, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        274, -- module_index: 8, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        385, -- module_index: 9, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        403, -- module_index: 10, name: L1_HTT320er
         83, -- module_index: 11, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 12, name: L1_TripleMu_5_3p5_2p5
         65, -- module_index: 13, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         53, -- module_index: 14, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         38, -- module_index: 15, name: L1_MASSUPT_0_0_20_open
        346, -- module_index: 16, name: L1_DoubleJet112er2p3_dEta_Max1p6
         64, -- module_index: 17, name: L1_DoubleMu4p5er2p0_SQ_OS
         49, -- module_index: 18, name: L1_DoubleMu_15_7_SQ
        374, -- module_index: 19, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        283, -- module_index: 20, name: L1_Mu22er2p1_IsoTau30er2p1
        119, -- module_index: 21, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 22, name: L1_SingleMu3
        102, -- module_index: 23, name: L1_Mu7_LooseIsoEG23er2p5
        155, -- module_index: 24, name: L1_Mu0upt20ip2
          8, -- module_index: 25, name: L1_SingleMu0_EMTF
         30, -- module_index: 26, name: L1_SingleMu12er1p5
         19, -- module_index: 27, name: L1_SingleMu22
         11, -- module_index: 28, name: L1_SingleMu7_DQ
          3, -- module_index: 29, name: L1_SingleMuCosmics_EMTF
        306, -- module_index: 30, name: L1_SingleMuOpenupt5
        227, -- module_index: 31, name: L1_TripleEG_18_18_12_er2p5
        251, -- module_index: 32, name: L1_DoubleEG8er2p5_HTT340er
        209, -- module_index: 33, name: L1_DoubleEG_25_14_er2p5
        269, -- module_index: 34, name: L1_DoubleIsoTau28er2p1
        342, -- module_index: 35, name: L1_DoubleJet120er2p5
        163, -- module_index: 36, name: L1_SingleEG28_FWD2p5
        177, -- module_index: 37, name: L1_SingleLooseIsoEG28_FWD2p5
        334, -- module_index: 38, name: L1_SingleJet140er2p5_ETMHF90
        167, -- module_index: 39, name: L1_SingleEG34er2p5
        173, -- module_index: 40, name: L1_SingleEG50
        186, -- module_index: 41, name: L1_SingleIsoEG26er2p1
        192, -- module_index: 42, name: L1_SingleIsoEG30er2p5
        319, -- module_index: 43, name: L1_SingleJet120er2p5
        450, -- module_index: 44, name: L1_SingleJet20er2p5_NotBptxOR
        318, -- module_index: 45, name: L1_SingleJet90er2p5
        181, -- module_index: 46, name: L1_SingleLooseIsoEG30er2p5
        410, -- module_index: 47, name: L1_ETT1200
        399, -- module_index: 48, name: L1_HTT160er
        405, -- module_index: 49, name: L1_HTT400er
    others => 0
);

-- ========================================================