-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v0

-- Unique ID of L1 Trigger Menu:
-- 8ffd3062-4813-4ebe-8a9c-52eac3140989

-- Unique ID of firmware implementation:
-- 3456ac9f-0e9c-441b-9925-0834331e3314

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        177, -- module_index: 0, name: L1_QuadJetC36_Tau52
        104, -- module_index: 1, name: L1_QuadJetC60
        268, -- module_index: 2, name: L1_IsoEG22er_IsoTau26er_dEta_Min0p2
        170, -- module_index: 3, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        293, -- module_index: 4, name: L1_DoubleJet30_Mj30j30_400_Mu10
        174, -- module_index: 5, name: L1_EG27er_HTT200
        117, -- module_index: 6, name: L1_HTT200
        169, -- module_index: 7, name: L1_Mu6_DoubleEG10
        168, -- module_index: 8, name: L1_Mu6_DoubleEG17
        172, -- module_index: 9, name: L1_Mu6_HTT200
        292, -- module_index: 10, name: L1_DoubleJet30_Mj30j30_400_Mu6
         33, -- module_index: 11, name: L1_DoubleMu0er1p6_dEta_Max1p8_OS
         99, -- module_index: 12, name: L1_TripleJet_84_68_48_VBF
        101, -- module_index: 13, name: L1_TripleJet_92_76_64_VBF
        166, -- module_index: 14, name: L1_DoubleMu7_EG14
        167, -- module_index: 15, name: L1_DoubleMu7_EG7
        154, -- module_index: 16, name: L1_Mu16er_Tau20er
         17, -- module_index: 17, name: L1_SingleMu16er
         18, -- module_index: 18, name: L1_SingleMu18er
        158, -- module_index: 19, name: L1_Mu18er_IsoTau26er
        157, -- module_index: 20, name: L1_Mu18er_Tau24er
        279, -- module_index: 21, name: L1_Mu22er_IsoTau26er
         20, -- module_index: 22, name: L1_SingleMu22er
        280, -- module_index: 23, name: L1_Mu25er_IsoTau26er
        155, -- module_index: 24, name: L1_Mu16er_Tau24er
        159, -- module_index: 25, name: L1_Mu20er_IsoTau26er
         21, -- module_index: 26, name: L1_SingleMu25er
        156, -- module_index: 27, name: L1_Mu18er_Tau20er
         19, -- module_index: 28, name: L1_SingleMu20er
        176, -- module_index: 29, name: L1_DoubleEG6_HTT255
        120, -- module_index: 30, name: L1_HTT255
         71, -- module_index: 31, name: L1_DoubleEG_15_10
         72, -- module_index: 32, name: L1_DoubleEG_18_17
         75, -- module_index: 33, name: L1_DoubleEG_22_10
         76, -- module_index: 34, name: L1_DoubleEG_23_10
        109, -- module_index: 35, name: L1_DoubleIsoTau28er
        264, -- module_index: 36, name: L1_DoubleIsoTau33er
        278, -- module_index: 37, name: L1_DoubleIsoTau36er
        212, -- module_index: 38, name: L1_DoubleJet8_ForwardBackward
         98, -- module_index: 39, name: L1_DoubleJetC120
         95, -- module_index: 40, name: L1_DoubleJetC80
        175, -- module_index: 41, name: L1_EG25er_HTT125
         37, -- module_index: 42, name: L1_TripleMu_5_5_3
         25, -- module_index: 43, name: L1_DoubleMu_10_Open
         31, -- module_index: 44, name: L1_DoubleMu_12_8
        184, -- module_index: 45, name: L1_Mu10er_ETM30
        139, -- module_index: 46, name: L1_ETM50
        186, -- module_index: 47, name: L1_Mu14er_ETM30
        185, -- module_index: 48, name: L1_Mu10er_ETM50
         16, -- module_index: 49, name: L1_SingleMu14er
        137, -- module_index: 50, name: L1_ETM30
         45, -- module_index: 51, name: L1_SingleEG28
        258, -- module_index: 52, name: L1_SingleEG32
        259, -- module_index: 53, name: L1_SingleEG36
         50, -- module_index: 54, name: L1_SingleEG40
         39, -- module_index: 55, name: L1_SingleEG5
         63, -- module_index: 56, name: L1_SingleIsoEG20er
         64, -- module_index: 57, name: L1_SingleIsoEG22er
         65, -- module_index: 58, name: L1_SingleIsoEG24er
         59, -- module_index: 59, name: L1_SingleIsoEG28
         60, -- module_index: 60, name: L1_SingleIsoEG30
         61, -- module_index: 61, name: L1_SingleIsoEG34
         85, -- module_index: 62, name: L1_SingleJet120
         80, -- module_index: 63, name: L1_SingleJet16
         90, -- module_index: 64, name: L1_SingleJet180
         82, -- module_index: 65, name: L1_SingleJet35
         83, -- module_index: 66, name: L1_SingleJet60
        107, -- module_index: 67, name: L1_SingleTau120er
          7, -- module_index: 68, name: L1_SingleMu14
         11, -- module_index: 69, name: L1_SingleMu22
          5, -- module_index: 70, name: L1_SingleMu7
        188, -- module_index: 71, name: L1_HTM60_HTT260
        286, -- module_index: 72, name: L1_ETM105
        143, -- module_index: 73, name: L1_ETM120
        273, -- module_index: 74, name: L1_ETM85
        135, -- module_index: 75, name: L1_ETT25
        132, -- module_index: 76, name: L1_HTM130
        128, -- module_index: 77, name: L1_HTM70
        119, -- module_index: 78, name: L1_HTT240
        123, -- module_index: 79, name: L1_HTT300
    others => 0
);

-- ========================================================