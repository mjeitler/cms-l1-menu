-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- e4115c89-8693-4f08-bb9f-493f844c4d15

-- Unique ID of firmware implementation:
-- ea19fb64-9f87-4584-b967-74fcff8d0681

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        477, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        470, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        476, -- module_index: 2, name: L1_BptxOR
        468, -- module_index: 3, name: L1_ZeroBias_copy
        417, -- module_index: 4, name: L1_FirstBunchAfterTrain
        416, -- module_index: 5, name: L1_FirstBunchInTrain
        447, -- module_index: 6, name: L1_SingleJet12_BptxAND
        210, -- module_index: 7, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        454, -- module_index: 8, name: L1_ETT85_BptxAND
        457, -- module_index: 9, name: L1_ETT100_BptxAND
        458, -- module_index: 10, name: L1_ETT110_BptxAND
        448, -- module_index: 11, name: L1_ETT40_BptxAND
        214, -- module_index: 12, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        449, -- module_index: 13, name: L1_ETT50_BptxAND
        466, -- module_index: 14, name: L1_NotBptxOR
          1, -- module_index: 15, name: L1_SingleMuOpen
        450, -- module_index: 16, name: L1_ETT60_BptxAND
        451, -- module_index: 17, name: L1_ETT70_BptxAND
        459, -- module_index: 18, name: L1_MinimumBiasHF0_AND_BptxAND
        452, -- module_index: 19, name: L1_ETT75_BptxAND
        211, -- module_index: 20, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        453, -- module_index: 21, name: L1_ETT80_BptxAND
        215, -- module_index: 22, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        209, -- module_index: 23, name: L1_SingleMuOpen_NotBptxOR
        455, -- module_index: 24, name: L1_ETT90_BptxAND
        456, -- module_index: 25, name: L1_ETT95_BptxAND
        473, -- module_index: 26, name: L1_ZeroBias
        465, -- module_index: 27, name: L1_AlwaysTrue
        212, -- module_index: 28, name: L1_SingleJet20er2p5_NotBptxOR
        460, -- module_index: 29, name: L1_MinimumBiasHF0_OR_BptxAND
        415, -- module_index: 30, name: L1_IsolatedBunch
        213, -- module_index: 31, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        141, -- module_index: 32, name: L1_SingleJet180
        148, -- module_index: 33, name: L1_SingleJet35_HFm
        507, -- module_index: 34, name: L1_SingleJet8erHE
        103, -- module_index: 35, name: L1_DoubleEG_22_10_er2p5
        280, -- module_index: 36, name: L1_DoubleEG_LooseIso24_10_er2p5
        155, -- module_index: 37, name: L1_DoubleJet100er2p7
        151, -- module_index: 38, name: L1_DoubleJet40er2p7
        112, -- module_index: 39, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 40, name: L1_SingleJet60_FWD
          5, -- module_index: 41, name: L1_SingleMu0_BMTF
         13, -- module_index: 42, name: L1_SingleMu12_LowQ_BMTF
         18, -- module_index: 43, name: L1_SingleMu20
        422, -- module_index: 44, name: L1_Mu20_EG10er2p5
        235, -- module_index: 45, name: L1_Mu20_EG17er2p5
        424, -- module_index: 46, name: L1_Mu20_LooseIsoEG6
        423, -- module_index: 47, name: L1_Mu20_EG15er2p5
          0, -- module_index: 48, name: L1_SingleMuCosmics
          3, -- module_index: 49, name: L1_SingleMuCosmics_OMTF
        344, -- module_index: 50, name: L1_DoubleMu0_OQ
         37, -- module_index: 51, name: L1_DoubleMu18er2p1
        393, -- module_index: 52, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 53, name: L1_DoubleMu8_SQ
        333, -- module_index: 54, name: L1_DoubleMu_15_7_SQ
        163, -- module_index: 55, name: L1_TripleJet_105_85_76_VBF
         39, -- module_index: 56, name: L1_TripleMu0
         41, -- module_index: 57, name: L1_TripleMu_4_4_4
        398, -- module_index: 58, name: L1_TripleMu_5_3p5_2p5
        386, -- module_index: 59, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        385, -- module_index: 60, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        222, -- module_index: 61, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        379, -- module_index: 62, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        166, -- module_index: 63, name: L1_QuadJet50er2p7
        216, -- module_index: 64, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        294, -- module_index: 65, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        228, -- module_index: 66, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        401, -- module_index: 67, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
    others => 0
);

-- ========================================================