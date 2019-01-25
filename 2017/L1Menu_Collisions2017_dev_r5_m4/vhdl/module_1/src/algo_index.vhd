-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        379, -- module_index: 0, name: L1_TripleMu_5_3_0_DoubleMu_5_3_OS_Mass_Max17
        276, -- module_index: 1, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        415, -- module_index: 2, name: L1_QuadJet36er3p0_Tau52
        151, -- module_index: 3, name: L1_QuadJet50er3p0
        303, -- module_index: 4, name: L1_IsoEG18er2p1_IsoTau24er2p1_dEta_Min0p2
        251, -- module_index: 5, name: L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3
        428, -- module_index: 6, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        377, -- module_index: 7, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        370, -- module_index: 8, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        289, -- module_index: 9, name: L1_ETM100_Jet60_dPhi_Min0p4
        290, -- module_index: 10, name: L1_ETM110_Jet60_dPhi_Min0p4
        288, -- module_index: 11, name: L1_ETM90_Jet60_dPhi_Min0p4
         33, -- module_index: 12, name: L1_QuadMu0
        306, -- module_index: 13, name: L1_Mu16er2p1_Tau20er2p1
         15, -- module_index: 14, name: L1_SingleMu18er2p1
        310, -- module_index: 15, name: L1_Mu18er2p1_IsoTau26er2p1
        309, -- module_index: 16, name: L1_Mu18er2p1_Tau24er2p1
        311, -- module_index: 17, name: L1_Mu20er2p1_IsoTau26er2p1
         16, -- module_index: 18, name: L1_SingleMu20er2p1
        308, -- module_index: 19, name: L1_Mu18er2p1_Tau20er2p1
         14, -- module_index: 20, name: L1_SingleMu16er2p1
        307, -- module_index: 21, name: L1_Mu16er2p1_Tau24er2p1
         83, -- module_index: 22, name: L1_DoubleEG_22_10
         86, -- module_index: 23, name: L1_DoubleEG_23_10
         89, -- module_index: 24, name: L1_DoubleEG_25_13
        296, -- module_index: 25, name: L1_DoubleEG_Iso24_10
        108, -- module_index: 26, name: L1_DoubleIsoTau32er2p1
        112, -- module_index: 27, name: L1_DoubleIsoTau36er2p1
        146, -- module_index: 28, name: L1_DoubleJet120er3p0
        104, -- module_index: 29, name: L1_DoubleTau50er2p1
         28, -- module_index: 30, name: L1_TripleMu3
         32, -- module_index: 31, name: L1_TripleMu_5_5_3
         23, -- module_index: 32, name: L1_DoubleMu_12_8
        438, -- module_index: 33, name: L1_Mu10er2p1_ETM30
        439, -- module_index: 34, name: L1_Mu14er2p1_ETM30
        180, -- module_index: 35, name: L1_ETM30
         13, -- module_index: 36, name: L1_SingleMu14er2p1
        431, -- module_index: 37, name: L1_SingleEG2_BptxAND
        240, -- module_index: 38, name: L1_SingleMuOpen_NotBptxOR
        434, -- module_index: 39, name: L1_ETT70_BptxAND
        402, -- module_index: 40, name: L1_FirstBunchAfterTrain
        451, -- module_index: 41, name: L1_NotBptxOR
        437, -- module_index: 42, name: L1_MinimumBiasHF0_OR_BptxAND
        245, -- module_index: 43, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        436, -- module_index: 44, name: L1_MinimumBiasHF0_AND_BptxAND
        241, -- module_index: 45, name: L1_SingleMuOpen_NotBptxOR_3BX
        450, -- module_index: 46, name: L1_AlwaysTrue
        453, -- module_index: 47, name: L1_ZeroBias_copy
        401, -- module_index: 48, name: L1_FirstBunchInTrain
        432, -- module_index: 49, name: L1_SingleJet12_BptxAND
        244, -- module_index: 50, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        435, -- module_index: 51, name: L1_ETT75_BptxAND
        242, -- module_index: 52, name: L1_SingleJet20er3p0_NotBptxOR
        400, -- module_index: 53, name: L1_IsolatedBunch
        243, -- module_index: 54, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        433, -- module_index: 55, name: L1_ETT55_BptxAND
          1, -- module_index: 56, name: L1_SingleMuOpen
        458, -- module_index: 57, name: L1_ZeroBias
        461, -- module_index: 58, name: L1_BptxOR
         63, -- module_index: 59, name: L1_SingleIsoEG30
         65, -- module_index: 60, name: L1_SingleIsoEG34
         67, -- module_index: 61, name: L1_SingleIsoEG38
        120, -- module_index: 62, name: L1_SingleJet16
        121, -- module_index: 63, name: L1_SingleJet20
        103, -- module_index: 64, name: L1_SingleTau120er2p1
          6, -- module_index: 65, name: L1_SingleMu11_LowQ
         11, -- module_index: 66, name: L1_SingleMu25
        191, -- module_index: 67, name: L1_ETM105
        193, -- module_index: 68, name: L1_ETM115
        185, -- module_index: 69, name: L1_ETM75
        169, -- module_index: 70, name: L1_HTT320er
        173, -- module_index: 71, name: L1_HTT450er
    others => 0
);

-- ========================================================