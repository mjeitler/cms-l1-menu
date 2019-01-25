-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6a6f4031-449d-4d69-9c1f-9c14b74fd137

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        180, -- module_index: 0, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
        179, -- module_index: 1, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        210, -- module_index: 2, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        293, -- module_index: 3, name: L1_DoubleJet30_Mj30j30_400_Mu10
        292, -- module_index: 4, name: L1_DoubleJet30_Mj30j30_400_Mu6
        174, -- module_index: 5, name: L1_EG27er_HTT200
        117, -- module_index: 6, name: L1_HTT200
        172, -- module_index: 7, name: L1_Mu6_HTT200
        169, -- module_index: 8, name: L1_Mu6_DoubleEG10
        168, -- module_index: 9, name: L1_Mu6_DoubleEG17
        271, -- module_index: 10, name: L1_ETM75_Jet60_dPhi_Min0p4
         99, -- module_index: 11, name: L1_TripleJet_84_68_48_VBF
        101, -- module_index: 12, name: L1_TripleJet_92_76_64_VBF
         78, -- module_index: 13, name: L1_TripleEG_14_10_8
         79, -- module_index: 14, name: L1_TripleEG_18_17_8
        181, -- module_index: 15, name: L1_DoubleJetC60_ETM60
        182, -- module_index: 16, name: L1_Mu0er_ETM40
         24, -- module_index: 17, name: L1_DoubleMu0
        140, -- module_index: 18, name: L1_ETM60
        283, -- module_index: 19, name: L1_DoubleMu0_ETM60
        141, -- module_index: 20, name: L1_ETM70
        256, -- module_index: 21, name: L1_DoubleMu0_ETM40
        183, -- module_index: 22, name: L1_Mu0er_ETM55
        284, -- module_index: 23, name: L1_DoubleMu0_ETM65
        138, -- module_index: 24, name: L1_ETM40
         94, -- module_index: 25, name: L1_DoubleJetC60
        285, -- module_index: 26, name: L1_DoubleMu0_ETM70
        257, -- module_index: 27, name: L1_DoubleMu0_ETM55
         76, -- module_index: 28, name: L1_DoubleEG_23_10
        110, -- module_index: 29, name: L1_DoubleIsoTau30er
        266, -- module_index: 30, name: L1_DoubleIsoTau35er
        212, -- module_index: 31, name: L1_DoubleJet8_ForwardBackward
         92, -- module_index: 32, name: L1_DoubleJetC40
        289, -- module_index: 33, name: L1_DoubleTau70er
         37, -- module_index: 34, name: L1_TripleMu_5_5_3
         27, -- module_index: 35, name: L1_DoubleMu_11_4
         30, -- module_index: 36, name: L1_DoubleMu_15_5
         43, -- module_index: 37, name: L1_SingleEG24
        192, -- module_index: 38, name: L1_SingleEG2_BptxAND
        304, -- module_index: 39, name: L1_SingleJet12
        194, -- module_index: 40, name: L1_SingleJet8_BptxAND
        255, -- module_index: 41, name: L1_ZeroBias_copy
        251, -- module_index: 42, name: L1_MinimumBiasHF0_AND
        201, -- module_index: 43, name: L1_SingleJetC20_NotBptxOR_3BX
        244, -- module_index: 44, name: L1_ETT50_BptxAND
        246, -- module_index: 45, name: L1_MinimumBiasHF0_OR_BptxAND
          0, -- module_index: 46, name: L1_ZeroBias
          2, -- module_index: 47, name: L1_SingleMuOpen
        253, -- module_index: 48, name: L1_MinimumBiasHF1_AND
        136, -- module_index: 49, name: L1_ETT40_BptxAND
        189, -- module_index: 50, name: L1_SingleMuOpen_NotBptxOR
        202, -- module_index: 51, name: L1_SingleJetC40_NotBptxOR_5BX
        303, -- module_index: 52, name: L1_SingleJet8
        250, -- module_index: 53, name: L1_MinimumBiasHF0_OR
        247, -- module_index: 54, name: L1_MinimumBiasHF0_AND_BptxAND
        249, -- module_index: 55, name: L1_MinimumBiasHF1_AND_BptxAND
        294, -- module_index: 56, name: L1_ETT55_BptxAND
        282, -- module_index: 57, name: L1_FirstBunchAfterTrain
        254, -- module_index: 58, name: L1_NotBptxOR
        245, -- module_index: 59, name: L1_ETT60_BptxAND
        296, -- module_index: 60, name: L1_CastorGap_BptxAND
        193, -- module_index: 61, name: L1_ETT70_BptxAND
        248, -- module_index: 62, name: L1_MinimumBiasHF1_OR_BptxAND
        300, -- module_index: 63, name: L1_CastorHaloMuon
        295, -- module_index: 64, name: L1_ETT75_BptxAND
        191, -- module_index: 65, name: L1_SingleJetC20_NotBptxOR
        195, -- module_index: 66, name: L1_SingleJet12_BptxAND
        299, -- module_index: 67, name: L1_CastorHaloMuon_BptxAND
        252, -- module_index: 68, name: L1_MinimumBiasHF1_OR
        209, -- module_index: 69, name: L1_BptxOR
        200, -- module_index: 70, name: L1_SingleMuOpen_NotBptxOR_3BX
        219, -- module_index: 71, name: L1_IsolatedBunch
        203, -- module_index: 72, name: L1_SingleJetC40_NotBptxOR_3BX
        298, -- module_index: 73, name: L1_CastorMediumJet_BptxAND
        206, -- module_index: 74, name: L1_AlwaysTrue
        297, -- module_index: 75, name: L1_CastorHighJet_BptxAND
        281, -- module_index: 76, name: L1_FirstBunchInTrain
         70, -- module_index: 77, name: L1_SingleIsoEG34er
         87, -- module_index: 78, name: L1_SingleJet150
         90, -- module_index: 79, name: L1_SingleJet180
        302, -- module_index: 80, name: L1_SingleJet4
        107, -- module_index: 81, name: L1_SingleTau120er
          8, -- module_index: 82, name: L1_SingleMu16
         13, -- module_index: 83, name: L1_SingleMu30
        188, -- module_index: 84, name: L1_HTM60_HTT260
        287, -- module_index: 85, name: L1_ETM110
        272, -- module_index: 86, name: L1_ETM75
        274, -- module_index: 87, name: L1_ETM95
        132, -- module_index: 88, name: L1_HTM130
        128, -- module_index: 89, name: L1_HTM70
        121, -- module_index: 90, name: L1_HTT270
        225, -- module_index: 91, name: L1_BPTX_LUT1_AND
        226, -- module_index: 92, name: L1_BPTX_LUT1_B1
        227, -- module_index: 93, name: L1_BPTX_LUT1_B2
        228, -- module_index: 94, name: L1_BPTX_LUT1_OR
        229, -- module_index: 95, name: L1_BPTX_LUT2_AND
        230, -- module_index: 96, name: L1_BPTX_LUT2_B1NotB2
        231, -- module_index: 97, name: L1_BPTX_LUT2_B2NotB1
        232, -- module_index: 98, name: L1_BPTX_LUT2_NotOR
        233, -- module_index: 99, name: L1_BPTX_TRIG2_AND
        234, -- module_index: 100, name: L1_BPTX_TRIG2_B1NotB2
        235, -- module_index: 101, name: L1_BPTX_TRIG2_B2NotB1
        236, -- module_index: 102, name: L1_BPTX_TRIG2_NotOR
        240, -- module_index: 103, name: L1_BRIL_TRIG0_AND
        243, -- module_index: 104, name: L1_BRIL_TRIG0_FstBunchInTrain
        242, -- module_index: 105, name: L1_BRIL_TRIG0_OR
        241, -- module_index: 106, name: L1_BRIL_TRIG0_delayedAND
        237, -- module_index: 107, name: L1_BRIL_TRIG3_AND
        238, -- module_index: 108, name: L1_BRIL_TRIG3_delayedAND
        239, -- module_index: 109, name: L1_BRIL_TRIG3_ref
        223, -- module_index: 110, name: L1_BeamGasB1
        224, -- module_index: 111, name: L1_BeamGasB2
        222, -- module_index: 112, name: L1_BeamGasMinus
        221, -- module_index: 113, name: L1_BeamGasPlus
        208, -- module_index: 114, name: L1_BptxMinus
        220, -- module_index: 115, name: L1_BptxXOR
        207, -- module_index: 116, name: L1_BptxPlus
        211, -- module_index: 117, name: L1_ZeroBias_FirstCollidingBunch
    others => 0
);

-- ========================================================