-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        103, -- module_index: 0, name: L1_QuadJetC50
        269, -- module_index: 1, name: L1_IsoEG18er_IsoTau24er_dEta_Min0p2
        268, -- module_index: 2, name: L1_IsoEG22er_IsoTau26er_dEta_Min0p2
        171, -- module_index: 3, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
         35, -- module_index: 4, name: L1_DoubleMu_10_0_dEta_Max1p8
        166, -- module_index: 5, name: L1_DoubleMu7_EG14
        167, -- module_index: 6, name: L1_DoubleMu7_EG7
        198, -- module_index: 7, name: L1_MU20_EG15
          6, -- module_index: 8, name: L1_SingleMu12
         53, -- module_index: 9, name: L1_SingleIsoEG18
          4, -- module_index: 10, name: L1_SingleMu5
         41, -- module_index: 11, name: L1_SingleEG15
        275, -- module_index: 12, name: L1_Mu20_IsoEG6
        145, -- module_index: 13, name: L1_Mu5_EG20
        148, -- module_index: 14, name: L1_Mu5_IsoEG20
         54, -- module_index: 15, name: L1_SingleIsoEG20
        153, -- module_index: 16, name: L1_Mu23_EG10
        146, -- module_index: 17, name: L1_Mu5_EG23
        150, -- module_index: 18, name: L1_Mu20_EG10
         10, -- module_index: 19, name: L1_SingleMu20
        152, -- module_index: 20, name: L1_Mu23_IsoEG10
        144, -- module_index: 21, name: L1_Mu5_EG15
        147, -- module_index: 22, name: L1_Mu5_IsoEG18
        149, -- module_index: 23, name: L1_Mu12_EG10
        151, -- module_index: 24, name: L1_Mu20_EG17
         40, -- module_index: 25, name: L1_SingleEG10
        197, -- module_index: 26, name: L1_DoubleEG_22_15
        109, -- module_index: 27, name: L1_DoubleIsoTau28er
        265, -- module_index: 28, name: L1_DoubleIsoTau34er
        214, -- module_index: 29, name: L1_DoubleJet16_ForwardBackward
         98, -- module_index: 30, name: L1_DoubleJetC120
        114, -- module_index: 31, name: L1_DoubleTau50er
        276, -- module_index: 32, name: L1_TripleMu_5_0_0
         25, -- module_index: 33, name: L1_DoubleMu_10_Open
         29, -- module_index: 34, name: L1_DoubleMu_13_6
         42, -- module_index: 35, name: L1_SingleEG18
         45, -- module_index: 36, name: L1_SingleEG28
         48, -- module_index: 37, name: L1_SingleEG34
         50, -- module_index: 38, name: L1_SingleEG40
         62, -- module_index: 39, name: L1_SingleIsoEG18er
         64, -- module_index: 40, name: L1_SingleIsoEG22er
         57, -- module_index: 41, name: L1_SingleIsoEG26
         68, -- module_index: 42, name: L1_SingleIsoEG28er
        261, -- module_index: 43, name: L1_SingleIsoEG32
        262, -- module_index: 44, name: L1_SingleIsoEG36
         80, -- module_index: 45, name: L1_SingleJet16
         81, -- module_index: 46, name: L1_SingleJet20
         83, -- module_index: 47, name: L1_SingleJet60
        105, -- module_index: 48, name: L1_SingleTau80er
         11, -- module_index: 49, name: L1_SingleMu22
          5, -- module_index: 50, name: L1_SingleMu7
        142, -- module_index: 51, name: L1_ETM100
        286, -- module_index: 52, name: L1_ETM105
        143, -- module_index: 53, name: L1_ETM120
        126, -- module_index: 54, name: L1_ETM90
        131, -- module_index: 55, name: L1_HTM120
        127, -- module_index: 56, name: L1_HTM50
        119, -- module_index: 57, name: L1_HTT240
        124, -- module_index: 58, name: L1_HTT320
    others => 0
);

-- ========================================================