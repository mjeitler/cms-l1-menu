-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        364, -- module_index: 0, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
        126, -- module_index: 1, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        125, -- module_index: 2, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        113, -- module_index: 3, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        350, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        358, -- module_index: 5, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        276, -- module_index: 6, name: L1_DoubleIsoTau30er2p1_Mass_Max90
        382, -- module_index: 7, name: L1_QuadJet60er2p5
        494, -- module_index: 8, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
         58, -- module_index: 9, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         63, -- module_index: 10, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
         36, -- module_index: 11, name: L1_MASSUPT_5_5_20
        199, -- module_index: 12, name: L1_IsoEG32er2p5_Mt48
         69, -- module_index: 13, name: L1_QuadMu0_OQ_OS
         72, -- module_index: 14, name: L1_TripleMu0
         73, -- module_index: 15, name: L1_TripleMu0_SQ
         78, -- module_index: 16, name: L1_TripleMu_5_3_3
        146, -- module_index: 17, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5_OR_DoubleJet40er2p5
        147, -- module_index: 18, name: L1_DoubleMu3_SQ_ETMHF50_Jet60er2p5
        110, -- module_index: 19, name: L1_DoubleMu5_SQ_EG9er2p5
         56, -- module_index: 20, name: L1_DoubleMu0er1p5_SQ_OS
         45, -- module_index: 21, name: L1_DoubleMu9_SQ
        105, -- module_index: 22, name: L1_Mu6_DoubleEG12er2p5
        128, -- module_index: 23, name: L1_Mu3er1p5_Jet100er2p5_ETMHF40
        129, -- module_index: 24, name: L1_Mu3er1p5_Jet100er2p5_ETMHF50
        284, -- module_index: 25, name: L1_Mu22er2p1_IsoTau32er2p1
        100, -- module_index: 26, name: L1_Mu5_LooseIsoEG20er2p5
        302, -- module_index: 27, name: L1_Mu0upt10
        154, -- module_index: 28, name: L1_Mu0upt20ip1
          5, -- module_index: 29, name: L1_SingleMu0_DQ
         14, -- module_index: 30, name: L1_SingleMu12_DQ_OMTF
         33, -- module_index: 31, name: L1_SingleMu18er1p5
         25, -- module_index: 32, name: L1_SingleMu6er1p5
          1, -- module_index: 33, name: L1_SingleMuCosmics_BMTF
        307, -- module_index: 34, name: L1_SingleMuOpenupt20
        226, -- module_index: 35, name: L1_TripleEG_18_17_8_er2p5
        250, -- module_index: 36, name: L1_DoubleEG8er2p5_HTT320er
        208, -- module_index: 37, name: L1_DoubleEG_25_12_er2p5
        215, -- module_index: 38, name: L1_DoubleEG_LooseIso25_12_er2p5
        341, -- module_index: 39, name: L1_DoubleJet100er2p5
        267, -- module_index: 40, name: L1_DoubleTau70er2p1
        326, -- module_index: 41, name: L1_SingleJet90_FWD3p0
        333, -- module_index: 42, name: L1_SingleJet140er2p5_ETMHF80
        164, -- module_index: 43, name: L1_SingleEG28er2p5
        172, -- module_index: 44, name: L1_SingleEG45er2p5
        187, -- module_index: 45, name: L1_SingleIsoEG26er1p5
        193, -- module_index: 46, name: L1_SingleIsoEG30er2p1
        312, -- module_index: 47, name: L1_SingleJet120
        314, -- module_index: 48, name: L1_SingleJet200
        311, -- module_index: 49, name: L1_SingleJet90
        182, -- module_index: 50, name: L1_SingleLooseIsoEG30er1p5
        417, -- module_index: 51, name: L1_ETM150
        411, -- module_index: 52, name: L1_ETT1600
        400, -- module_index: 53, name: L1_HTT200er
        406, -- module_index: 54, name: L1_HTT450er
    others => 0
);

-- ========================================================