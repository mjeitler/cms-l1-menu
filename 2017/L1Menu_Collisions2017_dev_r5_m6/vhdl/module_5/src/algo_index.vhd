-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        374, -- module_index: 0, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        277, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        275, -- module_index: 2, name: L1_DoubleJet100er2p3_dEta_Max1p6
        250, -- module_index: 3, name: L1_IsoEG24er2p1_Jet26er3p0_dR_Min0p3
        429, -- module_index: 4, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
        372, -- module_index: 5, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        288, -- module_index: 6, name: L1_ETM90_Jet60_dPhi_Min0p4
        391, -- module_index: 7, name: L1_DoubleMu7_EG7
        361, -- module_index: 8, name: L1_DoubleMu7_SQ_EG7
        297, -- module_index: 9, name: L1_TripleEG_Iso20_10_5
         85, -- module_index: 10, name: L1_DoubleEG_22_15
         89, -- module_index: 11, name: L1_DoubleEG_25_13
        107, -- module_index: 12, name: L1_DoubleIsoTau30er2p1
        112, -- module_index: 13, name: L1_DoubleIsoTau36er2p1
        140, -- module_index: 14, name: L1_DoubleJet40er3p0
        412, -- module_index: 15, name: L1_EG25er2p1_HTT125er
         28, -- module_index: 16, name: L1_TripleMu3
         21, -- module_index: 17, name: L1_DoubleMu_11_4
         26, -- module_index: 18, name: L1_DoubleMu_15_7
         46, -- module_index: 19, name: L1_SingleEG28
         50, -- module_index: 20, name: L1_SingleEG36
         53, -- module_index: 21, name: L1_SingleEG45
         70, -- module_index: 22, name: L1_SingleIsoEG22er2p1
         62, -- module_index: 23, name: L1_SingleIsoEG28
         75, -- module_index: 24, name: L1_SingleIsoEG32er2p1
         67, -- module_index: 25, name: L1_SingleIsoEG38
        129, -- module_index: 26, name: L1_SingleJet170
        103, -- module_index: 27, name: L1_SingleTau120er2p1
         10, -- module_index: 28, name: L1_SingleMu22
        191, -- module_index: 29, name: L1_ETM105
        193, -- module_index: 30, name: L1_ETM115
        182, -- module_index: 31, name: L1_ETM50
        161, -- module_index: 32, name: L1_HTT160er
        174, -- module_index: 33, name: L1_HTT500er
    others => 0
);

-- ========================================================