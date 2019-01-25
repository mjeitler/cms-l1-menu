-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        364, -- module_index: 0, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
        121, -- module_index: 1, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        123, -- module_index: 2, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        234, -- module_index: 3, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        349, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        356, -- module_index: 5, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        355, -- module_index: 6, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        277, -- module_index: 7, name: L1_DoubleIsoTau30er2p1_Mass_Max80
         85, -- module_index: 8, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         86, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 10, name: L1_TripleMu_5SQ_3SQ_0OQ
         66, -- module_index: 11, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         57, -- module_index: 12, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         63, -- module_index: 13, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         89, -- module_index: 14, name: L1_QuadMu0
         71, -- module_index: 15, name: L1_TripleMu0_OQ
         78, -- module_index: 16, name: L1_TripleMu_5_3_3
         40, -- module_index: 17, name: L1_DoubleMu0
         55, -- module_index: 18, name: L1_DoubleMu0er1p5_SQ
         64, -- module_index: 19, name: L1_DoubleMu4p5er2p0_SQ_OS
         48, -- module_index: 20, name: L1_DoubleMu_15_7
         99, -- module_index: 21, name: L1_Mu20_EG10er2p5
         18, -- module_index: 22, name: L1_SingleMu20
        160, -- module_index: 23, name: L1_SingleEG10er2p5
          8, -- module_index: 24, name: L1_SingleMu0_EMTF
         15, -- module_index: 25, name: L1_SingleMu12_DQ_EMTF
         16, -- module_index: 26, name: L1_SingleMu15_DQ
         20, -- module_index: 27, name: L1_SingleMu22_BMTF
         11, -- module_index: 28, name: L1_SingleMu7_DQ
          1, -- module_index: 29, name: L1_SingleMuCosmics_BMTF
        225, -- module_index: 30, name: L1_TripleEG_16_15_8_er2p5
        209, -- module_index: 31, name: L1_DoubleEG_25_14_er2p5
        215, -- module_index: 32, name: L1_DoubleEG_LooseIso25_12_er2p5
        273, -- module_index: 33, name: L1_DoubleIsoTau36er2p1
        218, -- module_index: 34, name: L1_DoubleLooseIsoEG24er2p1
        324, -- module_index: 35, name: L1_SingleJet35_FWD3p0
        161, -- module_index: 36, name: L1_SingleEG15er2p5
        165, -- module_index: 37, name: L1_SingleEG28er2p1
        169, -- module_index: 38, name: L1_SingleEG38er2p5
        173, -- module_index: 39, name: L1_SingleEG50
        183, -- module_index: 40, name: L1_SingleIsoEG24er2p1
        190, -- module_index: 41, name: L1_SingleIsoEG28er2p1
        194, -- module_index: 42, name: L1_SingleIsoEG32er2p5
        321, -- module_index: 43, name: L1_SingleJet160er2p5
        316, -- module_index: 44, name: L1_SingleJet35er2p5
        176, -- module_index: 45, name: L1_SingleLooseIsoEG26er1p5
        181, -- module_index: 46, name: L1_SingleLooseIsoEG30er2p5
        410, -- module_index: 47, name: L1_ETT1200
        399, -- module_index: 48, name: L1_HTT160er
        405, -- module_index: 49, name: L1_HTT400er
        488, -- module_index: 50, name: L1_BPTX_AND_Ref4_VME
        490, -- module_index: 51, name: L1_BPTX_BeamGas_Ref2_VME
        484, -- module_index: 52, name: L1_BPTX_OR_Ref4_VME
        501, -- module_index: 53, name: L1_HCAL_LaserMon_Veto
        505, -- module_index: 54, name: L1_TOTEM_3
        468, -- module_index: 55, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================