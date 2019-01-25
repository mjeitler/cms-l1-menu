-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- a062fa36-6b9d-4302-9842-2e606a849e32

-- Unique ID of firmware implementation:
-- d2bef55e-4757-4a07-8032-f42a7daea756

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        318, -- module_index: 0, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        317, -- module_index: 1, name: L1_DoubleMu_15_7_SQ
        354, -- module_index: 2, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        285, -- module_index: 3, name: L1_QuadJet36er3p0_IsoTau52er2p1
        150, -- module_index: 4, name: L1_QuadJet40er3p0
        280, -- module_index: 5, name: L1_DoubleJet100er2p3_dEta_Max1p6
        260, -- module_index: 6, name: L1_IsoEG24er2p1_Jet26er3p0_dR_Min0p3
        403, -- module_index: 7, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        421, -- module_index: 8, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        427, -- module_index: 9, name: L1_DoubleMu_10_0_dEta_Max1p8
        356, -- module_index: 10, name: L1_DoubleMu4_OS_EG12
        360, -- module_index: 11, name: L1_DoubleMu5_OS_EG12
        416, -- module_index: 12, name: L1_MU20_EG15
         42, -- module_index: 13, name: L1_SingleEG15
        272, -- module_index: 14, name: L1_Mu5_EG23
         58, -- module_index: 15, name: L1_SingleIsoEG20
        271, -- module_index: 16, name: L1_Mu23_IsoEG10
        275, -- module_index: 17, name: L1_Mu7_IsoEG20
        411, -- module_index: 18, name: L1_Mu12_EG10
        419, -- module_index: 19, name: L1_Mu20_IsoEG6
        406, -- module_index: 20, name: L1_Mu5_EG15
          9, -- module_index: 21, name: L1_SingleMu20
        408, -- module_index: 22, name: L1_Mu5_IsoEG18
          3, -- module_index: 23, name: L1_SingleMu5
         57, -- module_index: 24, name: L1_SingleIsoEG18
        270, -- module_index: 25, name: L1_Mu23_EG10
        407, -- module_index: 26, name: L1_Mu5_EG20
        273, -- module_index: 27, name: L1_Mu5_IsoEG20
         41, -- module_index: 28, name: L1_SingleEG10
        269, -- module_index: 29, name: L1_Mu20_EG17
        274, -- module_index: 30, name: L1_Mu7_EG23
        276, -- module_index: 31, name: L1_Mu7_IsoEG23
          4, -- module_index: 32, name: L1_SingleMu7
        417, -- module_index: 33, name: L1_Mu20_EG10
        111, -- module_index: 34, name: L1_DoubleIsoTau36er2p1
        146, -- module_index: 35, name: L1_DoubleJet120er3p0
        103, -- module_index: 36, name: L1_DoubleTau50er2p1
        319, -- module_index: 37, name: L1_TripleMu3_SQ
        361, -- module_index: 38, name: L1_DoubleMu6_SQ_OS
         23, -- module_index: 39, name: L1_DoubleMu_12_8
        412, -- module_index: 40, name: L1_Mu10er2p1_ETM30cer
         13, -- module_index: 41, name: L1_SingleMu14er2p1
        415, -- module_index: 42, name: L1_Mu14er2p1_ETM30cer
        180, -- module_index: 43, name: L1_ETM30cer
         47, -- module_index: 44, name: L1_SingleEG30
         54, -- module_index: 45, name: L1_SingleEG34er2p1
         51, -- module_index: 46, name: L1_SingleEG38
         53, -- module_index: 47, name: L1_SingleEG45
         69, -- module_index: 48, name: L1_SingleIsoEG20er2p1
         60, -- module_index: 49, name: L1_SingleIsoEG24
         72, -- module_index: 50, name: L1_SingleIsoEG26er2p1
         74, -- module_index: 51, name: L1_SingleIsoEG30er2p1
         76, -- module_index: 52, name: L1_SingleIsoEG34er2p1
        125, -- module_index: 53, name: L1_SingleJet120
        128, -- module_index: 54, name: L1_SingleJet160
        131, -- module_index: 55, name: L1_SingleJet200
        100, -- module_index: 56, name: L1_SingleTau80er2p1
         14, -- module_index: 57, name: L1_SingleMu16er2p1
          2, -- module_index: 58, name: L1_SingleMu3
        182, -- module_index: 59, name: L1_ETM50cer
        189, -- module_index: 60, name: L1_ETM95cer
        169, -- module_index: 61, name: L1_HTT320er
        173, -- module_index: 62, name: L1_HTT450er
    others => 0
);

-- ========================================================