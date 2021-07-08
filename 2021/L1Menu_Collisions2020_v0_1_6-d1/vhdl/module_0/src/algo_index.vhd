-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_6

-- Unique ID of L1 Trigger Menu:
-- 272a3710-a984-42d5-a8e6-2d4ffb8b7a2e

-- Unique ID of firmware implementation:
-- f344731e-51dc-4ff8-a41c-a33671803224

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.2

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        312, -- module_index: 1, name: L1_SingleJet120
        361, -- module_index: 2, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        353, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        275, -- module_index: 4, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        143, -- module_index: 5, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        121, -- module_index: 6, name: L1_Mu3_Jet16er2p5_dR_Max0p4
         83, -- module_index: 7, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 8, name: L1_TripleMu_5_3p5_2p5
         84, -- module_index: 9, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        384, -- module_index: 10, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        471, -- module_index: 11, name: L1_IsolatedBunch
        285, -- module_index: 12, name: L1_Mu22er2p1_IsoTau34er2p1
        403, -- module_index: 13, name: L1_HTT320er
        476, -- module_index: 14, name: L1_LastBunchInTrain
        104, -- module_index: 15, name: L1_Mu6_DoubleEG10er2p5
        146, -- module_index: 16, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        320, -- module_index: 17, name: L1_SingleJet140er2p5
        422, -- module_index: 18, name: L1_ETMHF110
        286, -- module_index: 19, name: L1_Mu22er2p1_IsoTau36er2p1
        453, -- module_index: 20, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        385, -- module_index: 21, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        464, -- module_index: 22, name: L1_BptxOR
        472, -- module_index: 23, name: L1_FirstBunchBeforeTrain
        332, -- module_index: 24, name: L1_SingleJet140er2p5_ETMHF70
        430, -- module_index: 25, name: L1_ETMHF110_HTT60er
        386, -- module_index: 26, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        148, -- module_index: 27, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        105, -- module_index: 28, name: L1_Mu6_DoubleEG12er2p5
        287, -- module_index: 29, name: L1_Mu22er2p1_IsoTau40er2p1
        106, -- module_index: 30, name: L1_Mu6_DoubleEG15er2p5
        473, -- module_index: 31, name: L1_FirstBunchInTrain
        150, -- module_index: 32, name: L1_DoubleMu3_SQ_HTT220er
        333, -- module_index: 33, name: L1_SingleJet140er2p5_ETMHF80
        444, -- module_index: 34, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        429, -- module_index: 35, name: L1_ETMHF100_HTT60er
        289, -- module_index: 36, name: L1_Mu22er2p1_Tau70er2p1
        387, -- module_index: 37, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        107, -- module_index: 38, name: L1_Mu6_DoubleEG17er2p5
        334, -- module_index: 39, name: L1_SingleJet140er2p5_ETMHF90
        317, -- module_index: 40, name: L1_SingleJet60er2p5
        151, -- module_index: 41, name: L1_DoubleMu3_SQ_HTT240er
        459, -- module_index: 42, name: L1_ZeroBias
        423, -- module_index: 43, name: L1_ETMHF120
        247, -- module_index: 44, name: L1_DoubleEG8er2p5_HTT260er
        131, -- module_index: 45, name: L1_Mu6_HTT240er
        152, -- module_index: 46, name: L1_DoubleMu3_SQ_HTT260er
        460, -- module_index: 47, name: L1_ZeroBias_copy
        431, -- module_index: 48, name: L1_ETMHF120_HTT60er
        248, -- module_index: 49, name: L1_DoubleEG8er2p5_HTT280er
        132, -- module_index: 50, name: L1_Mu6_HTT250er
        474, -- module_index: 51, name: L1_SecondBunchInTrain
        443, -- module_index: 52, name: L1_ETMHF120_NotSecondBunchInTrain
          4, -- module_index: 53, name: L1_SingleMuOpen
        249, -- module_index: 54, name: L1_DoubleEG8er2p5_HTT300er
        475, -- module_index: 55, name: L1_SecondLastBunchInTrain
        424, -- module_index: 56, name: L1_ETMHF130
        461, -- module_index: 57, name: L1_MinimumBiasHF0_AND_BptxAND
        446, -- module_index: 58, name: L1_SingleMuOpen_NotBptxOR
        250, -- module_index: 59, name: L1_DoubleEG8er2p5_HTT320er
        432, -- module_index: 60, name: L1_ETMHF130_HTT60er
        145, -- module_index: 61, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        448, -- module_index: 62, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        251, -- module_index: 63, name: L1_DoubleEG8er2p5_HTT340er
        450, -- module_index: 64, name: L1_SingleJet20er2p5_NotBptxOR
        447, -- module_index: 65, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        451, -- module_index: 66, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        293, -- module_index: 67, name: L1_IsoTau40er2p1_ETMHF100
        284, -- module_index: 68, name: L1_Mu22er2p1_IsoTau32er2p1
        458, -- module_index: 69, name: L1_AlwaysTrue
        463, -- module_index: 70, name: L1_NotBptxOR
        282, -- module_index: 71, name: L1_Mu22er2p1_IsoTau28er2p1
        128, -- module_index: 72, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        294, -- module_index: 73, name: L1_IsoTau40er2p1_ETMHF110
        428, -- module_index: 74, name: L1_ETMHF90_HTT60er
        421, -- module_index: 75, name: L1_ETMHF100
        402, -- module_index: 76, name: L1_HTT280er
        283, -- module_index: 77, name: L1_Mu22er2p1_IsoTau30er2p1
        129, -- module_index: 78, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        291, -- module_index: 79, name: L1_IsoTau40er2p1_ETMHF80
        452, -- module_index: 80, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        340, -- module_index: 81, name: L1_DoubleJet40er2p5
        477, -- module_index: 82, name: L1_FirstBunchAfterTrain
        292, -- module_index: 83, name: L1_IsoTau40er2p1_ETMHF90
        147, -- module_index: 84, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
    others => 0
);

-- ========================================================