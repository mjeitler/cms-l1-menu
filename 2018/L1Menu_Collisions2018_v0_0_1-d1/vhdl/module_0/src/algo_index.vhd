-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_1

-- Unique ID of L1 Trigger Menu:
-- f7e2044d-0bfe-4e94-a2b8-79dd9116012f

-- Unique ID of firmware implementation:
-- 0d6d822f-ff5a-48d9-97a8-269062462d60

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
        211, -- module_index: 3, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        456, -- module_index: 4, name: L1_ETT95_BptxAND
        215, -- module_index: 5, name: L1_SingleJet46er2p7_NotBptxOR_3BX
        209, -- module_index: 6, name: L1_SingleMuOpen_NotBptxOR
        466, -- module_index: 7, name: L1_NotBptxOR
        457, -- module_index: 8, name: L1_ETT100_BptxAND
        458, -- module_index: 9, name: L1_ETT110_BptxAND
        447, -- module_index: 10, name: L1_SingleJet12_BptxAND
        210, -- module_index: 11, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        212, -- module_index: 12, name: L1_SingleJet20er2p7_NotBptxOR
        449, -- module_index: 13, name: L1_ETT50_BptxAND
        460, -- module_index: 14, name: L1_MinimumBiasHF0_OR_BptxAND
        450, -- module_index: 15, name: L1_ETT60_BptxAND
        451, -- module_index: 16, name: L1_ETT70_BptxAND
        213, -- module_index: 17, name: L1_SingleJet20er2p7_NotBptxOR_3BX
        452, -- module_index: 18, name: L1_ETT75_BptxAND
        214, -- module_index: 19, name: L1_SingleJet43er2p7_NotBptxOR_3BX
        473, -- module_index: 20, name: L1_ZeroBias
        453, -- module_index: 21, name: L1_ETT80_BptxAND
        459, -- module_index: 22, name: L1_MinimumBiasHF0_AND_BptxAND
        454, -- module_index: 23, name: L1_ETT85_BptxAND
        465, -- module_index: 24, name: L1_AlwaysTrue
        455, -- module_index: 25, name: L1_ETT90_BptxAND
        448, -- module_index: 26, name: L1_ETT40_BptxAND
        417, -- module_index: 27, name: L1_FirstBunchAfterTrain
        415, -- module_index: 28, name: L1_IsolatedBunch
        416, -- module_index: 29, name: L1_FirstBunchInTrain
          1, -- module_index: 30, name: L1_SingleMuOpen
        468, -- module_index: 31, name: L1_ZeroBias_copy
         90, -- module_index: 32, name: L1_SingleIsoEG32er2p1
         95, -- module_index: 33, name: L1_SingleIsoEG34er2p5
        509, -- module_index: 34, name: L1_SingleJet12erHE
        131, -- module_index: 35, name: L1_SingleJet16
        141, -- module_index: 36, name: L1_SingleJet180
        133, -- module_index: 37, name: L1_SingleJet35
        150, -- module_index: 38, name: L1_SingleJet60_HFm
        118, -- module_index: 39, name: L1_SingleTau120er2p1
        103, -- module_index: 40, name: L1_DoubleEG_22_10
        279, -- module_index: 41, name: L1_DoubleEG_LooseIso23_10
        129, -- module_index: 42, name: L1_DoubleIsoTau36er2p1
        158, -- module_index: 43, name: L1_DoubleJet150er2p7
        111, -- module_index: 44, name: L1_DoubleLooseIsoEG22er2p1
        143, -- module_index: 45, name: L1_SingleJet35_FWD
        281, -- module_index: 46, name: L1_TripleEG_LooseIso20_10_5
         11, -- module_index: 47, name: L1_SingleMu10_LowQ
         17, -- module_index: 48, name: L1_SingleMu18
         21, -- module_index: 49, name: L1_SingleMu22_OMTF
          2, -- module_index: 50, name: L1_SingleMuCosmics_BMTF
        307, -- module_index: 51, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 52, name: L1_Mu22er2p1_IsoTau34er2p1
        301, -- module_index: 53, name: L1_Mu22er2p1_Tau70er2p1
        311, -- module_index: 54, name: L1_Mu22er2p1_IsoTau36er2p1
         37, -- module_index: 55, name: L1_DoubleMu18er2p1
        393, -- module_index: 56, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 57, name: L1_DoubleMu8_SQ
        380, -- module_index: 58, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 59, name: L1_DoubleMu5_OS_EG12
         39, -- module_index: 60, name: L1_TripleMu0
         41, -- module_index: 61, name: L1_TripleMu_4_4_4
        398, -- module_index: 62, name: L1_TripleMu_5_3p5_2p5
        385, -- module_index: 63, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        386, -- module_index: 64, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        222, -- module_index: 65, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        379, -- module_index: 66, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        270, -- module_index: 67, name: L1_QuadJet36er2p7_IsoTau52er2p1
        218, -- module_index: 68, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
        295, -- module_index: 69, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        443, -- module_index: 70, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 71, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================