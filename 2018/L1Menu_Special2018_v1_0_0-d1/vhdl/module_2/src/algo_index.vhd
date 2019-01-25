-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        319, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        314, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        306, -- module_index: 2, name: L1_FirstCollisionInTrain
        342, -- module_index: 3, name: L1_TOTEM_1
        291, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        195, -- module_index: 5, name: L1_ETMHF150
        167, -- module_index: 6, name: L1_HTT120er
        171, -- module_index: 7, name: L1_HTT280er
        175, -- module_index: 8, name: L1_HTT450er
         60, -- module_index: 9, name: L1_SingleEG34er2p5
         65, -- module_index: 10, name: L1_SingleEG45er2p5
         76, -- module_index: 11, name: L1_SingleIsoEG24er2p1
         82, -- module_index: 12, name: L1_SingleIsoEG28er2p1
         86, -- module_index: 13, name: L1_SingleIsoEG32er2p5
        142, -- module_index: 14, name: L1_SingleJet12erHE
        125, -- module_index: 15, name: L1_SingleJet200
        140, -- module_index: 16, name: L1_SingleJet8erHE
         99, -- module_index: 17, name: L1_DoubleEG_15_10_er2p5
        104, -- module_index: 18, name: L1_DoubleEG_27_14_er2p5
        154, -- module_index: 19, name: L1_DoubleJet100er2p5
        135, -- module_index: 20, name: L1_SingleJet35_FWD3p0
          7, -- module_index: 21, name: L1_SingleMu0_OMTF
         18, -- module_index: 22, name: L1_SingleMu20
          9, -- module_index: 23, name: L1_SingleMu3
          3, -- module_index: 24, name: L1_SingleMuCosmics_EMTF
         40, -- module_index: 25, name: L1_DoubleMu10_SQ
         38, -- module_index: 26, name: L1_DoubleMu0_Mass_Min1
    others => 0
);

-- ========================================================