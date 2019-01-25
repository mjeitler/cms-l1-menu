-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_1_0

-- Unique ID of L1 Trigger Menu:
-- e36612e2-bee8-45eb-a685-f6cea687ce3d

-- Unique ID of firmware implementation:
-- 47efa6e9-433f-450a-a516-111b1abe0345

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        134, -- module_index: 0, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        136, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        112, -- module_index: 2, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        257, -- module_index: 3, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 4, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        351, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        358, -- module_index: 6, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        376, -- module_index: 7, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        372, -- module_index: 8, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
         82, -- module_index: 9, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         59, -- module_index: 10, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 11, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        197, -- module_index: 12, name: L1_IsoEG32er2p5_Mt40
         88, -- module_index: 13, name: L1_QuadMu0_OQ
         74, -- module_index: 14, name: L1_TripleMu3
         80, -- module_index: 15, name: L1_TripleMu_5_5_3
         42, -- module_index: 16, name: L1_DoubleMu0_SQ_OS
         62, -- module_index: 17, name: L1_DoubleMu4p5_SQ_OS
         47, -- module_index: 18, name: L1_DoubleMu_15_5_SQ
        279, -- module_index: 19, name: L1_Mu18er2p1_Tau24er2p1
        280, -- module_index: 20, name: L1_Mu18er2p1_Tau26er2p1
          6, -- module_index: 21, name: L1_SingleMu0_BMTF
         29, -- module_index: 22, name: L1_SingleMu10er1p5
         30, -- module_index: 23, name: L1_SingleMu12er1p5
         17, -- module_index: 24, name: L1_SingleMu18
         21, -- module_index: 25, name: L1_SingleMu22_OMTF
         27, -- module_index: 26, name: L1_SingleMu8er1p5
          2, -- module_index: 27, name: L1_SingleMuCosmics_OMTF
        205, -- module_index: 28, name: L1_DoubleEG_15_10_er2p5
        207, -- module_index: 29, name: L1_DoubleEG_22_10_er2p5
        213, -- module_index: 30, name: L1_DoubleEG_LooseIso22_10_er2p5
        271, -- module_index: 31, name: L1_DoubleIsoTau32er2p1
        343, -- module_index: 32, name: L1_DoubleJet150er2p5
        188, -- module_index: 33, name: L1_SingleIsoEG28_FWD2p5
        177, -- module_index: 34, name: L1_SingleLooseIsoEG28_FWD2p5
        168, -- module_index: 35, name: L1_SingleEG36er2p5
        172, -- module_index: 36, name: L1_SingleEG45er2p5
        184, -- module_index: 37, name: L1_SingleIsoEG24er1p5
        191, -- module_index: 38, name: L1_SingleIsoEG28er1p5
        195, -- module_index: 39, name: L1_SingleIsoEG32er2p1
        331, -- module_index: 40, name: L1_SingleJet12erHE
        309, -- module_index: 41, name: L1_SingleJet35
        318, -- module_index: 42, name: L1_SingleJet90er2p5
        182, -- module_index: 43, name: L1_SingleLooseIsoEG30er1p5
        417, -- module_index: 44, name: L1_ETM150
        426, -- module_index: 45, name: L1_ETMHF150
        398, -- module_index: 46, name: L1_HTT120er
        404, -- module_index: 47, name: L1_HTT360er
        487, -- module_index: 48, name: L1_BPTX_AND_Ref3_VME
        489, -- module_index: 49, name: L1_BPTX_BeamGas_Ref1_VME
        480, -- module_index: 50, name: L1_FirstCollisionInOrbit
        500, -- module_index: 51, name: L1_HCAL_LaserMon_Trig
        504, -- module_index: 52, name: L1_TOTEM_2
    others => 0
);

-- ========================================================