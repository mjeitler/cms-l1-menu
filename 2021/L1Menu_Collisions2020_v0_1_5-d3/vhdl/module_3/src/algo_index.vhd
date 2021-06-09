-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        113, -- module_index: 0, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        348, -- module_index: 1, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        357, -- module_index: 2, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        358, -- module_index: 3, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        359, -- module_index: 4, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        142, -- module_index: 5, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
        136, -- module_index: 6, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        126, -- module_index: 7, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        121, -- module_index: 8, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        124, -- module_index: 9, name: L1_Mu3_Jet80er2p5_dR_Max0p4
         82, -- module_index: 10, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
         66, -- module_index: 11, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         43, -- module_index: 12, name: L1_DoubleMu0_Mass_Min1
         59, -- module_index: 13, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         57, -- module_index: 14, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         61, -- module_index: 15, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        345, -- module_index: 16, name: L1_DoubleJet100er2p3_dEta_Max1p6
        384, -- module_index: 17, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        402, -- module_index: 18, name: L1_HTT280er
        382, -- module_index: 19, name: L1_QuadJet60er2p5
        372, -- module_index: 20, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        227, -- module_index: 21, name: L1_TripleEG_18_18_12_er2p5
        270, -- module_index: 22, name: L1_DoubleIsoTau30er2p1
        188, -- module_index: 23, name: L1_SingleIsoEG28_FWD2p5
        215, -- module_index: 24, name: L1_DoubleEG_LooseIso25_12_er2p5
        251, -- module_index: 25, name: L1_DoubleEG8er2p5_HTT340er
        209, -- module_index: 26, name: L1_DoubleEG_25_14_er2p5
        340, -- module_index: 27, name: L1_DoubleJet40er2p5
        325, -- module_index: 28, name: L1_SingleJet60_FWD3p0
        284, -- module_index: 29, name: L1_Mu22er2p1_IsoTau32er2p1
        128, -- module_index: 30, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        129, -- module_index: 31, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        101, -- module_index: 32, name: L1_Mu7_LooseIsoEG20er2p5
         12, -- module_index: 33, name: L1_SingleMu7
        330, -- module_index: 34, name: L1_SingleJet10erHE
        119, -- module_index: 35, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 36, name: L1_SingleMu3
         37, -- module_index: 37, name: L1_MASSUPT_0_0_10_open
         72, -- module_index: 38, name: L1_TripleMu0
         74, -- module_index: 39, name: L1_TripleMu3
         79, -- module_index: 40, name: L1_TripleMu_5_3_3_SQ
        294, -- module_index: 41, name: L1_IsoTau40er2p1_ETMHF110
        422, -- module_index: 42, name: L1_ETMHF110
        239, -- module_index: 43, name: L1_LooseIsoEG26er2p1_HTT100er
        197, -- module_index: 44, name: L1_IsoEG32er2p5_Mt40
        184, -- module_index: 45, name: L1_SingleIsoEG24er1p5
        187, -- module_index: 46, name: L1_SingleIsoEG26er1p5
        190, -- module_index: 47, name: L1_SingleIsoEG28er2p1
        195, -- module_index: 48, name: L1_SingleIsoEG32er2p1
        175, -- module_index: 49, name: L1_SingleLooseIsoEG26er2p5
        181, -- module_index: 50, name: L1_SingleLooseIsoEG30er2p5
         36, -- module_index: 51, name: L1_MASSUPT_5_5_20
         14, -- module_index: 52, name: L1_SingleMu12_DQ_OMTF
        333, -- module_index: 53, name: L1_SingleJet140er2p5_ETMHF80
        161, -- module_index: 54, name: L1_SingleEG15er2p5
        164, -- module_index: 55, name: L1_SingleEG28er2p5
        171, -- module_index: 56, name: L1_SingleEG42er2p5
        322, -- module_index: 57, name: L1_SingleJet180er2p5
          3, -- module_index: 58, name: L1_SingleMuCosmics_EMTF
        150, -- module_index: 59, name: L1_DoubleMu3_SQ_HTT220er
         60, -- module_index: 60, name: L1_DoubleMu4_SQ_OS
         44, -- module_index: 61, name: L1_DoubleMu8_SQ
         48, -- module_index: 62, name: L1_DoubleMu_15_7
         13, -- module_index: 63, name: L1_SingleMu12_DQ_BMTF
         33, -- module_index: 64, name: L1_SingleMu18er1p5
         27, -- module_index: 65, name: L1_SingleMu8er1p5
        155, -- module_index: 66, name: L1_Mu0upt20ip2
        306, -- module_index: 67, name: L1_SingleMuOpenupt5
        301, -- module_index: 68, name: L1_Mu0upt5
        174, -- module_index: 69, name: L1_SingleEG60
        310, -- module_index: 70, name: L1_SingleJet60
         19, -- module_index: 71, name: L1_SingleMu22
        429, -- module_index: 72, name: L1_ETMHF100_HTT60er
        432, -- module_index: 73, name: L1_ETMHF130_HTT60er
        424, -- module_index: 74, name: L1_ETMHF130
        426, -- module_index: 75, name: L1_ETMHF150
        398, -- module_index: 76, name: L1_HTT120er
        405, -- module_index: 77, name: L1_HTT400er
        491, -- module_index: 78, name: L1_BPTX_BeamGas_B1_VME
        483, -- module_index: 79, name: L1_BPTX_OR_Ref3_VME
        472, -- module_index: 80, name: L1_FirstBunchBeforeTrain
        501, -- module_index: 81, name: L1_HCAL_LaserMon_Veto
        504, -- module_index: 82, name: L1_TOTEM_2
    others => 0
);

-- ========================================================