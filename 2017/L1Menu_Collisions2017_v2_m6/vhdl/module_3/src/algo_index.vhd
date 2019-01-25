-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v2

-- Unique ID of L1 Trigger Menu:
-- 41c33f29-85b6-415a-adbb-b289ab542faf

-- Unique ID of firmware implementation:
-- 18ff0efc-43b4-4cac-8ccb-ccf63e944307

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        180, -- module_index: 0, name: L1_ETM30
        446, -- module_index: 1, name: L1_Mu10er2p1_ETM30
        447, -- module_index: 2, name: L1_Mu14er2p1_ETM30
         25, -- module_index: 3, name: L1_SingleMu14er2p1
         50, -- module_index: 4, name: L1_SingleEG5
         70, -- module_index: 5, name: L1_SingleIsoEG20
         72, -- module_index: 6, name: L1_SingleIsoEG24
         74, -- module_index: 7, name: L1_SingleIsoEG28
         76, -- module_index: 8, name: L1_SingleIsoEG32
         92, -- module_index: 9, name: L1_SingleIsoEG34er2p1
         94, -- module_index: 10, name: L1_SingleIsoEG36er2p1
         82, -- module_index: 11, name: L1_SingleIsoEG40
        138, -- module_index: 12, name: L1_SingleJet150
        141, -- module_index: 13, name: L1_SingleJet180
        148, -- module_index: 14, name: L1_SingleJet35_HFm
        117, -- module_index: 15, name: L1_SingleTau100er2p1
        115, -- module_index: 16, name: L1_SingleTau20
        101, -- module_index: 17, name: L1_DoubleEG_18_17
        104, -- module_index: 18, name: L1_DoubleEG_22_12
        107, -- module_index: 19, name: L1_DoubleEG_24_17
        272, -- module_index: 20, name: L1_DoubleEG_LooseIso23_10
        126, -- module_index: 21, name: L1_DoubleIsoTau33er2p1
        155, -- module_index: 22, name: L1_DoubleJet100er3p0
        154, -- module_index: 23, name: L1_DoubleJet80er3p0
        146, -- module_index: 24, name: L1_SingleJet120_FWD
        114, -- module_index: 25, name: L1_TripleEG_18_17_8
         11, -- module_index: 26, name: L1_SingleMu10_LowQ
         16, -- module_index: 27, name: L1_SingleMu16
         21, -- module_index: 28, name: L1_SingleMu22_OMTF
         24, -- module_index: 29, name: L1_SingleMu30
          2, -- module_index: 30, name: L1_SingleMuCosmics_BMTF
        411, -- module_index: 31, name: L1_Mu8_HTT150er
         37, -- module_index: 32, name: L1_DoubleMu18er2p1
        379, -- module_index: 33, name: L1_DoubleMu4p5er2p0_SQ_OS
         32, -- module_index: 34, name: L1_DoubleMu_12_5
        322, -- module_index: 35, name: L1_DoubleMu_15_7_SQ
        323, -- module_index: 36, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        366, -- module_index: 37, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        363, -- module_index: 38, name: L1_DoubleMu5_SQ_OS_Mass7to18
        494, -- module_index: 39, name: L1_CDC_3_er1p2_TOP120_DPHI1p570_3p142
        500, -- module_index: 40, name: L1_CDC_3_er2p1_TOP120_DPHI1p570_3p142
        506, -- module_index: 41, name: L1_CDC_SingleMu_3_er2p1_TOP120_DPHI2p618_3p142
        161, -- module_index: 42, name: L1_QuadJet40er3p0
        277, -- module_index: 43, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        278, -- module_index: 44, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        280, -- module_index: 45, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        220, -- module_index: 46, name: L1_LooseIsoEG24er2p1_Jet26er3p0_dR_Min0p3
        429, -- module_index: 47, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================