-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- 409fce06-5701-4b18-9364-39736bfcaf88

-- Unique ID of firmware implementation:
-- 324ed470-bdf0-4315-a64f-da3b4bc3343c

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        489, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        467, -- module_index: 1, name: L1_BptxMinus
        465, -- module_index: 2, name: L1_BptxXOR
        466, -- module_index: 3, name: L1_BptxPlus
        506, -- module_index: 4, name: L1_TOTEM_4
        425, -- module_index: 5, name: L1_ETMHF140
        398, -- module_index: 6, name: L1_HTT120er
        405, -- module_index: 7, name: L1_HTT400er
        167, -- module_index: 8, name: L1_SingleEG34er2p5
        171, -- module_index: 9, name: L1_SingleEG42er2p5
        163, -- module_index: 10, name: L1_SingleEG8er2p5
        186, -- module_index: 11, name: L1_SingleIsoEG26er2p1
        188, -- module_index: 12, name: L1_SingleIsoEG28er2p5
        195, -- module_index: 13, name: L1_SingleIsoEG34er2p5
        321, -- module_index: 14, name: L1_SingleJet160er2p5
        309, -- module_index: 15, name: L1_SingleJet35
        311, -- module_index: 16, name: L1_SingleJet90
        270, -- module_index: 17, name: L1_SingleTau120er2p1
        206, -- module_index: 18, name: L1_DoubleEG_20_10_er2p5
        209, -- module_index: 19, name: L1_DoubleEG_25_14_er2p5
        213, -- module_index: 20, name: L1_DoubleEG_LooseIso22_10_er2p5
        276, -- module_index: 21, name: L1_DoubleIsoTau34er2p1
        343, -- module_index: 22, name: L1_DoubleJet150er2p5
        327, -- module_index: 23, name: L1_SingleJet120_FWD3p0
        326, -- module_index: 24, name: L1_SingleJet90_FWD3p0
        226, -- module_index: 25, name: L1_TripleEG_18_17_8_er2p5
          8, -- module_index: 26, name: L1_SingleMu0_EMTF
         15, -- module_index: 27, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 28, name: L1_SingleMu15_DQ
         19, -- module_index: 29, name: L1_SingleMu22
         23, -- module_index: 30, name: L1_SingleMu25
         11, -- module_index: 31, name: L1_SingleMu7_DQ
         28, -- module_index: 32, name: L1_SingleMu9er1p5
          3, -- module_index: 33, name: L1_SingleMuCosmics_EMTF
        374, -- module_index: 34, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
         41, -- module_index: 35, name: L1_DoubleMu0_SQ
        366, -- module_index: 36, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        365, -- module_index: 37, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        197, -- module_index: 38, name: L1_IsoEG32er2p5_Mt40
        199, -- module_index: 39, name: L1_IsoEG32er2p5_Mt48
        346, -- module_index: 40, name: L1_DoubleJet112er2p3_dEta_Max1p6
         54, -- module_index: 41, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         43, -- module_index: 42, name: L1_DoubleMu0_Mass_Min1
         82, -- module_index: 43, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        358, -- module_index: 44, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        351, -- module_index: 45, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        258, -- module_index: 46, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        113, -- module_index: 47, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        123, -- module_index: 48, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        143, -- module_index: 49, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================