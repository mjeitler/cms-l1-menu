-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 19c85715-3234-40e0-a608-952f97944368

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        233, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        248, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        249, -- module_index: 2, name: L1_LastCollisionInTrain
        279, -- module_index: 3, name: L1_Totem4
         53, -- module_index: 4, name: L1_SingleEG18
         57, -- module_index: 5, name: L1_SingleEG30
         62, -- module_index: 6, name: L1_SingleEG40
         69, -- module_index: 7, name: L1_SingleIsoEG18
         74, -- module_index: 8, name: L1_SingleIsoEG28
         79, -- module_index: 9, name: L1_SingleIsoEG36
        137, -- module_index: 10, name: L1_SingleJet140
        141, -- module_index: 11, name: L1_SingleJet180
        121, -- module_index: 12, name: L1_SingleJet32
        126, -- module_index: 13, name: L1_SingleJet50
         97, -- module_index: 14, name: L1_DoubleEG_10_10
        103, -- module_index: 15, name: L1_DoubleEG_22_10
        109, -- module_index: 16, name: L1_DoubleEG_25_13
        162, -- module_index: 17, name: L1_DoubleJet16And12er2p7
        152, -- module_index: 18, name: L1_DoubleJet50er2p7
        146, -- module_index: 19, name: L1_SingleJet120_FWD
        145, -- module_index: 20, name: L1_SingleJet90_FWD
         17, -- module_index: 21, name: L1_SingleMu18
          9, -- module_index: 22, name: L1_SingleMu5
         44, -- module_index: 23, name: L1_Mu10er2p1_ETM30
         45, -- module_index: 24, name: L1_Mu14er2p1_ETM30
        193, -- module_index: 25, name: L1_DoubleMuOpen_OS
         83, -- module_index: 26, name: L1_SingleEG15er2p1_Jet12er2p7_dR_Min0p3
    others => 0
);

-- ========================================================