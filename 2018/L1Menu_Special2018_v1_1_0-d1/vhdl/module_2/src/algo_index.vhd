-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        319, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        314, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        306, -- module_index: 2, name: L1_FirstCollisionInTrain
        349, -- module_index: 3, name: L1_TOTEM_3
        190, -- module_index: 4, name: L1_ETMHF100
        201, -- module_index: 5, name: L1_ETMHF130_HTT60er
        200, -- module_index: 6, name: L1_ETMHF120_HTT60er
        192, -- module_index: 7, name: L1_ETMHF120
        197, -- module_index: 8, name: L1_ETMHF90_HTT60er
        191, -- module_index: 9, name: L1_ETMHF110
        199, -- module_index: 10, name: L1_ETMHF110_HTT60er
        193, -- module_index: 11, name: L1_ETMHF130
        198, -- module_index: 12, name: L1_ETMHF100_HTT60er
         61, -- module_index: 13, name: L1_SingleEG26er2p5
         66, -- module_index: 14, name: L1_SingleEG42er2p5
         77, -- module_index: 15, name: L1_SingleIsoEG24er1p5
         83, -- module_index: 16, name: L1_SingleIsoEG28er1p5
         87, -- module_index: 17, name: L1_SingleIsoEG32er2p1
        130, -- module_index: 18, name: L1_SingleJet120er2p5
        133, -- module_index: 19, name: L1_SingleJet180er2p5
        128, -- module_index: 20, name: L1_SingleJet60er2p5
         74, -- module_index: 21, name: L1_SingleLooseIsoEG30er1p5
        103, -- module_index: 22, name: L1_DoubleEG_25_14_er2p5
        109, -- module_index: 23, name: L1_DoubleEG_LooseIso25_12_er2p5
        138, -- module_index: 24, name: L1_SingleJet120_FWD3p0
          5, -- module_index: 25, name: L1_SingleMu0_DQ
         14, -- module_index: 26, name: L1_SingleMu12_DQ_OMTF
         21, -- module_index: 27, name: L1_SingleMu22_BMTF
         12, -- module_index: 28, name: L1_SingleMu7
         35, -- module_index: 29, name: L1_DoubleMu0
         41, -- module_index: 30, name: L1_DoubleMu_12_5
         45, -- module_index: 31, name: L1_DoubleMu_15_7_Mass_Min1
    others => 0
);

-- ========================================================