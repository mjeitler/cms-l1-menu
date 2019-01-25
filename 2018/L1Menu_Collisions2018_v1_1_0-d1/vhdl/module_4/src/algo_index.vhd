-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- 51f73297-2540-4cfa-8acd-992b0bd85f0f

-- Unique ID of firmware implementation:
-- 41e72266-8790-4da2-bf65-0255762b01df

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        492, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        485, -- module_index: 1, name: L1_BPTX_RefAND_VME
        501, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        505, -- module_index: 3, name: L1_TOTEM_3
        417, -- module_index: 4, name: L1_ETM150
        412, -- module_index: 5, name: L1_ETT2000
        404, -- module_index: 6, name: L1_HTT360er
        162, -- module_index: 7, name: L1_SingleEG26er2p5
        167, -- module_index: 8, name: L1_SingleEG34er2p5
        171, -- module_index: 9, name: L1_SingleEG42er2p5
        159, -- module_index: 10, name: L1_SingleEG8er2p5
        186, -- module_index: 11, name: L1_SingleIsoEG26er2p1
        193, -- module_index: 12, name: L1_SingleIsoEG30er2p1
        330, -- module_index: 13, name: L1_SingleJet10erHE
        313, -- module_index: 14, name: L1_SingleJet180
        316, -- module_index: 15, name: L1_SingleJet35er2p5
        318, -- module_index: 16, name: L1_SingleJet90er2p5
        179, -- module_index: 17, name: L1_SingleLooseIsoEG28er2p1
        240, -- module_index: 18, name: L1_LooseIsoEG28er2p1_HTT100er
        241, -- module_index: 19, name: L1_LooseIsoEG30er2p1_HTT100er
        239, -- module_index: 20, name: L1_LooseIsoEG26er2p1_HTT100er
        238, -- module_index: 21, name: L1_LooseIsoEG24er2p1_HTT100er
        210, -- module_index: 22, name: L1_DoubleEG_27_14_er2p5
        215, -- module_index: 23, name: L1_DoubleEG_LooseIso25_12_er2p5
        341, -- module_index: 24, name: L1_DoubleJet100er2p5
        218, -- module_index: 25, name: L1_DoubleLooseIsoEG24er2p1
        327, -- module_index: 26, name: L1_SingleJet120_FWD3p0
        177, -- module_index: 27, name: L1_SingleLooseIsoEG28_FWD2p5
        226, -- module_index: 28, name: L1_TripleEG_18_17_8_er2p5
          8, -- module_index: 29, name: L1_SingleMu0_EMTF
         15, -- module_index: 30, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 31, name: L1_SingleMu15_DQ
         19, -- module_index: 32, name: L1_SingleMu22
         23, -- module_index: 33, name: L1_SingleMu25
         11, -- module_index: 34, name: L1_SingleMu7_DQ
         28, -- module_index: 35, name: L1_SingleMu9er1p5
          3, -- module_index: 36, name: L1_SingleMuCosmics_EMTF
        373, -- module_index: 37, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
         40, -- module_index: 38, name: L1_DoubleMu0
         42, -- module_index: 39, name: L1_DoubleMu0_SQ_OS
         56, -- module_index: 40, name: L1_DoubleMu0er1p5_SQ_OS
         60, -- module_index: 41, name: L1_DoubleMu4_SQ_OS
         64, -- module_index: 42, name: L1_DoubleMu4p5er2p0_SQ_OS
         45, -- module_index: 43, name: L1_DoubleMu9_SQ
         47, -- module_index: 44, name: L1_DoubleMu_15_5_SQ
         49, -- module_index: 45, name: L1_DoubleMu_15_7_SQ
         72, -- module_index: 46, name: L1_TripleMu0
         73, -- module_index: 47, name: L1_TripleMu0_SQ
         75, -- module_index: 48, name: L1_TripleMu3_SQ
         78, -- module_index: 49, name: L1_TripleMu_5_3_3
         79, -- module_index: 50, name: L1_TripleMu_5_3_3_SQ
         77, -- module_index: 51, name: L1_TripleMu_5_3p5_2p5
         84, -- module_index: 52, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         83, -- module_index: 53, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         58, -- module_index: 54, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         61, -- module_index: 55, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
         65, -- module_index: 56, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
        298, -- module_index: 57, name: L1_QuadJet36er2p5_IsoTau52er2p1
        358, -- module_index: 58, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        351, -- module_index: 59, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        258, -- module_index: 60, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        113, -- module_index: 61, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        123, -- module_index: 62, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        143, -- module_index: 63, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================