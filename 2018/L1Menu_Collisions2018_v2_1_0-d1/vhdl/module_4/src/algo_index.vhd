-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        143, -- module_index: 0, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        126, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        122, -- module_index: 2, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        258, -- module_index: 3, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        348, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        352, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        359, -- module_index: 6, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        298, -- module_index: 7, name: L1_QuadJet36er2p5_IsoTau52er2p1
        494, -- module_index: 8, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
         50, -- module_index: 9, name: L1_DoubleMu_15_7_Mass_Min1
        345, -- module_index: 10, name: L1_DoubleJet100er2p3_dEta_Max1p6
        198, -- module_index: 11, name: L1_IsoEG32er2p5_Mt44
         90, -- module_index: 12, name: L1_QuadMu0_SQ
         75, -- module_index: 13, name: L1_TripleMu3_SQ
        109, -- module_index: 14, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 15, name: L1_DoubleMu5_SQ_EG9er2p5
         51, -- module_index: 16, name: L1_DoubleMu18er2p1
         45, -- module_index: 17, name: L1_DoubleMu9_SQ
        373, -- module_index: 18, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        119, -- module_index: 19, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 20, name: L1_SingleMu3
          7, -- module_index: 21, name: L1_SingleMu0_OMTF
         14, -- module_index: 22, name: L1_SingleMu12_DQ_OMTF
         32, -- module_index: 23, name: L1_SingleMu16er1p5
         22, -- module_index: 24, name: L1_SingleMu22_EMTF
         26, -- module_index: 25, name: L1_SingleMu7er1p5
          3, -- module_index: 26, name: L1_SingleMuCosmics_EMTF
        227, -- module_index: 27, name: L1_TripleEG_18_18_12_er2p5
        212, -- module_index: 28, name: L1_DoubleEG_LooseIso20_10_er2p5
        270, -- module_index: 29, name: L1_DoubleIsoTau30er2p1
        342, -- module_index: 30, name: L1_DoubleJet120er2p5
        163, -- module_index: 31, name: L1_SingleEG28_FWD2p5
        326, -- module_index: 32, name: L1_SingleJet90_FWD3p0
        166, -- module_index: 33, name: L1_SingleEG28er1p5
        167, -- module_index: 34, name: L1_SingleEG34er2p5
        171, -- module_index: 35, name: L1_SingleEG42er2p5
        159, -- module_index: 36, name: L1_SingleEG8er2p5
        185, -- module_index: 37, name: L1_SingleIsoEG26er2p5
        192, -- module_index: 38, name: L1_SingleIsoEG30er2p5
        319, -- module_index: 39, name: L1_SingleJet120er2p5
        314, -- module_index: 40, name: L1_SingleJet200
        311, -- module_index: 41, name: L1_SingleJet90
        178, -- module_index: 42, name: L1_SingleLooseIsoEG28er2p5
        465, -- module_index: 43, name: L1_BptxXOR
        467, -- module_index: 44, name: L1_BptxMinus
        466, -- module_index: 45, name: L1_BptxPlus
        416, -- module_index: 46, name: L1_ETM120
        425, -- module_index: 47, name: L1_ETMHF140
        411, -- module_index: 48, name: L1_ETT1600
        400, -- module_index: 49, name: L1_HTT200er
        406, -- module_index: 50, name: L1_HTT450er
        491, -- module_index: 51, name: L1_BPTX_BeamGas_B1_VME
        482, -- module_index: 52, name: L1_BPTX_NotOR_VME
        485, -- module_index: 53, name: L1_BPTX_RefAND_VME
        478, -- module_index: 54, name: L1_LastCollisionInTrain
        506, -- module_index: 55, name: L1_TOTEM_4
    others => 0
);

-- ========================================================