-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        322, -- module_index: 0, name: L1_BPTX_BeamGas_B1_VME
        315, -- module_index: 1, name: L1_BPTX_OR_Ref4_VME
        335, -- module_index: 2, name: L1_HCAL_LaserMon_Trig
        292, -- module_index: 3, name: L1_UnpairedBunchBptxMinus
        194, -- module_index: 4, name: L1_ETMHF140
        181, -- module_index: 5, name: L1_ETT2000
        170, -- module_index: 6, name: L1_HTT255er
        174, -- module_index: 7, name: L1_HTT400er
         59, -- module_index: 8, name: L1_SingleEG18er2p5
         64, -- module_index: 9, name: L1_SingleEG38er2p5
         69, -- module_index: 10, name: L1_SingleEG60
         79, -- module_index: 11, name: L1_SingleIsoEG26er2p1
         85, -- module_index: 12, name: L1_SingleIsoEG30er2p1
        141, -- module_index: 13, name: L1_SingleJet10erHE
        132, -- module_index: 14, name: L1_SingleJet160er2p5
        127, -- module_index: 15, name: L1_SingleJet35er2p5
        129, -- module_index: 16, name: L1_SingleJet90er2p5
        101, -- module_index: 17, name: L1_DoubleEG_22_10_er2p5
        107, -- module_index: 18, name: L1_DoubleEG_LooseIso22_10_er2p5
        156, -- module_index: 19, name: L1_DoubleJet150er2p5
        137, -- module_index: 20, name: L1_SingleJet90_FWD3p0
         13, -- module_index: 21, name: L1_SingleMu12_DQ_BMTF
         19, -- module_index: 22, name: L1_SingleMu20
          9, -- module_index: 23, name: L1_SingleMu3
          3, -- module_index: 24, name: L1_SingleMuCosmics_EMTF
         40, -- module_index: 25, name: L1_DoubleMu10_SQ
        158, -- module_index: 26, name: L1_DoubleJet32_dEta_2p5_10p0
    others => 0
);

-- ========================================================