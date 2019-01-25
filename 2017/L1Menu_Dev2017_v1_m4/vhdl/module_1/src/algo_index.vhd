-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        177, -- module_index: 0, name: L1_QuadJetC36_Tau52
        270, -- module_index: 1, name: L1_IsoEG20er_IsoTau25er_dEta_Min0p2
        199, -- module_index: 2, name: L1_IsoEG22er_Tau20er_dEta_Min0p2
        291, -- module_index: 3, name: L1_DoubleJet_100_30_Mj30j30_620
        290, -- module_index: 4, name: L1_DoubleJet_90_30_Mj30j30_620
         32, -- module_index: 5, name: L1_DoubleMu0er1p6_dEta_Max1p8
        100, -- module_index: 6, name: L1_TripleJet_88_72_56_VBF
        217, -- module_index: 7, name: L1_Mu3_JetC120
          3, -- module_index: 8, name: L1_SingleMu3
        215, -- module_index: 9, name: L1_Mu3_JetC16
        216, -- module_index: 10, name: L1_Mu3_JetC60
        176, -- module_index: 11, name: L1_DoubleEG6_HTT255
        120, -- module_index: 12, name: L1_HTT255
         71, -- module_index: 13, name: L1_DoubleEG_15_10
         73, -- module_index: 14, name: L1_DoubleEG_20_18
        196, -- module_index: 15, name: L1_DoubleEG_22_12
        277, -- module_index: 16, name: L1_DoubleEG_25_12
        264, -- module_index: 17, name: L1_DoubleIsoTau33er
        213, -- module_index: 18, name: L1_DoubleJet12_ForwardBackward
         97, -- module_index: 19, name: L1_DoubleJetC112
         95, -- module_index: 20, name: L1_DoubleJetC80
         36, -- module_index: 21, name: L1_TripleMu0
         26, -- module_index: 22, name: L1_DoubleMu_10_3p5
         31, -- module_index: 23, name: L1_DoubleMu_12_8
        173, -- module_index: 24, name: L1_Mu8_HTT150
         44, -- module_index: 25, name: L1_SingleEG26
        258, -- module_index: 26, name: L1_SingleEG32
        260, -- module_index: 27, name: L1_SingleEG38
         39, -- module_index: 28, name: L1_SingleEG5
         55, -- module_index: 29, name: L1_SingleIsoEG22
         65, -- module_index: 30, name: L1_SingleIsoEG24er
         59, -- module_index: 31, name: L1_SingleIsoEG28
         69, -- module_index: 32, name: L1_SingleIsoEG30er
         61, -- module_index: 33, name: L1_SingleIsoEG34
         86, -- module_index: 34, name: L1_SingleJet140
         89, -- module_index: 35, name: L1_SingleJet170
         82, -- module_index: 36, name: L1_SingleJet35
        106, -- module_index: 37, name: L1_SingleTau100er
          7, -- module_index: 38, name: L1_SingleMu14
         12, -- module_index: 39, name: L1_SingleMu25
        218, -- module_index: 40, name: L1_SingleMuCosmics
        125, -- module_index: 41, name: L1_ETM80
        135, -- module_index: 42, name: L1_ETT25
        133, -- module_index: 43, name: L1_HTM140
        115, -- module_index: 44, name: L1_HTT120
        122, -- module_index: 45, name: L1_HTT280
    others => 0
);

-- ========================================================