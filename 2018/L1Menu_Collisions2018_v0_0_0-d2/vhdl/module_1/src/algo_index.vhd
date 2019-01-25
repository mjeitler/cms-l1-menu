-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        481, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        480, -- module_index: 1, name: L1_BPTX_NotOR_VME
        510, -- module_index: 2, name: L1_EXT_HCAL_LaserMon_1
        487, -- module_index: 3, name: L1_LastCollisionInTrain
        195, -- module_index: 4, name: L1_ETM110
        183, -- module_index: 5, name: L1_ETM30
        190, -- module_index: 6, name: L1_ETM85
        168, -- module_index: 7, name: L1_HTT120er
        179, -- module_index: 8, name: L1_HTT380er
        181, -- module_index: 9, name: L1_HTT450er
         51, -- module_index: 10, name: L1_SingleEG10
        235, -- module_index: 11, name: L1_Mu20_EG17
        420, -- module_index: 12, name: L1_Mu5_LooseIsoEG18
        423, -- module_index: 13, name: L1_MU20_EG15
          9, -- module_index: 14, name: L1_SingleMu5
        241, -- module_index: 15, name: L1_Mu7_LooseIsoEG20
        421, -- module_index: 16, name: L1_Mu12_EG10
         18, -- module_index: 17, name: L1_SingleMu20
        239, -- module_index: 18, name: L1_Mu5_LooseIsoEG20
        242, -- module_index: 19, name: L1_Mu7_LooseIsoEG23
        237, -- module_index: 20, name: L1_Mu23_LooseIsoEG10
         52, -- module_index: 21, name: L1_SingleEG15
        238, -- module_index: 22, name: L1_Mu5_EG23
        236, -- module_index: 23, name: L1_Mu23_EG10
         10, -- module_index: 24, name: L1_SingleMu7
        418, -- module_index: 25, name: L1_Mu5_EG15
        419, -- module_index: 26, name: L1_Mu5_EG20
        424, -- module_index: 27, name: L1_Mu20_LooseIsoEG6
        240, -- module_index: 28, name: L1_Mu7_EG23
        422, -- module_index: 29, name: L1_Mu20_EG10
        127, -- module_index: 30, name: L1_DoubleIsoTau34er2p1
        157, -- module_index: 31, name: L1_DoubleJet120er2p7
        154, -- module_index: 32, name: L1_DoubleJet80er2p7
        146, -- module_index: 33, name: L1_SingleJet120_FWD
        114, -- module_index: 34, name: L1_TripleEG_18_17_8
          6, -- module_index: 35, name: L1_SingleMu0_OMTF
         14, -- module_index: 36, name: L1_SingleMu12_LowQ_OMTF
         22, -- module_index: 37, name: L1_SingleMu22_EMTF
          0, -- module_index: 38, name: L1_SingleMuCosmics
        299, -- module_index: 39, name: L1_Mu18er2p1_Tau24er2p1
        391, -- module_index: 40, name: L1_DoubleMu0_SQ_OS
        396, -- module_index: 41, name: L1_DoubleMu4_SQ_OS
        397, -- module_index: 42, name: L1_DoubleMu5_SQ_OS
        332, -- module_index: 43, name: L1_DoubleMu_15_5_SQ
        164, -- module_index: 44, name: L1_TripleJet_100_85_72_VBF
        162, -- module_index: 45, name: L1_TripleJet_98_83_71_VBF
        335, -- module_index: 46, name: L1_TripleMu3_SQ
         43, -- module_index: 47, name: L1_TripleMu_5_3_3
        274, -- module_index: 48, name: L1_ETM110_Jet60_dPhi_Min0p4
        272, -- module_index: 49, name: L1_ETM90_Jet60_dPhi_Min0p4
         98, -- module_index: 50, name: L1_IsoEG33_Mt44
        441, -- module_index: 51, name: L1_DoubleMu_10_0_dEta_Max1p8
        375, -- module_index: 52, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        376, -- module_index: 53, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        166, -- module_index: 54, name: L1_QuadJet50er2p7
        216, -- module_index: 55, name: L1_DoubleJet30_Mass_Min300_dEta_Max1p5
        293, -- module_index: 56, name: L1_EG40er2p1_Tau20er2p1_dR_Min0p3
        228, -- module_index: 57, name: L1_LooseIsoEG30er2p1_Jet34er2p7_dR_Min0p3
        401, -- module_index: 58, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
-- HB 2018-03-02: hidden algos
         49, -- module_index: 59, name: L1_QuadEG10
         53, -- module_index: 60, name: L1_QuadEG12
         54, -- module_index: 61, name: L1_QuadEG15
         48, -- module_index: 62, name: L1_QuadEG5
         80, -- module_index: 63, name: L1_QuadJet25er2p7
         81, -- module_index: 64, name: L1_QuadJet35er2p7
         57, -- module_index: 65, name: L1_QuadTau10
         58, -- module_index: 66, name: L1_QuadTau12
         79, -- module_index: 67, name: L1_QuadTau15
         56, -- module_index: 68, name: L1_QuadTau5
    others => 0
);

-- ========================================================