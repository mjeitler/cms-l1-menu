-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- 409fce06-5701-4b18-9364-39736bfcaf88

-- Unique ID of firmware implementation:
-- 324ed470-bdf0-4315-a64f-da3b4bc3343c

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        492, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        485, -- module_index: 1, name: L1_BPTX_RefAND_VME
        501, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        505, -- module_index: 3, name: L1_TOTEM_3
        417, -- module_index: 4, name: L1_ETM150
        412, -- module_index: 5, name: L1_ETT2000
        404, -- module_index: 6, name: L1_HTT360er
        166, -- module_index: 7, name: L1_SingleEG26er2p5
        170, -- module_index: 8, name: L1_SingleEG40er2p5
        174, -- module_index: 9, name: L1_SingleEG60
        187, -- module_index: 10, name: L1_SingleIsoEG26er1p5
        189, -- module_index: 11, name: L1_SingleIsoEG28er2p1
        193, -- module_index: 12, name: L1_SingleIsoEG32er2p5
        331, -- module_index: 13, name: L1_SingleJet12erHE
        314, -- module_index: 14, name: L1_SingleJet200
        329, -- module_index: 15, name: L1_SingleJet8erHE
        181, -- module_index: 16, name: L1_SingleLooseIsoEG30er1p5
        205, -- module_index: 17, name: L1_DoubleEG_15_10_er2p5
        208, -- module_index: 18, name: L1_DoubleEG_25_12_er2p5
        212, -- module_index: 19, name: L1_DoubleEG_LooseIso20_10_er2p5
        275, -- module_index: 20, name: L1_DoubleIsoTau32er2p1
        342, -- module_index: 21, name: L1_DoubleJet120er2p5
        273, -- module_index: 22, name: L1_DoubleTau70er2p1
        228, -- module_index: 23, name: L1_TripleEG16er2p5
        227, -- module_index: 24, name: L1_TripleEG_18_18_12_er2p5
          7, -- module_index: 25, name: L1_SingleMu0_OMTF
         14, -- module_index: 26, name: L1_SingleMu12_DQ_OMTF
         32, -- module_index: 27, name: L1_SingleMu16er1p5
         20, -- module_index: 28, name: L1_SingleMu22_BMTF
          9, -- module_index: 29, name: L1_SingleMu3
        119, -- module_index: 30, name: L1_Mu3_Jet30er2p5
         27, -- module_index: 31, name: L1_SingleMu8er1p5
          1, -- module_index: 32, name: L1_SingleMuCosmics_BMTF
        373, -- module_index: 33, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
         39, -- module_index: 34, name: L1_DoubleMu0_OQ
         55, -- module_index: 35, name: L1_DoubleMu0er1p5_SQ
         45, -- module_index: 36, name: L1_DoubleMu10_SQ
         60, -- module_index: 37, name: L1_DoubleMu4_SQ_OS
         64, -- module_index: 38, name: L1_DoubleMu4p5er2p0_SQ_OS
         46, -- module_index: 39, name: L1_DoubleMu_12_5
         48, -- module_index: 40, name: L1_DoubleMu_15_7
        109, -- module_index: 41, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 42, name: L1_DoubleMu5_SQ_EG9er2p5
         71, -- module_index: 43, name: L1_TripleMu0_OQ
         74, -- module_index: 44, name: L1_TripleMu3
         76, -- module_index: 45, name: L1_TripleMu_5SQ_3SQ_0OQ
         86, -- module_index: 46, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         85, -- module_index: 47, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         59, -- module_index: 48, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 49, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         65, -- module_index: 50, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        298, -- module_index: 51, name: L1_QuadJet36er2p5_IsoTau52er2p1
        348, -- module_index: 52, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        353, -- module_index: 53, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        235, -- module_index: 54, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        125, -- module_index: 55, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        134, -- module_index: 56, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        364, -- module_index: 57, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
    others => 0
);

-- ========================================================