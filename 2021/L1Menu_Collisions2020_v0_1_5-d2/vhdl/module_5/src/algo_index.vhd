-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        134, -- module_index: 0, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        136, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        112, -- module_index: 2, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        257, -- module_index: 3, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 4, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        351, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        358, -- module_index: 6, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        376, -- module_index: 7, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        372, -- module_index: 8, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
         82, -- module_index: 9, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         59, -- module_index: 10, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 11, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         34, -- module_index: 12, name: L1_MASSUPT_0_0_20
         67, -- module_index: 13, name: L1_MASSUPT_5_5_20_open
         80, -- module_index: 14, name: L1_TripleMu_5_5_3
         60, -- module_index: 15, name: L1_DoubleMu4_SQ_OS
         47, -- module_index: 16, name: L1_DoubleMu_15_5_SQ
         99, -- module_index: 17, name: L1_Mu20_EG10er2p5
         18, -- module_index: 18, name: L1_SingleMu20
        160, -- module_index: 19, name: L1_SingleEG10er2p5
        302, -- module_index: 20, name: L1_Mu0upt10
        154, -- module_index: 21, name: L1_Mu0upt20ip1
          6, -- module_index: 22, name: L1_SingleMu0_BMTF
         15, -- module_index: 23, name: L1_SingleMu12_DQ_EMTF
         17, -- module_index: 24, name: L1_SingleMu18
         23, -- module_index: 25, name: L1_SingleMu25
          0, -- module_index: 26, name: L1_SingleMuCosmics
        306, -- module_index: 27, name: L1_SingleMuOpenupt5
        206, -- module_index: 28, name: L1_DoubleEG_20_10_er2p5
        212, -- module_index: 29, name: L1_DoubleEG_LooseIso20_10_er2p5
        271, -- module_index: 30, name: L1_DoubleIsoTau32er2p1
        217, -- module_index: 31, name: L1_DoubleLooseIsoEG22er2p1
        324, -- module_index: 32, name: L1_SingleJet35_FWD3p0
        162, -- module_index: 33, name: L1_SingleEG26er2p5
        167, -- module_index: 34, name: L1_SingleEG34er2p5
        172, -- module_index: 35, name: L1_SingleEG45er2p5
        183, -- module_index: 36, name: L1_SingleIsoEG24er2p1
        189, -- module_index: 37, name: L1_SingleIsoEG28er2p5
        330, -- module_index: 38, name: L1_SingleJet10erHE
        314, -- module_index: 39, name: L1_SingleJet200
        318, -- module_index: 40, name: L1_SingleJet90er2p5
        181, -- module_index: 41, name: L1_SingleLooseIsoEG30er2p5
        405, -- module_index: 42, name: L1_HTT400er
    others => 0
);

-- ========================================================