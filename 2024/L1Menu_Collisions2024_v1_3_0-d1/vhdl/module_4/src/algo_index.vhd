-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2024_v1_3_0

-- Unique ID of L1 Trigger Menu:
-- b767c77f-2f60-4ce7-94e4-e16f097941b0

-- Unique ID of firmware implementation:
-- 1f6f1c24-5c15-48da-9403-5fbf3a32540a

-- Scale set:
-- scales_2024_05_15

-- VHDL producer
-- version: 2.20.0
-- hash value: 01d3461e956f1972cb9cbbbbb32745d60d52a3d208431bb6763622d65d6a8291

-- tmEventSetup
-- version: 0.13.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        439, -- module_index: 0, name: L1_AXO_VLoose
        367, -- module_index: 1, name: L1_DoubleJet45_Mass_Min600_LooseIsoEG20er2p1_RmOvlp_dR0p2
        239, -- module_index: 2, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        350, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min330_dEta_Max1p5
        141, -- module_index: 4, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        130, -- module_index: 5, name: L1_DoubleJet80er2p5_Mu3_dR_Max0p4
        132, -- module_index: 6, name: L1_Mu3_Jet120er2p5_dR_Max0p4
        214, -- module_index: 7, name: L1_DoubleEG11_er1p2_dR_Max0p6
         66, -- module_index: 8, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
         82, -- module_index: 9, name: L1_DoubleMu5_SQ_OS_dR_Max1p6
         55, -- module_index: 10, name: L1_DoubleMu6_Upt6_SQ_er2p0
         57, -- module_index: 11, name: L1_DoubleMu8_Upt8_SQ_er2p0
        346, -- module_index: 12, name: L1_DoubleJet112er2p3_dEta_Max1p6
         72, -- module_index: 13, name: L1_DoubleMu0er2p0_SQ_OS_dEta_Max0p3_dPhi_0p8to1p2
        384, -- module_index: 14, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        114, -- module_index: 15, name: L1_Mu6_DoubleEG10er2p5
        115, -- module_index: 16, name: L1_Mu6_DoubleEG12er2p5
        137, -- module_index: 17, name: L1_Mu6_HTT250er
        116, -- module_index: 18, name: L1_Mu6_DoubleEG15er2p5
        394, -- module_index: 19, name: L1_HTT240_SingleLLPJet70
        117, -- module_index: 20, name: L1_Mu6_DoubleEG17er2p5
        136, -- module_index: 21, name: L1_Mu6_HTT240er
         58, -- module_index: 22, name: L1_DoubleMu0_Upt6_IP_Min1_Upt4
        217, -- module_index: 23, name: L1_DoubleEG_22_10_er2p5
        220, -- module_index: 24, name: L1_DoubleEG_27_14_er2p5
         51, -- module_index: 25, name: L1_DoubleMu0_Upt5_Upt5
        266, -- module_index: 26, name: L1_DoubleTau70er2p1
        320, -- module_index: 27, name: L1_SingleJet35_FWD2p5
        286, -- module_index: 28, name: L1_Mu22er2p1_IsoTau30er2p1
        287, -- module_index: 29, name: L1_Mu22er2p1_IsoTau32er2p1
        288, -- module_index: 30, name: L1_Mu22er2p1_IsoTau34er2p1
        290, -- module_index: 31, name: L1_Mu22er2p1_IsoTau40er2p1
        291, -- module_index: 32, name: L1_Mu22er2p1_Tau70er2p1
         17, -- module_index: 33, name: L1_SingleMu0_Upt10_OMTF
         85, -- module_index: 34, name: L1_TripleMu0_SQ
         93, -- module_index: 35, name: L1_TripleMu_5_3_3_SQ
        186, -- module_index: 36, name: L1_SingleIsoEG26er2p1
        189, -- module_index: 37, name: L1_SingleIsoEG28er2p5
        194, -- module_index: 38, name: L1_SingleIsoEG32er2p5
        180, -- module_index: 39, name: L1_SingleLooseIsoEG28er1p5
         27, -- module_index: 40, name: L1_SingleMu12_DQ_EMTF
        161, -- module_index: 41, name: L1_SingleEG15er2p5
        168, -- module_index: 42, name: L1_SingleEG36er2p5
        314, -- module_index: 43, name: L1_SingleJet120er1p3
        311, -- module_index: 44, name: L1_SingleJet35er1p3
        200, -- module_index: 45, name: L1_SingleMu0_Upt20_SQ14_BMTF
        264, -- module_index: 46, name: L1_SingleTau130er2p1
         38, -- module_index: 47, name: L1_DoubleMu0_OQ
         46, -- module_index: 48, name: L1_DoubleMu_15_5_SQ
         13, -- module_index: 49, name: L1_SingleMu0_SQ14_BMTF
         34, -- module_index: 50, name: L1_SingleMu22_BMTF
        206, -- module_index: 51, name: L1_SingleMu9_SQ14_BMTF
          1, -- module_index: 52, name: L1_SingleMuCosmics_BMTF
        174, -- module_index: 53, name: L1_SingleEG60
        305, -- module_index: 54, name: L1_SingleJet35
         29, -- module_index: 55, name: L1_SingleMu18
         21, -- module_index: 56, name: L1_SingleMu7_DQ
        412, -- module_index: 57, name: L1_ETT2000
        434, -- module_index: 58, name: L1_MHTHF100
        486, -- module_index: 59, name: L1_BPTX_AND_Ref1_VME
        489, -- module_index: 60, name: L1_BPTX_BeamGas_Ref1_VME
        485, -- module_index: 61, name: L1_BPTX_RefAND_VME
        501, -- module_index: 62, name: L1_HCAL_LaserMon_Veto
        503, -- module_index: 63, name: L1_TOTEM_1
        106, -- module_index: 64, name: L1_TwoMuShower_Loose
    others => 0
);

-- ========================================================