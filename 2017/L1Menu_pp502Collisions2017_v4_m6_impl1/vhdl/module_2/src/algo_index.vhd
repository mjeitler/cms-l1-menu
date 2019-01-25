-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        247, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        244, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        250, -- module_index: 2, name: L1_FirstCollisionInTrain
        278, -- module_index: 3, name: L1_Totem3
         52, -- module_index: 4, name: L1_SingleEG15
         56, -- module_index: 5, name: L1_SingleEG28
         61, -- module_index: 6, name: L1_SingleEG38
         65, -- module_index: 7, name: L1_SingleEG50
         73, -- module_index: 8, name: L1_SingleIsoEG26
         78, -- module_index: 9, name: L1_SingleIsoEG35
        136, -- module_index: 10, name: L1_SingleJet120
        140, -- module_index: 11, name: L1_SingleJet170
        124, -- module_index: 12, name: L1_SingleJet28
        122, -- module_index: 13, name: L1_SingleJet48
        135, -- module_index: 14, name: L1_SingleJet90
        102, -- module_index: 15, name: L1_DoubleEG_20_18
        108, -- module_index: 16, name: L1_DoubleEG_25_12
        158, -- module_index: 17, name: L1_DoubleJet150er2p7
        151, -- module_index: 18, name: L1_DoubleJet40er2p7
        112, -- module_index: 19, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 20, name: L1_SingleJet60_FWD
         16, -- module_index: 21, name: L1_SingleMu16
         24, -- module_index: 22, name: L1_SingleMu30
          3, -- module_index: 23, name: L1_SingleMuCosmics_OMTF
        192, -- module_index: 24, name: L1_DoubleMuOpen
        212, -- module_index: 25, name: L1_LooseIsoEG18er2p1_Jet16er2p7_dR_Min0p3
    others => 0
);

-- ========================================================