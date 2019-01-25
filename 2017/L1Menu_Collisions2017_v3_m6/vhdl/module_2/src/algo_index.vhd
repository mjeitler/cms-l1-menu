-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- bf4bfc65-9d4c-4074-8054-cefe91c0eba5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        195, -- module_index: 0, name: L1_ETM150
        185, -- module_index: 1, name: L1_ETM75
        165, -- module_index: 2, name: L1_HTT120er
        174, -- module_index: 3, name: L1_HTT320er
        241, -- module_index: 4, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        175, -- module_index: 5, name: L1_HTT340er
        242, -- module_index: 6, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        243, -- module_index: 7, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        376, -- module_index: 8, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        373, -- module_index: 9, name: L1_DoubleMu5_SQ_OS_Mass7to18
        494, -- module_index: 10, name: L1_CDC_3_er1p2_TOP120_DPHI1p570_3p142
        500, -- module_index: 11, name: L1_CDC_3_er2p1_TOP120_DPHI1p570_3p142
        506, -- module_index: 12, name: L1_CDC_SingleMu_3_er2p1_TOP120_DPHI2p618_3p142
        162, -- module_index: 13, name: L1_QuadJet40er3p0
        278, -- module_index: 14, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        279, -- module_index: 15, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        281, -- module_index: 16, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        216, -- module_index: 17, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
        221, -- module_index: 18, name: L1_LooseIsoEG26er2p1_Jet34er3p0_dR_Min0p3
        422, -- module_index: 19, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        423, -- module_index: 20, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================