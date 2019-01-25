-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v2

-- Unique ID of L1 Trigger Menu:
-- 41c33f29-85b6-415a-adbb-b289ab542faf

-- Unique ID of firmware implementation:
-- 18ff0efc-43b4-4cac-8ccb-ccf63e944307

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        195, -- module_index: 0, name: L1_ETM150
        202, -- module_index: 1, name: L1_ETMHF150
        174, -- module_index: 2, name: L1_HTT320er
        177, -- module_index: 3, name: L1_HTT400er
         51, -- module_index: 4, name: L1_SingleEG10
         52, -- module_index: 5, name: L1_SingleEG15
          9, -- module_index: 6, name: L1_SingleMu5
        231, -- module_index: 7, name: L1_Mu23_EG10
        232, -- module_index: 8, name: L1_Mu23_LooseIsoEG10
        403, -- module_index: 9, name: L1_Mu5_EG15
        407, -- module_index: 10, name: L1_Mu20_EG10
        233, -- module_index: 11, name: L1_Mu5_EG23
         18, -- module_index: 12, name: L1_SingleMu20
         10, -- module_index: 13, name: L1_SingleMu7
        234, -- module_index: 14, name: L1_Mu5_LooseIsoEG20
        230, -- module_index: 15, name: L1_Mu20_EG17
        405, -- module_index: 16, name: L1_Mu5_LooseIsoEG18
        235, -- module_index: 17, name: L1_Mu7_EG23
        404, -- module_index: 18, name: L1_Mu5_EG20
        409, -- module_index: 19, name: L1_Mu20_LooseIsoEG6
        406, -- module_index: 20, name: L1_Mu12_EG10
        408, -- module_index: 21, name: L1_MU20_EG15
        236, -- module_index: 22, name: L1_Mu7_LooseIsoEG20
        237, -- module_index: 23, name: L1_Mu7_LooseIsoEG23
        124, -- module_index: 24, name: L1_DoubleIsoTau30er2p1
        129, -- module_index: 25, name: L1_DoubleIsoTau36er2p1
        151, -- module_index: 26, name: L1_DoubleJet40er3p0
        121, -- module_index: 27, name: L1_DoubleTau50er2p1
        145, -- module_index: 28, name: L1_SingleJet90_FWD
          7, -- module_index: 29, name: L1_SingleMu0_EMTF
         15, -- module_index: 30, name: L1_SingleMu12_LowQ_EMTF
         20, -- module_index: 31, name: L1_SingleMu22_BMTF
         23, -- module_index: 32, name: L1_SingleMu25
          0, -- module_index: 33, name: L1_SingleMuCosmics
          3, -- module_index: 34, name: L1_SingleMuCosmics_OMTF
        380, -- module_index: 35, name: L1_DoubleMu0er1p5_SQ_OS
        378, -- module_index: 36, name: L1_DoubleMu4p5_SQ_OS
         31, -- module_index: 37, name: L1_DoubleMu_11_4
         36, -- module_index: 38, name: L1_DoubleMu_15_7
        384, -- module_index: 39, name: L1_TripleMu0_OQ
        324, -- module_index: 40, name: L1_TripleMu3_SQ
         43, -- module_index: 41, name: L1_TripleMu_5_3_3
        267, -- module_index: 42, name: L1_ETM110_Jet60_dPhi_Min0p4
        265, -- module_index: 43, name: L1_ETM90_Jet60_dPhi_Min0p4
        160, -- module_index: 44, name: L1_TripleJet_92_76_64_VBF
         98, -- module_index: 45, name: L1_IsoEG33_Mt44
        426, -- module_index: 46, name: L1_DoubleMu_10_0_dEta_Max1p8
        362, -- module_index: 47, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        490, -- module_index: 48, name: L1_CDC_3_TOP120_DPHI1p570_3p142
        496, -- module_index: 49, name: L1_CDC_3_er1p2_TOP120_DPHI2p618_3p142
        502, -- module_index: 50, name: L1_CDC_3_er2p1_TOP120_DPHI2p618_3p142
        508, -- module_index: 51, name: L1_CDCp1_3_er1p2_TOP120_DPHI2p618_3p142
        163, -- module_index: 52, name: L1_QuadJet60er3p0
        284, -- module_index: 53, name: L1_LooseIsoEG18er2p1_IsoTau24er2p1_dR_Min0p3
        222, -- module_index: 54, name: L1_LooseIsoEG28er2p1_Jet34er3p0_dR_Min0p3
        246, -- module_index: 55, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================