-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_0

-- Unique ID of L1 Trigger Menu:
-- d2a8739b-a0c2-4bb8-b305-32db5f141af1

-- Unique ID of firmware implementation:
-- 90ee9049-377a-4a04-8574-1d33d0782fdb

-- Scale set:
-- scales_2020_09_30

-- VHDL producer version
-- v2.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        486, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        487, -- module_index: 1, name: L1_BPTX_AND_Ref3_VME
        488, -- module_index: 2, name: L1_BPTX_AND_Ref4_VME
        491, -- module_index: 3, name: L1_BPTX_BeamGas_B1_VME
        492, -- module_index: 4, name: L1_BPTX_BeamGas_B2_VME
        489, -- module_index: 5, name: L1_BPTX_BeamGas_Ref1_VME
        490, -- module_index: 6, name: L1_BPTX_BeamGas_Ref2_VME
        482, -- module_index: 7, name: L1_BPTX_NotOR_VME
        483, -- module_index: 8, name: L1_BPTX_OR_Ref3_VME
        484, -- module_index: 9, name: L1_BPTX_OR_Ref4_VME
        485, -- module_index: 10, name: L1_BPTX_RefAND_VME
        467, -- module_index: 11, name: L1_BptxMinus
        465, -- module_index: 12, name: L1_BptxXOR
        466, -- module_index: 13, name: L1_BptxPlus
        480, -- module_index: 14, name: L1_FirstCollisionInOrbit
        479, -- module_index: 15, name: L1_FirstCollisionInTrain
        500, -- module_index: 16, name: L1_HCAL_LaserMon_Trig
        501, -- module_index: 17, name: L1_HCAL_LaserMon_Veto
        478, -- module_index: 18, name: L1_LastCollisionInTrain
        503, -- module_index: 19, name: L1_TOTEM_1
        504, -- module_index: 20, name: L1_TOTEM_2
        505, -- module_index: 21, name: L1_TOTEM_3
        506, -- module_index: 22, name: L1_TOTEM_4
        469, -- module_index: 23, name: L1_UnpairedBunchBptxMinus
        468, -- module_index: 24, name: L1_UnpairedBunchBptxPlus
        416, -- module_index: 25, name: L1_ETM120
        411, -- module_index: 26, name: L1_ETT1600
        401, -- module_index: 27, name: L1_HTT255er
        161, -- module_index: 28, name: L1_SingleEG15er2p5
        164, -- module_index: 29, name: L1_SingleEG28er2p5
        170, -- module_index: 30, name: L1_SingleEG40er2p5
        174, -- module_index: 31, name: L1_SingleEG60
        187, -- module_index: 32, name: L1_SingleIsoEG26er1p5
        189, -- module_index: 33, name: L1_SingleIsoEG28er2p5
        196, -- module_index: 34, name: L1_SingleIsoEG34er2p5
        321, -- module_index: 35, name: L1_SingleJet160er2p5
        309, -- module_index: 36, name: L1_SingleJet35
        311, -- module_index: 37, name: L1_SingleJet90
        180, -- module_index: 38, name: L1_SingleLooseIsoEG28er1p5
        181, -- module_index: 39, name: L1_SingleLooseIsoEG30er2p5
        205, -- module_index: 40, name: L1_DoubleEG_15_10_er2p5
        208, -- module_index: 41, name: L1_DoubleEG_25_12_er2p5
        213, -- module_index: 42, name: L1_DoubleEG_LooseIso22_10_er2p5
        270, -- module_index: 43, name: L1_DoubleIsoTau30er2p1
        341, -- module_index: 44, name: L1_DoubleJet100er2p5
        218, -- module_index: 45, name: L1_DoubleLooseIsoEG24er2p1
        327, -- module_index: 46, name: L1_SingleJet120_FWD3p0
        177, -- module_index: 47, name: L1_SingleLooseIsoEG28_FWD2p5
        226, -- module_index: 48, name: L1_TripleEG_18_17_8_er2p5
        305, -- module_index: 49, name: L1_Mu0upt100
          6, -- module_index: 50, name: L1_SingleMu0_BMTF
         29, -- module_index: 51, name: L1_SingleMu10er1p5
         30, -- module_index: 52, name: L1_SingleMu12er1p5
         17, -- module_index: 53, name: L1_SingleMu18
         22, -- module_index: 54, name: L1_SingleMu22_EMTF
         10, -- module_index: 55, name: L1_SingleMu5
         97, -- module_index: 56, name: L1_Mu7_EG20er2p5
         96, -- module_index: 57, name: L1_Mu5_EG23er2p5
         98, -- module_index: 58, name: L1_Mu7_EG23er2p5
         12, -- module_index: 59, name: L1_SingleMu7
        101, -- module_index: 60, name: L1_Mu7_LooseIsoEG20er2p5
        100, -- module_index: 61, name: L1_Mu5_LooseIsoEG20er2p5
        102, -- module_index: 62, name: L1_Mu7_LooseIsoEG23er2p5
        308, -- module_index: 63, name: L1_SingleMuOpenupt100
        373, -- module_index: 64, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
         39, -- module_index: 65, name: L1_DoubleMu0_OQ
         55, -- module_index: 66, name: L1_DoubleMu0er1p5_SQ
         51, -- module_index: 67, name: L1_DoubleMu18er2p1
         62, -- module_index: 68, name: L1_DoubleMu4p5_SQ_OS
         44, -- module_index: 69, name: L1_DoubleMu8_SQ
         46, -- module_index: 70, name: L1_DoubleMu_12_5
         48, -- module_index: 71, name: L1_DoubleMu_15_7
        109, -- module_index: 72, name: L1_DoubleMu4_SQ_EG9er2p5
        110, -- module_index: 73, name: L1_DoubleMu5_SQ_EG9er2p5
         71, -- module_index: 74, name: L1_TripleMu0_OQ
         74, -- module_index: 75, name: L1_TripleMu3
         76, -- module_index: 76, name: L1_TripleMu_5SQ_3SQ_0OQ
         85, -- module_index: 77, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         86, -- module_index: 78, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         59, -- module_index: 79, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         53, -- module_index: 80, name: L1_DoubleMu0er2p0_SQ_dR_Max1p4
         66, -- module_index: 81, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        382, -- module_index: 82, name: L1_QuadJet60er2p5
        276, -- module_index: 83, name: L1_DoubleIsoTau30er2p1_Mass_Max90
        348, -- module_index: 84, name: L1_DoubleJet30er2p5_Mass_Min150_dEta_Max1p5
        353, -- module_index: 85, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        235, -- module_index: 86, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        125, -- module_index: 87, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        134, -- module_index: 88, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        364, -- module_index: 89, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
    others => 0
);

-- ========================================================