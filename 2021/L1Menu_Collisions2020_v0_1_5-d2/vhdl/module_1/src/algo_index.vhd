-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 4132978b-4b38-436f-89a5-ee797d7a9120

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        361, -- module_index: 0, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        112, -- module_index: 1, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        257, -- module_index: 2, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 3, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        352, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        355, -- module_index: 5, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        298, -- module_index: 6, name: L1_QuadJet36er2p5_IsoTau52er2p1
         85, -- module_index: 7, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 8, name: L1_TripleMu_5SQ_3SQ_0OQ
         43, -- module_index: 9, name: L1_DoubleMu0_Mass_Min1
         57, -- module_index: 10, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         37, -- module_index: 11, name: L1_MASSUPT_0_0_10_open
         67, -- module_index: 12, name: L1_MASSUPT_5_5_20_open
         39, -- module_index: 13, name: L1_DoubleMu0_OQ
         51, -- module_index: 14, name: L1_DoubleMu18er2p1
         46, -- module_index: 15, name: L1_DoubleMu_12_5
        106, -- module_index: 16, name: L1_Mu6_DoubleEG15er2p5
        279, -- module_index: 17, name: L1_Mu18er2p1_Tau24er2p1
        285, -- module_index: 18, name: L1_Mu22er2p1_IsoTau34er2p1
         97, -- module_index: 19, name: L1_Mu7_EG20er2p5
         12, -- module_index: 20, name: L1_SingleMu7
        305, -- module_index: 21, name: L1_Mu0upt100
        156, -- module_index: 22, name: L1_Mu0upt20ip3
          7, -- module_index: 23, name: L1_SingleMu0_OMTF
         31, -- module_index: 24, name: L1_SingleMu14er1p5
         20, -- module_index: 25, name: L1_SingleMu22_BMTF
         26, -- module_index: 26, name: L1_SingleMu7er1p5
          2, -- module_index: 27, name: L1_SingleMuCosmics_OMTF
        228, -- module_index: 28, name: L1_TripleEG16er2p5
        247, -- module_index: 29, name: L1_DoubleEG8er2p5_HTT260er
        205, -- module_index: 30, name: L1_DoubleEG_15_10_er2p5
        210, -- module_index: 31, name: L1_DoubleEG_27_14_er2p5
        270, -- module_index: 32, name: L1_DoubleIsoTau30er2p1
        343, -- module_index: 33, name: L1_DoubleJet150er2p5
        188, -- module_index: 34, name: L1_SingleIsoEG28_FWD2p5
        293, -- module_index: 35, name: L1_IsoTau40er2p1_ETMHF100
        421, -- module_index: 36, name: L1_ETMHF100
        240, -- module_index: 37, name: L1_LooseIsoEG28er2p1_HTT100er
        179, -- module_index: 38, name: L1_SingleLooseIsoEG28er2p1
        162, -- module_index: 39, name: L1_SingleEG26er2p5
        169, -- module_index: 40, name: L1_SingleEG38er2p5
        159, -- module_index: 41, name: L1_SingleEG8er2p5
        191, -- module_index: 42, name: L1_SingleIsoEG28er1p5
        194, -- module_index: 43, name: L1_SingleIsoEG32er2p5
        321, -- module_index: 44, name: L1_SingleJet160er2p5
        316, -- module_index: 45, name: L1_SingleJet35er2p5
        175, -- module_index: 46, name: L1_SingleLooseIsoEG26er2p5
        265, -- module_index: 47, name: L1_SingleTau130er2p1
    others => 0
);

-- ========================================================