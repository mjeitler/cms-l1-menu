-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- 67b390d3-5f18-4e77-8cb1-c26fa03f3548

-- Unique ID of firmware implementation:
-- f2bffdc0-1905-482a-be74-017d0f2ec75b

-- Scale set:
-- scales_2020_10_04

-- VHDL producer version
-- v2.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        417, -- module_index: 0, name: L1_ETM150
        412, -- module_index: 1, name: L1_ETT2000
        404, -- module_index: 2, name: L1_HTT360er
        162, -- module_index: 3, name: L1_SingleEG26er2p5
        167, -- module_index: 4, name: L1_SingleEG34er2p5
        171, -- module_index: 5, name: L1_SingleEG42er2p5
        159, -- module_index: 6, name: L1_SingleEG8er2p5
        186, -- module_index: 7, name: L1_SingleIsoEG26er2p1
        193, -- module_index: 8, name: L1_SingleIsoEG30er2p1
        330, -- module_index: 9, name: L1_SingleJet10erHE
        313, -- module_index: 10, name: L1_SingleJet180
        316, -- module_index: 11, name: L1_SingleJet35er2p5
        318, -- module_index: 12, name: L1_SingleJet90er2p5
        179, -- module_index: 13, name: L1_SingleLooseIsoEG28er2p1
        238, -- module_index: 14, name: L1_LooseIsoEG24er2p1_HTT100er
        241, -- module_index: 15, name: L1_LooseIsoEG30er2p1_HTT100er
        240, -- module_index: 16, name: L1_LooseIsoEG28er2p1_HTT100er
        239, -- module_index: 17, name: L1_LooseIsoEG26er2p1_HTT100er
        210, -- module_index: 18, name: L1_DoubleEG_27_14_er2p5
        215, -- module_index: 19, name: L1_DoubleEG_LooseIso25_12_er2p5
        272, -- module_index: 20, name: L1_DoubleIsoTau34er2p1
        343, -- module_index: 21, name: L1_DoubleJet150er2p5
        163, -- module_index: 22, name: L1_SingleEG28_FWD2p5
        325, -- module_index: 23, name: L1_SingleJet60_FWD3p0
        224, -- module_index: 24, name: L1_TripleEG_16_12_8_er2p5
        300, -- module_index: 25, name: L1_Mu0upt0
        301, -- module_index: 26, name: L1_Mu0upt5
          8, -- module_index: 27, name: L1_SingleMu0_EMTF
         15, -- module_index: 28, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 29, name: L1_SingleMu15_DQ
         19, -- module_index: 30, name: L1_SingleMu22
         23, -- module_index: 31, name: L1_SingleMu25
         11, -- module_index: 32, name: L1_SingleMu7_DQ
         28, -- module_index: 33, name: L1_SingleMu9er1p5
          3, -- module_index: 34, name: L1_SingleMuCosmics_EMTF
        306, -- module_index: 35, name: L1_SingleMuOpenupt5
        372, -- module_index: 36, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        376, -- module_index: 37, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
         80, -- module_index: 38, name: L1_TripleMu_5_5_3
         89, -- module_index: 39, name: L1_QuadMu0
         88, -- module_index: 40, name: L1_QuadMu0_OQ
         90, -- module_index: 41, name: L1_QuadMu0_SQ
        198, -- module_index: 42, name: L1_IsoEG32er2p5_Mt44
        345, -- module_index: 43, name: L1_DoubleJet100er2p3_dEta_Max1p6
         57, -- module_index: 44, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         63, -- module_index: 45, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         50, -- module_index: 46, name: L1_DoubleMu_15_7_Mass_Min1
        275, -- module_index: 47, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        357, -- module_index: 48, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        350, -- module_index: 49, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        259, -- module_index: 50, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        112, -- module_index: 51, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        122, -- module_index: 52, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        142, -- module_index: 53, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================