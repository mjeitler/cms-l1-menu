-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- 162b5874-65c5-446b-9c69-261e1dde5400

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        143, -- module_index: 0, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        126, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        122, -- module_index: 2, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        258, -- module_index: 3, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        348, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        352, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        359, -- module_index: 6, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
         85, -- module_index: 7, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         86, -- module_index: 8, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0OQ
         66, -- module_index: 10, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         57, -- module_index: 11, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        345, -- module_index: 12, name: L1_DoubleJet100er2p3_dEta_Max1p6
         40, -- module_index: 13, name: L1_DoubleMu0
         56, -- module_index: 14, name: L1_DoubleMu0er1p5_SQ_OS
         64, -- module_index: 15, name: L1_DoubleMu4p5er2p0_SQ_OS
         48, -- module_index: 16, name: L1_DoubleMu_15_7
         99, -- module_index: 17, name: L1_Mu20_EG10er2p5
         18, -- module_index: 18, name: L1_SingleMu20
        160, -- module_index: 19, name: L1_SingleEG10er2p5
        446, -- module_index: 20, name: L1_SingleMuOpen_NotBptxOR
          4, -- module_index: 21, name: L1_SingleMuOpen
        464, -- module_index: 22, name: L1_BptxOR
        463, -- module_index: 23, name: L1_NotBptxOR
          7, -- module_index: 24, name: L1_SingleMu0_OMTF
         14, -- module_index: 25, name: L1_SingleMu12_DQ_OMTF
         32, -- module_index: 26, name: L1_SingleMu16er1p5
         22, -- module_index: 27, name: L1_SingleMu22_EMTF
         26, -- module_index: 28, name: L1_SingleMu7er1p5
          3, -- module_index: 29, name: L1_SingleMuCosmics_EMTF
        226, -- module_index: 30, name: L1_TripleEG_18_17_8_er2p5
        210, -- module_index: 31, name: L1_DoubleEG_27_14_er2p5
        275, -- module_index: 32, name: L1_DoubleIsoTau32er2p1
        343, -- module_index: 33, name: L1_DoubleJet150er2p5
        163, -- module_index: 34, name: L1_SingleEG28_FWD2p5
        326, -- module_index: 35, name: L1_SingleJet90_FWD3p0
        162, -- module_index: 36, name: L1_SingleEG26er2p5
        167, -- module_index: 37, name: L1_SingleEG34er2p5
        171, -- module_index: 38, name: L1_SingleEG42er2p5
        159, -- module_index: 39, name: L1_SingleEG8er2p5
        185, -- module_index: 40, name: L1_SingleIsoEG26er2p5
        192, -- module_index: 41, name: L1_SingleIsoEG30er2p5
        319, -- module_index: 42, name: L1_SingleJet120er2p5
        314, -- module_index: 43, name: L1_SingleJet200
        311, -- module_index: 44, name: L1_SingleJet90
        178, -- module_index: 45, name: L1_SingleLooseIsoEG28er2p5
        465, -- module_index: 46, name: L1_BptxXOR
        467, -- module_index: 47, name: L1_BptxMinus
        466, -- module_index: 48, name: L1_BptxPlus
        461, -- module_index: 49, name: L1_MinimumBiasHF0_AND_BptxAND
        458, -- module_index: 50, name: L1_AlwaysTrue
        460, -- module_index: 51, name: L1_ZeroBias_copy
        459, -- module_index: 52, name: L1_ZeroBias
        416, -- module_index: 53, name: L1_ETM120
        417, -- module_index: 54, name: L1_ETM150
        423, -- module_index: 55, name: L1_ETMHF120
        426, -- module_index: 56, name: L1_ETMHF150
        412, -- module_index: 57, name: L1_ETT2000
        400, -- module_index: 58, name: L1_HTT200er
        406, -- module_index: 59, name: L1_HTT450er
        490, -- module_index: 60, name: L1_BPTX_BeamGas_Ref2_VME
        480, -- module_index: 61, name: L1_FirstCollisionInOrbit
        503, -- module_index: 62, name: L1_TOTEM_1
        468, -- module_index: 63, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================