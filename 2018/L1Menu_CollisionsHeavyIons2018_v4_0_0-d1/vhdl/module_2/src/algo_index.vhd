-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_0_0

-- Unique ID of L1 Trigger Menu:
-- b12c51f7-2c74-44b9-b170-21566e834f41

-- Unique ID of firmware implementation:
-- c0a658bc-2cd9-438e-a63d-025076271663

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
         28, -- module_index: 0, name: L1_DoubleMu0_SQ
         15, -- module_index: 1, name: L1_SingleMu12_DQ_BMTF
         20, -- module_index: 2, name: L1_SingleMu22_BMTF
          0, -- module_index: 3, name: L1_SingleMuCosmics
         65, -- module_index: 4, name: L1_SingleJet120_FWD3p0
         39, -- module_index: 5, name: L1_SingleEG10er2p5
         38, -- module_index: 6, name: L1_SingleEG8er2p5
         54, -- module_index: 7, name: L1_SingleJet200
         51, -- module_index: 8, name: L1_SingleJet90
    others => 0
);

-- ========================================================