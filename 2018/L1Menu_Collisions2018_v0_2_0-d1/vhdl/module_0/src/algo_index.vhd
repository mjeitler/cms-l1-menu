-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_2_0

-- Unique ID of L1 Trigger Menu:
-- 2eb60aa6-04d5-4c65-83d7-c3d1765d0009

-- Unique ID of firmware implementation:
-- f13b8808-493b-4e3f-bce1-f3afb77b8cfc

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
        415, -- module_index: 3, name: L1_IsolatedBunch
        468, -- module_index: 4, name: L1_ZeroBias_copy
        459, -- module_index: 5, name: L1_MinimumBiasHF0_AND_BptxAND
        215, -- module_index: 6, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        211, -- module_index: 7, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        466, -- module_index: 8, name: L1_NotBptxOR
        209, -- module_index: 9, name: L1_SingleMuOpen_NotBptxOR
        417, -- module_index: 10, name: L1_FirstBunchAfterTrain
        210, -- module_index: 11, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
          1, -- module_index: 12, name: L1_SingleMuOpen
        416, -- module_index: 13, name: L1_FirstBunchInTrain
        214, -- module_index: 14, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        213, -- module_index: 15, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        473, -- module_index: 16, name: L1_ZeroBias
        212, -- module_index: 17, name: L1_SingleJet20er2p5_NotBptxOR
        465, -- module_index: 18, name: L1_AlwaysTrue
        127, -- module_index: 19, name: L1_DoubleIsoTau34er2p1
        158, -- module_index: 20, name: L1_DoubleJet150er2p7
        146, -- module_index: 21, name: L1_SingleJet120_FWD
        114, -- module_index: 22, name: L1_TripleEG_18_17_8_er2p5
          6, -- module_index: 23, name: L1_SingleMu0_OMTF
         17, -- module_index: 24, name: L1_SingleMu18
         21, -- module_index: 25, name: L1_SingleMu22_OMTF
          0, -- module_index: 26, name: L1_SingleMuCosmics
          3, -- module_index: 27, name: L1_SingleMuCosmics_OMTF
        390, -- module_index: 28, name: L1_DoubleMu0_SQ
         38, -- module_index: 29, name: L1_DoubleMu22er2p1
         32, -- module_index: 30, name: L1_DoubleMu_12_5
        372, -- module_index: 31, name: L1_DoubleMu4_SQ_EG9er2p5
        365, -- module_index: 32, name: L1_DoubleMu5_SQ_EG9er2p5
        406, -- module_index: 33, name: L1_DoubleMu5_EG9er2p5
        335, -- module_index: 34, name: L1_TripleMu3_SQ
        398, -- module_index: 35, name: L1_TripleMu_5_3p5_2p5
        385, -- module_index: 36, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        386, -- module_index: 37, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        377, -- module_index: 38, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        343, -- module_index: 39, name: L1_DoubleMu0_Mass_Min1
        341, -- module_index: 40, name: L1_TripleMu0_Mass_Min1
        283, -- module_index: 41, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 42, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        219, -- module_index: 43, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        226, -- module_index: 44, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        404, -- module_index: 45, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        403, -- module_index: 46, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_8to14
    others => 0
);

-- ========================================================