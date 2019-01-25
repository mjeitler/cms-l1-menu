-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 0d154197-83e2-480d-8634-262a4ce4f9da

-- Scale set:
-- scales_2017_04_26

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        333, -- module_index: 0, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        332, -- module_index: 1, name: L1_DoubleMu_15_7_SQ
        374, -- module_index: 2, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        286, -- module_index: 3, name: L1_QuadJet36er3p0_IsoTau52er2p1
        150, -- module_index: 4, name: L1_QuadJet40er3p0
        275, -- module_index: 5, name: L1_DoubleJet100er2p3_dEta_Max1p6
        250, -- module_index: 6, name: L1_IsoEG24er2p1_Jet26er3p0_dR_Min0p3
        430, -- module_index: 7, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        300, -- module_index: 8, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        378, -- module_index: 9, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        287, -- module_index: 10, name: L1_ETM80_Jet60_dPhi_Min0p4
        148, -- module_index: 11, name: L1_TripleJet_88_72_56_VBF
        408, -- module_index: 12, name: L1_MU20_EG15
        260, -- module_index: 13, name: L1_Mu20_EG17
         57, -- module_index: 14, name: L1_SingleIsoEG18
        261, -- module_index: 15, name: L1_Mu23_EG10
        264, -- module_index: 16, name: L1_Mu5_IsoEG20
         58, -- module_index: 17, name: L1_SingleIsoEG20
        266, -- module_index: 18, name: L1_Mu7_IsoEG20
         41, -- module_index: 19, name: L1_SingleEG10
        263, -- module_index: 20, name: L1_Mu5_EG23
          4, -- module_index: 21, name: L1_SingleMu7
        409, -- module_index: 22, name: L1_Mu20_IsoEG6
        262, -- module_index: 23, name: L1_Mu23_IsoEG10
        403, -- module_index: 24, name: L1_Mu5_EG15
          3, -- module_index: 25, name: L1_SingleMu5
        407, -- module_index: 26, name: L1_Mu20_EG10
        267, -- module_index: 27, name: L1_Mu7_IsoEG23
        405, -- module_index: 28, name: L1_Mu5_IsoEG18
        265, -- module_index: 29, name: L1_Mu7_EG23
          9, -- module_index: 30, name: L1_SingleMu20
        404, -- module_index: 31, name: L1_Mu5_EG20
         42, -- module_index: 32, name: L1_SingleEG15
        406, -- module_index: 33, name: L1_Mu12_EG10
        111, -- module_index: 34, name: L1_DoubleIsoTau35er2p1
        145, -- module_index: 35, name: L1_DoubleJet112er3p0
        143, -- module_index: 36, name: L1_DoubleJet80er3p0
         27, -- module_index: 37, name: L1_TripleMu0
         31, -- module_index: 38, name: L1_TripleMu_5_3_3
         22, -- module_index: 39, name: L1_DoubleMu_12_5
         26, -- module_index: 40, name: L1_DoubleMu_15_7
         44, -- module_index: 41, name: L1_SingleEG24
         47, -- module_index: 42, name: L1_SingleEG30
         54, -- module_index: 43, name: L1_SingleEG34er2p1
         51, -- module_index: 44, name: L1_SingleEG38
         53, -- module_index: 45, name: L1_SingleEG45
         69, -- module_index: 46, name: L1_SingleIsoEG20er2p1
         60, -- module_index: 47, name: L1_SingleIsoEG24
         72, -- module_index: 48, name: L1_SingleIsoEG26er2p1
         74, -- module_index: 49, name: L1_SingleIsoEG30er2p1
         76, -- module_index: 50, name: L1_SingleIsoEG34er2p1
        125, -- module_index: 51, name: L1_SingleJet120
        128, -- module_index: 52, name: L1_SingleJet160
        131, -- module_index: 53, name: L1_SingleJet200
        100, -- module_index: 54, name: L1_SingleTau20
          7, -- module_index: 55, name: L1_SingleMu16
          2, -- module_index: 56, name: L1_SingleMu3
        192, -- module_index: 57, name: L1_ETM110
        182, -- module_index: 58, name: L1_ETM50
        161, -- module_index: 59, name: L1_HTT160er
        172, -- module_index: 60, name: L1_HTT400er
    others => 0
);

-- ========================================================