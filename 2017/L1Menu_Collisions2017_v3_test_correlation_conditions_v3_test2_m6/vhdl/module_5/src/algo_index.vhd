-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test2

-- Unique ID of L1 Trigger Menu:
-- 9eb5780e-a86d-4373-ae5d-7ea07be75a3c

-- Unique ID of firmware implementation:
-- 4f606e23-e64b-4c88-9d12-669ec0c896e2

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        467, -- module_index: 0, name: L1_BPTX_B1NotB2_NIM
        454, -- module_index: 1, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 2, name: L1_BPTX_OR_Ref4_VME
        476, -- module_index: 3, name: L1_LastCollisionInTrain
        195, -- module_index: 4, name: L1_ETM150
        202, -- module_index: 5, name: L1_ETMHF150
        174, -- module_index: 6, name: L1_HTT320er
        175, -- module_index: 7, name: L1_HTT340er
        242, -- module_index: 8, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        241, -- module_index: 9, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        243, -- module_index: 10, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        483, -- module_index: 11, name: L1_Unnamed_5
        376, -- module_index: 12, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        374, -- module_index: 13, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        495, -- module_index: 14, name: L1_CDC_3_er1p2_TOP120_DPHI2p094_3p142
        501, -- module_index: 15, name: L1_CDC_3_er2p1_TOP120_DPHI2p094_3p142
        507, -- module_index: 16, name: L1_CDCp1_3_TOP120_DPHI2p618_3p142
        163, -- module_index: 17, name: L1_QuadJet50er3p0
        280, -- module_index: 18, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        282, -- module_index: 19, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        216, -- module_index: 20, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
        221, -- module_index: 21, name: L1_LooseIsoEG26er2p1_Jet34er3p0_dR_Min0p3
        422, -- module_index: 22, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        423, -- module_index: 23, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================