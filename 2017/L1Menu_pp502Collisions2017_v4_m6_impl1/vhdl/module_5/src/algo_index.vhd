-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        231, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        237, -- module_index: 1, name: L1_BptxMinus
        229, -- module_index: 2, name: L1_BptxXOR
        236, -- module_index: 3, name: L1_BptxPlus
        240, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
         54, -- module_index: 5, name: L1_SingleEG24
         59, -- module_index: 6, name: L1_SingleEG34
         64, -- module_index: 7, name: L1_SingleEG45
         71, -- module_index: 8, name: L1_SingleIsoEG22
         76, -- module_index: 9, name: L1_SingleIsoEG32
         81, -- module_index: 10, name: L1_SingleIsoEG38
        131, -- module_index: 11, name: L1_SingleJet16
        142, -- module_index: 12, name: L1_SingleJet200
        125, -- module_index: 13, name: L1_SingleJet40
        134, -- module_index: 14, name: L1_SingleJet60
        100, -- module_index: 15, name: L1_DoubleEG_15_10
        105, -- module_index: 16, name: L1_DoubleEG_22_15
        155, -- module_index: 17, name: L1_DoubleJet100er2p7
        163, -- module_index: 18, name: L1_DoubleJet20And12er2p7
        154, -- module_index: 19, name: L1_DoubleJet80er2p7
        143, -- module_index: 20, name: L1_SingleJet35_FWD
         11, -- module_index: 21, name: L1_SingleMu10_LowQ
         19, -- module_index: 22, name: L1_SingleMu22
          0, -- module_index: 23, name: L1_SingleMuCosmics
        198, -- module_index: 24, name: L1_DoubleMu0_SQ
        196, -- module_index: 25, name: L1_DoubleMu_15_5_SQ
    others => 0
);

-- ========================================================