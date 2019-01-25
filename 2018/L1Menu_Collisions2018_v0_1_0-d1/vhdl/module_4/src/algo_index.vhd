-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- e4115c89-8693-4f08-bb9f-493f844c4d15

-- Unique ID of firmware implementation:
-- ea19fb64-9f87-4584-b967-74fcff8d0681

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        488, -- module_index: 2, name: L1_FirstCollisionInTrain
        193, -- module_index: 3, name: L1_ETM100
        276, -- module_index: 4, name: L1_DoubleJet60er2p7_ETM80
        187, -- module_index: 5, name: L1_ETM70
        189, -- module_index: 6, name: L1_ETM80
        278, -- module_index: 7, name: L1_DoubleJet60er2p7_ETM100
        186, -- module_index: 8, name: L1_ETM60
        277, -- module_index: 9, name: L1_DoubleJet60er2p7_ETM90
        153, -- module_index: 10, name: L1_DoubleJet60er2p7
        275, -- module_index: 11, name: L1_DoubleJet60er2p7_ETM70
        191, -- module_index: 12, name: L1_ETM90
        429, -- module_index: 13, name: L1_DoubleJet60er2p7_ETM60
         55, -- module_index: 14, name: L1_SingleEG26
         66, -- module_index: 15, name: L1_SingleEG34er2p1
         69, -- module_index: 16, name: L1_SingleEG34er2p5
         67, -- module_index: 17, name: L1_SingleEG36er2p1
         68, -- module_index: 18, name: L1_SingleEG38er2p1
         72, -- module_index: 19, name: L1_SingleEG40er2p5
         64, -- module_index: 20, name: L1_SingleEG45er2p5
         86, -- module_index: 21, name: L1_SingleIsoEG24er2p1
         88, -- module_index: 22, name: L1_SingleIsoEG28er2p1
         93, -- module_index: 23, name: L1_SingleIsoEG30er2p5
         95, -- module_index: 24, name: L1_SingleIsoEG34er2p5
        509, -- module_index: 25, name: L1_SingleJet12erHE
        131, -- module_index: 26, name: L1_SingleJet16
        132, -- module_index: 27, name: L1_SingleJet20
        147, -- module_index: 28, name: L1_SingleJet35_HFp
        118, -- module_index: 29, name: L1_SingleTau120er2p1
        108, -- module_index: 30, name: L1_DoubleEG_25_12_er2p5
        125, -- module_index: 31, name: L1_DoubleIsoTau32er2p1
        156, -- module_index: 32, name: L1_DoubleJet112er2p7
        152, -- module_index: 33, name: L1_DoubleJet50er2p7
        122, -- module_index: 34, name: L1_DoubleTau70er2p1
        145, -- module_index: 35, name: L1_SingleJet90_FWD
          7, -- module_index: 36, name: L1_SingleMu0_EMTF
         15, -- module_index: 37, name: L1_SingleMu12_LowQ_EMTF
         19, -- module_index: 38, name: L1_SingleMu22
         21, -- module_index: 39, name: L1_SingleMu22_OMTF
         10, -- module_index: 40, name: L1_SingleMu7
        240, -- module_index: 41, name: L1_Mu7_EG23er2p5
        242, -- module_index: 42, name: L1_Mu7_LooseIsoEG23er2p5
        241, -- module_index: 43, name: L1_Mu7_LooseIsoEG20er2p5
         30, -- module_index: 44, name: L1_DoubleMu0
        391, -- module_index: 45, name: L1_DoubleMu0_SQ_OS
        396, -- module_index: 46, name: L1_DoubleMu4_SQ_OS
        397, -- module_index: 47, name: L1_DoubleMu5_SQ_OS
        332, -- module_index: 48, name: L1_DoubleMu_15_5_SQ
        406, -- module_index: 49, name: L1_DoubleMu7_EG7
        365, -- module_index: 50, name: L1_DoubleMu7_SQ_EG7
         40, -- module_index: 51, name: L1_TripleMu3
         42, -- module_index: 52, name: L1_TripleMu_5_0_0
        273, -- module_index: 53, name: L1_ETM100_Jet60_dPhi_Min0p4
        271, -- module_index: 54, name: L1_ETM80_Jet60_dPhi_Min0p4
         97, -- module_index: 55, name: L1_IsoEG32er2p5_Mt40
        440, -- module_index: 56, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        381, -- module_index: 57, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        382, -- module_index: 58, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        343, -- module_index: 59, name: L1_DoubleMu0_Mass_Min1
        270, -- module_index: 60, name: L1_QuadJet36er2p5_IsoTau52er2p1
        218, -- module_index: 61, name: L1_DoubleJet30er2p5_Mass_Min340_dEta_Max1p5
        295, -- module_index: 62, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        443, -- module_index: 63, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        254, -- module_index: 64, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================