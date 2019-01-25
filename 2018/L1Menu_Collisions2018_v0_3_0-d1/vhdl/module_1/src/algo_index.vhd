-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_3_0

-- Unique ID of L1 Trigger Menu:
-- 13f60d08-d9e3-4e6d-ad9b-3fd19ac86467

-- Unique ID of firmware implementation:
-- 6a0fa015-1c57-4ae1-8232-f2325ddad00d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        481, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        480, -- module_index: 1, name: L1_BPTX_NotOR_VME
        484, -- module_index: 2, name: L1_FirstCollisionInOrbit
        487, -- module_index: 3, name: L1_LastCollisionInTrain
        479, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        207, -- module_index: 5, name: L1_ETMHF150
        173, -- module_index: 6, name: L1_HTT255er
         51, -- module_index: 7, name: L1_SingleEG10
         70, -- module_index: 8, name: L1_SingleEG36er2p5
         64, -- module_index: 9, name: L1_SingleEG45er2p5
         87, -- module_index: 10, name: L1_SingleIsoEG26er2p1
         89, -- module_index: 11, name: L1_SingleIsoEG30er2p1
         95, -- module_index: 12, name: L1_SingleIsoEG34er2p5
        509, -- module_index: 13, name: L1_SingleJet12erHE
        131, -- module_index: 14, name: L1_SingleJet16
        140, -- module_index: 15, name: L1_SingleJet170
        132, -- module_index: 16, name: L1_SingleJet20
        148, -- module_index: 17, name: L1_SingleJet35_HFm
        150, -- module_index: 18, name: L1_SingleJet60_HFm
        154, -- module_index: 19, name: L1_SingleJet90er2p5
        229, -- module_index: 20, name: L1_LooseIsoEG24er2p1_HTT100er
        232, -- module_index: 21, name: L1_LooseIsoEG30er2p1_HTT100er
        230, -- module_index: 22, name: L1_LooseIsoEG26er2p1_HTT100er
        231, -- module_index: 23, name: L1_LooseIsoEG28er2p1_HTT100er
        281, -- module_index: 24, name: L1_DoubleEG_LooseIso22_12_er2p5
        129, -- module_index: 25, name: L1_DoubleIsoTau36er2p1
        122, -- module_index: 26, name: L1_DoubleTau70er2p1
        145, -- module_index: 27, name: L1_SingleJet90_FWD
        114, -- module_index: 28, name: L1_TripleEG_18_17_8_er2p5
         12, -- module_index: 29, name: L1_SingleMu0_LowQ
         15, -- module_index: 30, name: L1_SingleMu12_LowQ_EMTF
         16, -- module_index: 31, name: L1_SingleMu15_LowQ
         18, -- module_index: 32, name: L1_SingleMu20
        422, -- module_index: 33, name: L1_Mu20_EG10er2p5
         21, -- module_index: 34, name: L1_SingleMu22_OMTF
        423, -- module_index: 35, name: L1_SingleMu6er1p5
        425, -- module_index: 36, name: L1_SingleMu8er1p5
          2, -- module_index: 37, name: L1_SingleMuCosmics_BMTF
        307, -- module_index: 38, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 39, name: L1_Mu22er2p1_IsoTau34er2p1
        311, -- module_index: 40, name: L1_Mu22er2p1_IsoTau36er2p1
        301, -- module_index: 41, name: L1_Mu22er2p1_Tau70er2p1
        390, -- module_index: 42, name: L1_DoubleMu0_SQ
        291, -- module_index: 43, name: L1_DoubleJet_80_30_Mass_Min420_DoubleMu0_SQ
        290, -- module_index: 44, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        381, -- module_index: 45, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        222, -- module_index: 46, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
        504, -- module_index: 47, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        404, -- module_index: 48, name: L1_TripleMu_5_3p5_2p5_OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        288, -- module_index: 49, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        216, -- module_index: 50, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        295, -- module_index: 51, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        401, -- module_index: 52, name: L1_DoubleMu5Upsilon_OS_DoubleEG3
        445, -- module_index: 53, name: L1_Mu3_Jet60er2p5_dR_Max0p4
        450, -- module_index: 54, name: L1_DoubleMu3_dR_Max1p6_Jet90er2p5_dR_Max0p8
    others => 0
);

-- ========================================================