-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- fc29be71-db7f-4aff-9e46-094f956ff1d1

-- Unique ID of firmware implementation:
-- ede4df2a-e7ec-4ef1-b0f0-3d2b2b7fe1ac

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        323, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        316, -- module_index: 1, name: L1_BPTX_RefAND_VME
        336, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        344, -- module_index: 3, name: L1_TOTEM_3
        186, -- module_index: 4, name: L1_ETM150
        180, -- module_index: 5, name: L1_ETT1600
        169, -- module_index: 6, name: L1_HTT200er
        173, -- module_index: 7, name: L1_HTT360er
         58, -- module_index: 8, name: L1_SingleEG15er2p5
         63, -- module_index: 9, name: L1_SingleEG40er2p5
         56, -- module_index: 10, name: L1_SingleEG8er2p5
         78, -- module_index: 11, name: L1_SingleIsoEG26er2p5
         84, -- module_index: 12, name: L1_SingleIsoEG30er2p5
        123, -- module_index: 13, name: L1_SingleJet120
        124, -- module_index: 14, name: L1_SingleJet180
        121, -- module_index: 15, name: L1_SingleJet60
         73, -- module_index: 16, name: L1_SingleLooseIsoEG28er1p5
        102, -- module_index: 17, name: L1_DoubleEG_25_12_er2p5
        108, -- module_index: 18, name: L1_DoubleEG_LooseIso22_12_er2p5
        153, -- module_index: 19, name: L1_DoubleJet40er2p5
          6, -- module_index: 20, name: L1_SingleMu0_BMTF
         14, -- module_index: 21, name: L1_SingleMu12_DQ_OMTF
         22, -- module_index: 22, name: L1_SingleMu22_EMTF
         11, -- module_index: 23, name: L1_SingleMu7_DQ
         34, -- module_index: 24, name: L1_DoubleMu0_OQ
         42, -- module_index: 25, name: L1_DoubleMu_15_5_SQ
    others => 0
);

-- ========================================================