-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        351, -- module_index: 0, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        353, -- module_index: 1, name: L1_DoubleMu5_SQ_OS_Mass7to18
        282, -- module_index: 2, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        152, -- module_index: 3, name: L1_QuadJet60er3p0
        296, -- module_index: 4, name: L1_IsoEG20er2p1_IsoTau25er2p1_dEta_Min0p2
        262, -- module_index: 5, name: L1_IsoEG30er2p1_Jet34er3p0_dR_Min0p3
        292, -- module_index: 6, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        291, -- module_index: 7, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        358, -- module_index: 8, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        149, -- module_index: 9, name: L1_TripleJet_92_76_64_VBF
        284, -- module_index: 10, name: L1_Mu22er2p1_IsoTau40er2p1
        283, -- module_index: 11, name: L1_IsoTau40er_ETM100cer
        190, -- module_index: 12, name: L1_ETM100cer
         92, -- module_index: 13, name: L1_TripleEG_18_17_8
         80, -- module_index: 14, name: L1_DoubleEG_15_10
         83, -- module_index: 15, name: L1_DoubleEG_22_10
         86, -- module_index: 16, name: L1_DoubleEG_23_10
         89, -- module_index: 17, name: L1_DoubleEG_25_13
        289, -- module_index: 18, name: L1_DoubleEG_Iso24_10
        107, -- module_index: 19, name: L1_DoubleIsoTau32er2p1
        110, -- module_index: 20, name: L1_DoubleIsoTau35er2p1
        145, -- module_index: 21, name: L1_DoubleJet112er3p0
        143, -- module_index: 22, name: L1_DoubleJet80er3p0
         27, -- module_index: 23, name: L1_TripleMu0
         31, -- module_index: 24, name: L1_TripleMu_5_3_3
         22, -- module_index: 25, name: L1_DoubleMu_12_5
         26, -- module_index: 26, name: L1_DoubleMu_15_7
         44, -- module_index: 27, name: L1_SingleEG24
        210, -- module_index: 28, name: L1_SingleEG2_BptxAND
        252, -- module_index: 29, name: L1_SingleJet20er3p0_NotBptxOR
        457, -- module_index: 30, name: L1_ZeroBias_copy
        400, -- module_index: 31, name: L1_IsolatedBunch
        211, -- module_index: 32, name: L1_SingleJet12_BptxAND
        456, -- module_index: 33, name: L1_ZeroBias
        453, -- module_index: 34, name: L1_BptxOR
        251, -- module_index: 35, name: L1_SingleMuOpen_NotBptxOR_3BX
        254, -- module_index: 36, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        450, -- module_index: 37, name: L1_AlwaysTrue
          1, -- module_index: 38, name: L1_SingleMuOpen
        214, -- module_index: 39, name: L1_ETT75_BptxAND
        402, -- module_index: 40, name: L1_FirstBunchAfterTrain
        250, -- module_index: 41, name: L1_SingleMuOpen_NotBptxOR
        436, -- module_index: 42, name: L1_MinimumBiasHF0_AND_BptxAND
        253, -- module_index: 43, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        454, -- module_index: 44, name: L1_NotBptxOR
        401, -- module_index: 45, name: L1_FirstBunchInTrain
        213, -- module_index: 46, name: L1_ETT70_BptxAND
        255, -- module_index: 47, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        212, -- module_index: 48, name: L1_ETT55_BptxAND
        437, -- module_index: 49, name: L1_MinimumBiasHF0_OR_BptxAND
         62, -- module_index: 50, name: L1_SingleIsoEG28
         64, -- module_index: 51, name: L1_SingleIsoEG32
         66, -- module_index: 52, name: L1_SingleIsoEG36
        126, -- module_index: 53, name: L1_SingleJet140
        129, -- module_index: 54, name: L1_SingleJet170
        122, -- module_index: 55, name: L1_SingleJet35
          5, -- module_index: 56, name: L1_SingleMu10_LowQ
         10, -- module_index: 57, name: L1_SingleMu22
         12, -- module_index: 58, name: L1_SingleMu30
        195, -- module_index: 59, name: L1_ETM150cer
        188, -- module_index: 60, name: L1_ETM90cer
        161, -- module_index: 61, name: L1_HTT160er
        172, -- module_index: 62, name: L1_HTT400er
    others => 0
);

-- ========================================================