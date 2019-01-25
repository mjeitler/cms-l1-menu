-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v0

-- Unique ID of L1 Trigger Menu:
-- 0e16ab0b-2d83-4ca2-9b19-ab1d40251338

-- Unique ID of firmware implementation:
-- 8ac77806-3251-4571-beab-b81a1147df41

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        177, -- module_index: 0, name: L1_QuadJetC36_Tau52
        102, -- module_index: 1, name: L1_QuadJetC40
        104, -- module_index: 2, name: L1_QuadJetC60
        270, -- module_index: 3, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        199, -- module_index: 4, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        170, -- module_index: 5, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        291, -- module_index: 6, name: L1_DoubleJet_100_30_Mj30j30_620
        290, -- module_index: 7, name: L1_DoubleJet_90_30_Mj30j30_620
        267, -- module_index: 8, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         32, -- module_index: 9, name: L1_DoubleMu0er1p6_dEta_Max1p8
         35, -- module_index: 10, name: L1_DoubleMu_10_0_dEta_Max1p8
        100, -- module_index: 11, name: L1_TripleJet_88_72_56_VBF
         38, -- module_index: 12, name: L1_QuadMu0
        217, -- module_index: 13, name: L1_Mu3_JetC120
        215, -- module_index: 14, name: L1_Mu3_JetC16
          3, -- module_index: 15, name: L1_SingleMu3
        216, -- module_index: 16, name: L1_Mu3_JetC60
         78, -- module_index: 17, name: L1_TripleEG_14_10_8
         79, -- module_index: 18, name: L1_TripleEG_18_17_8
        176, -- module_index: 19, name: L1_DoubleEG6_HTT255
        120, -- module_index: 20, name: L1_HTT255
        181, -- module_index: 21, name: L1_DoubleJetC60_ETM60
         94, -- module_index: 22, name: L1_DoubleJetC60
        138, -- module_index: 23, name: L1_ETM40
        284, -- module_index: 24, name: L1_DoubleMu0_ETM65
        285, -- module_index: 25, name: L1_DoubleMu0_ETM70
         24, -- module_index: 26, name: L1_DoubleMu0
        182, -- module_index: 27, name: L1_Mu0er_ETM40
        140, -- module_index: 28, name: L1_ETM60
        257, -- module_index: 29, name: L1_DoubleMu0_ETM55
        183, -- module_index: 30, name: L1_Mu0er_ETM55
        141, -- module_index: 31, name: L1_ETM70
        283, -- module_index: 32, name: L1_DoubleMu0_ETM60
        256, -- module_index: 33, name: L1_DoubleMu0_ETM40
         71, -- module_index: 34, name: L1_DoubleEG_15_10
         72, -- module_index: 35, name: L1_DoubleEG_18_17
         73, -- module_index: 36, name: L1_DoubleEG_20_18
        196, -- module_index: 37, name: L1_DoubleEG_22_12
         76, -- module_index: 38, name: L1_DoubleEG_23_10
        277, -- module_index: 39, name: L1_DoubleEG_25_12
        214, -- module_index: 40, name: L1_DoubleJet16_ForwardBackward
         96, -- module_index: 41, name: L1_DoubleJetC100
         98, -- module_index: 42, name: L1_DoubleJetC120
         93, -- module_index: 43, name: L1_DoubleJetC50
        175, -- module_index: 44, name: L1_EG25er_HTT125
        276, -- module_index: 45, name: L1_TripleMu_5_0_0
        109, -- module_index: 46, name: L1_DoubleIsoTau28er
        111, -- module_index: 47, name: L1_DoubleIsoTau32er
        265, -- module_index: 48, name: L1_DoubleIsoTau34er
        278, -- module_index: 49, name: L1_DoubleIsoTau36er
         26, -- module_index: 50, name: L1_DoubleMu_10_3p5
         27, -- module_index: 51, name: L1_DoubleMu_11_4
         31, -- module_index: 52, name: L1_DoubleMu_12_8
         30, -- module_index: 53, name: L1_DoubleMu_15_5
        289, -- module_index: 54, name: L1_DoubleTau70er
        173, -- module_index: 55, name: L1_Mu8_HTT150
         42, -- module_index: 56, name: L1_SingleEG18
         44, -- module_index: 57, name: L1_SingleEG26
        192, -- module_index: 58, name: L1_SingleEG2_BptxAND
        255, -- module_index: 59, name: L1_ZeroBias_copy
        304, -- module_index: 60, name: L1_SingleJet12
        189, -- module_index: 61, name: L1_SingleMuOpen_NotBptxOR
        200, -- module_index: 62, name: L1_SingleMuOpen_NotBptxOR_3BX
        251, -- module_index: 63, name: L1_MinimumBiasHF0_AND
        245, -- module_index: 64, name: L1_ETT60_BptxAND
          2, -- module_index: 65, name: L1_SingleMuOpen
          0, -- module_index: 66, name: L1_ZeroBias
        136, -- module_index: 67, name: L1_ETT40_BptxAND
        209, -- module_index: 68, name: L1_BptxOR
        191, -- module_index: 69, name: L1_SingleJetC20_NotBptxOR
        303, -- module_index: 70, name: L1_SingleJet8
        244, -- module_index: 71, name: L1_ETT50_BptxAND
        194, -- module_index: 72, name: L1_SingleJet8_BptxAND
        250, -- module_index: 73, name: L1_MinimumBiasHF0_OR
        249, -- module_index: 74, name: L1_MinimumBiasHF1_AND_BptxAND
        219, -- module_index: 75, name: L1_IsolatedBunch
        254, -- module_index: 76, name: L1_NotBptxOR
        195, -- module_index: 77, name: L1_SingleJet12_BptxAND
        296, -- module_index: 78, name: L1_CastorGap_BptxAND
        193, -- module_index: 79, name: L1_ETT70_BptxAND
        282, -- module_index: 80, name: L1_FirstBunchAfterTrain
        300, -- module_index: 81, name: L1_CastorHaloMuon
        248, -- module_index: 82, name: L1_MinimumBiasHF1_OR_BptxAND
        298, -- module_index: 83, name: L1_CastorMediumJet_BptxAND
        206, -- module_index: 84, name: L1_AlwaysTrue
        281, -- module_index: 85, name: L1_FirstBunchInTrain
        253, -- module_index: 86, name: L1_MinimumBiasHF1_AND
        246, -- module_index: 87, name: L1_MinimumBiasHF0_OR_BptxAND
        299, -- module_index: 88, name: L1_CastorHaloMuon_BptxAND
        201, -- module_index: 89, name: L1_SingleJetC20_NotBptxOR_3BX
        297, -- module_index: 90, name: L1_CastorHighJet_BptxAND
        252, -- module_index: 91, name: L1_MinimumBiasHF1_OR
        294, -- module_index: 92, name: L1_ETT55_BptxAND
        203, -- module_index: 93, name: L1_SingleJetC40_NotBptxOR_3BX
        247, -- module_index: 94, name: L1_MinimumBiasHF0_AND_BptxAND
        202, -- module_index: 95, name: L1_SingleJetC40_NotBptxOR_5BX
        295, -- module_index: 96, name: L1_ETT75_BptxAND
         62, -- module_index: 97, name: L1_SingleIsoEG18er
         55, -- module_index: 98, name: L1_SingleIsoEG22
         56, -- module_index: 99, name: L1_SingleIsoEG24
         57, -- module_index: 100, name: L1_SingleIsoEG26
         59, -- module_index: 101, name: L1_SingleIsoEG28
         60, -- module_index: 102, name: L1_SingleIsoEG30
        261, -- module_index: 103, name: L1_SingleIsoEG32
         61, -- module_index: 104, name: L1_SingleIsoEG34
        262, -- module_index: 105, name: L1_SingleIsoEG36
         86, -- module_index: 106, name: L1_SingleJet140
         80, -- module_index: 107, name: L1_SingleJet16
         89, -- module_index: 108, name: L1_SingleJet170
         81, -- module_index: 109, name: L1_SingleJet20
         82, -- module_index: 110, name: L1_SingleJet35
         83, -- module_index: 111, name: L1_SingleJet60
         14, -- module_index: 112, name: L1_SingleMu10_LowQ
          8, -- module_index: 113, name: L1_SingleMu16
         11, -- module_index: 114, name: L1_SingleMu22
         13, -- module_index: 115, name: L1_SingleMu30
          5, -- module_index: 116, name: L1_SingleMu7
        106, -- module_index: 117, name: L1_SingleTau100er
        105, -- module_index: 118, name: L1_SingleTau80er
        187, -- module_index: 119, name: L1_HTM80_HTT220
        129, -- module_index: 120, name: L1_HTM80
        118, -- module_index: 121, name: L1_HTT220
        286, -- module_index: 122, name: L1_ETM105
        288, -- module_index: 123, name: L1_ETM115
        272, -- module_index: 124, name: L1_ETM75
        273, -- module_index: 125, name: L1_ETM85
        274, -- module_index: 126, name: L1_ETM95
        130, -- module_index: 127, name: L1_HTM100
        132, -- module_index: 128, name: L1_HTM130
        134, -- module_index: 129, name: L1_HTM150
        128, -- module_index: 130, name: L1_HTM70
        116, -- module_index: 131, name: L1_HTT160
        121, -- module_index: 132, name: L1_HTT270
        123, -- module_index: 133, name: L1_HTT300
        240, -- module_index: 134, name: L1_BRIL_TRIG0_AND
        243, -- module_index: 135, name: L1_BRIL_TRIG0_FstBunchInTrain
        242, -- module_index: 136, name: L1_BRIL_TRIG0_OR
        241, -- module_index: 137, name: L1_BRIL_TRIG0_delayedAND
        223, -- module_index: 138, name: L1_BeamGasB1
        224, -- module_index: 139, name: L1_BeamGasB2
        222, -- module_index: 140, name: L1_BeamGasMinus
        221, -- module_index: 141, name: L1_BeamGasPlus
        208, -- module_index: 142, name: L1_BptxMinus
        220, -- module_index: 143, name: L1_BptxXOR
        207, -- module_index: 144, name: L1_BptxPlus
        211, -- module_index: 145, name: L1_ZeroBias_FirstCollidingBunch
    others => 0
);

-- ========================================================