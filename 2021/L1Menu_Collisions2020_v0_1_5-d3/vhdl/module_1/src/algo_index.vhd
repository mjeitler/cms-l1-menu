-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
        361, -- module_index: 0, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        350, -- module_index: 1, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        352, -- module_index: 2, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        275, -- module_index: 3, name: L1_DoubleIsoTau28er2p1_Mass_Max80
        355, -- module_index: 4, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        143, -- module_index: 5, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
        122, -- module_index: 6, name: L1_Mu3_Jet35er2p5_dR_Max0p4
         85, -- module_index: 7, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         76, -- module_index: 8, name: L1_TripleMu_5SQ_3SQ_0OQ
         54, -- module_index: 9, name: L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4
         63, -- module_index: 10, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        298, -- module_index: 11, name: L1_QuadJet36er2p5_IsoTau52er2p1
        386, -- module_index: 12, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        387, -- module_index: 13, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        374, -- module_index: 14, name: L1_TripleJet_105_85_75_DoubleJet_85_75_er2p5
        224, -- module_index: 15, name: L1_TripleEG_16_12_8_er2p5
        106, -- module_index: 16, name: L1_Mu6_DoubleEG15er2p5
        273, -- module_index: 17, name: L1_DoubleIsoTau36er2p1
        212, -- module_index: 18, name: L1_DoubleEG_LooseIso20_10_er2p5
        248, -- module_index: 19, name: L1_DoubleEG8er2p5_HTT280er
        206, -- module_index: 20, name: L1_DoubleEG_20_10_er2p5
        341, -- module_index: 21, name: L1_DoubleJet100er2p5
        163, -- module_index: 22, name: L1_SingleEG28_FWD2p5
        148, -- module_index: 23, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        286, -- module_index: 24, name: L1_Mu22er2p1_IsoTau36er2p1
        279, -- module_index: 25, name: L1_Mu18er2p1_Tau24er2p1
         90, -- module_index: 26, name: L1_QuadMu0_SQ
         56, -- module_index: 27, name: L1_DoubleMu0er1p5_SQ_OS
         55, -- module_index: 28, name: L1_DoubleMu0er1p5_SQ
        329, -- module_index: 29, name: L1_SingleJet8erHE
         97, -- module_index: 30, name: L1_Mu7_EG20er2p5
         68, -- module_index: 31, name: L1_QuadMu0_OS
         52, -- module_index: 32, name: L1_MASSUPT_5_5_10_open
         71, -- module_index: 33, name: L1_TripleMu0_OQ
         75, -- module_index: 34, name: L1_TripleMu3_SQ
         80, -- module_index: 35, name: L1_TripleMu_5_5_3
        291, -- module_index: 36, name: L1_IsoTau40er2p1_ETMHF80
        292, -- module_index: 37, name: L1_IsoTau40er2p1_ETMHF90
        240, -- module_index: 38, name: L1_LooseIsoEG28er2p1_HTT100er
        179, -- module_index: 39, name: L1_SingleLooseIsoEG28er2p1
        199, -- module_index: 40, name: L1_IsoEG32er2p5_Mt48
        186, -- module_index: 41, name: L1_SingleIsoEG26er2p1
        189, -- module_index: 42, name: L1_SingleIsoEG28er2p5
        194, -- module_index: 43, name: L1_SingleIsoEG32er2p5
        180, -- module_index: 44, name: L1_SingleLooseIsoEG28er1p5
         24, -- module_index: 45, name: L1_MASSUPT_0_0_10
          8, -- module_index: 46, name: L1_SingleMu0_EMTF
         22, -- module_index: 47, name: L1_SingleMu22_EMTF
        334, -- module_index: 48, name: L1_SingleJet140er2p5_ETMHF90
        162, -- module_index: 49, name: L1_SingleEG26er2p5
        168, -- module_index: 50, name: L1_SingleEG36er2p5
        159, -- module_index: 51, name: L1_SingleEG8er2p5
        316, -- module_index: 52, name: L1_SingleJet35er2p5
          2, -- module_index: 53, name: L1_SingleMuCosmics_OMTF
        151, -- module_index: 54, name: L1_DoubleMu3_SQ_HTT240er
         62, -- module_index: 55, name: L1_DoubleMu4p5_SQ_OS
         45, -- module_index: 56, name: L1_DoubleMu9_SQ
         49, -- module_index: 57, name: L1_DoubleMu_15_7_SQ
         30, -- module_index: 58, name: L1_SingleMu12er1p5
         20, -- module_index: 59, name: L1_SingleMu22_BMTF
        153, -- module_index: 60, name: L1_Mu0upt20ip0
          1, -- module_index: 61, name: L1_SingleMuCosmics_BMTF
        302, -- module_index: 62, name: L1_Mu0upt10
        131, -- module_index: 63, name: L1_Mu6_HTT240er
        313, -- module_index: 64, name: L1_SingleJet180
          5, -- module_index: 65, name: L1_SingleMu0_DQ
         11, -- module_index: 66, name: L1_SingleMu7_DQ
        444, -- module_index: 67, name: L1_ETMHF110_HTT60er_NotSecondBunchInTrain
        443, -- module_index: 68, name: L1_ETMHF120_NotSecondBunchInTrain
        473, -- module_index: 69, name: L1_FirstBunchInTrain
        474, -- module_index: 70, name: L1_SecondBunchInTrain
        400, -- module_index: 71, name: L1_HTT200er
        486, -- module_index: 72, name: L1_BPTX_AND_Ref1_VME
        489, -- module_index: 73, name: L1_BPTX_BeamGas_Ref1_VME
        485, -- module_index: 74, name: L1_BPTX_RefAND_VME
        500, -- module_index: 75, name: L1_HCAL_LaserMon_Trig
        503, -- module_index: 76, name: L1_TOTEM_1
        469, -- module_index: 77, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================