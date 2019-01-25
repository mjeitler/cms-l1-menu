-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- cfa03eba-c8d7-4d4f-9e2c-8039338ad141

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        363, -- module_index: 0, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
        125, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        124, -- module_index: 2, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        235, -- module_index: 3, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        350, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        357, -- module_index: 5, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        278, -- module_index: 6, name: L1_DoubleIsoTau28er2p1_Mass_Max90
         83, -- module_index: 7, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 8, name: L1_TripleMu_5_3p5_2p5
         84, -- module_index: 9, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         66, -- module_index: 10, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         57, -- module_index: 11, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        345, -- module_index: 12, name: L1_DoubleJet100er2p3_dEta_Max1p6
         79, -- module_index: 13, name: L1_TripleMu_5_3_3_SQ
         55, -- module_index: 14, name: L1_DoubleMu0er1p5_SQ
         64, -- module_index: 15, name: L1_DoubleMu4p5er2p0_SQ_OS
         49, -- module_index: 16, name: L1_DoubleMu_15_7_SQ
        446, -- module_index: 17, name: L1_SingleMuOpen_NotBptxOR
        464, -- module_index: 18, name: L1_BptxOR
          4, -- module_index: 19, name: L1_SingleMuOpen
        463, -- module_index: 20, name: L1_NotBptxOR
          8, -- module_index: 21, name: L1_SingleMu0_EMTF
         14, -- module_index: 22, name: L1_SingleMu12_DQ_OMTF
         17, -- module_index: 23, name: L1_SingleMu18
         23, -- module_index: 24, name: L1_SingleMu25
          0, -- module_index: 25, name: L1_SingleMuCosmics
        225, -- module_index: 26, name: L1_TripleEG_16_15_8_er2p5
        210, -- module_index: 27, name: L1_DoubleEG_27_14_er2p5
        276, -- module_index: 28, name: L1_DoubleIsoTau34er2p1
        218, -- module_index: 29, name: L1_DoubleLooseIsoEG24er2p1
        325, -- module_index: 30, name: L1_SingleJet60_FWD3p0
        166, -- module_index: 31, name: L1_SingleEG28er1p5
        169, -- module_index: 32, name: L1_SingleEG38er2p5
        174, -- module_index: 33, name: L1_SingleEG60
        185, -- module_index: 34, name: L1_SingleIsoEG26er2p5
        195, -- module_index: 35, name: L1_SingleIsoEG32er2p1
        321, -- module_index: 36, name: L1_SingleJet160er2p5
        310, -- module_index: 37, name: L1_SingleJet60
        180, -- module_index: 38, name: L1_SingleLooseIsoEG28er1p5
        465, -- module_index: 39, name: L1_BptxXOR
        467, -- module_index: 40, name: L1_BptxMinus
        466, -- module_index: 41, name: L1_BptxPlus
        416, -- module_index: 42, name: L1_ETM120
        426, -- module_index: 43, name: L1_ETMHF150
        412, -- module_index: 44, name: L1_ETT2000
        404, -- module_index: 45, name: L1_HTT360er
        488, -- module_index: 46, name: L1_BPTX_AND_Ref4_VME
        492, -- module_index: 47, name: L1_BPTX_BeamGas_B2_VME
        484, -- module_index: 48, name: L1_BPTX_OR_Ref4_VME
        501, -- module_index: 49, name: L1_HCAL_LaserMon_Veto
        469, -- module_index: 50, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================