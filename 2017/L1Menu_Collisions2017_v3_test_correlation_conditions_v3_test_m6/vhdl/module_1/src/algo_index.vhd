-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test

-- Unique ID of L1 Trigger Menu:
-- cd1736f5-2c73-49e7-bb57-ba14e8ac44cd

-- Unique ID of firmware implementation:
-- bafbf2d2-d2a5-4d4e-a6f8-e391e3ff31e5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        462, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        468, -- module_index: 1, name: L1_BPTX_B2NotB1_NIM
        469, -- module_index: 2, name: L1_BPTX_NotOR_NIM
        460, -- module_index: 3, name: L1_BptxMinus
        452, -- module_index: 4, name: L1_BptxXOR
        459, -- module_index: 5, name: L1_BptxPlus
        182, -- module_index: 6, name: L1_ETM50
        165, -- module_index: 7, name: L1_HTT120er
        176, -- module_index: 8, name: L1_HTT380er
        178, -- module_index: 9, name: L1_HTT450er
         51, -- module_index: 10, name: L1_SingleEG10
        409, -- module_index: 11, name: L1_Mu20_LooseIsoEG6
        405, -- module_index: 12, name: L1_Mu5_LooseIsoEG18
        231, -- module_index: 13, name: L1_Mu23_EG10
        235, -- module_index: 14, name: L1_Mu7_EG23
         52, -- module_index: 15, name: L1_SingleEG15
        236, -- module_index: 16, name: L1_Mu7_LooseIsoEG20
        230, -- module_index: 17, name: L1_Mu20_EG17
        408, -- module_index: 18, name: L1_MU20_EG15
         18, -- module_index: 19, name: L1_SingleMu20
          9, -- module_index: 20, name: L1_SingleMu5
        237, -- module_index: 21, name: L1_Mu7_LooseIsoEG23
        404, -- module_index: 22, name: L1_Mu5_EG20
        234, -- module_index: 23, name: L1_Mu5_LooseIsoEG20
        233, -- module_index: 24, name: L1_Mu5_EG23
         10, -- module_index: 25, name: L1_SingleMu7
        232, -- module_index: 26, name: L1_Mu23_LooseIsoEG10
        406, -- module_index: 27, name: L1_Mu12_EG10
        407, -- module_index: 28, name: L1_Mu20_EG10
        403, -- module_index: 29, name: L1_Mu5_EG15
        100, -- module_index: 30, name: L1_DoubleEG_15_10
        104, -- module_index: 31, name: L1_DoubleEG_22_12
        108, -- module_index: 32, name: L1_DoubleEG_25_12
        274, -- module_index: 33, name: L1_DoubleEG_LooseIso24_10
        126, -- module_index: 34, name: L1_DoubleIsoTau33er2p1
        130, -- module_index: 35, name: L1_DoubleIsoTau38er2p1
        158, -- module_index: 36, name: L1_DoubleJet150er3p0
        111, -- module_index: 37, name: L1_DoubleLooseIsoEG22er2p1
        146, -- module_index: 38, name: L1_SingleJet120_FWD
        113, -- module_index: 39, name: L1_TripleEG_14_10_8
          7, -- module_index: 40, name: L1_SingleMu0_EMTF
         13, -- module_index: 41, name: L1_SingleMu12_LowQ_BMTF
         26, -- module_index: 42, name: L1_SingleMu16er2p1
        293, -- module_index: 43, name: L1_Mu18er2p1_Tau24er2p1
         28, -- module_index: 44, name: L1_SingleMu20er2p1
        297, -- module_index: 45, name: L1_Mu20er2p1_IsoTau26er2p1
        296, -- module_index: 46, name: L1_Mu18er2p1_IsoTau26er2p1
        291, -- module_index: 47, name: L1_Mu16er2p1_Tau24er2p1
        290, -- module_index: 48, name: L1_Mu16er2p1_Tau20er2p1
         27, -- module_index: 49, name: L1_SingleMu18er2p1
        298, -- module_index: 50, name: L1_Mu20er2p1_IsoTau27er2p1
        292, -- module_index: 51, name: L1_Mu18er2p1_Tau20er2p1
          4, -- module_index: 52, name: L1_SingleMuCosmics_EMTF
        385, -- module_index: 53, name: L1_DoubleMu0_SQ
         38, -- module_index: 54, name: L1_DoubleMu22er2p1
        389, -- module_index: 55, name: L1_DoubleMu4p5er2p0_SQ_OS
         31, -- module_index: 56, name: L1_DoubleMu_11_4
         35, -- module_index: 57, name: L1_DoubleMu_15_5
        375, -- module_index: 58, name: L1_DoubleMu4_OS_EG12
        378, -- module_index: 59, name: L1_DoubleMu5_OS_EG12
         40, -- module_index: 60, name: L1_TripleMu3
        395, -- module_index: 61, name: L1_TripleMu_5SQ_3SQ_0OQ
        393, -- module_index: 62, name: L1_TripleMu_5_3p5_2p5
        380, -- module_index: 63, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        381, -- module_index: 64, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        370, -- module_index: 65, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        490, -- module_index: 66, name: L1_CDC_3_TOP120_DPHI1p570_3p142
        496, -- module_index: 67, name: L1_CDC_3_er1p2_TOP120_DPHI2p618_3p142
        502, -- module_index: 68, name: L1_CDC_3_er2p1_TOP120_DPHI2p618_3p142
        508, -- module_index: 69, name: L1_CDCp1_3_er1p2_TOP120_DPHI2p618_3p142
        164, -- module_index: 70, name: L1_QuadJet60er3p0
        211, -- module_index: 71, name: L1_DoubleJet30_Mass_Min300_dEta_Max1p5
        285, -- module_index: 72, name: L1_LooseIsoEG18er2p1_IsoTau24er2p1_dR_Min0p3
        222, -- module_index: 73, name: L1_LooseIsoEG28er2p1_Jet34er3p0_dR_Min0p3
        247, -- module_index: 74, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================