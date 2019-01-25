-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v1

-- Unique ID of L1 Trigger Menu:
-- 5c7b4a5a-e0b2-4b3f-9a0f-45e17843321a

-- Unique ID of firmware implementation:
-- 9ec147b7-3a0c-454f-9d20-cbf08298b3a0

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        478, -- module_index: 0, name: L1_BPTX_AND_NIM
        463, -- module_index: 1, name: L1_BPTX_B1NotB2_VME
        457, -- module_index: 2, name: L1_BPTX_BeamGas_B2_VME
        471, -- module_index: 3, name: L1_BPTX_OR_Ref3_VME
        477, -- module_index: 4, name: L1_FirstCollisionInTrain
        202, -- module_index: 5, name: L1_ETM110
        190, -- module_index: 6, name: L1_ETM30
        438, -- module_index: 7, name: L1_Mu10er2p1_ETM30
        439, -- module_index: 8, name: L1_Mu14er2p1_ETM30
         25, -- module_index: 9, name: L1_SingleMu14er2p1
         50, -- module_index: 10, name: L1_SingleEG5
         69, -- module_index: 11, name: L1_SingleIsoEG22
         81, -- module_index: 12, name: L1_SingleIsoEG24er2p1
         83, -- module_index: 13, name: L1_SingleIsoEG28er2p1
         85, -- module_index: 14, name: L1_SingleIsoEG32er2p1
         87, -- module_index: 15, name: L1_SingleIsoEG36er2p1
        137, -- module_index: 16, name: L1_SingleJet150
        140, -- module_index: 17, name: L1_SingleJet180
        143, -- module_index: 18, name: L1_SingleJet35_HFm
        112, -- module_index: 19, name: L1_SingleTau100er2p1
        412, -- module_index: 20, name: L1_EG25er2p1_HTT125er
         93, -- module_index: 21, name: L1_DoubleEG_22_10
         97, -- module_index: 22, name: L1_DoubleEG_24_17
        295, -- module_index: 23, name: L1_DoubleEG_Iso23_10
        118, -- module_index: 24, name: L1_DoubleIsoTau32er2p1
        122, -- module_index: 25, name: L1_DoubleIsoTau36er2p1
        150, -- module_index: 26, name: L1_DoubleJet40er3p0
        101, -- module_index: 27, name: L1_TripleEG_14_10_8
          6, -- module_index: 28, name: L1_SingleMu0_OMTF
         14, -- module_index: 29, name: L1_SingleMu12_LowQ_OMTF
         22, -- module_index: 30, name: L1_SingleMu22_EMTF
          8, -- module_index: 31, name: L1_SingleMu3
          4, -- module_index: 32, name: L1_SingleMuCosmics_EMTF
         31, -- module_index: 33, name: L1_DoubleMu_11_4
         36, -- module_index: 34, name: L1_DoubleMu_15_7
         38, -- module_index: 35, name: L1_TripleMu3
         41, -- module_index: 36, name: L1_TripleMu_5_3_3
        290, -- module_index: 37, name: L1_ETM110_Jet60_dPhi_Min0p4
        288, -- module_index: 38, name: L1_ETM90_Jet60_dPhi_Min0p4
        159, -- module_index: 39, name: L1_TripleJet_92_76_64_VBF
        426, -- module_index: 40, name: L1_DoubleMu_10_0_dEta_Max1p8
        370, -- module_index: 41, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        374, -- module_index: 42, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        415, -- module_index: 43, name: L1_QuadJet36er3p0_Tau52
        430, -- module_index: 44, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        252, -- module_index: 45, name: L1_IsoEG28er2p1_Jet34er3p0_dR_Min0p3
        467, -- module_index: 46, name: L1_BPTX_B1NotB2_NIM
        456, -- module_index: 47, name: L1_BPTX_BeamGas_B1_VME
        481, -- module_index: 48, name: L1_BPTX_OR_NIM
        473, -- module_index: 49, name: L1_FirstCollisionInOrbit
    others => 0
);

-- ========================================================