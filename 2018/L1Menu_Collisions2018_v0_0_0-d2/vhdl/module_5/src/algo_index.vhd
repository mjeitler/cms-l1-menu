-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        467, -- module_index: 2, name: L1_BptxXOR
        474, -- module_index: 3, name: L1_BptxPlus
        194, -- module_index: 4, name: L1_ETM105
        198, -- module_index: 5, name: L1_ETM150
        188, -- module_index: 6, name: L1_ETM75
        205, -- module_index: 7, name: L1_ETMHF150
        177, -- module_index: 8, name: L1_HTT320er
        246, -- module_index: 9, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        250, -- module_index: 10, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        249, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        178, -- module_index: 12, name: L1_HTT340er
        247, -- module_index: 13, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        248, -- module_index: 14, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        165, -- module_index: 15, name: L1_QuadJet40er2p7
        284, -- module_index: 16, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 17, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 18, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        220, -- module_index: 19, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        226, -- module_index: 20, name: L1_LooseIsoEG26er2p1_Jet34er2p7_dR_Min0p3
        404, -- module_index: 21, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        403, -- module_index: 22, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_8to14
-- HB 2018-03-02: hidden algos
        264, -- module_index: 23, name: L1_QuadEG10
        289, -- module_index: 24, name: L1_QuadEG12
        290, -- module_index: 25, name: L1_QuadEG15
        263, -- module_index: 26, name: L1_QuadEG5
        300, -- module_index: 27, name: L1_QuadJet25er2p7
        302, -- module_index: 28, name: L1_QuadJet35er2p7
        303, -- module_index: 29, name: L1_QuadJet45er2p7
        304, -- module_index: 30, name: L1_QuadJet55er2p7
        296, -- module_index: 31, name: L1_QuadTau10
        297, -- module_index: 32, name: L1_QuadTau12
        298, -- module_index: 33, name: L1_QuadTau15
        291, -- module_index: 34, name: L1_QuadTau5
    others => 0
);

-- ========================================================