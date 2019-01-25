-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- cfa03eba-c8d7-4d4f-9e2c-8039338ad141

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
        247, -- module_index: 10, name: L1_DoubleEG8er2p5_HTT260er
        147, -- module_index: 11, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        292, -- module_index: 12, name: L1_IsoTau40er2p1_ETMHF90
        152, -- module_index: 13, name: L1_DoubleMu3_SQ_HTT260er
        450, -- module_index: 14, name: L1_SingleJet20er2p5_NotBptxOR
        294, -- module_index: 15, name: L1_IsoTau40er2p1_ETMHF110
        448, -- module_index: 16, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        424, -- module_index: 17, name: L1_ETMHF130
        451, -- module_index: 18, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        250, -- module_index: 19, name: L1_DoubleEG8er2p5_HTT320er
        432, -- module_index: 20, name: L1_ETMHF130_HTT60er
        129, -- module_index: 21, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        476, -- module_index: 22, name: L1_LastBunchInTrain
        320, -- module_index: 23, name: L1_SingleJet140er2p5
        474, -- module_index: 24, name: L1_SecondBunchInTrain
        475, -- module_index: 25, name: L1_SecondLastBunchInTrain
        471, -- module_index: 26, name: L1_IsolatedBunch
        447, -- module_index: 27, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        128, -- module_index: 28, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        284, -- module_index: 29, name: L1_Mu22er2p1_IsoTau32er2p1
        429, -- module_index: 30, name: L1_ETMHF100_HTT60er
        452, -- module_index: 31, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        453, -- module_index: 32, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        317, -- module_index: 33, name: L1_SingleJet60er2p5
        146, -- module_index: 34, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        421, -- module_index: 35, name: L1_ETMHF100
        249, -- module_index: 36, name: L1_DoubleEG8er2p5_HTT300er
        285, -- module_index: 37, name: L1_Mu22er2p1_IsoTau34er2p1
        340, -- module_index: 38, name: L1_DoubleJet40er2p5
        333, -- module_index: 39, name: L1_SingleJet140er2p5_ETMHF80
        289, -- module_index: 40, name: L1_Mu22er2p1_Tau70er2p1
        430, -- module_index: 41, name: L1_ETMHF110_HTT60er
        423, -- module_index: 42, name: L1_ETMHF120
        431, -- module_index: 43, name: L1_ETMHF120_HTT60er
        477, -- module_index: 44, name: L1_FirstBunchAfterTrain
        251, -- module_index: 45, name: L1_DoubleEG8er2p5_HTT340er
        286, -- module_index: 46, name: L1_Mu22er2p1_IsoTau36er2p1
        293, -- module_index: 47, name: L1_IsoTau40er2p1_ETMHF100
        148, -- module_index: 48, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        145, -- module_index: 49, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        402, -- module_index: 50, name: L1_HTT280er
        287, -- module_index: 51, name: L1_Mu22er2p1_IsoTau40er2p1
        428, -- module_index: 52, name: L1_ETMHF90_HTT60er
        444, -- module_index: 53, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        150, -- module_index: 54, name: L1_DoubleMu3_SQ_HTT220er
        472, -- module_index: 55, name: L1_FirstBunchBeforeTrain
        443, -- module_index: 56, name: L1_ETMHF120_NotSecondBunchInTrain
        403, -- module_index: 57, name: L1_HTT320er
        151, -- module_index: 58, name: L1_DoubleMu3_SQ_HTT240er
        248, -- module_index: 59, name: L1_DoubleEG8er2p5_HTT280er
        473, -- module_index: 60, name: L1_FirstBunchInTrain
        291, -- module_index: 61, name: L1_IsoTau40er2p1_ETMHF80
        422, -- module_index: 62, name: L1_ETMHF110
         65, -- module_index: 63, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         54, -- module_index: 64, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
        346, -- module_index: 65, name: L1_DoubleJet112er2p3_dEta_Max1p6
         40, -- module_index: 66, name: L1_DoubleMu0
         51, -- module_index: 67, name: L1_DoubleMu18er2p1
         45, -- module_index: 68, name: L1_DoubleMu9_SQ
        373, -- module_index: 69, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        119, -- module_index: 70, name: L1_Mu3_Jet30er2p5
          9, -- module_index: 71, name: L1_SingleMu3
         29, -- module_index: 72, name: L1_SingleMu10er1p5
         31, -- module_index: 73, name: L1_SingleMu14er1p5
         20, -- module_index: 74, name: L1_SingleMu22_BMTF
         26, -- module_index: 75, name: L1_SingleMu7er1p5
          2, -- module_index: 76, name: L1_SingleMuCosmics_OMTF
        205, -- module_index: 77, name: L1_DoubleEG_15_10_er2p5
        208, -- module_index: 78, name: L1_DoubleEG_25_12_er2p5
        215, -- module_index: 79, name: L1_DoubleEG_LooseIso25_12_er2p5
        343, -- module_index: 80, name: L1_DoubleJet150er2p5
        327, -- module_index: 81, name: L1_SingleJet120_FWD3p0
        332, -- module_index: 82, name: L1_SingleJet140er2p5_ETMHF70
        334, -- module_index: 83, name: L1_SingleJet140er2p5_ETMHF90
        162, -- module_index: 84, name: L1_SingleEG26er2p5
        168, -- module_index: 85, name: L1_SingleEG36er2p5
        173, -- module_index: 86, name: L1_SingleEG50
        187, -- module_index: 87, name: L1_SingleIsoEG26er1p5
        193, -- module_index: 88, name: L1_SingleIsoEG30er2p1
        319, -- module_index: 89, name: L1_SingleJet120er2p5
        309, -- module_index: 90, name: L1_SingleJet35
        176, -- module_index: 91, name: L1_SingleLooseIsoEG26er1p5
        270, -- module_index: 92, name: L1_SingleTau120er2p1
        400, -- module_index: 93, name: L1_HTT200er
        486, -- module_index: 94, name: L1_BPTX_AND_Ref1_VME
        491, -- module_index: 95, name: L1_BPTX_BeamGas_B1_VME
        483, -- module_index: 96, name: L1_BPTX_OR_Ref3_VME
        500, -- module_index: 97, name: L1_HCAL_LaserMon_Trig
        505, -- module_index: 98, name: L1_TOTEM_3
    others => 0
);

-- ========================================================