-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- bee17521-369e-46ad-94a1-68752fcac3bc

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        467, -- module_index: 2, name: L1_BptxXOR
        474, -- module_index: 3, name: L1_BptxPlus
        185, -- module_index: 4, name: L1_ETM50
        168, -- module_index: 5, name: L1_HTT120er
        179, -- module_index: 6, name: L1_HTT380er
        181, -- module_index: 7, name: L1_HTT450er
         51, -- module_index: 8, name: L1_SingleEG10
        241, -- module_index: 9, name: L1_Mu7_LooseIsoEG20
         10, -- module_index: 10, name: L1_SingleMu7
          9, -- module_index: 11, name: L1_SingleMu5
        237, -- module_index: 12, name: L1_Mu23_LooseIsoEG10
        419, -- module_index: 13, name: L1_Mu5_EG20
        242, -- module_index: 14, name: L1_Mu7_LooseIsoEG23
        235, -- module_index: 15, name: L1_Mu20_EG17
        238, -- module_index: 16, name: L1_Mu5_EG23
         18, -- module_index: 17, name: L1_SingleMu20
        236, -- module_index: 18, name: L1_Mu23_EG10
        420, -- module_index: 19, name: L1_Mu5_LooseIsoEG18
        424, -- module_index: 20, name: L1_Mu20_LooseIsoEG6
        422, -- module_index: 21, name: L1_Mu20_EG10
        418, -- module_index: 22, name: L1_Mu5_EG15
        421, -- module_index: 23, name: L1_Mu12_EG10
         52, -- module_index: 24, name: L1_SingleEG15
        423, -- module_index: 25, name: L1_MU20_EG15
        240, -- module_index: 26, name: L1_Mu7_EG23
        239, -- module_index: 27, name: L1_Mu5_LooseIsoEG20
        100, -- module_index: 28, name: L1_DoubleEG_15_10
        104, -- module_index: 29, name: L1_DoubleEG_22_12
        108, -- module_index: 30, name: L1_DoubleEG_25_12
        280, -- module_index: 31, name: L1_DoubleEG_LooseIso24_10
        126, -- module_index: 32, name: L1_DoubleIsoTau33er2p1
        130, -- module_index: 33, name: L1_DoubleIsoTau38er2p1
        158, -- module_index: 34, name: L1_DoubleJet150er2p7
        111, -- module_index: 35, name: L1_DoubleLooseIsoEG22er2p1
        146, -- module_index: 36, name: L1_SingleJet120_FWD
        113, -- module_index: 37, name: L1_TripleEG_14_10_8
          7, -- module_index: 38, name: L1_SingleMu0_EMTF
         13, -- module_index: 39, name: L1_SingleMu12_LowQ_BMTF
         26, -- module_index: 40, name: L1_SingleMu16er2p1
         22, -- module_index: 41, name: L1_SingleMu22_EMTF
         23, -- module_index: 42, name: L1_SingleMu25
         24, -- module_index: 43, name: L1_SingleMu30
          4, -- module_index: 44, name: L1_SingleMuCosmics_EMTF
        390, -- module_index: 45, name: L1_DoubleMu0_SQ
         38, -- module_index: 46, name: L1_DoubleMu22er2p1
        394, -- module_index: 47, name: L1_DoubleMu4p5er2p0_SQ_OS
         31, -- module_index: 48, name: L1_DoubleMu_11_4
         35, -- module_index: 49, name: L1_DoubleMu_15_5
        380, -- module_index: 50, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 51, name: L1_DoubleMu5_OS_EG12
        159, -- module_index: 52, name: L1_TripleJet_84_68_48_VBF
        162, -- module_index: 53, name: L1_TripleJet_98_83_71_VBF
         40, -- module_index: 54, name: L1_TripleMu3
        400, -- module_index: 55, name: L1_TripleMu_5SQ_3SQ_0OQ
        398, -- module_index: 56, name: L1_TripleMu_5_3p5_2p5
        385, -- module_index: 57, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        386, -- module_index: 58, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        375, -- module_index: 59, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 60, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        166, -- module_index: 61, name: L1_QuadJet50er2p7
        216, -- module_index: 62, name: L1_DoubleJet30_Mass_Min300_dEta_Max1p5
        294, -- module_index: 63, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        445, -- module_index: 64, name: L1_Mu3_Jet120er2p7_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 65, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================