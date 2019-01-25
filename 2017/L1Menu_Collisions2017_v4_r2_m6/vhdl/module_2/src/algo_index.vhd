-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r2

-- Unique ID of L1 Trigger Menu:
-- 04d867d5-3c53-47f0-a97b-d8a1846f61a4

-- Unique ID of firmware implementation:
-- 1617e19e-196f-43a1-922a-63b5e360f44d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        485, -- module_index: 0, name: L1_BPTX_AND_Ref4_VME
        482, -- module_index: 1, name: L1_BPTX_OR_Ref3_VME
        511, -- module_index: 2, name: L1_EXT_HCAL_LaserMon_4
        479, -- module_index: 3, name: L1_UnpairedBunchBptxMinus
        185, -- module_index: 4, name: L1_ETM50
        168, -- module_index: 5, name: L1_HTT120er
        179, -- module_index: 6, name: L1_HTT380er
        181, -- module_index: 7, name: L1_HTT450er
         51, -- module_index: 8, name: L1_SingleEG10
        236, -- module_index: 9, name: L1_Mu23_EG10
        240, -- module_index: 10, name: L1_Mu7_EG23
         10, -- module_index: 11, name: L1_SingleMu7
        423, -- module_index: 12, name: L1_MU20_EG15
        422, -- module_index: 13, name: L1_Mu20_EG10
        242, -- module_index: 14, name: L1_Mu7_LooseIsoEG23
        239, -- module_index: 15, name: L1_Mu5_LooseIsoEG20
          9, -- module_index: 16, name: L1_SingleMu5
        420, -- module_index: 17, name: L1_Mu5_LooseIsoEG18
        419, -- module_index: 18, name: L1_Mu5_EG20
        424, -- module_index: 19, name: L1_Mu20_LooseIsoEG6
         52, -- module_index: 20, name: L1_SingleEG15
        421, -- module_index: 21, name: L1_Mu12_EG10
        235, -- module_index: 22, name: L1_Mu20_EG17
        238, -- module_index: 23, name: L1_Mu5_EG23
        237, -- module_index: 24, name: L1_Mu23_LooseIsoEG10
        241, -- module_index: 25, name: L1_Mu7_LooseIsoEG20
         18, -- module_index: 26, name: L1_SingleMu20
        418, -- module_index: 27, name: L1_Mu5_EG15
        115, -- module_index: 28, name: L1_SingleTau20
        101, -- module_index: 29, name: L1_DoubleEG_18_17
        105, -- module_index: 30, name: L1_DoubleEG_22_15
        109, -- module_index: 31, name: L1_DoubleEG_25_13
        123, -- module_index: 32, name: L1_DoubleIsoTau28er2p1
        127, -- module_index: 33, name: L1_DoubleIsoTau34er2p1
        155, -- module_index: 34, name: L1_DoubleJet100er2p7
        151, -- module_index: 35, name: L1_DoubleJet40er2p7
        112, -- module_index: 36, name: L1_DoubleLooseIsoEG24er2p1
        143, -- module_index: 37, name: L1_SingleJet35_FWD
        114, -- module_index: 38, name: L1_TripleEG_18_17_8
          6, -- module_index: 39, name: L1_SingleMu0_OMTF
         15, -- module_index: 40, name: L1_SingleMu12_LowQ_EMTF
         27, -- module_index: 41, name: L1_SingleMu18er2p1
        304, -- module_index: 42, name: L1_Mu20er2p1_IsoTau27er2p1
        302, -- module_index: 43, name: L1_Mu18er2p1_IsoTau26er2p1
         28, -- module_index: 44, name: L1_SingleMu20er2p1
        303, -- module_index: 45, name: L1_Mu20er2p1_IsoTau26er2p1
        299, -- module_index: 46, name: L1_Mu18er2p1_Tau24er2p1
         24, -- module_index: 47, name: L1_SingleMu30
          4, -- module_index: 48, name: L1_SingleMuCosmics_EMTF
        390, -- module_index: 49, name: L1_DoubleMu0_SQ
         38, -- module_index: 50, name: L1_DoubleMu22er2p1
        394, -- module_index: 51, name: L1_DoubleMu4p5er2p0_SQ_OS
         31, -- module_index: 52, name: L1_DoubleMu_11_4
         35, -- module_index: 53, name: L1_DoubleMu_15_5
        380, -- module_index: 54, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 55, name: L1_DoubleMu5_OS_EG12
        159, -- module_index: 56, name: L1_TripleJet_84_68_48_VBF
        162, -- module_index: 57, name: L1_TripleJet_98_83_71_VBF
         40, -- module_index: 58, name: L1_TripleMu3
        400, -- module_index: 59, name: L1_TripleMu_5SQ_3SQ_0OQ
        398, -- module_index: 60, name: L1_TripleMu_5_3p5_2p5
        386, -- module_index: 61, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        385, -- module_index: 62, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        375, -- module_index: 63, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 64, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        166, -- module_index: 65, name: L1_QuadJet50er2p7
        216, -- module_index: 66, name: L1_DoubleJet30_Mass_Min300_dEta_Max1p5
        294, -- module_index: 67, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        445, -- module_index: 68, name: L1_Mu3_Jet120er2p7_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 69, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================