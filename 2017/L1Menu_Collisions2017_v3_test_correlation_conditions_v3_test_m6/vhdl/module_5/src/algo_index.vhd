-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test

-- Unique ID of L1 Trigger Menu:
-- cd1736f5-2c73-49e7-bb57-ba14e8ac44cd

-- Unique ID of firmware implementation:
-- bafbf2d2-d2a5-4d4e-a6f8-e391e3ff31e5

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
        242, -- module_index: 7, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        175, -- module_index: 8, name: L1_HTT340er
        241, -- module_index: 9, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        243, -- module_index: 10, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        245, -- module_index: 11, name: L1_DoubleJet100er2p3_dEta_Max1p6
        377, -- module_index: 12, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        492, -- module_index: 13, name: L1_CDC_3_TOP120_DPHI2p618_3p142
        498, -- module_index: 14, name: L1_CDC_3_er1p6_TOP120_DPHI2p094_3p142
        504, -- module_index: 15, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        510, -- module_index: 16, name: L1_CDCp1_3_er2p1_TOP120_DPHI2p618_3p142
        415, -- module_index: 17, name: L1_QuadJet36er3p0_Tau52
        213, -- module_index: 18, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
        288, -- module_index: 19, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        430, -- module_index: 20, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        286, -- module_index: 21, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================