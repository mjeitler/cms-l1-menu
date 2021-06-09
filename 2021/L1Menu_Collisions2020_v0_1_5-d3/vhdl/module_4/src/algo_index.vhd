-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 8c19d0da-9c13-43f4-8e24-584e3e9e17db

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        257, -- module_index: 0, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        259, -- module_index: 1, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        235, -- module_index: 2, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        276, -- module_index: 3, name: L1_DoubleIsoTau30er2p1_Mass_Max90
        134, -- module_index: 4, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
         84, -- module_index: 5, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        226, -- module_index: 6, name: L1_TripleEG_18_17_8_er2p5
        269, -- module_index: 7, name: L1_DoubleIsoTau28er2p1
        217, -- module_index: 8, name: L1_DoubleLooseIsoEG22er2p1
        213, -- module_index: 9, name: L1_DoubleEG_LooseIso22_10_er2p5
        249, -- module_index: 10, name: L1_DoubleEG8er2p5_HTT300er
        207, -- module_index: 11, name: L1_DoubleEG_22_10_er2p5
        342, -- module_index: 12, name: L1_DoubleJet120er2p5
        327, -- module_index: 13, name: L1_SingleJet120_FWD3p0
        282, -- module_index: 14, name: L1_Mu22er2p1_IsoTau28er2p1
        109, -- module_index: 15, name: L1_DoubleMu4_SQ_EG9er2p5
        289, -- module_index: 16, name: L1_Mu22er2p1_Tau70er2p1
        364, -- module_index: 17, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
        458, -- module_index: 18, name: L1_AlwaysTrue
        460, -- module_index: 19, name: L1_ZeroBias_copy
        459, -- module_index: 20, name: L1_ZeroBias
        479, -- module_index: 21, name: L1_FirstCollisionInTrain
        478, -- module_index: 22, name: L1_LastCollisionInTrain
        506, -- module_index: 23, name: L1_TOTEM_4
    others => 0
);

-- ========================================================