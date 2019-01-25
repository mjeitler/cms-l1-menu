-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- bf4bfc65-9d4c-4074-8054-cefe91c0eba5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        182, -- module_index: 0, name: L1_ETM50
        202, -- module_index: 1, name: L1_ETMHF150
        166, -- module_index: 2, name: L1_HTT160er
        176, -- module_index: 3, name: L1_HTT380er
        177, -- module_index: 4, name: L1_HTT400er
        178, -- module_index: 5, name: L1_HTT450er
        179, -- module_index: 6, name: L1_HTT500er
         51, -- module_index: 7, name: L1_SingleEG10
          9, -- module_index: 8, name: L1_SingleMu5
        232, -- module_index: 9, name: L1_Mu23_LooseIsoEG10
        236, -- module_index: 10, name: L1_Mu7_LooseIsoEG20
         52, -- module_index: 11, name: L1_SingleEG15
        230, -- module_index: 12, name: L1_Mu20_EG17
        407, -- module_index: 13, name: L1_Mu20_EG10
        233, -- module_index: 14, name: L1_Mu5_EG23
        406, -- module_index: 15, name: L1_Mu12_EG10
        231, -- module_index: 16, name: L1_Mu23_EG10
         18, -- module_index: 17, name: L1_SingleMu20
        409, -- module_index: 18, name: L1_Mu20_LooseIsoEG6
        405, -- module_index: 19, name: L1_Mu5_LooseIsoEG18
        235, -- module_index: 20, name: L1_Mu7_EG23
         10, -- module_index: 21, name: L1_SingleMu7
        404, -- module_index: 22, name: L1_Mu5_EG20
        403, -- module_index: 23, name: L1_Mu5_EG15
        234, -- module_index: 24, name: L1_Mu5_LooseIsoEG20
        408, -- module_index: 25, name: L1_MU20_EG15
        237, -- module_index: 26, name: L1_Mu7_LooseIsoEG23
        101, -- module_index: 27, name: L1_DoubleEG_18_17
        105, -- module_index: 28, name: L1_DoubleEG_22_15
        109, -- module_index: 29, name: L1_DoubleEG_25_13
        123, -- module_index: 30, name: L1_DoubleIsoTau28er2p1
        127, -- module_index: 31, name: L1_DoubleIsoTau34er2p1
        155, -- module_index: 32, name: L1_DoubleJet100er3p0
        151, -- module_index: 33, name: L1_DoubleJet40er3p0
        112, -- module_index: 34, name: L1_DoubleLooseIsoEG24er2p1
        143, -- module_index: 35, name: L1_SingleJet35_FWD
        114, -- module_index: 36, name: L1_TripleEG_18_17_8
          6, -- module_index: 37, name: L1_SingleMu0_OMTF
         15, -- module_index: 38, name: L1_SingleMu12_LowQ_EMTF
         19, -- module_index: 39, name: L1_SingleMu22
         21, -- module_index: 40, name: L1_SingleMu22_OMTF
          8, -- module_index: 41, name: L1_SingleMu3
        366, -- module_index: 42, name: L1_Mu3_Jet30er2p5
          0, -- module_index: 43, name: L1_SingleMuCosmics
          3, -- module_index: 44, name: L1_SingleMuCosmics_OMTF
        385, -- module_index: 45, name: L1_DoubleMu0_SQ
         38, -- module_index: 46, name: L1_DoubleMu22er2p1
        389, -- module_index: 47, name: L1_DoubleMu4p5er2p0_SQ_OS
         31, -- module_index: 48, name: L1_DoubleMu_11_4
         35, -- module_index: 49, name: L1_DoubleMu_15_5
        375, -- module_index: 50, name: L1_DoubleMu4_OS_EG12
        378, -- module_index: 51, name: L1_DoubleMu5_OS_EG12
         40, -- module_index: 52, name: L1_TripleMu3
        395, -- module_index: 53, name: L1_TripleMu_5SQ_3SQ_0OQ
        393, -- module_index: 54, name: L1_TripleMu_5_3p5_2p5
        381, -- module_index: 55, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        380, -- module_index: 56, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        372, -- module_index: 57, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        491, -- module_index: 58, name: L1_CDC_3_TOP120_DPHI2p094_3p142
        497, -- module_index: 59, name: L1_CDC_3_er1p6_TOP120_DPHI1p570_3p142
        503, -- module_index: 60, name: L1_CDC_SingleMu_3_TOP120_DPHI2p618_3p142
        509, -- module_index: 61, name: L1_CDCp1_3_er1p6_TOP120_DPHI2p618_3p142
        264, -- module_index: 62, name: L1_QuadJet36er3p0_IsoTau52er2p1
        212, -- module_index: 63, name: L1_DoubleJet30_Mass_Min320_dEta_Max1p5
        287, -- module_index: 64, name: L1_LooseIsoEG20er2p1_IsoTau25er2p1_dR_Min0p3
        223, -- module_index: 65, name: L1_LooseIsoEG30er2p1_Jet34er3p0_dR_Min0p3
        248, -- module_index: 66, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================