-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- 409fce06-5701-4b18-9364-39736bfcaf88

-- Unique ID of firmware implementation:
-- 324ed470-bdf0-4315-a64f-da3b4bc3343c

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        486, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        490, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        464, -- module_index: 2, name: L1_BptxOR
        422, -- module_index: 3, name: L1_ETMHF110
        146, -- module_index: 4, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        334, -- module_index: 5, name: L1_SingleJet140er2p5_ETMHF90
        459, -- module_index: 6, name: L1_ZeroBias
        286, -- module_index: 7, name: L1_Mu22er2p1_IsoTau36er2p1
        454, -- module_index: 8, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        472, -- module_index: 9, name: L1_FirstBunchBeforeTrain
        131, -- module_index: 10, name: L1_Mu6_HTT240er
        284, -- module_index: 11, name: L1_Mu22er2p1_IsoTau32er2p1
        402, -- module_index: 12, name: L1_HTT280er
        104, -- module_index: 13, name: L1_Mu6_DoubleEG10er2p5
        333, -- module_index: 14, name: L1_SingleJet140er2p5_ETMHF80
        460, -- module_index: 15, name: L1_ZeroBias_copy
        430, -- module_index: 16, name: L1_ETMHF110_HTT60er
        148, -- module_index: 17, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        423, -- module_index: 18, name: L1_ETMHF120
        403, -- module_index: 19, name: L1_HTT320er
        444, -- module_index: 20, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        387, -- module_index: 21, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        296, -- module_index: 22, name: L1_IsoTau40er2p1_ETMHF120
        473, -- module_index: 23, name: L1_FirstBunchInTrain
        461, -- module_index: 24, name: L1_MinimumBiasHF0_AND_BptxAND
        105, -- module_index: 25, name: L1_Mu6_DoubleEG12er2p5
        106, -- module_index: 26, name: L1_Mu6_DoubleEG15er2p5
        289, -- module_index: 27, name: L1_Mu22er2p1_Tau70er2p1
        386, -- module_index: 28, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        320, -- module_index: 29, name: L1_SingleJet140er2p5
        152, -- module_index: 30, name: L1_DoubleMu3_SQ_HTT260er
        295, -- module_index: 31, name: L1_IsoTau40er2p1_ETMHF110
        424, -- module_index: 32, name: L1_ETMHF130
        474, -- module_index: 33, name: L1_SecondBunchInTrain
        293, -- module_index: 34, name: L1_IsoTau40er2p1_ETMHF90
        107, -- module_index: 35, name: L1_Mu6_DoubleEG17er2p5
        432, -- module_index: 36, name: L1_ETMHF130_HTT60er
        251, -- module_index: 37, name: L1_DoubleEG8er2p5_HTT340er
        129, -- module_index: 38, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        317, -- module_index: 39, name: L1_SingleJet60er2p5
        385, -- module_index: 40, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        421, -- module_index: 41, name: L1_ETMHF100
        476, -- module_index: 42, name: L1_LastBunchInTrain
        145, -- module_index: 43, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        447, -- module_index: 44, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        448, -- module_index: 45, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        294, -- module_index: 46, name: L1_IsoTau40er2p1_ETMHF100
        458, -- module_index: 47, name: L1_AlwaysTrue
        477, -- module_index: 48, name: L1_FirstBunchAfterTrain
        431, -- module_index: 49, name: L1_ETMHF120_HTT60er
          4, -- module_index: 50, name: L1_SingleMuOpen
        150, -- module_index: 51, name: L1_DoubleMu3_SQ_HTT220er
        443, -- module_index: 52, name: L1_ETMHF120_NotSecondBunchInTrain
        250, -- module_index: 53, name: L1_DoubleEG8er2p5_HTT320er
        151, -- module_index: 54, name: L1_DoubleMu3_SQ_HTT240er
        340, -- module_index: 55, name: L1_DoubleJet40er2p5
        132, -- module_index: 56, name: L1_Mu6_HTT250er
        446, -- module_index: 57, name: L1_SingleMuOpen_NotBptxOR
        471, -- module_index: 58, name: L1_IsolatedBunch
        475, -- module_index: 59, name: L1_SecondLastBunchInTrain
        428, -- module_index: 60, name: L1_ETMHF90_HTT60er
        429, -- module_index: 61, name: L1_ETMHF100_HTT60er
        287, -- module_index: 62, name: L1_Mu22er2p1_IsoTau40er2p1
        384, -- module_index: 63, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        147, -- module_index: 64, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        450, -- module_index: 65, name: L1_SingleJet20er2p5_NotBptxOR
        249, -- module_index: 66, name: L1_DoubleEG8er2p5_HTT300er
        248, -- module_index: 67, name: L1_DoubleEG8er2p5_HTT280er
        128, -- module_index: 68, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        452, -- module_index: 69, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        285, -- module_index: 70, name: L1_Mu22er2p1_IsoTau34er2p1
        451, -- module_index: 71, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        463, -- module_index: 72, name: L1_NotBptxOR
        247, -- module_index: 73, name: L1_DoubleEG8er2p5_HTT260er
        382, -- module_index: 74, name: L1_QuadJet60er2p5
        359, -- module_index: 75, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        352, -- module_index: 76, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        234, -- module_index: 77, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        126, -- module_index: 78, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        124, -- module_index: 79, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        363, -- module_index: 80, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
    others => 0
);

-- ========================================================