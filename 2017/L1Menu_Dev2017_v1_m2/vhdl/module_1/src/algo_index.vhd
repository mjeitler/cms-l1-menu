-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        226, -- module_index: 0, name: L1_BPTX_LUT1_B1
        228, -- module_index: 1, name: L1_BPTX_LUT1_OR
        230, -- module_index: 2, name: L1_BPTX_LUT2_B1NotB2
        232, -- module_index: 3, name: L1_BPTX_LUT2_NotOR
        234, -- module_index: 4, name: L1_BPTX_TRIG2_B1NotB2
        236, -- module_index: 5, name: L1_BPTX_TRIG2_NotOR
        243, -- module_index: 6, name: L1_BRIL_TRIG0_FstBunchInTrain
        241, -- module_index: 7, name: L1_BRIL_TRIG0_delayedAND
        238, -- module_index: 8, name: L1_BRIL_TRIG3_delayedAND
        223, -- module_index: 9, name: L1_BeamGasB1
        222, -- module_index: 10, name: L1_BeamGasMinus
        208, -- module_index: 11, name: L1_BptxMinus
        220, -- module_index: 12, name: L1_BptxXOR
        207, -- module_index: 13, name: L1_BptxPlus
        211, -- module_index: 14, name: L1_ZeroBias_FirstCollidingBunch
        142, -- module_index: 15, name: L1_ETM100
        286, -- module_index: 16, name: L1_ETM105
        287, -- module_index: 17, name: L1_ETM110
        288, -- module_index: 18, name: L1_ETM115
        143, -- module_index: 19, name: L1_ETM120
        137, -- module_index: 20, name: L1_ETM30
        184, -- module_index: 21, name: L1_Mu10er_ETM30
        139, -- module_index: 22, name: L1_ETM50
        185, -- module_index: 23, name: L1_Mu10er_ETM50
        186, -- module_index: 24, name: L1_Mu14er_ETM30
         16, -- module_index: 25, name: L1_SingleMu14er
        138, -- module_index: 26, name: L1_ETM40
        181, -- module_index: 27, name: L1_DoubleJetC60_ETM60
        256, -- module_index: 28, name: L1_DoubleMu0_ETM40
        284, -- module_index: 29, name: L1_DoubleMu0_ETM65
        140, -- module_index: 30, name: L1_ETM60
         94, -- module_index: 31, name: L1_DoubleJetC60
        285, -- module_index: 32, name: L1_DoubleMu0_ETM70
        182, -- module_index: 33, name: L1_Mu0er_ETM40
        141, -- module_index: 34, name: L1_ETM70
        257, -- module_index: 35, name: L1_DoubleMu0_ETM55
        183, -- module_index: 36, name: L1_Mu0er_ETM55
        283, -- module_index: 37, name: L1_DoubleMu0_ETM60
         24, -- module_index: 38, name: L1_DoubleMu0
        119, -- module_index: 39, name: L1_HTT240
        120, -- module_index: 40, name: L1_HTT255
        176, -- module_index: 41, name: L1_DoubleEG6_HTT255
        121, -- module_index: 42, name: L1_HTT270
        122, -- module_index: 43, name: L1_HTT280
        123, -- module_index: 44, name: L1_HTT300
        124, -- module_index: 45, name: L1_HTT320
        188, -- module_index: 46, name: L1_HTM60_HTT260
         40, -- module_index: 47, name: L1_SingleEG10
        153, -- module_index: 48, name: L1_Mu23_EG10
         53, -- module_index: 49, name: L1_SingleIsoEG18
        150, -- module_index: 50, name: L1_Mu20_EG10
        147, -- module_index: 51, name: L1_Mu5_IsoEG18
          6, -- module_index: 52, name: L1_SingleMu12
        149, -- module_index: 53, name: L1_Mu12_EG10
          4, -- module_index: 54, name: L1_SingleMu5
        151, -- module_index: 55, name: L1_Mu20_EG17
        144, -- module_index: 56, name: L1_Mu5_EG15
         41, -- module_index: 57, name: L1_SingleEG15
         54, -- module_index: 58, name: L1_SingleIsoEG20
        152, -- module_index: 59, name: L1_Mu23_IsoEG10
        275, -- module_index: 60, name: L1_Mu20_IsoEG6
         10, -- module_index: 61, name: L1_SingleMu20
        145, -- module_index: 62, name: L1_Mu5_EG20
        146, -- module_index: 63, name: L1_Mu5_EG23
        148, -- module_index: 64, name: L1_Mu5_IsoEG20
        198, -- module_index: 65, name: L1_MU20_EG15
         42, -- module_index: 66, name: L1_SingleEG18
         43, -- module_index: 67, name: L1_SingleEG24
         44, -- module_index: 68, name: L1_SingleEG26
         45, -- module_index: 69, name: L1_SingleEG28
         46, -- module_index: 70, name: L1_SingleEG30
        258, -- module_index: 71, name: L1_SingleEG32
         48, -- module_index: 72, name: L1_SingleEG34
        259, -- module_index: 73, name: L1_SingleEG36
        260, -- module_index: 74, name: L1_SingleEG38
         50, -- module_index: 75, name: L1_SingleEG40
         52, -- module_index: 76, name: L1_SingleEG45
         39, -- module_index: 77, name: L1_SingleEG5
         62, -- module_index: 78, name: L1_SingleIsoEG18er
         63, -- module_index: 79, name: L1_SingleIsoEG20er
         55, -- module_index: 80, name: L1_SingleIsoEG22
         64, -- module_index: 81, name: L1_SingleIsoEG22er
         56, -- module_index: 82, name: L1_SingleIsoEG24
         65, -- module_index: 83, name: L1_SingleIsoEG24er
         57, -- module_index: 84, name: L1_SingleIsoEG26
         66, -- module_index: 85, name: L1_SingleIsoEG26er
         59, -- module_index: 86, name: L1_SingleIsoEG28
         68, -- module_index: 87, name: L1_SingleIsoEG28er
         60, -- module_index: 88, name: L1_SingleIsoEG30
         69, -- module_index: 89, name: L1_SingleIsoEG30er
        261, -- module_index: 90, name: L1_SingleIsoEG32
        263, -- module_index: 91, name: L1_SingleIsoEG32er
         61, -- module_index: 92, name: L1_SingleIsoEG34
         70, -- module_index: 93, name: L1_SingleIsoEG34er
        262, -- module_index: 94, name: L1_SingleIsoEG36
         85, -- module_index: 95, name: L1_SingleJet120
         86, -- module_index: 96, name: L1_SingleJet140
         87, -- module_index: 97, name: L1_SingleJet150
         80, -- module_index: 98, name: L1_SingleJet16
         88, -- module_index: 99, name: L1_SingleJet160
         89, -- module_index: 100, name: L1_SingleJet170
         90, -- module_index: 101, name: L1_SingleJet180
         81, -- module_index: 102, name: L1_SingleJet20
         91, -- module_index: 103, name: L1_SingleJet200
         82, -- module_index: 104, name: L1_SingleJet35
        302, -- module_index: 105, name: L1_SingleJet4
         83, -- module_index: 106, name: L1_SingleJet60
         84, -- module_index: 107, name: L1_SingleJet90
        106, -- module_index: 108, name: L1_SingleTau100er
        107, -- module_index: 109, name: L1_SingleTau120er
        105, -- module_index: 110, name: L1_SingleTau80er
        175, -- module_index: 111, name: L1_EG25er_HTT125
         71, -- module_index: 112, name: L1_DoubleEG_15_10
         72, -- module_index: 113, name: L1_DoubleEG_18_17
         73, -- module_index: 114, name: L1_DoubleEG_20_18
         75, -- module_index: 115, name: L1_DoubleEG_22_10
        196, -- module_index: 116, name: L1_DoubleEG_22_12
        197, -- module_index: 117, name: L1_DoubleEG_22_15
         76, -- module_index: 118, name: L1_DoubleEG_23_10
         77, -- module_index: 119, name: L1_DoubleEG_24_17
        277, -- module_index: 120, name: L1_DoubleEG_25_12
        109, -- module_index: 121, name: L1_DoubleIsoTau28er
        110, -- module_index: 122, name: L1_DoubleIsoTau30er
        111, -- module_index: 123, name: L1_DoubleIsoTau32er
        264, -- module_index: 124, name: L1_DoubleIsoTau33er
        265, -- module_index: 125, name: L1_DoubleIsoTau34er
        266, -- module_index: 126, name: L1_DoubleIsoTau35er
        278, -- module_index: 127, name: L1_DoubleIsoTau36er
        213, -- module_index: 128, name: L1_DoubleJet12_ForwardBackward
        214, -- module_index: 129, name: L1_DoubleJet16_ForwardBackward
        212, -- module_index: 130, name: L1_DoubleJet8_ForwardBackward
         96, -- module_index: 131, name: L1_DoubleJetC100
         97, -- module_index: 132, name: L1_DoubleJetC112
         98, -- module_index: 133, name: L1_DoubleJetC120
         92, -- module_index: 134, name: L1_DoubleJetC40
         93, -- module_index: 135, name: L1_DoubleJetC50
         95, -- module_index: 136, name: L1_DoubleJetC80
        114, -- module_index: 137, name: L1_DoubleTau50er
        289, -- module_index: 138, name: L1_DoubleTau70er
         78, -- module_index: 139, name: L1_TripleEG_14_10_8
         79, -- module_index: 140, name: L1_TripleEG_18_17_8
         14, -- module_index: 141, name: L1_SingleMu10_LowQ
          7, -- module_index: 142, name: L1_SingleMu14
          8, -- module_index: 143, name: L1_SingleMu16
         17, -- module_index: 144, name: L1_SingleMu16er
        157, -- module_index: 145, name: L1_Mu18er_Tau24er
        155, -- module_index: 146, name: L1_Mu16er_Tau24er
         18, -- module_index: 147, name: L1_SingleMu18er
        158, -- module_index: 148, name: L1_Mu18er_IsoTau26er
         19, -- module_index: 149, name: L1_SingleMu20er
         20, -- module_index: 150, name: L1_SingleMu22er
        279, -- module_index: 151, name: L1_Mu22er_IsoTau26er
         21, -- module_index: 152, name: L1_SingleMu25er
        156, -- module_index: 153, name: L1_Mu18er_Tau20er
        159, -- module_index: 154, name: L1_Mu20er_IsoTau26er
        154, -- module_index: 155, name: L1_Mu16er_Tau20er
        280, -- module_index: 156, name: L1_Mu25er_IsoTau26er
          9, -- module_index: 157, name: L1_SingleMu18
         11, -- module_index: 158, name: L1_SingleMu22
         12, -- module_index: 159, name: L1_SingleMu25
          3, -- module_index: 160, name: L1_SingleMu3
        216, -- module_index: 161, name: L1_Mu3_JetC60
        217, -- module_index: 162, name: L1_Mu3_JetC120
        215, -- module_index: 163, name: L1_Mu3_JetC16
         22, -- module_index: 164, name: L1_SingleMu30er
        218, -- module_index: 165, name: L1_SingleMuCosmics
         23, -- module_index: 166, name: L1_DoubleMuOpen
         25, -- module_index: 167, name: L1_DoubleMu_10_Open
         28, -- module_index: 168, name: L1_DoubleMu_12_5
         29, -- module_index: 169, name: L1_DoubleMu_13_6
        166, -- module_index: 170, name: L1_DoubleMu7_EG14
        167, -- module_index: 171, name: L1_DoubleMu7_EG7
        276, -- module_index: 172, name: L1_TripleMu_5_0_0
        271, -- module_index: 173, name: L1_ETM75_Jet60_dPhi_Min0p4
        100, -- module_index: 174, name: L1_TripleJet_88_72_56_VBF
         38, -- module_index: 175, name: L1_QuadMu0
         32, -- module_index: 176, name: L1_DoubleMu0er1p6_dEta_Max1p8
         35, -- module_index: 177, name: L1_DoubleMu_10_0_dEta_Max1p8
        103, -- module_index: 178, name: L1_QuadJetC50
        177, -- module_index: 179, name: L1_QuadJetC36_Tau52
        269, -- module_index: 180, name: L1_IsoEG18er_IsoTau24er_dEta_Min0p2
        268, -- module_index: 181, name: L1_IsoEG22er_IsoTau26er_dEta_Min0p2
        210, -- module_index: 182, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        171, -- module_index: 183, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================