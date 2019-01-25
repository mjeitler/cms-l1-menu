-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        470, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        456, -- module_index: 1, name: L1_BPTX_BeamGas_B1_VME
        481, -- module_index: 2, name: L1_BPTX_OR_NIM
        473, -- module_index: 3, name: L1_FirstCollisionInOrbit
        463, -- module_index: 4, name: L1_UnpairedBunchBptxPlus
        204, -- module_index: 5, name: L1_ETM120
        195, -- module_index: 6, name: L1_ETM75
        171, -- module_index: 7, name: L1_HTT160er
        181, -- module_index: 8, name: L1_HTT380er
        184, -- module_index: 9, name: L1_HTT500er
         54, -- module_index: 10, name: L1_SingleEG24
         56, -- module_index: 11, name: L1_SingleEG28
         58, -- module_index: 12, name: L1_SingleEG32
         64, -- module_index: 13, name: L1_SingleEG34er2p1
         65, -- module_index: 14, name: L1_SingleEG36er2p1
         66, -- module_index: 15, name: L1_SingleEG38er2p1
         63, -- module_index: 16, name: L1_SingleEG45
         79, -- module_index: 17, name: L1_SingleIsoEG20er2p1
         70, -- module_index: 18, name: L1_SingleIsoEG24
         72, -- module_index: 19, name: L1_SingleIsoEG28
         74, -- module_index: 20, name: L1_SingleIsoEG32
         76, -- module_index: 21, name: L1_SingleIsoEG36
        136, -- module_index: 22, name: L1_SingleJet140
        139, -- module_index: 23, name: L1_SingleJet170
        132, -- module_index: 24, name: L1_SingleJet35
        148, -- module_index: 25, name: L1_SingleJet60_HFp
        111, -- module_index: 26, name: L1_SingleTau80er2p1
         92, -- module_index: 27, name: L1_DoubleEG_20_18
         96, -- module_index: 28, name: L1_DoubleEG_23_10
        100, -- module_index: 29, name: L1_DoubleEG_25_14
        116, -- module_index: 30, name: L1_DoubleIsoTau28er2p1
        120, -- module_index: 31, name: L1_DoubleIsoTau34er2p1
        155, -- module_index: 32, name: L1_DoubleJet112er3p0
        114, -- module_index: 33, name: L1_DoubleTau50er2p1
        144, -- module_index: 34, name: L1_SingleJet90_FWD
          7, -- module_index: 35, name: L1_SingleMu0_EMTF
         15, -- module_index: 36, name: L1_SingleMu12_LowQ_EMTF
         20, -- module_index: 37, name: L1_SingleMu22_BMTF
         23, -- module_index: 38, name: L1_SingleMu25
          0, -- module_index: 39, name: L1_SingleMuCosmics
          3, -- module_index: 40, name: L1_SingleMuCosmics_OMTF
        380, -- module_index: 41, name: L1_DoubleMu0er1p5_SQ_OS
        378, -- module_index: 42, name: L1_DoubleMu4p5_SQ_OS
         31, -- module_index: 43, name: L1_DoubleMu_11_4
         36, -- module_index: 44, name: L1_DoubleMu_15_7
        384, -- module_index: 45, name: L1_TripleMu0_OQ
        324, -- module_index: 46, name: L1_TripleMu3_SQ
         43, -- module_index: 47, name: L1_TripleMu_5_3_3
        270, -- module_index: 48, name: L1_ETM110_Jet60_dPhi_Min0p4
        268, -- module_index: 49, name: L1_ETM90_Jet60_dPhi_Min0p4
        159, -- module_index: 50, name: L1_TripleJet_92_76_64_VBF
        426, -- module_index: 51, name: L1_DoubleMu_10_0_dEta_Max1p8
        360, -- module_index: 52, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        364, -- module_index: 53, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        415, -- module_index: 54, name: L1_QuadJet36er3p0_Tau52
        232, -- module_index: 55, name: L1_IsoEG28er2p1_Jet34er3p0_dR_Min0p3
        429, -- module_index: 56, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================