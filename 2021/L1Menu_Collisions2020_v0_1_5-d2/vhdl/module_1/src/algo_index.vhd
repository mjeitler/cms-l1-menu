-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- dc57c735-a5e1-42af-83aa-e544104a35c4

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        363, -- module_index: 0, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
        125, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        123, -- module_index: 2, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        234, -- module_index: 3, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        349, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        356, -- module_index: 5, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        355, -- module_index: 6, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        277, -- module_index: 7, name: L1_DoubleIsoTau30er2p1_Mass_Max80
         85, -- module_index: 8, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0OQ
         86, -- module_index: 10, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         66, -- module_index: 11, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         57, -- module_index: 12, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         63, -- module_index: 13, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         52, -- module_index: 14, name: L1_MASSUPT_5_5_10_open
        197, -- module_index: 15, name: L1_IsoEG32er2p5_Mt40
        198, -- module_index: 16, name: L1_IsoEG32er2p5_Mt44
         89, -- module_index: 17, name: L1_QuadMu0
         69, -- module_index: 18, name: L1_QuadMu0_OQ_OS
         72, -- module_index: 19, name: L1_TripleMu0
         74, -- module_index: 20, name: L1_TripleMu3
        109, -- module_index: 21, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 22, name: L1_DoubleMu5_SQ_EG9er2p5
         44, -- module_index: 23, name: L1_DoubleMu8_SQ
        373, -- module_index: 24, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
         96, -- module_index: 25, name: L1_Mu5_EG23er2p5
        101, -- module_index: 26, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 27, name: L1_Mu5_LooseIsoEG20er2p5
         12, -- module_index: 28, name: L1_SingleMu7
        102, -- module_index: 29, name: L1_Mu7_LooseIsoEG23er2p5
         10, -- module_index: 30, name: L1_SingleMu5
         97, -- module_index: 31, name: L1_Mu7_EG20er2p5
         98, -- module_index: 32, name: L1_Mu7_EG23er2p5
         13, -- module_index: 33, name: L1_SingleMu12_DQ_BMTF
         32, -- module_index: 34, name: L1_SingleMu16er1p5
         21, -- module_index: 35, name: L1_SingleMu22_OMTF
         28, -- module_index: 36, name: L1_SingleMu9er1p5
        307, -- module_index: 37, name: L1_SingleMuOpenupt20
        227, -- module_index: 38, name: L1_TripleEG_18_18_12_er2p5
        214, -- module_index: 39, name: L1_DoubleEG_LooseIso22_12_er2p5
        273, -- module_index: 40, name: L1_DoubleIsoTau36er2p1
        267, -- module_index: 41, name: L1_DoubleTau70er2p1
        326, -- module_index: 42, name: L1_SingleJet90_FWD3p0
        165, -- module_index: 43, name: L1_SingleEG28er2p1
        170, -- module_index: 44, name: L1_SingleEG40er2p5
        159, -- module_index: 45, name: L1_SingleEG8er2p5
        185, -- module_index: 46, name: L1_SingleIsoEG26er2p5
        195, -- module_index: 47, name: L1_SingleIsoEG32er2p1
        321, -- module_index: 48, name: L1_SingleJet160er2p5
        310, -- module_index: 49, name: L1_SingleJet60
        180, -- module_index: 50, name: L1_SingleLooseIsoEG28er1p5
        416, -- module_index: 51, name: L1_ETM120
        417, -- module_index: 52, name: L1_ETM150
        425, -- module_index: 53, name: L1_ETMHF140
        426, -- module_index: 54, name: L1_ETMHF150
        410, -- module_index: 55, name: L1_ETT1200
        412, -- module_index: 56, name: L1_ETT2000
        400, -- module_index: 57, name: L1_HTT200er
        406, -- module_index: 58, name: L1_HTT450er
    others => 0
);

-- ========================================================