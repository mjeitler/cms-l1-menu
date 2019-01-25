-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
          7, -- module_index: 0, name: L1_SingleMu0_BMTF
          9, -- module_index: 1, name: L1_SingleMu0_EMTF
         16, -- module_index: 2, name: L1_SingleMu12_DQ_OMTF
         21, -- module_index: 3, name: L1_SingleMu22_OMTF
          3, -- module_index: 4, name: L1_SingleMuCosmics_EMTF
         63, -- module_index: 5, name: L1_SingleJet60_FWD3p0
         41, -- module_index: 6, name: L1_SingleEG26er2p5
         57, -- module_index: 7, name: L1_SingleJet120er2p5
         56, -- module_index: 8, name: L1_SingleJet35er2p5
         88, -- module_index: 9, name: L1_ETMHF100_HTT60er
         89, -- module_index: 10, name: L1_ETMHF120_HTT60er
         86, -- module_index: 11, name: L1_ETMHF120
         84, -- module_index: 12, name: L1_ETMHF100
         69, -- module_index: 13, name: L1_HTT120er
         71, -- module_index: 14, name: L1_HTT280er
         73, -- module_index: 15, name: L1_HTT450er
    others => 0
);

-- ========================================================