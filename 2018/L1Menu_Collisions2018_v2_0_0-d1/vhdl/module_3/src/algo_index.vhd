-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- 162b5874-65c5-446b-9c69-261e1dde5400

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
         83, -- module_index: 9, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         84, -- module_index: 10, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 11, name: L1_TripleMu_5_3p5_2p5
         65, -- module_index: 12, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         54, -- module_index: 13, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
        346, -- module_index: 14, name: L1_DoubleJet112er2p3_dEta_Max1p6
         39, -- module_index: 15, name: L1_DoubleMu0_OQ
         51, -- module_index: 16, name: L1_DoubleMu18er2p1
         44, -- module_index: 17, name: L1_DoubleMu8_SQ
         49, -- module_index: 18, name: L1_DoubleMu_15_7_SQ
        284, -- module_index: 19, name: L1_Mu22er2p1_IsoTau32er2p1
        289, -- module_index: 20, name: L1_Mu22er2p1_Tau70er2p1
        285, -- module_index: 21, name: L1_Mu22er2p1_IsoTau34er2p1
        286, -- module_index: 22, name: L1_Mu22er2p1_IsoTau36er2p1
          8, -- module_index: 23, name: L1_SingleMu0_EMTF
         15, -- module_index: 24, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 25, name: L1_SingleMu15_DQ
         20, -- module_index: 26, name: L1_SingleMu22_BMTF
         11, -- module_index: 27, name: L1_SingleMu7_DQ
          1, -- module_index: 28, name: L1_SingleMuCosmics_BMTF
        225, -- module_index: 29, name: L1_TripleEG_16_15_8_er2p5
        209, -- module_index: 30, name: L1_DoubleEG_25_14_er2p5
        215, -- module_index: 31, name: L1_DoubleEG_LooseIso25_12_er2p5
        342, -- module_index: 32, name: L1_DoubleJet120er2p5
        273, -- module_index: 33, name: L1_DoubleTau70er2p1
        325, -- module_index: 34, name: L1_SingleJet60_FWD3p0
        161, -- module_index: 35, name: L1_SingleEG15er2p5
        164, -- module_index: 36, name: L1_SingleEG28er2p5
        170, -- module_index: 37, name: L1_SingleEG40er2p5
        174, -- module_index: 38, name: L1_SingleEG60
        186, -- module_index: 39, name: L1_SingleIsoEG26er2p1
        193, -- module_index: 40, name: L1_SingleIsoEG30er2p1
        330, -- module_index: 41, name: L1_SingleJet10erHE
        322, -- module_index: 42, name: L1_SingleJet180er2p5
        329, -- module_index: 43, name: L1_SingleJet8erHE
        180, -- module_index: 44, name: L1_SingleLooseIsoEG28er1p5
        271, -- module_index: 45, name: L1_SingleTau130er2p1
        486, -- module_index: 46, name: L1_BPTX_AND_Ref1_VME
        487, -- module_index: 47, name: L1_BPTX_AND_Ref3_VME
        492, -- module_index: 48, name: L1_BPTX_BeamGas_B2_VME
        484, -- module_index: 49, name: L1_BPTX_OR_Ref4_VME
        501, -- module_index: 50, name: L1_HCAL_LaserMon_Veto
        506, -- module_index: 51, name: L1_TOTEM_4
    others => 0
);

-- ========================================================