-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 38c2787b-f3a1-48e6-b3f8-b7625293f15a

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        333, -- module_index: 0, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        332, -- module_index: 1, name: L1_DoubleMu_15_7_SQ
        286, -- module_index: 2, name: L1_QuadJet36er3p0_IsoTau52er2p1
        150, -- module_index: 3, name: L1_QuadJet40er3p0
        304, -- module_index: 4, name: L1_IsoEG20er2p1_IsoTau25er2p1_dEta_Min0p2
        430, -- module_index: 5, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        425, -- module_index: 6, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        290, -- module_index: 7, name: L1_ETM110_Jet60_dPhi_Min0p4
        147, -- module_index: 8, name: L1_TripleJet_84_68_48_VBF
        408, -- module_index: 9, name: L1_MU20_EG15
        407, -- module_index: 10, name: L1_Mu20_EG10
        262, -- module_index: 11, name: L1_Mu23_IsoEG10
          3, -- module_index: 12, name: L1_SingleMu5
        260, -- module_index: 13, name: L1_Mu20_EG17
        263, -- module_index: 14, name: L1_Mu5_EG23
        261, -- module_index: 15, name: L1_Mu23_EG10
         57, -- module_index: 16, name: L1_SingleIsoEG18
         58, -- module_index: 17, name: L1_SingleIsoEG20
        404, -- module_index: 18, name: L1_Mu5_EG20
        264, -- module_index: 19, name: L1_Mu5_IsoEG20
        409, -- module_index: 20, name: L1_Mu20_IsoEG6
        267, -- module_index: 21, name: L1_Mu7_IsoEG23
         42, -- module_index: 22, name: L1_SingleEG15
        405, -- module_index: 23, name: L1_Mu5_IsoEG18
          9, -- module_index: 24, name: L1_SingleMu20
          4, -- module_index: 25, name: L1_SingleMu7
        266, -- module_index: 26, name: L1_Mu7_IsoEG20
         41, -- module_index: 27, name: L1_SingleEG10
        406, -- module_index: 28, name: L1_Mu12_EG10
        403, -- module_index: 29, name: L1_Mu5_EG15
        265, -- module_index: 30, name: L1_Mu7_EG23
         25, -- module_index: 31, name: L1_DoubleMu_15_5
         45, -- module_index: 32, name: L1_SingleEG26
         49, -- module_index: 33, name: L1_SingleEG34
         56, -- module_index: 34, name: L1_SingleEG38er2p1
         69, -- module_index: 35, name: L1_SingleIsoEG20er2p1
         61, -- module_index: 36, name: L1_SingleIsoEG26
         74, -- module_index: 37, name: L1_SingleIsoEG30er2p1
         66, -- module_index: 38, name: L1_SingleIsoEG36
        127, -- module_index: 39, name: L1_SingleJet150
        131, -- module_index: 40, name: L1_SingleJet200
          5, -- module_index: 41, name: L1_SingleMu10_LowQ
          2, -- module_index: 42, name: L1_SingleMu3
        160, -- module_index: 43, name: L1_HTT120er
        173, -- module_index: 44, name: L1_HTT450er
    others => 0
);

-- ========================================================