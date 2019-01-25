-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- dc2d8756-228d-4263-9f4e-3f20cf9295a4

-- Unique ID of firmware implementation:
-- 497943d4-a582-4d36-aba1-d4848135ea28

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        471, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        486, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        487, -- module_index: 2, name: L1_LastCollisionInTrain
        198, -- module_index: 3, name: L1_ETM150
        205, -- module_index: 4, name: L1_ETMHF150
        177, -- module_index: 5, name: L1_HTT320er
        247, -- module_index: 6, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        249, -- module_index: 7, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        178, -- module_index: 8, name: L1_HTT340er
        248, -- module_index: 9, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        250, -- module_index: 10, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        246, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        378, -- module_index: 12, name: L1_DoubleMu5_SQ_OS_Mass7to18
        494, -- module_index: 13, name: L1_CDC_3_er1p2_TOP120_DPHI1p570_3p142
        500, -- module_index: 14, name: L1_CDC_3_er2p1_TOP120_DPHI1p570_3p142
        506, -- module_index: 15, name: L1_CDC_SingleMu_3_er2p1_TOP120_DPHI2p618_3p142
        165, -- module_index: 16, name: L1_QuadJet40er2p7
        286, -- module_index: 17, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        288, -- module_index: 18, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        220, -- module_index: 19, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        225, -- module_index: 20, name: L1_LooseIsoEG24er2p1_Jet26er2p7_dR_Min0p3
        444, -- module_index: 21, name: L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 22, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================