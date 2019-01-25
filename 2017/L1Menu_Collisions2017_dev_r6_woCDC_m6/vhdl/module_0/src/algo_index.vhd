-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        478, -- module_index: 0, name: L1_BPTX_AND_NIM
        479, -- module_index: 1, name: L1_BPTX_B1_NIM
        455, -- module_index: 2, name: L1_BPTX_BeamGas_Ref2_VME
        472, -- module_index: 3, name: L1_BPTX_RefAND_VME
        464, -- module_index: 4, name: L1_UnpairedBunchBptxMinus
        202, -- module_index: 5, name: L1_ETM110
        190, -- module_index: 6, name: L1_ETM30
        441, -- module_index: 7, name: L1_Mu10er2p1_ETM30
        442, -- module_index: 8, name: L1_Mu14er2p1_ETM30
         25, -- module_index: 9, name: L1_SingleMu14er2p1
         50, -- module_index: 10, name: L1_SingleEG5
         69, -- module_index: 11, name: L1_SingleIsoEG22
         81, -- module_index: 12, name: L1_SingleIsoEG24er2p1
         83, -- module_index: 13, name: L1_SingleIsoEG28er2p1
         85, -- module_index: 14, name: L1_SingleIsoEG32er2p1
         87, -- module_index: 15, name: L1_SingleIsoEG36er2p1
        137, -- module_index: 16, name: L1_SingleJet150
        140, -- module_index: 17, name: L1_SingleJet180
        147, -- module_index: 18, name: L1_SingleJet35_HFm
        112, -- module_index: 19, name: L1_SingleTau100er2p1
        412, -- module_index: 20, name: L1_EG25er2p1_HTT125er
         93, -- module_index: 21, name: L1_DoubleEG_22_10
         97, -- module_index: 22, name: L1_DoubleEG_24_17
        275, -- module_index: 23, name: L1_DoubleEG_Iso23_10
        117, -- module_index: 24, name: L1_DoubleIsoTau30er2p1
        121, -- module_index: 25, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 26, name: L1_DoubleJet120er3p0
        115, -- module_index: 27, name: L1_DoubleTau70er2p1
        102, -- module_index: 28, name: L1_TripleEG_14_10_8
          6, -- module_index: 29, name: L1_SingleMu0_OMTF
         14, -- module_index: 30, name: L1_SingleMu12_LowQ_OMTF
         22, -- module_index: 31, name: L1_SingleMu22_EMTF
          8, -- module_index: 32, name: L1_SingleMu3
          2, -- module_index: 33, name: L1_SingleMuCosmics_BMTF
        411, -- module_index: 34, name: L1_Mu8_HTT150er
         37, -- module_index: 35, name: L1_DoubleMu18er2p1
        379, -- module_index: 36, name: L1_DoubleMu4p5er2p0_SQ_OS
         32, -- module_index: 37, name: L1_DoubleMu_12_5
        322, -- module_index: 38, name: L1_DoubleMu_15_7_SQ
        323, -- module_index: 39, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        362, -- module_index: 40, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
        372, -- module_index: 41, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        373, -- module_index: 42, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        284, -- module_index: 43, name: L1_IsoEG18er2p1_IsoTau24er2p1_dR_Min0p3
        233, -- module_index: 44, name: L1_IsoEG30er2p1_Jet34er3p0_dR_Min0p3
        422, -- module_index: 45, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        423, -- module_index: 46, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================