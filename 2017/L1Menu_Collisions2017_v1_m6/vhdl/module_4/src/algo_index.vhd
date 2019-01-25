-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v1

-- Unique ID of L1 Trigger Menu:
-- 5c7b4a5a-e0b2-4b3f-9a0f-45e17843321a

-- Unique ID of firmware implementation:
-- 9ec147b7-3a0c-454f-9d20-cbf08298b3a0

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        474, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        480, -- module_index: 1, name: L1_BPTX_B2_NIM
        465, -- module_index: 2, name: L1_BPTX_NotOR_VME
        461, -- module_index: 3, name: L1_BptxOR
          1, -- module_index: 4, name: L1_SingleMuOpen
        435, -- module_index: 5, name: L1_ETT75_BptxAND
        241, -- module_index: 6, name: L1_SingleMuOpen_NotBptxOR_3BX
        437, -- module_index: 7, name: L1_MinimumBiasHF0_OR_BptxAND
        402, -- module_index: 8, name: L1_FirstBunchAfterTrain
        245, -- module_index: 9, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        242, -- module_index: 10, name: L1_SingleJet20er3p0_NotBptxOR
        453, -- module_index: 11, name: L1_ZeroBias_copy
        432, -- module_index: 12, name: L1_SingleJet12_BptxAND
        240, -- module_index: 13, name: L1_SingleMuOpen_NotBptxOR
        434, -- module_index: 14, name: L1_ETT70_BptxAND
        400, -- module_index: 15, name: L1_IsolatedBunch
        433, -- module_index: 16, name: L1_ETT55_BptxAND
        450, -- module_index: 17, name: L1_AlwaysTrue
        401, -- module_index: 18, name: L1_FirstBunchInTrain
        451, -- module_index: 19, name: L1_NotBptxOR
        244, -- module_index: 20, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        431, -- module_index: 21, name: L1_SingleEG2_BptxAND
        436, -- module_index: 22, name: L1_MinimumBiasHF0_AND_BptxAND
        243, -- module_index: 23, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        458, -- module_index: 24, name: L1_ZeroBias
         71, -- module_index: 25, name: L1_SingleIsoEG26
         73, -- module_index: 26, name: L1_SingleIsoEG30
         75, -- module_index: 27, name: L1_SingleIsoEG34
         77, -- module_index: 28, name: L1_SingleIsoEG38
        130, -- module_index: 29, name: L1_SingleJet16
        131, -- module_index: 30, name: L1_SingleJet20
        142, -- module_index: 31, name: L1_SingleJet35_HFp
        113, -- module_index: 32, name: L1_SingleTau120er2p1
         90, -- module_index: 33, name: L1_DoubleEG_15_10
         94, -- module_index: 34, name: L1_DoubleEG_22_12
         98, -- module_index: 35, name: L1_DoubleEG_25_12
        296, -- module_index: 36, name: L1_DoubleEG_Iso24_10
        119, -- module_index: 37, name: L1_DoubleIsoTau33er2p1
        123, -- module_index: 38, name: L1_DoubleIsoTau38er2p1
        151, -- module_index: 39, name: L1_DoubleJet50er3p0
        102, -- module_index: 40, name: L1_TripleEG_18_17_8
         11, -- module_index: 41, name: L1_SingleMu10_LowQ
         16, -- module_index: 42, name: L1_SingleMu16
         21, -- module_index: 43, name: L1_SingleMu22_OMTF
         24, -- module_index: 44, name: L1_SingleMu30
          3, -- module_index: 45, name: L1_SingleMuCosmics_OMTF
         33, -- module_index: 46, name: L1_DoubleMu_12_8
        376, -- module_index: 47, name: L1_DoubleMu4_OS_EG12
        380, -- module_index: 48, name: L1_DoubleMu5_OS_EG12
         39, -- module_index: 49, name: L1_TripleMu_4_4_4
        289, -- module_index: 50, name: L1_ETM100_Jet60_dPhi_Min0p4
        287, -- module_index: 51, name: L1_ETM80_Jet60_dPhi_Min0p4
        158, -- module_index: 52, name: L1_TripleJet_88_72_56_VBF
        425, -- module_index: 53, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        377, -- module_index: 54, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        373, -- module_index: 55, name: L1_DoubleMu5_SQ_OS_Mass7to18
        286, -- module_index: 56, name: L1_QuadJet36er3p0_IsoTau52er2p1
        305, -- module_index: 57, name: L1_IsoEG22er2p1_IsoTau26er2p1_dEta_Min0p2
        251, -- module_index: 58, name: L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3
    others => 0
);

-- ========================================================