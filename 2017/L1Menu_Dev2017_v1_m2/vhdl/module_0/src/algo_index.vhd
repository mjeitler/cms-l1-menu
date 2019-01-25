-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6b83496c-2214-4454-8496-79e9e453d9d0

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        225, -- module_index: 0, name: L1_BPTX_LUT1_AND
        227, -- module_index: 1, name: L1_BPTX_LUT1_B2
        229, -- module_index: 2, name: L1_BPTX_LUT2_AND
        231, -- module_index: 3, name: L1_BPTX_LUT2_B2NotB1
        233, -- module_index: 4, name: L1_BPTX_TRIG2_AND
        235, -- module_index: 5, name: L1_BPTX_TRIG2_B2NotB1
        240, -- module_index: 6, name: L1_BRIL_TRIG0_AND
        242, -- module_index: 7, name: L1_BRIL_TRIG0_OR
        237, -- module_index: 8, name: L1_BRIL_TRIG3_AND
        239, -- module_index: 9, name: L1_BRIL_TRIG3_ref
        224, -- module_index: 10, name: L1_BeamGasB2
        221, -- module_index: 11, name: L1_BeamGasPlus
        209, -- module_index: 12, name: L1_BptxOR
        202, -- module_index: 13, name: L1_SingleJetC40_NotBptxOR_5BX
        200, -- module_index: 14, name: L1_SingleMuOpen_NotBptxOR_3BX
        298, -- module_index: 15, name: L1_CastorMediumJet_BptxAND
        201, -- module_index: 16, name: L1_SingleJetC20_NotBptxOR_3BX
          0, -- module_index: 17, name: L1_ZeroBias
        282, -- module_index: 18, name: L1_FirstBunchAfterTrain
        251, -- module_index: 19, name: L1_MinimumBiasHF0_AND
        304, -- module_index: 20, name: L1_SingleJet12
        246, -- module_index: 21, name: L1_MinimumBiasHF0_OR_BptxAND
          2, -- module_index: 22, name: L1_SingleMuOpen
        295, -- module_index: 23, name: L1_ETT75_BptxAND
        136, -- module_index: 24, name: L1_ETT40_BptxAND
        192, -- module_index: 25, name: L1_SingleEG2_BptxAND
        195, -- module_index: 26, name: L1_SingleJet12_BptxAND
        303, -- module_index: 27, name: L1_SingleJet8
        250, -- module_index: 28, name: L1_MinimumBiasHF0_OR
        189, -- module_index: 29, name: L1_SingleMuOpen_NotBptxOR
        249, -- module_index: 30, name: L1_MinimumBiasHF1_AND_BptxAND
        294, -- module_index: 31, name: L1_ETT55_BptxAND
        254, -- module_index: 32, name: L1_NotBptxOR
        245, -- module_index: 33, name: L1_ETT60_BptxAND
        203, -- module_index: 34, name: L1_SingleJetC40_NotBptxOR_3BX
        194, -- module_index: 35, name: L1_SingleJet8_BptxAND
        193, -- module_index: 36, name: L1_ETT70_BptxAND
        206, -- module_index: 37, name: L1_AlwaysTrue
        297, -- module_index: 38, name: L1_CastorHighJet_BptxAND
        300, -- module_index: 39, name: L1_CastorHaloMuon
        191, -- module_index: 40, name: L1_SingleJetC20_NotBptxOR
        281, -- module_index: 41, name: L1_FirstBunchInTrain
        296, -- module_index: 42, name: L1_CastorGap_BptxAND
        299, -- module_index: 43, name: L1_CastorHaloMuon_BptxAND
        255, -- module_index: 44, name: L1_ZeroBias_copy
        252, -- module_index: 45, name: L1_MinimumBiasHF1_OR
        244, -- module_index: 46, name: L1_ETT50_BptxAND
        247, -- module_index: 47, name: L1_MinimumBiasHF0_AND_BptxAND
        248, -- module_index: 48, name: L1_MinimumBiasHF1_OR_BptxAND
        219, -- module_index: 49, name: L1_IsolatedBunch
        253, -- module_index: 50, name: L1_MinimumBiasHF1_AND
        272, -- module_index: 51, name: L1_ETM75
        125, -- module_index: 52, name: L1_ETM80
        273, -- module_index: 53, name: L1_ETM85
        126, -- module_index: 54, name: L1_ETM90
        274, -- module_index: 55, name: L1_ETM95
        135, -- module_index: 56, name: L1_ETT25
        130, -- module_index: 57, name: L1_HTM100
        131, -- module_index: 58, name: L1_HTM120
        132, -- module_index: 59, name: L1_HTM130
        133, -- module_index: 60, name: L1_HTM140
        134, -- module_index: 61, name: L1_HTM150
        127, -- module_index: 62, name: L1_HTM50
        128, -- module_index: 63, name: L1_HTM70
        129, -- module_index: 64, name: L1_HTM80
        118, -- module_index: 65, name: L1_HTT220
        187, -- module_index: 66, name: L1_HTM80_HTT220
        115, -- module_index: 67, name: L1_HTT120
        116, -- module_index: 68, name: L1_HTT160
        117, -- module_index: 69, name: L1_HTT200
        174, -- module_index: 70, name: L1_EG27er_HTT200
        169, -- module_index: 71, name: L1_Mu6_DoubleEG10
        172, -- module_index: 72, name: L1_Mu6_HTT200
        293, -- module_index: 73, name: L1_DoubleJet30_Mj30j30_400_Mu10
        168, -- module_index: 74, name: L1_Mu6_DoubleEG17
        292, -- module_index: 75, name: L1_DoubleJet30_Mj30j30_400_Mu6
         13, -- module_index: 76, name: L1_SingleMu30
          5, -- module_index: 77, name: L1_SingleMu7
        173, -- module_index: 78, name: L1_Mu8_HTT150
         26, -- module_index: 79, name: L1_DoubleMu_10_3p5
         27, -- module_index: 80, name: L1_DoubleMu_11_4
         31, -- module_index: 81, name: L1_DoubleMu_12_8
         30, -- module_index: 82, name: L1_DoubleMu_15_5
         36, -- module_index: 83, name: L1_TripleMu0
         37, -- module_index: 84, name: L1_TripleMu_5_5_3
         99, -- module_index: 85, name: L1_TripleJet_84_68_48_VBF
        101, -- module_index: 86, name: L1_TripleJet_92_76_64_VBF
        267, -- module_index: 87, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         33, -- module_index: 88, name: L1_DoubleMu0er1p6_dEta_Max1p8_OS
        102, -- module_index: 89, name: L1_QuadJetC40
        104, -- module_index: 90, name: L1_QuadJetC60
        291, -- module_index: 91, name: L1_DoubleJet_100_30_Mj30j30_620
        290, -- module_index: 92, name: L1_DoubleJet_90_30_Mj30j30_620
        270, -- module_index: 93, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        199, -- module_index: 94, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        170, -- module_index: 95, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        179, -- module_index: 96, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        180, -- module_index: 97, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================