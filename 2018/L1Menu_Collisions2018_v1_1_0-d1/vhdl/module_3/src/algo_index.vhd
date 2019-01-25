-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        491, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        484, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        500, -- module_index: 2, name: L1_HCAL_LaserMon_Trig
        504, -- module_index: 3, name: L1_TOTEM_2
        416, -- module_index: 4, name: L1_ETM120
        411, -- module_index: 5, name: L1_ETT1600
        401, -- module_index: 6, name: L1_HTT255er
        161, -- module_index: 7, name: L1_SingleEG15er2p5
        164, -- module_index: 8, name: L1_SingleEG28er2p5
        170, -- module_index: 9, name: L1_SingleEG40er2p5
        174, -- module_index: 10, name: L1_SingleEG60
        187, -- module_index: 11, name: L1_SingleIsoEG26er1p5
        189, -- module_index: 12, name: L1_SingleIsoEG28er2p5
        196, -- module_index: 13, name: L1_SingleIsoEG34er2p5
        321, -- module_index: 14, name: L1_SingleJet160er2p5
        309, -- module_index: 15, name: L1_SingleJet35
        311, -- module_index: 16, name: L1_SingleJet90
        180, -- module_index: 17, name: L1_SingleLooseIsoEG28er1p5
        181, -- module_index: 18, name: L1_SingleLooseIsoEG30er2p5
        205, -- module_index: 19, name: L1_DoubleEG_15_10_er2p5
        208, -- module_index: 20, name: L1_DoubleEG_25_12_er2p5
        213, -- module_index: 21, name: L1_DoubleEG_LooseIso22_10_er2p5
        276, -- module_index: 22, name: L1_DoubleIsoTau34er2p1
        343, -- module_index: 23, name: L1_DoubleJet150er2p5
        163, -- module_index: 24, name: L1_SingleEG28_FWD2p5
        325, -- module_index: 25, name: L1_SingleJet60_FWD3p0
        224, -- module_index: 26, name: L1_TripleEG_16_12_8_er2p5
          6, -- module_index: 27, name: L1_SingleMu0_BMTF
         29, -- module_index: 28, name: L1_SingleMu10er1p5
         30, -- module_index: 29, name: L1_SingleMu12er1p5
         17, -- module_index: 30, name: L1_SingleMu18
         22, -- module_index: 31, name: L1_SingleMu22_EMTF
         10, -- module_index: 32, name: L1_SingleMu5
         97, -- module_index: 33, name: L1_Mu7_EG20er2p5
         12, -- module_index: 34, name: L1_SingleMu7
         96, -- module_index: 35, name: L1_Mu5_EG23er2p5
        101, -- module_index: 36, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 37, name: L1_Mu5_LooseIsoEG20er2p5
         98, -- module_index: 38, name: L1_Mu7_EG23er2p5
        102, -- module_index: 39, name: L1_Mu7_LooseIsoEG23er2p5
        374, -- module_index: 40, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
         41, -- module_index: 41, name: L1_DoubleMu0_SQ
        366, -- module_index: 42, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        365, -- module_index: 43, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        197, -- module_index: 44, name: L1_IsoEG32er2p5_Mt40
        199, -- module_index: 45, name: L1_IsoEG32er2p5_Mt48
        346, -- module_index: 46, name: L1_DoubleJet112er2p3_dEta_Max1p6
         54, -- module_index: 47, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         43, -- module_index: 48, name: L1_DoubleMu0_Mass_Min1
        494, -- module_index: 49, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        278, -- module_index: 50, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        348, -- module_index: 51, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        353, -- module_index: 52, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        235, -- module_index: 53, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        125, -- module_index: 54, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        134, -- module_index: 55, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        364, -- module_index: 56, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
    others => 0
);

-- ========================================================