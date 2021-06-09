-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 8c19d0da-9c13-43f4-8e24-584e3e9e17db

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        258, -- module_index: 0, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        234, -- module_index: 1, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        274, -- module_index: 2, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        366, -- module_index: 3, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
         41, -- module_index: 4, name: L1_DoubleMu0_SQ
        104, -- module_index: 5, name: L1_Mu6_DoubleEG10er2p5
        271, -- module_index: 6, name: L1_DoubleIsoTau32er2p1
        177, -- module_index: 7, name: L1_SingleLooseIsoEG28_FWD2p5
        247, -- module_index: 8, name: L1_DoubleEG8er2p5_HTT260er
        205, -- module_index: 9, name: L1_DoubleEG_15_10_er2p5
        210, -- module_index: 10, name: L1_DoubleEG_27_14_er2p5
        267, -- module_index: 11, name: L1_DoubleTau70er2p1
        326, -- module_index: 12, name: L1_SingleJet90_FWD3p0
        285, -- module_index: 13, name: L1_Mu22er2p1_IsoTau34er2p1
         69, -- module_index: 14, name: L1_QuadMu0_OQ_OS
         88, -- module_index: 15, name: L1_QuadMu0_OQ
        102, -- module_index: 16, name: L1_Mu7_LooseIsoEG23er2p5
         64, -- module_index: 17, name: L1_DoubleMu4p5er2p0_SQ_OS
        331, -- module_index: 18, name: L1_SingleJet12erHE
         96, -- module_index: 19, name: L1_Mu5_EG23er2p5
         98, -- module_index: 20, name: L1_Mu7_EG23er2p5
         38, -- module_index: 21, name: L1_MASSUPT_0_0_20_open
        185, -- module_index: 22, name: L1_SingleIsoEG26er2p5
        193, -- module_index: 23, name: L1_SingleIsoEG30er2p1
        196, -- module_index: 24, name: L1_SingleIsoEG34er2p5
        178, -- module_index: 25, name: L1_SingleLooseIsoEG28er2p5
         34, -- module_index: 26, name: L1_MASSUPT_0_0_20
          7, -- module_index: 27, name: L1_SingleMu0_OMTF
         21, -- module_index: 28, name: L1_SingleMu22_OMTF
        145, -- module_index: 29, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        166, -- module_index: 30, name: L1_SingleEG28er1p5
        169, -- module_index: 31, name: L1_SingleEG38er2p5
        319, -- module_index: 32, name: L1_SingleJet120er2p5
        317, -- module_index: 33, name: L1_SingleJet60er2p5
        264, -- module_index: 34, name: L1_SingleTau120er2p1
        152, -- module_index: 35, name: L1_DoubleMu3_SQ_HTT260er
         40, -- module_index: 36, name: L1_DoubleMu0
         46, -- module_index: 37, name: L1_DoubleMu_12_5
          6, -- module_index: 38, name: L1_SingleMu0_BMTF
         31, -- module_index: 39, name: L1_SingleMu14er1p5
         25, -- module_index: 40, name: L1_SingleMu6er1p5
        157, -- module_index: 41, name: L1_Mu0upt20ip03
        308, -- module_index: 42, name: L1_SingleMuOpenupt100
        305, -- module_index: 43, name: L1_Mu0upt100
        132, -- module_index: 44, name: L1_Mu6_HTT250er
        314, -- module_index: 45, name: L1_SingleJet200
         16, -- module_index: 46, name: L1_SingleMu15_DQ
          4, -- module_index: 47, name: L1_SingleMuOpen
        446, -- module_index: 48, name: L1_SingleMuOpen_NotBptxOR
        461, -- module_index: 49, name: L1_MinimumBiasHF0_AND_BptxAND
        417, -- module_index: 50, name: L1_ETM150
        411, -- module_index: 51, name: L1_ETT1600
        401, -- module_index: 52, name: L1_HTT255er
        487, -- module_index: 53, name: L1_BPTX_AND_Ref3_VME
        490, -- module_index: 54, name: L1_BPTX_BeamGas_Ref2_VME
        467, -- module_index: 55, name: L1_BptxMinus
        466, -- module_index: 56, name: L1_BptxPlus
        465, -- module_index: 57, name: L1_BptxXOR
        468, -- module_index: 58, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================