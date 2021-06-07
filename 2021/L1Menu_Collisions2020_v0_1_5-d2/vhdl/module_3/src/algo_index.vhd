-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        142, -- module_index: 0, name: L1_DoubleMu0_dR_Max1p6_Jet90er2p5_dR_Max0p8
        135, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        113, -- module_index: 2, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        259, -- module_index: 3, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        366, -- module_index: 4, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
         41, -- module_index: 5, name: L1_DoubleMu0_SQ
        365, -- module_index: 6, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        353, -- module_index: 7, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        275, -- module_index: 8, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        384, -- module_index: 9, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        247, -- module_index: 10, name: L1_DoubleEG8er2p5_HTT260er
        450, -- module_index: 11, name: L1_SingleJet20er2p5_NotBptxOR
        428, -- module_index: 12, name: L1_ETMHF90_HTT60er
        291, -- module_index: 13, name: L1_IsoTau40er2p1_ETMHF80
        402, -- module_index: 14, name: L1_HTT280er
        292, -- module_index: 15, name: L1_IsoTau40er2p1_ETMHF90
        151, -- module_index: 16, name: L1_DoubleMu3_SQ_HTT240er
        128, -- module_index: 17, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
          4, -- module_index: 18, name: L1_SingleMuOpen
        152, -- module_index: 19, name: L1_DoubleMu3_SQ_HTT260er
        129, -- module_index: 20, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        451, -- module_index: 21, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        459, -- module_index: 22, name: L1_ZeroBias
        446, -- module_index: 23, name: L1_SingleMuOpen_NotBptxOR
        403, -- module_index: 24, name: L1_HTT320er
        340, -- module_index: 25, name: L1_DoubleJet40er2p5
        460, -- module_index: 26, name: L1_ZeroBias_copy
        385, -- module_index: 27, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        476, -- module_index: 28, name: L1_LastBunchInTrain
        104, -- module_index: 29, name: L1_Mu6_DoubleEG10er2p5
        248, -- module_index: 30, name: L1_DoubleEG8er2p5_HTT280er
        282, -- module_index: 31, name: L1_Mu22er2p1_IsoTau28er2p1
        458, -- module_index: 32, name: L1_AlwaysTrue
        461, -- module_index: 33, name: L1_MinimumBiasHF0_AND_BptxAND
        471, -- module_index: 34, name: L1_IsolatedBunch
        105, -- module_index: 35, name: L1_Mu6_DoubleEG12er2p5
        429, -- module_index: 36, name: L1_ETMHF100_HTT60er
        249, -- module_index: 37, name: L1_DoubleEG8er2p5_HTT300er
        464, -- module_index: 38, name: L1_BptxOR
        386, -- module_index: 39, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        283, -- module_index: 40, name: L1_Mu22er2p1_IsoTau30er2p1
        448, -- module_index: 41, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        421, -- module_index: 42, name: L1_ETMHF100
        332, -- module_index: 43, name: L1_SingleJet140er2p5_ETMHF70
        106, -- module_index: 44, name: L1_Mu6_DoubleEG15er2p5
        250, -- module_index: 45, name: L1_DoubleEG8er2p5_HTT320er
        447, -- module_index: 46, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        387, -- module_index: 47, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        452, -- module_index: 48, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        284, -- module_index: 49, name: L1_Mu22er2p1_IsoTau32er2p1
        107, -- module_index: 50, name: L1_Mu6_DoubleEG17er2p5
        251, -- module_index: 51, name: L1_DoubleEG8er2p5_HTT340er
        285, -- module_index: 52, name: L1_Mu22er2p1_IsoTau34er2p1
        320, -- module_index: 53, name: L1_SingleJet140er2p5
        474, -- module_index: 54, name: L1_SecondBunchInTrain
        422, -- module_index: 55, name: L1_ETMHF110
        453, -- module_index: 56, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        131, -- module_index: 57, name: L1_Mu6_HTT240er
        317, -- module_index: 58, name: L1_SingleJet60er2p5
        430, -- module_index: 59, name: L1_ETMHF110_HTT60er
        286, -- module_index: 60, name: L1_Mu22er2p1_IsoTau36er2p1
        475, -- module_index: 61, name: L1_SecondLastBunchInTrain
        477, -- module_index: 62, name: L1_FirstBunchAfterTrain
        132, -- module_index: 63, name: L1_Mu6_HTT250er
        287, -- module_index: 64, name: L1_Mu22er2p1_IsoTau40er2p1
        423, -- module_index: 65, name: L1_ETMHF120
        333, -- module_index: 66, name: L1_SingleJet140er2p5_ETMHF80
        472, -- module_index: 67, name: L1_FirstBunchBeforeTrain
        146, -- module_index: 68, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        289, -- module_index: 69, name: L1_Mu22er2p1_Tau70er2p1
        473, -- module_index: 70, name: L1_FirstBunchInTrain
        334, -- module_index: 71, name: L1_SingleJet140er2p5_ETMHF90
        293, -- module_index: 72, name: L1_IsoTau40er2p1_ETMHF100
        443, -- module_index: 73, name: L1_ETMHF120_NotSecondBunchInTrain
        150, -- module_index: 74, name: L1_DoubleMu3_SQ_HTT220er
        424, -- module_index: 75, name: L1_ETMHF130
        148, -- module_index: 76, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        432, -- module_index: 77, name: L1_ETMHF130_HTT60er
        145, -- module_index: 78, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        431, -- module_index: 79, name: L1_ETMHF120_HTT60er
        463, -- module_index: 80, name: L1_NotBptxOR
        444, -- module_index: 81, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        147, -- module_index: 82, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        294, -- module_index: 83, name: L1_IsoTau40er2p1_ETMHF110
        199, -- module_index: 84, name: L1_IsoEG32er2p5_Mt48
         88, -- module_index: 85, name: L1_QuadMu0_OQ
         90, -- module_index: 86, name: L1_QuadMu0_SQ
         73, -- module_index: 87, name: L1_TripleMu0_SQ
         78, -- module_index: 88, name: L1_TripleMu_5_3_3
         42, -- module_index: 89, name: L1_DoubleMu0_SQ_OS
         62, -- module_index: 90, name: L1_DoubleMu4p5_SQ_OS
         48, -- module_index: 91, name: L1_DoubleMu_15_7
        119, -- module_index: 92, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 93, name: L1_SingleMu3
        153, -- module_index: 94, name: L1_Mu0upt20ip0
        301, -- module_index: 95, name: L1_Mu0upt5
          7, -- module_index: 96, name: L1_SingleMu0_OMTF
         31, -- module_index: 97, name: L1_SingleMu14er1p5
         20, -- module_index: 98, name: L1_SingleMu22_BMTF
         26, -- module_index: 99, name: L1_SingleMu7er1p5
          2, -- module_index: 100, name: L1_SingleMuCosmics_OMTF
        225, -- module_index: 101, name: L1_TripleEG_16_15_8_er2p5
        208, -- module_index: 102, name: L1_DoubleEG_25_12_er2p5
        215, -- module_index: 103, name: L1_DoubleEG_LooseIso25_12_er2p5
        341, -- module_index: 104, name: L1_DoubleJet100er2p5
        163, -- module_index: 105, name: L1_SingleEG28_FWD2p5
        177, -- module_index: 106, name: L1_SingleLooseIsoEG28_FWD2p5
        169, -- module_index: 107, name: L1_SingleEG38er2p5
        174, -- module_index: 108, name: L1_SingleEG60
        186, -- module_index: 109, name: L1_SingleIsoEG26er2p1
        192, -- module_index: 110, name: L1_SingleIsoEG30er2p5
        331, -- module_index: 111, name: L1_SingleJet12erHE
        316, -- module_index: 112, name: L1_SingleJet35er2p5
        175, -- module_index: 113, name: L1_SingleLooseIsoEG26er2p5
        265, -- module_index: 114, name: L1_SingleTau130er2p1
    others => 0
);

-- ========================================================