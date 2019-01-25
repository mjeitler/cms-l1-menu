-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

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
        220, -- module_index: 6, name: L1_CDC_3_TOP120_DPHI2p094_4p189
        234, -- module_index: 7, name: L1_CDC_3_er1p6_TOP120_DPHI1p570_4p711
        224, -- module_index: 8, name: L1_CDC_SingleMu_3_TOP120_DPHI2p618_3p665
        230, -- module_index: 9, name: L1_CDCp1_3_er1p6_TOP120_DPHI2p618_3p665
        378, -- module_index: 10, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         33, -- module_index: 11, name: L1_QuadMu0
         92, -- module_index: 12, name: L1_TripleEG_18_17_8
         82, -- module_index: 13, name: L1_DoubleEG_20_18
         87, -- module_index: 14, name: L1_DoubleEG_24_17
        296, -- module_index: 15, name: L1_DoubleEG_Iso24_10
        110, -- module_index: 16, name: L1_DoubleIsoTau34er2p1
        145, -- module_index: 17, name: L1_DoubleJet112er3p0
        104, -- module_index: 18, name: L1_DoubleTau50er2p1
        334, -- module_index: 19, name: L1_TripleMu3_SQ
         22, -- module_index: 20, name: L1_DoubleMu_12_5
        411, -- module_index: 21, name: L1_Mu8_HTT150er
        431, -- module_index: 22, name: L1_SingleEG2_BptxAND
        401, -- module_index: 23, name: L1_FirstBunchInTrain
        242, -- module_index: 24, name: L1_SingleJet20er3p0_NotBptxOR
        432, -- module_index: 25, name: L1_SingleJet12_BptxAND
        434, -- module_index: 26, name: L1_ETT70_BptxAND
        451, -- module_index: 27, name: L1_NotBptxOR
        435, -- module_index: 28, name: L1_ETT75_BptxAND
        400, -- module_index: 29, name: L1_IsolatedBunch
        453, -- module_index: 30, name: L1_ZeroBias_copy
          1, -- module_index: 31, name: L1_SingleMuOpen
        436, -- module_index: 32, name: L1_MinimumBiasHF0_AND_BptxAND
        244, -- module_index: 33, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        245, -- module_index: 34, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        437, -- module_index: 35, name: L1_MinimumBiasHF0_OR_BptxAND
        240, -- module_index: 36, name: L1_SingleMuOpen_NotBptxOR
        241, -- module_index: 37, name: L1_SingleMuOpen_NotBptxOR_3BX
        458, -- module_index: 38, name: L1_ZeroBias
        450, -- module_index: 39, name: L1_AlwaysTrue
        243, -- module_index: 40, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        461, -- module_index: 41, name: L1_BptxOR
        402, -- module_index: 42, name: L1_FirstBunchAfterTrain
        433, -- module_index: 43, name: L1_ETT55_BptxAND
        129, -- module_index: 44, name: L1_SingleJet170
        103, -- module_index: 45, name: L1_SingleTau120er2p1
         10, -- module_index: 46, name: L1_SingleMu22
        237, -- module_index: 47, name: L1_SingleMuCosmics_Bottom
        161, -- module_index: 48, name: L1_HTT160er
        173, -- module_index: 49, name: L1_HTT450er
    others => 0
);

-- ========================================================