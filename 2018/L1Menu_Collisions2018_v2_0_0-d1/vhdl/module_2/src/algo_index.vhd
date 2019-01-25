-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- 162b5874-65c5-446b-9c69-261e1dde5400

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        364, -- module_index: 0, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
        121, -- module_index: 1, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        123, -- module_index: 2, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        234, -- module_index: 3, name: L1_LooseIsoEG26er2p1_Jet34er2p5_dR_Min0p3
        349, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        356, -- module_index: 5, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        355, -- module_index: 6, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        376, -- module_index: 7, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        372, -- module_index: 8, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        384, -- module_index: 9, name: L1_HTT280er_QuadJet_70_55_40_35_er2p4
        249, -- module_index: 10, name: L1_DoubleEG8er2p5_HTT300er
        292, -- module_index: 11, name: L1_IsoTau40er2p1_ETMHF90
        448, -- module_index: 12, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        450, -- module_index: 13, name: L1_SingleJet20er2p5_NotBptxOR
        424, -- module_index: 14, name: L1_ETMHF130
        317, -- module_index: 15, name: L1_SingleJet60er2p5
        451, -- module_index: 16, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        432, -- module_index: 17, name: L1_ETMHF130_HTT60er
        474, -- module_index: 18, name: L1_SecondBunchInTrain
        476, -- module_index: 19, name: L1_LastBunchInTrain
        387, -- module_index: 20, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        129, -- module_index: 21, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        475, -- module_index: 22, name: L1_SecondLastBunchInTrain
        152, -- module_index: 23, name: L1_DoubleMu3_SQ_HTT260er
        447, -- module_index: 24, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        472, -- module_index: 25, name: L1_FirstBunchBeforeTrain
        428, -- module_index: 26, name: L1_ETMHF90_HTT60er
        151, -- module_index: 27, name: L1_DoubleMu3_SQ_HTT240er
        429, -- module_index: 28, name: L1_ETMHF100_HTT60er
        147, -- module_index: 29, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        422, -- module_index: 30, name: L1_ETMHF110
        453, -- module_index: 31, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        150, -- module_index: 32, name: L1_DoubleMu3_SQ_HTT220er
        146, -- module_index: 33, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        452, -- module_index: 34, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        421, -- module_index: 35, name: L1_ETMHF100
        145, -- module_index: 36, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        287, -- module_index: 37, name: L1_Mu22er2p1_IsoTau40er2p1
        333, -- module_index: 38, name: L1_SingleJet140er2p5_ETMHF80
        430, -- module_index: 39, name: L1_ETMHF110_HTT60er
        250, -- module_index: 40, name: L1_DoubleEG8er2p5_HTT320er
        477, -- module_index: 41, name: L1_FirstBunchAfterTrain
        385, -- module_index: 42, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        443, -- module_index: 43, name: L1_ETMHF120_NotSecondBunchInTrain
        148, -- module_index: 44, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        402, -- module_index: 45, name: L1_HTT280er
        320, -- module_index: 46, name: L1_SingleJet140er2p5
        294, -- module_index: 47, name: L1_IsoTau40er2p1_ETMHF110
        473, -- module_index: 48, name: L1_FirstBunchInTrain
        471, -- module_index: 49, name: L1_IsolatedBunch
        431, -- module_index: 50, name: L1_ETMHF120_HTT60er
        248, -- module_index: 51, name: L1_DoubleEG8er2p5_HTT280er
        128, -- module_index: 52, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        444, -- module_index: 53, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        247, -- module_index: 54, name: L1_DoubleEG8er2p5_HTT260er
        251, -- module_index: 55, name: L1_DoubleEG8er2p5_HTT340er
        403, -- module_index: 56, name: L1_HTT320er
        291, -- module_index: 57, name: L1_IsoTau40er2p1_ETMHF80
        386, -- module_index: 58, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        293, -- module_index: 59, name: L1_IsoTau40er2p1_ETMHF100
    others => 0
);

-- ========================================================