-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        466, -- module_index: 0, name: L1_BPTX_AND_Ref2_NIM
        480, -- module_index: 1, name: L1_BPTX_B2_NIM
        465, -- module_index: 2, name: L1_BPTX_NotOR_VME
        461, -- module_index: 3, name: L1_BptxOR
        433, -- module_index: 4, name: L1_ETT53_BptxAND
        224, -- module_index: 5, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        434, -- module_index: 6, name: L1_ETT55_BptxAND
        458, -- module_index: 7, name: L1_ZeroBias
        451, -- module_index: 8, name: L1_NotBptxOR
        225, -- module_index: 9, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        453, -- module_index: 10, name: L1_ZeroBias_copy
        440, -- module_index: 11, name: L1_MinimumBiasHF0_OR_BptxAND
        435, -- module_index: 12, name: L1_ETT60_BptxAND
        436, -- module_index: 13, name: L1_ETT68_BptxAND
        432, -- module_index: 14, name: L1_SingleJet12_BptxAND
        437, -- module_index: 15, name: L1_ETT70_BptxAND
        223, -- module_index: 16, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        431, -- module_index: 17, name: L1_SingleEG2_BptxAND
        402, -- module_index: 18, name: L1_FirstBunchAfterTrain
        438, -- module_index: 19, name: L1_ETT75_BptxAND
        222, -- module_index: 20, name: L1_SingleJet20er3p0_NotBptxOR
        439, -- module_index: 21, name: L1_MinimumBiasHF0_AND_BptxAND
          1, -- module_index: 22, name: L1_SingleMuOpen
        221, -- module_index: 23, name: L1_SingleMuOpen_NotBptxOR_3BX
        220, -- module_index: 24, name: L1_SingleMuOpen_NotBptxOR
        450, -- module_index: 25, name: L1_AlwaysTrue
        400, -- module_index: 26, name: L1_IsolatedBunch
        401, -- module_index: 27, name: L1_FirstBunchInTrain
         71, -- module_index: 28, name: L1_SingleIsoEG26
         73, -- module_index: 29, name: L1_SingleIsoEG30
         75, -- module_index: 30, name: L1_SingleIsoEG34
         77, -- module_index: 31, name: L1_SingleIsoEG38
        130, -- module_index: 32, name: L1_SingleJet16
        131, -- module_index: 33, name: L1_SingleJet20
        146, -- module_index: 34, name: L1_SingleJet35_HFp
        113, -- module_index: 35, name: L1_SingleTau120er2p1
         90, -- module_index: 36, name: L1_DoubleEG_15_10
         94, -- module_index: 37, name: L1_DoubleEG_22_12
         98, -- module_index: 38, name: L1_DoubleEG_25_12
        276, -- module_index: 39, name: L1_DoubleEG_Iso24_10
        118, -- module_index: 40, name: L1_DoubleIsoTau32er2p1
        123, -- module_index: 41, name: L1_DoubleIsoTau38er2p1
        151, -- module_index: 42, name: L1_DoubleJet50er3p0
        142, -- module_index: 43, name: L1_SingleJet35_FWD
        277, -- module_index: 44, name: L1_TripleEG_Iso20_10_5
         12, -- module_index: 45, name: L1_SingleMu11_LowQ
         26, -- module_index: 46, name: L1_SingleMu16er2p1
         28, -- module_index: 47, name: L1_SingleMu20er2p1
        287, -- module_index: 48, name: L1_Mu16er2p1_Tau20er2p1
        290, -- module_index: 49, name: L1_Mu18er2p1_Tau24er2p1
         27, -- module_index: 50, name: L1_SingleMu18er2p1
        294, -- module_index: 51, name: L1_Mu20er2p1_IsoTau26er2p1
        288, -- module_index: 52, name: L1_Mu16er2p1_Tau24er2p1
        289, -- module_index: 53, name: L1_Mu18er2p1_Tau20er2p1
        293, -- module_index: 54, name: L1_Mu18er2p1_IsoTau26er2p1
        375, -- module_index: 55, name: L1_DoubleMu0_SQ
        381, -- module_index: 56, name: L1_DoubleMu4_SQ_OS
        369, -- module_index: 57, name: L1_DoubleMu6_SQ_OS
         34, -- module_index: 58, name: L1_DoubleMu_13_6
        391, -- module_index: 59, name: L1_DoubleMu7_EG7
        351, -- module_index: 60, name: L1_DoubleMu7_SQ_EG7
        385, -- module_index: 61, name: L1_TripleMu_5SQ_3SQ_0OQ
         44, -- module_index: 62, name: L1_TripleMu_5_5_3
        416, -- module_index: 63, name: L1_ETM75_Jet60_dPhi_Min0p4
        157, -- module_index: 64, name: L1_TripleJet_84_68_48_VBF
         45, -- module_index: 65, name: L1_QuadMu0
        255, -- module_index: 66, name: L1_DoubleJet100er2p3_dEta_Max1p6
        367, -- module_index: 67, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        160, -- module_index: 68, name: L1_QuadJet40er3p0
        285, -- module_index: 69, name: L1_IsoEG20er2p1_IsoTau25er2p1_dR_Min0p3
        279, -- module_index: 70, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        278, -- module_index: 71, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        256, -- module_index: 72, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================