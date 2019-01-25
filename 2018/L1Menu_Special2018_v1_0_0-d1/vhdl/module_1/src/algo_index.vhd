-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        318, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        313, -- module_index: 1, name: L1_BPTX_NotOR_VME
        307, -- module_index: 2, name: L1_FirstCollisionInOrbit
        305, -- module_index: 3, name: L1_LastCollisionInTrain
        292, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        194, -- module_index: 5, name: L1_ETMHF140
        181, -- module_index: 6, name: L1_ETT2000
        170, -- module_index: 7, name: L1_HTT255er
        174, -- module_index: 8, name: L1_HTT400er
         59, -- module_index: 9, name: L1_SingleEG26er2p5
         64, -- module_index: 10, name: L1_SingleEG42er2p5
         77, -- module_index: 11, name: L1_SingleIsoEG24er1p5
         83, -- module_index: 12, name: L1_SingleIsoEG28er1p5
         87, -- module_index: 13, name: L1_SingleIsoEG32er2p1
        130, -- module_index: 14, name: L1_SingleJet120er2p5
        133, -- module_index: 15, name: L1_SingleJet180er2p5
        128, -- module_index: 16, name: L1_SingleJet60er2p5
         74, -- module_index: 17, name: L1_SingleLooseIsoEG30er1p5
        103, -- module_index: 18, name: L1_DoubleEG_25_14_er2p5
        109, -- module_index: 19, name: L1_DoubleEG_LooseIso25_12_er2p5
        138, -- module_index: 20, name: L1_SingleJet120_FWD3p0
          8, -- module_index: 21, name: L1_SingleMu0_EMTF
         17, -- module_index: 22, name: L1_SingleMu18
         23, -- module_index: 23, name: L1_SingleMu25
          1, -- module_index: 24, name: L1_SingleMuCosmics_BMTF
         37, -- module_index: 25, name: L1_DoubleMu0_SQ_OS
         44, -- module_index: 26, name: L1_DoubleMu_15_7_SQ
    others => 0
);

-- ========================================================