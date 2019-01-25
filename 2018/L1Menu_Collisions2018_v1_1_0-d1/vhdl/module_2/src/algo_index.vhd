-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- 51f73297-2540-4cfa-8acd-992b0bd85f0f

-- Unique ID of firmware implementation:
-- 41e72266-8790-4da2-bf65-0255762b01df

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        488, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        483, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        479, -- module_index: 2, name: L1_FirstCollisionInTrain
        503, -- module_index: 3, name: L1_TOTEM_1
        468, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        410, -- module_index: 5, name: L1_ETT1200
        400, -- module_index: 6, name: L1_HTT200er
        160, -- module_index: 7, name: L1_SingleEG10er2p5
         99, -- module_index: 8, name: L1_Mu20_EG10er2p5
         18, -- module_index: 9, name: L1_SingleMu20
        190, -- module_index: 10, name: L1_SingleIsoEG28er2p1
        194, -- module_index: 11, name: L1_SingleIsoEG32er2p5
        331, -- module_index: 12, name: L1_SingleJet12erHE
        314, -- module_index: 13, name: L1_SingleJet200
        329, -- module_index: 14, name: L1_SingleJet8erHE
        175, -- module_index: 15, name: L1_SingleLooseIsoEG26er2p5
        182, -- module_index: 16, name: L1_SingleLooseIsoEG30er1p5
        271, -- module_index: 17, name: L1_SingleTau130er2p1
        207, -- module_index: 18, name: L1_DoubleEG_22_10_er2p5
        212, -- module_index: 19, name: L1_DoubleEG_LooseIso20_10_er2p5
        275, -- module_index: 20, name: L1_DoubleIsoTau32er2p1
        342, -- module_index: 21, name: L1_DoubleJet120er2p5
        273, -- module_index: 22, name: L1_DoubleTau70er2p1
        324, -- module_index: 23, name: L1_SingleJet35_FWD3p0
        228, -- module_index: 24, name: L1_TripleEG16er2p5
        227, -- module_index: 25, name: L1_TripleEG_18_18_12_er2p5
          7, -- module_index: 26, name: L1_SingleMu0_OMTF
         14, -- module_index: 27, name: L1_SingleMu12_DQ_OMTF
         32, -- module_index: 28, name: L1_SingleMu16er1p5
         20, -- module_index: 29, name: L1_SingleMu22_BMTF
          9, -- module_index: 30, name: L1_SingleMu3
        119, -- module_index: 31, name: L1_Mu3_Jet30er2p5
         26, -- module_index: 32, name: L1_SingleMu7er1p5
          0, -- module_index: 33, name: L1_SingleMuCosmics
          2, -- module_index: 34, name: L1_SingleMuCosmics_OMTF
        372, -- module_index: 35, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        376, -- module_index: 36, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
         80, -- module_index: 37, name: L1_TripleMu_5_5_3
         89, -- module_index: 38, name: L1_QuadMu0
         88, -- module_index: 39, name: L1_QuadMu0_OQ
         90, -- module_index: 40, name: L1_QuadMu0_SQ
        198, -- module_index: 41, name: L1_IsoEG32er2p5_Mt44
        345, -- module_index: 42, name: L1_DoubleJet100er2p3_dEta_Max1p6
         57, -- module_index: 43, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         63, -- module_index: 44, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         50, -- module_index: 45, name: L1_DoubleMu_15_7_Mass_Min1
        279, -- module_index: 46, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        359, -- module_index: 47, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        352, -- module_index: 48, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        234, -- module_index: 49, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        126, -- module_index: 50, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        124, -- module_index: 51, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        363, -- module_index: 52, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
    others => 0
);

-- ========================================================