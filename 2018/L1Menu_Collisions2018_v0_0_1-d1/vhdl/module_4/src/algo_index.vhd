-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_1

-- Unique ID of L1 Trigger Menu:
-- f7e2044d-0bfe-4e94-a2b8-79dd9116012f

-- Unique ID of firmware implementation:
-- 0d6d822f-ff5a-48d9-97a8-269062462d60

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        511, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        502, -- module_index: 3, name: L1_TOTEM_3
        194, -- module_index: 4, name: L1_ETM105
        198, -- module_index: 5, name: L1_ETM150
        188, -- module_index: 6, name: L1_ETM75
        205, -- module_index: 7, name: L1_ETMHF150
        177, -- module_index: 8, name: L1_HTT320er
        248, -- module_index: 9, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        246, -- module_index: 10, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        250, -- module_index: 11, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        247, -- module_index: 12, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        249, -- module_index: 13, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        178, -- module_index: 14, name: L1_HTT340er
        165, -- module_index: 15, name: L1_QuadJet40er2p7
        284, -- module_index: 16, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 17, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 18, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        220, -- module_index: 19, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        226, -- module_index: 20, name: L1_LooseIsoEG26er2p1_Jet34er2p7_dR_Min0p3
        404, -- module_index: 21, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        403, -- module_index: 22, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_8to14
    others => 0
);

-- ========================================================