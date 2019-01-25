-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_4_0

-- Unique ID of L1 Trigger Menu:
-- e8dddb91-1834-4d3a-ac09-0f3064f4581b

-- Unique ID of firmware implementation:
-- 07139670-e655-4511-8196-29176997bb33

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        471, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        486, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        510, -- module_index: 2, name: L1_HCAL_LaserMon_Trig
        501, -- module_index: 3, name: L1_TOTEM_2
        197, -- module_index: 4, name: L1_ETM120
        207, -- module_index: 5, name: L1_ETMHF150
        168, -- module_index: 6, name: L1_HTT120er
        178, -- module_index: 7, name: L1_HTT360er
         52, -- module_index: 8, name: L1_SingleEG15er2p5
         70, -- module_index: 9, name: L1_SingleEG36er2p5
         78, -- module_index: 10, name: L1_SingleEG42er2p5
         50, -- module_index: 11, name: L1_SingleEG8er2p5
         84, -- module_index: 12, name: L1_SingleIsoEG26er1p5
         88, -- module_index: 13, name: L1_SingleIsoEG28er2p1
         90, -- module_index: 14, name: L1_SingleIsoEG32er2p1
        136, -- module_index: 15, name: L1_SingleJet120
        287, -- module_index: 16, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        286, -- module_index: 17, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        254, -- module_index: 18, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================