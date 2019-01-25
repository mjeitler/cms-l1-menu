-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        467, -- module_index: 0, name: L1_BPTX_B1NotB2_NIM
        454, -- module_index: 1, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 2, name: L1_BPTX_OR_Ref4_VME
        476, -- module_index: 3, name: L1_LastCollisionInTrain
        201, -- module_index: 4, name: L1_ETM105
        205, -- module_index: 5, name: L1_ETM150
        216, -- module_index: 6, name: L1_ETMHF150
        179, -- module_index: 7, name: L1_HTT320er
        182, -- module_index: 8, name: L1_HTT400er
         51, -- module_index: 9, name: L1_SingleEG10
        240, -- module_index: 10, name: L1_Mu20_EG17
         67, -- module_index: 11, name: L1_SingleIsoEG18
        247, -- module_index: 12, name: L1_Mu7_IsoEG23
        407, -- module_index: 13, name: L1_Mu20_EG10
         18, -- module_index: 14, name: L1_SingleMu20
        244, -- module_index: 15, name: L1_Mu5_IsoEG20
        403, -- module_index: 16, name: L1_Mu5_EG15
        243, -- module_index: 17, name: L1_Mu5_EG23
        409, -- module_index: 18, name: L1_Mu20_IsoEG6
          9, -- module_index: 19, name: L1_SingleMu5
        241, -- module_index: 20, name: L1_Mu23_EG10
        246, -- module_index: 21, name: L1_Mu7_IsoEG20
        405, -- module_index: 22, name: L1_Mu5_IsoEG18
         10, -- module_index: 23, name: L1_SingleMu7
        242, -- module_index: 24, name: L1_Mu23_IsoEG10
         52, -- module_index: 25, name: L1_SingleEG15
        406, -- module_index: 26, name: L1_Mu12_EG10
        408, -- module_index: 27, name: L1_MU20_EG15
         68, -- module_index: 28, name: L1_SingleIsoEG20
        404, -- module_index: 29, name: L1_Mu5_EG20
        245, -- module_index: 30, name: L1_Mu7_EG23
        122, -- module_index: 31, name: L1_DoubleIsoTau36er2p1
        150, -- module_index: 32, name: L1_DoubleJet40er3p0
        145, -- module_index: 33, name: L1_SingleJet120_FWD
        103, -- module_index: 34, name: L1_TripleEG_18_17_8
         11, -- module_index: 35, name: L1_SingleMu10_LowQ
         16, -- module_index: 36, name: L1_SingleMu16
         21, -- module_index: 37, name: L1_SingleMu22_OMTF
         24, -- module_index: 38, name: L1_SingleMu30
          4, -- module_index: 39, name: L1_SingleMuCosmics_EMTF
        376, -- module_index: 40, name: L1_DoubleMu0_SQ_OS
        377, -- module_index: 41, name: L1_DoubleMu4p5_SQ
        374, -- module_index: 42, name: L1_DoubleMu8_SQ
         35, -- module_index: 43, name: L1_DoubleMu_15_5
         39, -- module_index: 44, name: L1_TripleMu0
         40, -- module_index: 45, name: L1_TripleMu3
         42, -- module_index: 46, name: L1_TripleMu_5_0_0
        269, -- module_index: 47, name: L1_ETM100_Jet60_dPhi_Min0p4
        267, -- module_index: 48, name: L1_ETM80_Jet60_dPhi_Min0p4
        158, -- module_index: 49, name: L1_TripleJet_88_72_56_VBF
        425, -- module_index: 50, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        366, -- module_index: 51, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        363, -- module_index: 52, name: L1_DoubleMu5_SQ_OS_Mass7to18
        266, -- module_index: 53, name: L1_QuadJet36er3p0_IsoTau52er2p1
        231, -- module_index: 54, name: L1_IsoEG26er2p1_Jet34er3p0_dR_Min0p3
        428, -- module_index: 55, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================