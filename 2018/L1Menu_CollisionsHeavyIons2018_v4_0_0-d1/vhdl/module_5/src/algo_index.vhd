-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
          5, -- module_index: 0, name: L1_SingleMu0_DQ
          8, -- module_index: 1, name: L1_SingleMu0_OMTF
         19, -- module_index: 2, name: L1_SingleMu22
         12, -- module_index: 3, name: L1_SingleMu7_DQ
          2, -- module_index: 4, name: L1_SingleMuCosmics_OMTF
         64, -- module_index: 5, name: L1_SingleJet90_FWD3p0
         36, -- module_index: 6, name: L1_SingleEG50
         60, -- module_index: 7, name: L1_SingleJet180er2p5
         59, -- module_index: 8, name: L1_SingleJet60er2p5
         78, -- module_index: 9, name: L1_ETT1200
         79, -- module_index: 10, name: L1_ETT1600
         80, -- module_index: 11, name: L1_ETT2000
         70, -- module_index: 12, name: L1_HTT200er
         72, -- module_index: 13, name: L1_HTT360er
        130, -- module_index: 14, name: L1_BPTX_AND_Ref1_VME
        131, -- module_index: 15, name: L1_BPTX_AND_Ref3_VME
        132, -- module_index: 16, name: L1_BPTX_AND_Ref4_VME
        135, -- module_index: 17, name: L1_BPTX_BeamGas_B1_VME
        136, -- module_index: 18, name: L1_BPTX_BeamGas_B2_VME
        133, -- module_index: 19, name: L1_BPTX_BeamGas_Ref1_VME
        134, -- module_index: 20, name: L1_BPTX_BeamGas_Ref2_VME
        126, -- module_index: 21, name: L1_BPTX_NotOR_VME
        127, -- module_index: 22, name: L1_BPTX_OR_Ref3_VME
        128, -- module_index: 23, name: L1_BPTX_OR_Ref4_VME
        129, -- module_index: 24, name: L1_BPTX_RefAND_VME
        108, -- module_index: 25, name: L1_BptxMinus
        107, -- module_index: 26, name: L1_BptxPlus
        105, -- module_index: 27, name: L1_BptxXOR
        110, -- module_index: 28, name: L1_BptxMinus_NotBptxPlus
        109, -- module_index: 29, name: L1_BptxPlus_NotBptxMinus
        494, -- module_index: 30, name: L1_Castor1
        176, -- module_index: 31, name: L1_Centrality_Saturation
        124, -- module_index: 32, name: L1_FirstCollisionInOrbit
        123, -- module_index: 33, name: L1_FirstCollisionInTrain
         96, -- module_index: 34, name: L1_HCAL_LaserMon_Trig
         97, -- module_index: 35, name: L1_HCAL_LaserMon_Veto
        122, -- module_index: 36, name: L1_LastCollisionInTrain
         93, -- module_index: 37, name: L1_TOTEM_3
        113, -- module_index: 38, name: L1_UnpairedBunchBptxMinus
        112, -- module_index: 39, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================