-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        143, -- module_index: 0, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        136, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        122, -- module_index: 2, name: L1_Mu3_Jet35er2p5_dR_Max0p4
        258, -- module_index: 3, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        348, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        353, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        275, -- module_index: 6, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        384, -- module_index: 7, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        402, -- module_index: 8, name: L1_HTT280er
         86, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         66, -- module_index: 10, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
         54, -- module_index: 11, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         34, -- module_index: 12, name: L1_MASSUPT_0_0_20
        345, -- module_index: 13, name: L1_DoubleJet100er2p3_dEta_Max1p6
         60, -- module_index: 14, name: L1_DoubleMu4_SQ_OS
         47, -- module_index: 15, name: L1_DoubleMu_15_5_SQ
        107, -- module_index: 16, name: L1_Mu6_DoubleEG17er2p5
        282, -- module_index: 17, name: L1_Mu22er2p1_IsoTau28er2p1
        289, -- module_index: 18, name: L1_Mu22er2p1_Tau70er2p1
         96, -- module_index: 19, name: L1_Mu5_EG23er2p5
         10, -- module_index: 20, name: L1_SingleMu5
        131, -- module_index: 21, name: L1_Mu6_HTT240er
        132, -- module_index: 22, name: L1_Mu6_HTT250er
        300, -- module_index: 23, name: L1_Mu0upt0
        157, -- module_index: 24, name: L1_Mu0upt20ip03
          6, -- module_index: 25, name: L1_SingleMu0_BMTF
         15, -- module_index: 26, name: L1_SingleMu12_DQ_EMTF
         17, -- module_index: 27, name: L1_SingleMu18
         23, -- module_index: 28, name: L1_SingleMu25
          0, -- module_index: 29, name: L1_SingleMuCosmics
        308, -- module_index: 30, name: L1_SingleMuOpenupt100
        225, -- module_index: 31, name: L1_TripleEG_16_15_8_er2p5
        249, -- module_index: 32, name: L1_DoubleEG8er2p5_HTT300er
        207, -- module_index: 33, name: L1_DoubleEG_22_10_er2p5
        214, -- module_index: 34, name: L1_DoubleEG_LooseIso22_12_er2p5
        273, -- module_index: 35, name: L1_DoubleIsoTau36er2p1
        218, -- module_index: 36, name: L1_DoubleLooseIsoEG24er2p1
        325, -- module_index: 37, name: L1_SingleJet60_FWD3p0
        241, -- module_index: 38, name: L1_LooseIsoEG30er2p1_HTT100er
        166, -- module_index: 39, name: L1_SingleEG28er1p5
        170, -- module_index: 40, name: L1_SingleEG40er2p5
        184, -- module_index: 41, name: L1_SingleIsoEG24er1p5
        190, -- module_index: 42, name: L1_SingleIsoEG28er2p1
        196, -- module_index: 43, name: L1_SingleIsoEG34er2p5
        313, -- module_index: 44, name: L1_SingleJet180
        310, -- module_index: 45, name: L1_SingleJet60
        180, -- module_index: 46, name: L1_SingleLooseIsoEG28er1p5
        429, -- module_index: 47, name: L1_ETMHF100_HTT60er
        430, -- module_index: 48, name: L1_ETMHF110_HTT60er
        444, -- module_index: 49, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        474, -- module_index: 50, name: L1_SecondBunchInTrain
        443, -- module_index: 51, name: L1_ETMHF120_NotSecondBunchInTrain
        473, -- module_index: 52, name: L1_FirstBunchInTrain
        431, -- module_index: 53, name: L1_ETMHF120_HTT60er
        423, -- module_index: 54, name: L1_ETMHF120
        432, -- module_index: 55, name: L1_ETMHF130_HTT60er
        424, -- module_index: 56, name: L1_ETMHF130
        425, -- module_index: 57, name: L1_ETMHF140
        412, -- module_index: 58, name: L1_ETT2000
        401, -- module_index: 59, name: L1_HTT255er
        461, -- module_index: 60, name: L1_MinimumBiasHF0_AND_BptxAND
    others => 0
);

-- ========================================================