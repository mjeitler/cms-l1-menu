-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        511, -- module_index: 2, name: L1_EXT_HCAL_LaserMon_4
        479, -- module_index: 3, name: L1_UnpairedBunchBptxMinus
        196, -- module_index: 4, name: L1_ETM115
        184, -- module_index: 5, name: L1_ETM40
        192, -- module_index: 6, name: L1_ETM95
        169, -- module_index: 7, name: L1_HTT160er
        180, -- module_index: 8, name: L1_HTT400er
        182, -- module_index: 9, name: L1_HTT500er
         55, -- module_index: 10, name: L1_SingleEG26
         59, -- module_index: 11, name: L1_SingleEG34
         69, -- module_index: 12, name: L1_SingleEG34er2p5
         67, -- module_index: 13, name: L1_SingleEG36er2p1
         61, -- module_index: 14, name: L1_SingleEG38
         71, -- module_index: 15, name: L1_SingleEG38er2p5
         72, -- module_index: 16, name: L1_SingleEG40er2p5
         78, -- module_index: 17, name: L1_SingleEG42er2p5
         50, -- module_index: 18, name: L1_SingleEG5
         86, -- module_index: 19, name: L1_SingleIsoEG24er2p1
         87, -- module_index: 20, name: L1_SingleIsoEG26er2p1
         74, -- module_index: 21, name: L1_SingleIsoEG28
         92, -- module_index: 22, name: L1_SingleIsoEG28er2p5
         89, -- module_index: 23, name: L1_SingleIsoEG30er2p1
         76, -- module_index: 24, name: L1_SingleIsoEG32
         77, -- module_index: 25, name: L1_SingleIsoEG34
        136, -- module_index: 26, name: L1_SingleJet120
        138, -- module_index: 27, name: L1_SingleJet150
        140, -- module_index: 28, name: L1_SingleJet170
        142, -- module_index: 29, name: L1_SingleJet200
        147, -- module_index: 30, name: L1_SingleJet35_HFp
        507, -- module_index: 31, name: L1_SingleJet8erHE
        427, -- module_index: 32, name: L1_EG25er2p1_HTT125er
        110, -- module_index: 33, name: L1_DoubleEG_25_14
        125, -- module_index: 34, name: L1_DoubleIsoTau32er2p1
        156, -- module_index: 35, name: L1_DoubleJet112er2p7
        152, -- module_index: 36, name: L1_DoubleJet50er2p7
        122, -- module_index: 37, name: L1_DoubleTau70er2p1
        145, -- module_index: 38, name: L1_SingleJet90_FWD
          7, -- module_index: 39, name: L1_SingleMu0_EMTF
         15, -- module_index: 40, name: L1_SingleMu12_LowQ_EMTF
         20, -- module_index: 41, name: L1_SingleMu22_BMTF
          8, -- module_index: 42, name: L1_SingleMu3
        371, -- module_index: 43, name: L1_Mu3_Jet30er2p5
          3, -- module_index: 44, name: L1_SingleMuCosmics_OMTF
        390, -- module_index: 45, name: L1_DoubleMu0_SQ
         38, -- module_index: 46, name: L1_DoubleMu22er2p1
        394, -- module_index: 47, name: L1_DoubleMu4p5er2p0_SQ_OS
         32, -- module_index: 48, name: L1_DoubleMu_12_5
        406, -- module_index: 49, name: L1_DoubleMu7_EG7
        365, -- module_index: 50, name: L1_DoubleMu7_SQ_EG7
        399, -- module_index: 51, name: L1_TripleMu0_OQ
        400, -- module_index: 52, name: L1_TripleMu_5SQ_3SQ_0OQ
         44, -- module_index: 53, name: L1_TripleMu_5_5_3
        431, -- module_index: 54, name: L1_ETM75_Jet60_dPhi_Min0p4
         45, -- module_index: 55, name: L1_QuadMu0
         99, -- module_index: 56, name: L1_IsoEG33_Mt48
        251, -- module_index: 57, name: L1_DoubleJet100er2p3_dEta_Max1p6
        223, -- module_index: 58, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        378, -- module_index: 59, name: L1_DoubleMu5_SQ_OS_Mass7to18
        167, -- module_index: 60, name: L1_QuadJet60er2p7
        217, -- module_index: 61, name: L1_DoubleJet30_Mass_Min320_dEta_Max1p5
        294, -- module_index: 62, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        445, -- module_index: 63, name: L1_Mu3_Jet120er2p7_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 64, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================