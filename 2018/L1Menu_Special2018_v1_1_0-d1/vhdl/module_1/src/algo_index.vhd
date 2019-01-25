-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        318, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        313, -- module_index: 1, name: L1_BPTX_NotOR_VME
        307, -- module_index: 2, name: L1_FirstCollisionInOrbit
        305, -- module_index: 3, name: L1_LastCollisionInTrain
        186, -- module_index: 4, name: L1_ETM150
        180, -- module_index: 5, name: L1_ETT1600
        169, -- module_index: 6, name: L1_HTT200er
        173, -- module_index: 7, name: L1_HTT360er
         58, -- module_index: 8, name: L1_SingleEG15er2p5
         63, -- module_index: 9, name: L1_SingleEG36er2p5
         68, -- module_index: 10, name: L1_SingleEG50
         80, -- module_index: 11, name: L1_SingleIsoEG26er1p5
         81, -- module_index: 12, name: L1_SingleIsoEG28er2p5
         88, -- module_index: 13, name: L1_SingleIsoEG34er2p5
        131, -- module_index: 14, name: L1_SingleJet140er2p5
        120, -- module_index: 15, name: L1_SingleJet35
        122, -- module_index: 16, name: L1_SingleJet90
        100, -- module_index: 17, name: L1_DoubleEG_20_10_er2p5
        106, -- module_index: 18, name: L1_DoubleEG_LooseIso20_10_er2p5
        155, -- module_index: 19, name: L1_DoubleJet120er2p5
        136, -- module_index: 20, name: L1_SingleJet60_FWD3p0
          7, -- module_index: 21, name: L1_SingleMu0_OMTF
         18, -- module_index: 22, name: L1_SingleMu18
         24, -- module_index: 23, name: L1_SingleMu25
          1, -- module_index: 24, name: L1_SingleMuCosmics_BMTF
         37, -- module_index: 25, name: L1_DoubleMu0_SQ_OS
         44, -- module_index: 26, name: L1_DoubleMu_15_7_SQ
    others => 0
);

-- ========================================================