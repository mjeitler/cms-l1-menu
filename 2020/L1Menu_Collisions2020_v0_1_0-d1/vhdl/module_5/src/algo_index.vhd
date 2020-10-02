-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- d2a8739b-a0c2-4bb8-b305-32db5f141af1

-- Unique ID of firmware implementation:
-- 90ee9049-377a-4a04-8574-1d33d0782fdb

-- Scale set:
-- scales_2020_09_30

-- VHDL producer version
-- v2.8.1

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
        304, -- module_index: 22, name: L1_Mu0upt50
          7, -- module_index: 23, name: L1_SingleMu0_OMTF
         14, -- module_index: 24, name: L1_SingleMu12_DQ_OMTF
         32, -- module_index: 25, name: L1_SingleMu16er1p5
         20, -- module_index: 26, name: L1_SingleMu22_BMTF
          9, -- module_index: 27, name: L1_SingleMu3
        119, -- module_index: 28, name: L1_Mu3_Jet30er2p5
         26, -- module_index: 29, name: L1_SingleMu7er1p5
          0, -- module_index: 30, name: L1_SingleMuCosmics
          2, -- module_index: 31, name: L1_SingleMuCosmics_OMTF
        279, -- module_index: 32, name: L1_Mu18er2p1_Tau24er2p1
        280, -- module_index: 33, name: L1_Mu18er2p1_Tau26er2p1
         40, -- module_index: 34, name: L1_DoubleMu0
         42, -- module_index: 35, name: L1_DoubleMu0_SQ_OS
         56, -- module_index: 36, name: L1_DoubleMu0er1p5_SQ_OS
         60, -- module_index: 37, name: L1_DoubleMu4_SQ_OS
         64, -- module_index: 38, name: L1_DoubleMu4p5er2p0_SQ_OS
         45, -- module_index: 39, name: L1_DoubleMu9_SQ
         47, -- module_index: 40, name: L1_DoubleMu_15_5_SQ
         49, -- module_index: 41, name: L1_DoubleMu_15_7_SQ
         72, -- module_index: 42, name: L1_TripleMu0
         73, -- module_index: 43, name: L1_TripleMu0_SQ
         75, -- module_index: 44, name: L1_TripleMu3_SQ
         78, -- module_index: 45, name: L1_TripleMu_5_3_3
         79, -- module_index: 46, name: L1_TripleMu_5_3_3_SQ
         77, -- module_index: 47, name: L1_TripleMu_5_3p5_2p5
         83, -- module_index: 48, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         84, -- module_index: 49, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         58, -- module_index: 50, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         61, -- module_index: 51, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
         65, -- module_index: 52, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
        298, -- module_index: 53, name: L1_QuadJet36er2p5_IsoTau52er2p1
        356, -- module_index: 54, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        355, -- module_index: 55, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        349, -- module_index: 56, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        257, -- module_index: 57, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 58, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        121, -- module_index: 59, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        135, -- module_index: 60, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================