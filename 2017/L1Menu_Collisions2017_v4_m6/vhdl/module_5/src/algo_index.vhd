-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- dc2d8756-228d-4263-9f4e-3f20cf9295a4

-- Unique ID of firmware implementation:
-- 497943d4-a582-4d36-aba1-d4848135ea28

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

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
        420, -- module_index: 9, name: L1_Mu5_LooseIsoEG18
         52, -- module_index: 10, name: L1_SingleEG15
        242, -- module_index: 11, name: L1_Mu7_LooseIsoEG23
        239, -- module_index: 12, name: L1_Mu5_LooseIsoEG20
        423, -- module_index: 13, name: L1_MU20_EG15
        240, -- module_index: 14, name: L1_Mu7_EG23
        419, -- module_index: 15, name: L1_Mu5_EG20
        422, -- module_index: 16, name: L1_Mu20_EG10
          9, -- module_index: 17, name: L1_SingleMu5
        424, -- module_index: 18, name: L1_Mu20_LooseIsoEG6
        237, -- module_index: 19, name: L1_Mu23_LooseIsoEG10
        418, -- module_index: 20, name: L1_Mu5_EG15
        241, -- module_index: 21, name: L1_Mu7_LooseIsoEG20
        238, -- module_index: 22, name: L1_Mu5_EG23
        236, -- module_index: 23, name: L1_Mu23_EG10
        421, -- module_index: 24, name: L1_Mu12_EG10
        235, -- module_index: 25, name: L1_Mu20_EG17
         18, -- module_index: 26, name: L1_SingleMu20
         10, -- module_index: 27, name: L1_SingleMu7
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
        302, -- module_index: 41, name: L1_Mu18er2p1_IsoTau26er2p1
        297, -- module_index: 42, name: L1_Mu16er2p1_Tau24er2p1
        298, -- module_index: 43, name: L1_Mu18er2p1_Tau20er2p1
        304, -- module_index: 44, name: L1_Mu20er2p1_IsoTau27er2p1
        299, -- module_index: 45, name: L1_Mu18er2p1_Tau24er2p1
         27, -- module_index: 46, name: L1_SingleMu18er2p1
        303, -- module_index: 47, name: L1_Mu20er2p1_IsoTau26er2p1
        296, -- module_index: 48, name: L1_Mu16er2p1_Tau20er2p1
         28, -- module_index: 49, name: L1_SingleMu20er2p1
          4, -- module_index: 50, name: L1_SingleMuCosmics_EMTF
        390, -- module_index: 51, name: L1_DoubleMu0_SQ
         38, -- module_index: 52, name: L1_DoubleMu22er2p1
        394, -- module_index: 53, name: L1_DoubleMu4p5er2p0_SQ_OS
         31, -- module_index: 54, name: L1_DoubleMu_11_4
         35, -- module_index: 55, name: L1_DoubleMu_15_5
        380, -- module_index: 56, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 57, name: L1_DoubleMu5_OS_EG12
        159, -- module_index: 58, name: L1_TripleJet_84_68_48_VBF
        162, -- module_index: 59, name: L1_TripleJet_98_83_71_VBF
         40, -- module_index: 60, name: L1_TripleMu3
        400, -- module_index: 61, name: L1_TripleMu_5SQ_3SQ_0OQ
        398, -- module_index: 62, name: L1_TripleMu_5_3p5_2p5
        385, -- module_index: 63, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        386, -- module_index: 64, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        375, -- module_index: 65, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 66, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        493, -- module_index: 67, name: L1_CDC_3_TOP_DPHI2p618_3p142
        499, -- module_index: 68, name: L1_CDC_3_er1p6_TOP120_DPHI2p618_3p142
        505, -- module_index: 69, name: L1_CDC_SingleMu_3_er1p6_TOP120_DPHI2p618_3p142
        387, -- module_index: 70, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        388, -- module_index: 71, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        284, -- module_index: 72, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 73, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 74, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        221, -- module_index: 75, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
        226, -- module_index: 76, name: L1_LooseIsoEG26er2p1_Jet34er2p7_dR_Min0p3
        437, -- module_index: 77, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        438, -- module_index: 78, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================