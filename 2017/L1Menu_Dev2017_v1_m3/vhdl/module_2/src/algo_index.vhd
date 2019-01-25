-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- d8b5a5b3-20c1-4fcc-954a-7fb47ae3edcf

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        102, -- module_index: 0, name: L1_QuadJetC40
        103, -- module_index: 1, name: L1_QuadJetC50
        270, -- module_index: 2, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        210, -- module_index: 3, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        291, -- module_index: 4, name: L1_DoubleJet_100_30_Mj30j30_620
        290, -- module_index: 5, name: L1_DoubleJet_90_30_Mj30j30_620
         32, -- module_index: 6, name: L1_DoubleMu0er1p6_dEta_Max1p8
        271, -- module_index: 7, name: L1_ETM75_Jet60_dPhi_Min0p4
        100, -- module_index: 8, name: L1_TripleJet_88_72_56_VBF
         38, -- module_index: 9, name: L1_QuadMu0
        217, -- module_index: 10, name: L1_Mu3_JetC120
        215, -- module_index: 11, name: L1_Mu3_JetC16
          3, -- module_index: 12, name: L1_SingleMu3
        216, -- module_index: 13, name: L1_Mu3_JetC60
         78, -- module_index: 14, name: L1_TripleEG_14_10_8
         79, -- module_index: 15, name: L1_TripleEG_18_17_8
        181, -- module_index: 16, name: L1_DoubleJetC60_ETM60
        285, -- module_index: 17, name: L1_DoubleMu0_ETM70
        182, -- module_index: 18, name: L1_Mu0er_ETM40
        141, -- module_index: 19, name: L1_ETM70
        257, -- module_index: 20, name: L1_DoubleMu0_ETM55
        183, -- module_index: 21, name: L1_Mu0er_ETM55
        138, -- module_index: 22, name: L1_ETM40
        283, -- module_index: 23, name: L1_DoubleMu0_ETM60
        140, -- module_index: 24, name: L1_ETM60
         24, -- module_index: 25, name: L1_DoubleMu0
        284, -- module_index: 26, name: L1_DoubleMu0_ETM65
         94, -- module_index: 27, name: L1_DoubleJetC60
        256, -- module_index: 28, name: L1_DoubleMu0_ETM40
        196, -- module_index: 29, name: L1_DoubleEG_22_12
         77, -- module_index: 30, name: L1_DoubleEG_24_17
        110, -- module_index: 31, name: L1_DoubleIsoTau30er
        265, -- module_index: 32, name: L1_DoubleIsoTau34er
        213, -- module_index: 33, name: L1_DoubleJet12_ForwardBackward
         96, -- module_index: 34, name: L1_DoubleJetC100
         92, -- module_index: 35, name: L1_DoubleJetC40
        114, -- module_index: 36, name: L1_DoubleTau50er
         36, -- module_index: 37, name: L1_TripleMu0
         23, -- module_index: 38, name: L1_DoubleMuOpen
         27, -- module_index: 39, name: L1_DoubleMu_11_4
         29, -- module_index: 40, name: L1_DoubleMu_13_6
        173, -- module_index: 41, name: L1_Mu8_HTT150
         43, -- module_index: 42, name: L1_SingleEG24
        192, -- module_index: 43, name: L1_SingleEG2_BptxAND
        247, -- module_index: 44, name: L1_MinimumBiasHF0_AND_BptxAND
        252, -- module_index: 45, name: L1_MinimumBiasHF1_OR
        200, -- module_index: 46, name: L1_SingleMuOpen_NotBptxOR_3BX
        206, -- module_index: 47, name: L1_AlwaysTrue
        282, -- module_index: 48, name: L1_FirstBunchAfterTrain
        250, -- module_index: 49, name: L1_MinimumBiasHF0_OR
        249, -- module_index: 50, name: L1_MinimumBiasHF1_AND_BptxAND
        195, -- module_index: 51, name: L1_SingleJet12_BptxAND
        294, -- module_index: 52, name: L1_ETT55_BptxAND
        254, -- module_index: 53, name: L1_NotBptxOR
        245, -- module_index: 54, name: L1_ETT60_BptxAND
        296, -- module_index: 55, name: L1_CastorGap_BptxAND
        300, -- module_index: 56, name: L1_CastorHaloMuon
        193, -- module_index: 57, name: L1_ETT70_BptxAND
        297, -- module_index: 58, name: L1_CastorHighJet_BptxAND
        255, -- module_index: 59, name: L1_ZeroBias_copy
        295, -- module_index: 60, name: L1_ETT75_BptxAND
          0, -- module_index: 61, name: L1_ZeroBias
        281, -- module_index: 62, name: L1_FirstBunchInTrain
        304, -- module_index: 63, name: L1_SingleJet12
        299, -- module_index: 64, name: L1_CastorHaloMuon_BptxAND
        201, -- module_index: 65, name: L1_SingleJetC20_NotBptxOR_3BX
        209, -- module_index: 66, name: L1_BptxOR
        219, -- module_index: 67, name: L1_IsolatedBunch
        298, -- module_index: 68, name: L1_CastorMediumJet_BptxAND
        191, -- module_index: 69, name: L1_SingleJetC20_NotBptxOR
        248, -- module_index: 70, name: L1_MinimumBiasHF1_OR_BptxAND
        244, -- module_index: 71, name: L1_ETT50_BptxAND
        194, -- module_index: 72, name: L1_SingleJet8_BptxAND
        203, -- module_index: 73, name: L1_SingleJetC40_NotBptxOR_3BX
        189, -- module_index: 74, name: L1_SingleMuOpen_NotBptxOR
        246, -- module_index: 75, name: L1_MinimumBiasHF0_OR_BptxAND
        251, -- module_index: 76, name: L1_MinimumBiasHF0_AND
        303, -- module_index: 77, name: L1_SingleJet8
        253, -- module_index: 78, name: L1_MinimumBiasHF1_AND
        136, -- module_index: 79, name: L1_ETT40_BptxAND
          2, -- module_index: 80, name: L1_SingleMuOpen
        202, -- module_index: 81, name: L1_SingleJetC40_NotBptxOR_5BX
         59, -- module_index: 82, name: L1_SingleIsoEG28
         60, -- module_index: 83, name: L1_SingleIsoEG30
        263, -- module_index: 84, name: L1_SingleIsoEG32er
        262, -- module_index: 85, name: L1_SingleIsoEG36
         87, -- module_index: 86, name: L1_SingleJet150
         89, -- module_index: 87, name: L1_SingleJet170
         82, -- module_index: 88, name: L1_SingleJet35
         83, -- module_index: 89, name: L1_SingleJet60
        105, -- module_index: 90, name: L1_SingleTau80er
          7, -- module_index: 91, name: L1_SingleMu14
         12, -- module_index: 92, name: L1_SingleMu25
         22, -- module_index: 93, name: L1_SingleMu30er
        187, -- module_index: 94, name: L1_HTM80_HTT220
        129, -- module_index: 95, name: L1_HTM80
        118, -- module_index: 96, name: L1_HTT220
        287, -- module_index: 97, name: L1_ETM110
        272, -- module_index: 98, name: L1_ETM75
        126, -- module_index: 99, name: L1_ETM90
        130, -- module_index: 100, name: L1_HTM100
        133, -- module_index: 101, name: L1_HTM140
        128, -- module_index: 102, name: L1_HTM70
        119, -- module_index: 103, name: L1_HTT240
        123, -- module_index: 104, name: L1_HTT300
    others => 0
);

-- ========================================================