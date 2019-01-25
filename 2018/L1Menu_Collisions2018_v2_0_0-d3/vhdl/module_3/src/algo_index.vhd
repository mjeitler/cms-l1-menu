-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- cfa03eba-c8d7-4d4f-9e2c-8039338ad141

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        142, -- module_index: 0, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
        135, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        113, -- module_index: 2, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        259, -- module_index: 3, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        366, -- module_index: 4, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        365, -- module_index: 5, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
         41, -- module_index: 6, name: L1_DoubleMu0_SQ
        353, -- module_index: 7, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        279, -- module_index: 8, name: L1_DoubleIsoTau28er2p1_Mass_Max80
         85, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         86, -- module_index: 10, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 11, name: L1_TripleMu_5SQ_3SQ_0OQ
         43, -- module_index: 12, name: L1_DoubleMu0_Mass_Min1
         58, -- module_index: 13, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         63, -- module_index: 14, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        109, -- module_index: 15, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 16, name: L1_DoubleMu5_SQ_EG9er2p5
         47, -- module_index: 17, name: L1_DoubleMu_15_5_SQ
        281, -- module_index: 18, name: L1_Mu18er2p1_Tau24er2p1
        282, -- module_index: 19, name: L1_Mu18er2p1_Tau26er2p1
          6, -- module_index: 20, name: L1_SingleMu0_BMTF
          7, -- module_index: 21, name: L1_SingleMu0_OMTF
         30, -- module_index: 22, name: L1_SingleMu12er1p5
         19, -- module_index: 23, name: L1_SingleMu22
         11, -- module_index: 24, name: L1_SingleMu7_DQ
          3, -- module_index: 25, name: L1_SingleMuCosmics_EMTF
        227, -- module_index: 26, name: L1_TripleEG_18_18_12_er2p5
        213, -- module_index: 27, name: L1_DoubleEG_LooseIso22_10_er2p5
        341, -- module_index: 28, name: L1_DoubleJet100er2p5
        163, -- module_index: 29, name: L1_SingleEG28_FWD2p5
        177, -- module_index: 30, name: L1_SingleLooseIsoEG28_FWD2p5
        164, -- module_index: 31, name: L1_SingleEG28er2p5
        171, -- module_index: 32, name: L1_SingleEG42er2p5
        184, -- module_index: 33, name: L1_SingleIsoEG24er1p5
        190, -- module_index: 34, name: L1_SingleIsoEG28er2p1
        196, -- module_index: 35, name: L1_SingleIsoEG34er2p5
        322, -- module_index: 36, name: L1_SingleJet180er2p5
        311, -- module_index: 37, name: L1_SingleJet90
        182, -- module_index: 38, name: L1_SingleLooseIsoEG30er1p5
        417, -- module_index: 39, name: L1_ETM150
        410, -- module_index: 40, name: L1_ETT1200
        399, -- module_index: 41, name: L1_HTT160er
        406, -- module_index: 42, name: L1_HTT450er
        482, -- module_index: 43, name: L1_BPTX_NotOR_VME
        479, -- module_index: 44, name: L1_FirstCollisionInTrain
        504, -- module_index: 45, name: L1_TOTEM_2
    others => 0
);

-- ========================================================