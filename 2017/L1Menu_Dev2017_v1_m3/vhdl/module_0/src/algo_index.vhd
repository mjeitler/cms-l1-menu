-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
        180, -- module_index: 0, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
        179, -- module_index: 1, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        269, -- module_index: 2, name: L1_IsoEG18er_IsoTau24er_dEta_Min0p2
        199, -- module_index: 3, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        171, -- module_index: 4, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
        267, -- module_index: 5, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         35, -- module_index: 6, name: L1_DoubleMu_10_0_dEta_Max1p8
        198, -- module_index: 7, name: L1_MU20_EG15
        147, -- module_index: 8, name: L1_Mu5_IsoEG18
        144, -- module_index: 9, name: L1_Mu5_EG15
         54, -- module_index: 10, name: L1_SingleIsoEG20
        151, -- module_index: 11, name: L1_Mu20_EG17
        145, -- module_index: 12, name: L1_Mu5_EG20
        153, -- module_index: 13, name: L1_Mu23_EG10
        152, -- module_index: 14, name: L1_Mu23_IsoEG10
        148, -- module_index: 15, name: L1_Mu5_IsoEG20
        275, -- module_index: 16, name: L1_Mu20_IsoEG6
         53, -- module_index: 17, name: L1_SingleIsoEG18
         40, -- module_index: 18, name: L1_SingleEG10
        149, -- module_index: 19, name: L1_Mu12_EG10
        150, -- module_index: 20, name: L1_Mu20_EG10
        146, -- module_index: 21, name: L1_Mu5_EG23
          4, -- module_index: 22, name: L1_SingleMu5
         10, -- module_index: 23, name: L1_SingleMu20
          6, -- module_index: 24, name: L1_SingleMu12
         41, -- module_index: 25, name: L1_SingleEG15
         73, -- module_index: 26, name: L1_DoubleEG_20_18
        197, -- module_index: 27, name: L1_DoubleEG_22_15
        277, -- module_index: 28, name: L1_DoubleEG_25_12
        111, -- module_index: 29, name: L1_DoubleIsoTau32er
        266, -- module_index: 30, name: L1_DoubleIsoTau35er
        214, -- module_index: 31, name: L1_DoubleJet16_ForwardBackward
         97, -- module_index: 32, name: L1_DoubleJetC112
         93, -- module_index: 33, name: L1_DoubleJetC50
        289, -- module_index: 34, name: L1_DoubleTau70er
        276, -- module_index: 35, name: L1_TripleMu_5_0_0
         26, -- module_index: 36, name: L1_DoubleMu_10_3p5
         28, -- module_index: 37, name: L1_DoubleMu_12_5
         30, -- module_index: 38, name: L1_DoubleMu_15_5
         42, -- module_index: 39, name: L1_SingleEG18
         44, -- module_index: 40, name: L1_SingleEG26
         46, -- module_index: 41, name: L1_SingleEG30
         48, -- module_index: 42, name: L1_SingleEG34
        260, -- module_index: 43, name: L1_SingleEG38
         52, -- module_index: 44, name: L1_SingleEG45
         62, -- module_index: 45, name: L1_SingleIsoEG18er
         55, -- module_index: 46, name: L1_SingleIsoEG22
         56, -- module_index: 47, name: L1_SingleIsoEG24
         57, -- module_index: 48, name: L1_SingleIsoEG26
         68, -- module_index: 49, name: L1_SingleIsoEG28er
        261, -- module_index: 50, name: L1_SingleIsoEG32
         70, -- module_index: 51, name: L1_SingleIsoEG34er
         86, -- module_index: 52, name: L1_SingleJet140
         88, -- module_index: 53, name: L1_SingleJet160
         81, -- module_index: 54, name: L1_SingleJet20
        302, -- module_index: 55, name: L1_SingleJet4
        106, -- module_index: 56, name: L1_SingleTau100er
         14, -- module_index: 57, name: L1_SingleMu10_LowQ
          9, -- module_index: 58, name: L1_SingleMu18
         13, -- module_index: 59, name: L1_SingleMu30
        218, -- module_index: 60, name: L1_SingleMuCosmics
        142, -- module_index: 61, name: L1_ETM100
        288, -- module_index: 62, name: L1_ETM115
        125, -- module_index: 63, name: L1_ETM80
        274, -- module_index: 64, name: L1_ETM95
        131, -- module_index: 65, name: L1_HTM120
        134, -- module_index: 66, name: L1_HTM150
        115, -- module_index: 67, name: L1_HTT120
        121, -- module_index: 68, name: L1_HTT270
        124, -- module_index: 69, name: L1_HTT320
    others => 0
);

-- ========================================================