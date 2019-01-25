-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        361, -- module_index: 1, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        312, -- module_index: 2, name: L1_SingleJet120
        298, -- module_index: 3, name: L1_QuadJet36er2p5_IsoTau52er2p1
        494, -- module_index: 4, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
         59, -- module_index: 5, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         61, -- module_index: 6, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        198, -- module_index: 7, name: L1_IsoEG32er2p5_Mt44
         89, -- module_index: 8, name: L1_QuadMu0
         88, -- module_index: 9, name: L1_QuadMu0_OQ
         72, -- module_index: 10, name: L1_TripleMu0
         73, -- module_index: 11, name: L1_TripleMu0_SQ
         75, -- module_index: 12, name: L1_TripleMu3_SQ
         79, -- module_index: 13, name: L1_TripleMu_5_3_3_SQ
        109, -- module_index: 14, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 15, name: L1_DoubleMu5_SQ_EG9er2p5
         45, -- module_index: 16, name: L1_DoubleMu9_SQ
        104, -- module_index: 17, name: L1_Mu6_DoubleEG10er2p5
        105, -- module_index: 18, name: L1_Mu6_DoubleEG12er2p5
        132, -- module_index: 19, name: L1_Mu6_HTT250er
        131, -- module_index: 20, name: L1_Mu6_HTT240er
        107, -- module_index: 21, name: L1_Mu6_DoubleEG17er2p5
        106, -- module_index: 22, name: L1_Mu6_DoubleEG15er2p5
          6, -- module_index: 23, name: L1_SingleMu0_BMTF
         29, -- module_index: 24, name: L1_SingleMu10er1p5
         30, -- module_index: 25, name: L1_SingleMu12er1p5
         33, -- module_index: 26, name: L1_SingleMu18er1p5
         23, -- module_index: 27, name: L1_SingleMu25
         28, -- module_index: 28, name: L1_SingleMu9er1p5
        228, -- module_index: 29, name: L1_TripleEG16er2p5
        227, -- module_index: 30, name: L1_TripleEG_18_18_12_er2p5
        212, -- module_index: 31, name: L1_DoubleEG_LooseIso20_10_er2p5
        276, -- module_index: 32, name: L1_DoubleIsoTau34er2p1
        340, -- module_index: 33, name: L1_DoubleJet40er2p5
        188, -- module_index: 34, name: L1_SingleIsoEG28_FWD2p5
        177, -- module_index: 35, name: L1_SingleLooseIsoEG28_FWD2p5
        166, -- module_index: 36, name: L1_SingleEG28er1p5
        168, -- module_index: 37, name: L1_SingleEG36er2p5
        172, -- module_index: 38, name: L1_SingleEG45er2p5
        184, -- module_index: 39, name: L1_SingleIsoEG24er1p5
        191, -- module_index: 40, name: L1_SingleIsoEG28er1p5
        195, -- module_index: 41, name: L1_SingleIsoEG32er2p1
        331, -- module_index: 42, name: L1_SingleJet12erHE
        309, -- module_index: 43, name: L1_SingleJet35
        318, -- module_index: 44, name: L1_SingleJet90er2p5
        182, -- module_index: 45, name: L1_SingleLooseIsoEG30er1p5
        425, -- module_index: 46, name: L1_ETMHF140
        410, -- module_index: 47, name: L1_ETT1200
        398, -- module_index: 48, name: L1_HTT120er
        401, -- module_index: 49, name: L1_HTT255er
        491, -- module_index: 50, name: L1_BPTX_BeamGas_B1_VME
        483, -- module_index: 51, name: L1_BPTX_OR_Ref3_VME
        500, -- module_index: 52, name: L1_HCAL_LaserMon_Trig
        505, -- module_index: 53, name: L1_TOTEM_3
    others => 0
);

-- ========================================================