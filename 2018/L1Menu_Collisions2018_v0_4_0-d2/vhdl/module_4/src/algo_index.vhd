-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_4_0

-- Unique ID of L1 Trigger Menu:
-- e8dddb91-1834-4d3a-ac09-0f3064f4581b

-- Unique ID of firmware implementation:
-- 07139670-e655-4511-8196-29176997bb33

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        511, -- module_index: 2, name: L1_HCAL_LaserMon_Veto
        502, -- module_index: 3, name: L1_TOTEM_3
        198, -- module_index: 4, name: L1_ETM150
        182, -- module_index: 5, name: L1_ETT1200
        169, -- module_index: 6, name: L1_HTT160er
        180, -- module_index: 7, name: L1_HTT400er
         55, -- module_index: 8, name: L1_SingleEG26er2p5
         71, -- module_index: 9, name: L1_SingleEG38er2p5
         64, -- module_index: 10, name: L1_SingleEG45er2p5
         83, -- module_index: 11, name: L1_SingleIsoEG24er1p5
         87, -- module_index: 12, name: L1_SingleIsoEG26er2p1
         92, -- module_index: 13, name: L1_SingleIsoEG28er2p5
         94, -- module_index: 14, name: L1_SingleIsoEG32er2p5
        156, -- module_index: 15, name: L1_SingleJet120er2p5
        138, -- module_index: 16, name: L1_SingleJet150
        158, -- module_index: 17, name: L1_SingleJet160er2p5
        159, -- module_index: 18, name: L1_SingleJet180er2p5
        133, -- module_index: 19, name: L1_SingleJet35
        154, -- module_index: 20, name: L1_SingleJet90er2p5
        118, -- module_index: 21, name: L1_SingleTau120er2p1
        102, -- module_index: 22, name: L1_DoubleEG_20_10_er2p5
        110, -- module_index: 23, name: L1_DoubleEG_25_14_er2p5
        281, -- module_index: 24, name: L1_DoubleEG_LooseIso22_12_er2p5
        129, -- module_index: 25, name: L1_DoubleIsoTau36er2p1
        111, -- module_index: 26, name: L1_DoubleLooseIsoEG22er2p1
        143, -- module_index: 27, name: L1_SingleJet35_FWD
        115, -- module_index: 28, name: L1_TripleEG_16_12_8_er2p5
          5, -- module_index: 29, name: L1_SingleMu0_BMTF
        427, -- module_index: 30, name: L1_SingleMu10er1p5
        428, -- module_index: 31, name: L1_SingleMu12er1p5
         17, -- module_index: 32, name: L1_SingleMu18
         22, -- module_index: 33, name: L1_SingleMu22_EMTF
          9, -- module_index: 34, name: L1_SingleMu5
        238, -- module_index: 35, name: L1_Mu5_EG23er2p5
        242, -- module_index: 36, name: L1_Mu7_LooseIsoEG23er2p5
         10, -- module_index: 37, name: L1_SingleMu7
        239, -- module_index: 38, name: L1_Mu5_LooseIsoEG20er2p5
        240, -- module_index: 39, name: L1_Mu7_EG23er2p5
        241, -- module_index: 40, name: L1_Mu7_LooseIsoEG20er2p5
          3, -- module_index: 41, name: L1_SingleMuCosmics_OMTF
        164, -- module_index: 42, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        390, -- module_index: 43, name: L1_DoubleMu0_SQ
        291, -- module_index: 44, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        290, -- module_index: 45, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        381, -- module_index: 46, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        222, -- module_index: 47, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        504, -- module_index: 48, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        404, -- module_index: 49, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        288, -- module_index: 50, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        216, -- module_index: 51, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        295, -- module_index: 52, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        401, -- module_index: 53, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        445, -- module_index: 54, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        450, -- module_index: 55, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================