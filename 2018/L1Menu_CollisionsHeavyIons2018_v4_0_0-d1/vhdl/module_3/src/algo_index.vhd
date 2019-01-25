-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
         29, -- module_index: 0, name: L1_DoubleMu0_SQ_OS
         17, -- module_index: 1, name: L1_SingleMu12_DQ_EMTF
         22, -- module_index: 2, name: L1_SingleMu22_EMTF
          1, -- module_index: 3, name: L1_SingleMuCosmics_BMTF
         62, -- module_index: 4, name: L1_SingleJet35_FWD3p0
         40, -- module_index: 5, name: L1_SingleEG15er2p5
         52, -- module_index: 6, name: L1_SingleJet120
         49, -- module_index: 7, name: L1_SingleJet35
         58, -- module_index: 8, name: L1_SingleJet90er2p5
    others => 0
);

-- ========================================================