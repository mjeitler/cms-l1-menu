-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        470, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        464, -- module_index: 1, name: L1_BPTX_B2NotB1_VME
        469, -- module_index: 2, name: L1_BPTX_NotOR_NIM
        460, -- module_index: 3, name: L1_BptxMinus
        452, -- module_index: 4, name: L1_BptxXOR
        459, -- module_index: 5, name: L1_BptxPlus
        204, -- module_index: 6, name: L1_ETM120
        195, -- module_index: 7, name: L1_ETM75
        171, -- module_index: 8, name: L1_HTT160er
        181, -- module_index: 9, name: L1_HTT380er
        184, -- module_index: 10, name: L1_HTT500er
         54, -- module_index: 11, name: L1_SingleEG24
         56, -- module_index: 12, name: L1_SingleEG28
         58, -- module_index: 13, name: L1_SingleEG32
         64, -- module_index: 14, name: L1_SingleEG34er2p1
         65, -- module_index: 15, name: L1_SingleEG36er2p1
         66, -- module_index: 16, name: L1_SingleEG38er2p1
         63, -- module_index: 17, name: L1_SingleEG45
         79, -- module_index: 18, name: L1_SingleIsoEG20er2p1
         70, -- module_index: 19, name: L1_SingleIsoEG24
         72, -- module_index: 20, name: L1_SingleIsoEG28
         74, -- module_index: 21, name: L1_SingleIsoEG32
         76, -- module_index: 22, name: L1_SingleIsoEG36
        136, -- module_index: 23, name: L1_SingleJet140
        139, -- module_index: 24, name: L1_SingleJet170
        132, -- module_index: 25, name: L1_SingleJet35
        144, -- module_index: 26, name: L1_SingleJet60_HFp
        111, -- module_index: 27, name: L1_SingleTau80er2p1
         92, -- module_index: 28, name: L1_DoubleEG_20_18
         96, -- module_index: 29, name: L1_DoubleEG_23_10
        100, -- module_index: 30, name: L1_DoubleEG_25_14
        117, -- module_index: 31, name: L1_DoubleIsoTau30er2p1
        121, -- module_index: 32, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 33, name: L1_DoubleJet120er3p0
        115, -- module_index: 34, name: L1_DoubleTau70er2p1
          7, -- module_index: 35, name: L1_SingleMu0_EMTF
         15, -- module_index: 36, name: L1_SingleMu12_LowQ_EMTF
         20, -- module_index: 37, name: L1_SingleMu22_BMTF
         23, -- module_index: 38, name: L1_SingleMu25
          2, -- module_index: 39, name: L1_SingleMuCosmics_BMTF
        381, -- module_index: 40, name: L1_DoubleMu6_SQ_OS
         35, -- module_index: 41, name: L1_DoubleMu_15_5
         37, -- module_index: 42, name: L1_TripleMu0
        334, -- module_index: 43, name: L1_TripleMu3_SQ
         42, -- module_index: 44, name: L1_TripleMu_5_5_3
        416, -- module_index: 45, name: L1_ETM75_Jet60_dPhi_Min0p4
        157, -- module_index: 46, name: L1_TripleJet_84_68_48_VBF
         43, -- module_index: 47, name: L1_QuadMu0
        275, -- module_index: 48, name: L1_DoubleJet100er2p3_dEta_Max1p6
        371, -- module_index: 49, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        161, -- module_index: 50, name: L1_QuadJet50er3p0
        303, -- module_index: 51, name: L1_IsoEG18er2p1_IsoTau24er2p1_dEta_Min0p2
        422, -- module_index: 52, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        423, -- module_index: 53, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================