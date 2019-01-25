-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        182, -- module_index: 0, name: L1_ETM50
        165, -- module_index: 1, name: L1_HTT120er
        175, -- module_index: 2, name: L1_HTT340er
        178, -- module_index: 3, name: L1_HTT450er
         53, -- module_index: 4, name: L1_SingleEG18
         55, -- module_index: 5, name: L1_SingleEG26
         57, -- module_index: 6, name: L1_SingleEG30
         59, -- module_index: 7, name: L1_SingleEG34
         60, -- module_index: 8, name: L1_SingleEG36
         61, -- module_index: 9, name: L1_SingleEG38
         63, -- module_index: 10, name: L1_SingleEG42
         69, -- module_index: 11, name: L1_SingleIsoEG18
         71, -- module_index: 12, name: L1_SingleIsoEG22
         73, -- module_index: 13, name: L1_SingleIsoEG26
         75, -- module_index: 14, name: L1_SingleIsoEG30
         91, -- module_index: 15, name: L1_SingleIsoEG33er2p1
         93, -- module_index: 16, name: L1_SingleIsoEG35er2p1
         81, -- module_index: 17, name: L1_SingleIsoEG38
        136, -- module_index: 18, name: L1_SingleJet120
        139, -- module_index: 19, name: L1_SingleJet160
        142, -- module_index: 20, name: L1_SingleJet200
        150, -- module_index: 21, name: L1_SingleJet60_HFm
        119, -- module_index: 22, name: L1_SingleTau130er2p1
        412, -- module_index: 23, name: L1_EG25er2p1_HTT125er
        102, -- module_index: 24, name: L1_DoubleEG_20_18
        105, -- module_index: 25, name: L1_DoubleEG_22_15
        108, -- module_index: 26, name: L1_DoubleEG_25_12
        273, -- module_index: 27, name: L1_DoubleEG_LooseIso24_10
        127, -- module_index: 28, name: L1_DoubleIsoTau34er2p1
        156, -- module_index: 29, name: L1_DoubleJet112er3p0
        111, -- module_index: 30, name: L1_DoubleLooseIsoEG22er2p1
        143, -- module_index: 31, name: L1_SingleJet35_FWD
        274, -- module_index: 32, name: L1_TripleEG_LooseIso20_10_5
         12, -- module_index: 33, name: L1_SingleMu11_LowQ
         26, -- module_index: 34, name: L1_SingleMu16er2p1
         27, -- module_index: 35, name: L1_SingleMu18er2p1
        290, -- module_index: 36, name: L1_Mu16er2p1_Tau24er2p1
        291, -- module_index: 37, name: L1_Mu18er2p1_Tau20er2p1
        292, -- module_index: 38, name: L1_Mu18er2p1_Tau24er2p1
         28, -- module_index: 39, name: L1_SingleMu20er2p1
        295, -- module_index: 40, name: L1_Mu18er2p1_IsoTau26er2p1
        289, -- module_index: 41, name: L1_Mu16er2p1_Tau20er2p1
        296, -- module_index: 42, name: L1_Mu20er2p1_IsoTau26er2p1
        375, -- module_index: 43, name: L1_DoubleMu0_SQ
        381, -- module_index: 44, name: L1_DoubleMu4_SQ_OS
        369, -- module_index: 45, name: L1_DoubleMu6_SQ_OS
         34, -- module_index: 46, name: L1_DoubleMu_13_6
        391, -- module_index: 47, name: L1_DoubleMu7_EG7
        351, -- module_index: 48, name: L1_DoubleMu7_SQ_EG7
        385, -- module_index: 49, name: L1_TripleMu_5SQ_3SQ_0OQ
         44, -- module_index: 50, name: L1_TripleMu_5_5_3
        416, -- module_index: 51, name: L1_ETM75_Jet60_dPhi_Min0p4
        158, -- module_index: 52, name: L1_TripleJet_84_68_48_VBF
         45, -- module_index: 53, name: L1_QuadMu0
         99, -- module_index: 54, name: L1_IsoEG33_Mt48
        245, -- module_index: 55, name: L1_DoubleJet100er2p3_dEta_Max1p6
        361, -- module_index: 56, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        492, -- module_index: 57, name: L1_CDC_3_TOP120_DPHI2p618_3p142
        498, -- module_index: 58, name: L1_CDC_3_er1p6_TOP120_DPHI2p094_3p142
        504, -- module_index: 59, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        510, -- module_index: 60, name: L1_CDCp1_3_er2p1_TOP120_DPHI2p618_3p142
        415, -- module_index: 61, name: L1_QuadJet36er3p0_Tau52
        287, -- module_index: 62, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        430, -- module_index: 63, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        285, -- module_index: 64, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================