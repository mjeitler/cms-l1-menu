-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        112, -- module_index: 0, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        236, -- module_index: 1, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        356, -- module_index: 2, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
         83, -- module_index: 3, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         77, -- module_index: 4, name: L1_TripleMu_5_3p5_2p5
         65, -- module_index: 5, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         50, -- module_index: 6, name: L1_DoubleMu_15_7_Mass_Min1
         58, -- module_index: 7, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         53, -- module_index: 8, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        376, -- module_index: 9, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        346, -- module_index: 10, name: L1_DoubleJet112er2p3_dEta_Max1p6
        385, -- module_index: 11, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        403, -- module_index: 12, name: L1_HTT320er
        146, -- module_index: 13, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        147, -- module_index: 14, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        225, -- module_index: 15, name: L1_TripleEG_16_15_8_er2p5
        107, -- module_index: 16, name: L1_Mu6_DoubleEG17er2p5
        218, -- module_index: 17, name: L1_DoubleLooseIsoEG24er2p1
        214, -- module_index: 18, name: L1_DoubleEG_LooseIso22_12_er2p5
        250, -- module_index: 19, name: L1_DoubleEG8er2p5_HTT320er
        208, -- module_index: 20, name: L1_DoubleEG_25_12_er2p5
        343, -- module_index: 21, name: L1_DoubleJet150er2p5
        324, -- module_index: 22, name: L1_SingleJet35_FWD3p0
        283, -- module_index: 23, name: L1_Mu22er2p1_IsoTau30er2p1
        110, -- module_index: 24, name: L1_DoubleMu5_SQ_EG9er2p5
         89, -- module_index: 25, name: L1_QuadMu0
        100, -- module_index: 26, name: L1_Mu5_LooseIsoEG20er2p5
         10, -- module_index: 27, name: L1_SingleMu5
         51, -- module_index: 28, name: L1_DoubleMu18er2p1
         99, -- module_index: 29, name: L1_Mu20_EG10er2p5
         18, -- module_index: 30, name: L1_SingleMu20
        160, -- module_index: 31, name: L1_SingleEG10er2p5
         67, -- module_index: 32, name: L1_MASSUPT_5_5_20_open
         73, -- module_index: 33, name: L1_TripleMu0_SQ
         78, -- module_index: 34, name: L1_TripleMu_5_3_3
        293, -- module_index: 35, name: L1_IsoTau40er2p1_ETMHF100
        421, -- module_index: 36, name: L1_ETMHF100
        238, -- module_index: 37, name: L1_LooseIsoEG24er2p1_HTT100er
        241, -- module_index: 38, name: L1_LooseIsoEG30er2p1_HTT100er
        198, -- module_index: 39, name: L1_IsoEG32er2p5_Mt44
        183, -- module_index: 40, name: L1_SingleIsoEG24er2p1
        191, -- module_index: 41, name: L1_SingleIsoEG28er1p5
        192, -- module_index: 42, name: L1_SingleIsoEG30er2p5
        176, -- module_index: 43, name: L1_SingleLooseIsoEG26er1p5
        182, -- module_index: 44, name: L1_SingleLooseIsoEG30er1p5
         35, -- module_index: 45, name: L1_MASSUPT_5_5_10
         15, -- module_index: 46, name: L1_SingleMu12_DQ_EMTF
        332, -- module_index: 47, name: L1_SingleJet140er2p5_ETMHF70
        320, -- module_index: 48, name: L1_SingleJet140er2p5
        165, -- module_index: 49, name: L1_SingleEG28er2p1
        170, -- module_index: 50, name: L1_SingleEG40er2p5
        321, -- module_index: 51, name: L1_SingleJet160er2p5
        318, -- module_index: 52, name: L1_SingleJet90er2p5
        265, -- module_index: 53, name: L1_SingleTau130er2p1
         42, -- module_index: 54, name: L1_DoubleMu0_SQ_OS
         39, -- module_index: 55, name: L1_DoubleMu0_OQ
         47, -- module_index: 56, name: L1_DoubleMu_15_5_SQ
         29, -- module_index: 57, name: L1_SingleMu10er1p5
         32, -- module_index: 58, name: L1_SingleMu16er1p5
         26, -- module_index: 59, name: L1_SingleMu7er1p5
        154, -- module_index: 60, name: L1_Mu0upt20ip1
        307, -- module_index: 61, name: L1_SingleMuOpenupt20
        303, -- module_index: 62, name: L1_Mu0upt20
        173, -- module_index: 63, name: L1_SingleEG50
        309, -- module_index: 64, name: L1_SingleJet35
         17, -- module_index: 65, name: L1_SingleMu18
          0, -- module_index: 66, name: L1_SingleMuCosmics
        431, -- module_index: 67, name: L1_ETMHF120_HTT60er
        423, -- module_index: 68, name: L1_ETMHF120
        425, -- module_index: 69, name: L1_ETMHF140
        412, -- module_index: 70, name: L1_ETT2000
        404, -- module_index: 71, name: L1_HTT360er
        488, -- module_index: 72, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 73, name: L1_BPTX_NotOR_VME
        477, -- module_index: 74, name: L1_FirstBunchAfterTrain
        476, -- module_index: 75, name: L1_LastBunchInTrain
        475, -- module_index: 76, name: L1_SecondLastBunchInTrain
    others => 0
);

-- ========================================================