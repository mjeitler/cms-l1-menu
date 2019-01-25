-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        234, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        245, -- module_index: 1, name: L1_BPTX_RefAND_VME
        276, -- module_index: 2, name: L1_Totem1
        241, -- module_index: 3, name: L1_UnpairedBunchBptxMinus
         67, -- module_index: 4, name: L1_SingleEG21
         58, -- module_index: 5, name: L1_SingleEG32
         63, -- module_index: 6, name: L1_SingleEG42
         70, -- module_index: 7, name: L1_SingleIsoEG20
         75, -- module_index: 8, name: L1_SingleIsoEG30
         80, -- module_index: 9, name: L1_SingleIsoEG37
        138, -- module_index: 10, name: L1_SingleJet150
        132, -- module_index: 11, name: L1_SingleJet20
        133, -- module_index: 12, name: L1_SingleJet35
        123, -- module_index: 13, name: L1_SingleJet56
         98, -- module_index: 14, name: L1_DoubleEG_10_5
        104, -- module_index: 15, name: L1_DoubleEG_22_12
        110, -- module_index: 16, name: L1_DoubleEG_25_14
        160, -- module_index: 17, name: L1_DoubleJet16And8er2p7
        153, -- module_index: 18, name: L1_DoubleJet60er2p7
        128, -- module_index: 19, name: L1_SingleJet20_FWD
         46, -- module_index: 20, name: L1_SingleMu0
         18, -- module_index: 21, name: L1_SingleMu20
         10, -- module_index: 22, name: L1_SingleMu7
         30, -- module_index: 23, name: L1_DoubleMu0
        194, -- module_index: 24, name: L1_DoubleMuOpen_SS
         84, -- module_index: 25, name: L1_SingleEG18er2p1_Jet16er2p7_dR_Min0p3
    others => 0
);

-- ========================================================