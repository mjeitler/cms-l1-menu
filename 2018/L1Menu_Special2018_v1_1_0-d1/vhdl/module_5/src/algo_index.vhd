-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        320, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        290, -- module_index: 1, name: L1_BptxMinus
        288, -- module_index: 2, name: L1_BptxXOR
        289, -- module_index: 3, name: L1_BptxPlus
        185, -- module_index: 4, name: L1_ETM120
        179, -- module_index: 5, name: L1_ETT1200
        168, -- module_index: 6, name: L1_HTT160er
        172, -- module_index: 7, name: L1_HTT320er
         57, -- module_index: 8, name: L1_SingleEG10er2p5
         62, -- module_index: 9, name: L1_SingleEG34er2p5
         67, -- module_index: 10, name: L1_SingleEG45er2p5
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
          8, -- module_index: 21, name: L1_SingleMu0_EMTF
         17, -- module_index: 22, name: L1_SingleMu16
         22, -- module_index: 23, name: L1_SingleMu22_OMTF
          0, -- module_index: 24, name: L1_SingleMuCosmics
         36, -- module_index: 25, name: L1_DoubleMu0_SQ
         43, -- module_index: 26, name: L1_DoubleMu_15_7
    others => 0
);

-- ========================================================