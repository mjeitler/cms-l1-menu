-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- f5f8369a-7595-4101-ba04-ba7f70eab3a7

-- Unique ID of firmware implementation:
-- ac0bbb8c-f586-40cd-b48e-54dc34f99857

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
        291, -- module_index: 3, name: L1_UnpairedBunchBptxPlus
        195, -- module_index: 4, name: L1_ETMHF150
        167, -- module_index: 5, name: L1_HTT120er
        171, -- module_index: 6, name: L1_HTT280er
        175, -- module_index: 7, name: L1_HTT450er
         60, -- module_index: 8, name: L1_SingleEG21er2p5
         65, -- module_index: 9, name: L1_SingleEG40er2p5
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
         15, -- module_index: 21, name: L1_SingleMu12_DQ_EMTF
         20, -- module_index: 22, name: L1_SingleMu22
         10, -- module_index: 23, name: L1_SingleMu5
          2, -- module_index: 24, name: L1_SingleMuCosmics_OMTF
         39, -- module_index: 25, name: L1_DoubleMu9_SQ
         38, -- module_index: 26, name: L1_DoubleMu0_Mass_Min1
    others => 0
);

-- ========================================================