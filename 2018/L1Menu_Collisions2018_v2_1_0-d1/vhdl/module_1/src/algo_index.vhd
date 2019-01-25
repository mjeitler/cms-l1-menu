-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_1_0

-- Unique ID of L1 Trigger Menu:
-- e36612e2-bee8-45eb-a685-f6cea687ce3d

-- Unique ID of firmware implementation:
-- 47efa6e9-433f-450a-a516-111b1abe0345

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
        274, -- module_index: 6, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        382, -- module_index: 7, name: L1_QuadJet60er2p5
         43, -- module_index: 8, name: L1_DoubleMu0_Mass_Min1
         58, -- module_index: 9, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         61, -- module_index: 10, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        199, -- module_index: 11, name: L1_IsoEG32er2p5_Mt48
         72, -- module_index: 12, name: L1_TripleMu0
         73, -- module_index: 13, name: L1_TripleMu0_SQ
         79, -- module_index: 14, name: L1_TripleMu_5_3_3_SQ
         39, -- module_index: 15, name: L1_DoubleMu0_OQ
         56, -- module_index: 16, name: L1_DoubleMu0er1p5_SQ_OS
         44, -- module_index: 17, name: L1_DoubleMu8_SQ
         49, -- module_index: 18, name: L1_DoubleMu_15_7_SQ
          5, -- module_index: 19, name: L1_SingleMu0_DQ
         13, -- module_index: 20, name: L1_SingleMu12_DQ_BMTF
         31, -- module_index: 21, name: L1_SingleMu14er1p5
         19, -- module_index: 22, name: L1_SingleMu22
         25, -- module_index: 23, name: L1_SingleMu6er1p5
          0, -- module_index: 24, name: L1_SingleMuCosmics
        224, -- module_index: 25, name: L1_TripleEG_16_12_8_er2p5
        206, -- module_index: 26, name: L1_DoubleEG_20_10_er2p5
        208, -- module_index: 27, name: L1_DoubleEG_25_12_er2p5
        214, -- module_index: 28, name: L1_DoubleEG_LooseIso22_12_er2p5
        272, -- module_index: 29, name: L1_DoubleIsoTau34er2p1
        217, -- module_index: 30, name: L1_DoubleLooseIsoEG22er2p1
        327, -- module_index: 31, name: L1_SingleJet120_FWD3p0
        238, -- module_index: 32, name: L1_LooseIsoEG24er2p1_HTT100er
        240, -- module_index: 33, name: L1_LooseIsoEG28er2p1_HTT100er
        239, -- module_index: 34, name: L1_LooseIsoEG26er2p1_HTT100er
        179, -- module_index: 35, name: L1_SingleLooseIsoEG28er2p1
        241, -- module_index: 36, name: L1_LooseIsoEG30er2p1_HTT100er
        187, -- module_index: 37, name: L1_SingleIsoEG26er1p5
        189, -- module_index: 38, name: L1_SingleIsoEG28er2p5
        196, -- module_index: 39, name: L1_SingleIsoEG34er2p5
        313, -- module_index: 40, name: L1_SingleJet180
        310, -- module_index: 41, name: L1_SingleJet60
        175, -- module_index: 42, name: L1_SingleLooseIsoEG26er2p5
        264, -- module_index: 43, name: L1_SingleTau120er2p1
        412, -- module_index: 44, name: L1_ETT2000
        401, -- module_index: 45, name: L1_HTT255er
        486, -- module_index: 46, name: L1_BPTX_AND_Ref1_VME
        492, -- module_index: 47, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 48, name: L1_BPTX_OR_Ref3_VME
        479, -- module_index: 49, name: L1_FirstCollisionInTrain
        503, -- module_index: 50, name: L1_TOTEM_1
        469, -- module_index: 51, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================