-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r2

-- Unique ID of L1 Trigger Menu:
-- 04d867d5-3c53-47f0-a97b-d8a1846f61a4

-- Unique ID of firmware implementation:
-- 1617e19e-196f-43a1-922a-63b5e360f44d

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
        183, -- module_index: 4, name: L1_ETM30
        462, -- module_index: 5, name: L1_Mu14er2p1_ETM30
        461, -- module_index: 6, name: L1_Mu10er2p1_ETM30
         25, -- module_index: 7, name: L1_SingleMu14er2p1
         66, -- module_index: 8, name: L1_SingleEG34er2p1
         67, -- module_index: 9, name: L1_SingleEG36er2p1
         68, -- module_index: 10, name: L1_SingleEG38er2p1
         64, -- module_index: 11, name: L1_SingleEG45
         69, -- module_index: 12, name: L1_SingleIsoEG18
         84, -- module_index: 13, name: L1_SingleIsoEG20er2p1
         72, -- module_index: 14, name: L1_SingleIsoEG24
         87, -- module_index: 15, name: L1_SingleIsoEG26er2p1
         75, -- module_index: 16, name: L1_SingleIsoEG30
         90, -- module_index: 17, name: L1_SingleIsoEG32er2p1
         92, -- module_index: 18, name: L1_SingleIsoEG34er2p1
         79, -- module_index: 19, name: L1_SingleIsoEG36
         81, -- module_index: 20, name: L1_SingleIsoEG38
         96, -- module_index: 21, name: L1_SingleIsoEG40er2p1
        509, -- module_index: 22, name: L1_SingleJet12erHE
        131, -- module_index: 23, name: L1_SingleJet16
        141, -- module_index: 24, name: L1_SingleJet180
        133, -- module_index: 25, name: L1_SingleJet35
        150, -- module_index: 26, name: L1_SingleJet60_HFm
        117, -- module_index: 27, name: L1_SingleTau100er2p1
        120, -- module_index: 28, name: L1_SingleTau140er2p1
        100, -- module_index: 29, name: L1_DoubleEG_15_10
        104, -- module_index: 30, name: L1_DoubleEG_22_12
        108, -- module_index: 31, name: L1_DoubleEG_25_12
        280, -- module_index: 32, name: L1_DoubleEG_LooseIso24_10
        126, -- module_index: 33, name: L1_DoubleIsoTau33er2p1
        130, -- module_index: 34, name: L1_DoubleIsoTau38er2p1
        158, -- module_index: 35, name: L1_DoubleJet150er2p7
        111, -- module_index: 36, name: L1_DoubleLooseIsoEG22er2p1
        146, -- module_index: 37, name: L1_SingleJet120_FWD
        113, -- module_index: 38, name: L1_TripleEG_14_10_8
          7, -- module_index: 39, name: L1_SingleMu0_EMTF
         13, -- module_index: 40, name: L1_SingleMu12_LowQ_BMTF
         26, -- module_index: 41, name: L1_SingleMu16er2p1
         22, -- module_index: 42, name: L1_SingleMu22_EMTF
         23, -- module_index: 43, name: L1_SingleMu25
          0, -- module_index: 44, name: L1_SingleMuCosmics
          3, -- module_index: 45, name: L1_SingleMuCosmics_OMTF
        391, -- module_index: 46, name: L1_DoubleMu0_SQ_OS
        396, -- module_index: 47, name: L1_DoubleMu4_SQ_OS
        397, -- module_index: 48, name: L1_DoubleMu5_SQ_OS
         32, -- module_index: 49, name: L1_DoubleMu_12_5
        332, -- module_index: 50, name: L1_DoubleMu_15_5_SQ
        406, -- module_index: 51, name: L1_DoubleMu7_EG7
        365, -- module_index: 52, name: L1_DoubleMu7_SQ_EG7
        160, -- module_index: 53, name: L1_TripleJet_88_72_56_VBF
         39, -- module_index: 54, name: L1_TripleMu0
        335, -- module_index: 55, name: L1_TripleMu3_SQ
         42, -- module_index: 56, name: L1_TripleMu_5_0_0
         44, -- module_index: 57, name: L1_TripleMu_5_5_3
        274, -- module_index: 58, name: L1_ETM110_Jet60_dPhi_Min0p4
        271, -- module_index: 59, name: L1_ETM80_Jet60_dPhi_Min0p4
         45, -- module_index: 60, name: L1_QuadMu0
         98, -- module_index: 61, name: L1_IsoEG33_Mt44
        440, -- module_index: 62, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        252, -- module_index: 63, name: L1_DoubleJet112er2p3_dEta_Max1p6
        222, -- module_index: 64, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        504, -- module_index: 65, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        283, -- module_index: 66, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 67, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        219, -- module_index: 68, name: L1_DoubleJet30_Mass_Min360_dEta_Max1p5
        226, -- module_index: 69, name: L1_LooseIsoEG26er2p1_Jet34er2p7_dR_Min0p3
        404, -- module_index: 70, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_5to17
        403, -- module_index: 71, name: L1_TripleMu_5OQ_3p5OQ_2p5OQ_DoubleMu_5_2p5_OQ_OS_Mass_8to14
    others => 0
);

-- ========================================================