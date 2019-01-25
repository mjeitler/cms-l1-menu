-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        185, -- module_index: 0, name: L1_ETM75
        166, -- module_index: 1, name: L1_HTT160er
        176, -- module_index: 2, name: L1_HTT380er
        179, -- module_index: 3, name: L1_HTT500er
         54, -- module_index: 4, name: L1_SingleEG24
         56, -- module_index: 5, name: L1_SingleEG28
         58, -- module_index: 6, name: L1_SingleEG32
         66, -- module_index: 7, name: L1_SingleEG34er2p1
         67, -- module_index: 8, name: L1_SingleEG36er2p1
         68, -- module_index: 9, name: L1_SingleEG38er2p1
         64, -- module_index: 10, name: L1_SingleEG45
         83, -- module_index: 11, name: L1_SingleIsoEG18er2p1
         85, -- module_index: 12, name: L1_SingleIsoEG22er2p1
         87, -- module_index: 13, name: L1_SingleIsoEG26er2p1
         89, -- module_index: 14, name: L1_SingleIsoEG30er2p1
         77, -- module_index: 15, name: L1_SingleIsoEG34
         79, -- module_index: 16, name: L1_SingleIsoEG36
         95, -- module_index: 17, name: L1_SingleIsoEG38er2p1
        137, -- module_index: 18, name: L1_SingleJet140
        140, -- module_index: 19, name: L1_SingleJet170
        133, -- module_index: 20, name: L1_SingleJet35
        149, -- module_index: 21, name: L1_SingleJet60_HFp
        120, -- module_index: 22, name: L1_SingleTau140er2p1
        100, -- module_index: 23, name: L1_DoubleEG_15_10
        103, -- module_index: 24, name: L1_DoubleEG_22_10
        106, -- module_index: 25, name: L1_DoubleEG_23_10
        110, -- module_index: 26, name: L1_DoubleEG_25_14
        125, -- module_index: 27, name: L1_DoubleIsoTau32er2p1
        130, -- module_index: 28, name: L1_DoubleIsoTau38er2p1
        152, -- module_index: 29, name: L1_DoubleJet50er3p0
        122, -- module_index: 30, name: L1_DoubleTau70er2p1
        113, -- module_index: 31, name: L1_TripleEG_14_10_8
          6, -- module_index: 32, name: L1_SingleMu0_OMTF
         14, -- module_index: 33, name: L1_SingleMu12_LowQ_OMTF
         22, -- module_index: 34, name: L1_SingleMu22_EMTF
          8, -- module_index: 35, name: L1_SingleMu3
        357, -- module_index: 36, name: L1_Mu3_Jet30er2p5
          4, -- module_index: 37, name: L1_SingleMuCosmics_EMTF
        376, -- module_index: 38, name: L1_DoubleMu0_SQ_OS
        377, -- module_index: 39, name: L1_DoubleMu4p5_SQ
        374, -- module_index: 40, name: L1_DoubleMu8_SQ
         35, -- module_index: 41, name: L1_DoubleMu_15_5
         39, -- module_index: 42, name: L1_TripleMu0
         40, -- module_index: 43, name: L1_TripleMu3
         42, -- module_index: 44, name: L1_TripleMu_5_0_0
        266, -- module_index: 45, name: L1_ETM100_Jet60_dPhi_Min0p4
        264, -- module_index: 46, name: L1_ETM80_Jet60_dPhi_Min0p4
        159, -- module_index: 47, name: L1_TripleJet_88_72_56_VBF
         97, -- module_index: 48, name: L1_IsoEG33_Mt40
        425, -- module_index: 49, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        360, -- module_index: 50, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        364, -- module_index: 51, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        495, -- module_index: 52, name: L1_CDC_3_er1p2_TOP120_DPHI2p094_3p142
        501, -- module_index: 53, name: L1_CDC_3_er2p1_TOP120_DPHI2p094_3p142
        507, -- module_index: 54, name: L1_CDCp1_3_TOP120_DPHI2p618_3p142
        162, -- module_index: 55, name: L1_QuadJet50er3p0
        279, -- module_index: 56, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        281, -- module_index: 57, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        221, -- module_index: 58, name: L1_LooseIsoEG26er2p1_Jet34er3p0_dR_Min0p3
        422, -- module_index: 59, name: L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0
        423, -- module_index: 60, name: L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0
    others => 0
);

-- ========================================================