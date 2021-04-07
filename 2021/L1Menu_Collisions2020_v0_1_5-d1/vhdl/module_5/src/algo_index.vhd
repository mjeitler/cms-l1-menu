-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        410, -- module_index: 0, name: L1_ETT1200
        400, -- module_index: 1, name: L1_HTT200er
        160, -- module_index: 2, name: L1_SingleEG10er2p5
         99, -- module_index: 3, name: L1_Mu20_EG10er2p5
         18, -- module_index: 4, name: L1_SingleMu20
        190, -- module_index: 5, name: L1_SingleIsoEG28er2p1
        194, -- module_index: 6, name: L1_SingleIsoEG32er2p5
        331, -- module_index: 7, name: L1_SingleJet12erHE
        314, -- module_index: 8, name: L1_SingleJet200
        329, -- module_index: 9, name: L1_SingleJet8erHE
        175, -- module_index: 10, name: L1_SingleLooseIsoEG26er2p5
        182, -- module_index: 11, name: L1_SingleLooseIsoEG30er1p5
        265, -- module_index: 12, name: L1_SingleTau130er2p1
        207, -- module_index: 13, name: L1_DoubleEG_22_10_er2p5
        212, -- module_index: 14, name: L1_DoubleEG_LooseIso20_10_er2p5
        269, -- module_index: 15, name: L1_DoubleIsoTau28er2p1
        273, -- module_index: 16, name: L1_DoubleIsoTau36er2p1
        217, -- module_index: 17, name: L1_DoubleLooseIsoEG22er2p1
        188, -- module_index: 18, name: L1_SingleIsoEG28_FWD2p5
        326, -- module_index: 19, name: L1_SingleJet90_FWD3p0
        225, -- module_index: 20, name: L1_TripleEG_16_15_8_er2p5
        302, -- module_index: 21, name: L1_Mu0upt10
        157, -- module_index: 22, name: L1_Mu0upt20ip03
        301, -- module_index: 23, name: L1_Mu0upt5
          8, -- module_index: 24, name: L1_SingleMu0_EMTF
         15, -- module_index: 25, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 26, name: L1_SingleMu15_DQ
         19, -- module_index: 27, name: L1_SingleMu22
         23, -- module_index: 28, name: L1_SingleMu25
         11, -- module_index: 29, name: L1_SingleMu7_DQ
         28, -- module_index: 30, name: L1_SingleMu9er1p5
          3, -- module_index: 31, name: L1_SingleMuCosmics_EMTF
        307, -- module_index: 32, name: L1_SingleMuOpenupt20
        374, -- module_index: 33, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
         41, -- module_index: 34, name: L1_DoubleMu0_SQ
        366, -- module_index: 35, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        365, -- module_index: 36, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
         68, -- module_index: 37, name: L1_QuadMu0_OS
        197, -- module_index: 38, name: L1_IsoEG32er2p5_Mt40
        199, -- module_index: 39, name: L1_IsoEG32er2p5_Mt48
        346, -- module_index: 40, name: L1_DoubleJet112er2p3_dEta_Max1p6
         38, -- module_index: 41, name: L1_MASSUPT_0_0_20_open
         67, -- module_index: 42, name: L1_MASSUPT_5_5_20_open
         54, -- module_index: 43, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         66, -- module_index: 44, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        382, -- module_index: 45, name: L1_QuadJet60er2p5
        276, -- module_index: 46, name: L1_DoubleIsoTau30er2p1_Mass_Max90
        348, -- module_index: 47, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        353, -- module_index: 48, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        235, -- module_index: 49, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        125, -- module_index: 50, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        136, -- module_index: 51, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
    others => 0
);

-- ========================================================