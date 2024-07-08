-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2024_v1_3_0

-- Unique ID of L1 Trigger Menu:
-- b767c77f-2f60-4ce7-94e4-e16f097941b0

-- Unique ID of firmware implementation:
-- 1f6f1c24-5c15-48da-9403-5fbf3a32540a

-- Scale set:
-- scales_2024_05_15

-- VHDL producer
-- version: 2.20.0
-- hash value: 01d3461e956f1972cb9cbbbbb32745d60d52a3d208431bb6763622d65d6a8291

-- tmEventSetup
-- version: 0.13.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        364, -- module_index: 0, name: L1_DoubleJet_65_35_DoubleJet35_Mass_Min600_DoubleJetCentral50
        365, -- module_index: 1, name: L1_DoubleJet_65_35_DoubleJet35_Mass_Min650_DoubleJetCentral50
        368, -- module_index: 2, name: L1_DoubleJet_85_35_DoubleJet35_Mass_Min600_Mu3OQ
        369, -- module_index: 3, name: L1_DoubleJet_85_35_DoubleJet35_Mass_Min650_Mu3OQ
        123, -- module_index: 4, name: L1_DoubleMu5_OS_er2p3_Mass_8to14_DoubleEG3er2p1_Mass_Max20
        240, -- module_index: 5, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        370, -- module_index: 6, name: L1_DoubleJet_70_35_DoubleJet35_Mass_Min500_ETMHF65
        371, -- module_index: 7, name: L1_DoubleJet_70_35_DoubleJet35_Mass_Min550_ETMHF65
        131, -- module_index: 8, name: L1_DoubleJet120er2p5_Mu3_dR_Max0p8
        342, -- module_index: 9, name: L1_DoubleJet120er2p5
        386, -- module_index: 10, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        383, -- module_index: 11, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
        389, -- module_index: 12, name: L1_QuadJet60er2p5
         99, -- module_index: 13, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
         90, -- module_index: 14, name: L1_TripleMu_5SQ_3SQ_0OQ
        100, -- module_index: 15, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
         81, -- module_index: 16, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_7to18
         80, -- module_index: 17, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7
         42, -- module_index: 18, name: L1_DoubleMu0_Mass_Min1
         49, -- module_index: 19, name: L1_DoubleMu_15_7_Mass_Min1
         67, -- module_index: 20, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         76, -- module_index: 21, name: L1_DoubleMu4er2p0_SQ_OS_dR_Max1p6
         89, -- module_index: 22, name: L1_TripleMu_3SQ_2p5SQ_0_Mass_Max12
         96, -- module_index: 23, name: L1_TripleMu_4SQ_2p5SQ_0_OS_Mass_Max12
         75, -- module_index: 24, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
         78, -- module_index: 25, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        197, -- module_index: 26, name: L1_IsoEG32er2p5_Mt40
        494, -- module_index: 27, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        328, -- module_index: 28, name: L1_SingleJet8erHE
         18, -- module_index: 29, name: L1_SingleMu0_Upt10_EMTF
         83, -- module_index: 30, name: L1_TripleMu0_OQ
         92, -- module_index: 31, name: L1_TripleMu_5_3_3
        183, -- module_index: 32, name: L1_SingleIsoEG24er2p1
        190, -- module_index: 33, name: L1_SingleIsoEG28er2p1
        195, -- module_index: 34, name: L1_SingleIsoEG32er2p1
        175, -- module_index: 35, name: L1_SingleLooseIsoEG26er2p5
         10, -- module_index: 36, name: L1_SingleMu0_OMTF
          6, -- module_index: 37, name: L1_SingleMuOpen_OMTF
        167, -- module_index: 38, name: L1_SingleEG34er2p5
        159, -- module_index: 39, name: L1_SingleEG8er2p5
        451, -- module_index: 40, name: L1_SingleJet20er2p5_NotBptxOR
        471, -- module_index: 41, name: L1_IsolatedBunch
        476, -- module_index: 42, name: L1_LastBunchInTrain
        477, -- module_index: 43, name: L1_FirstBunchAfterTrain
        446, -- module_index: 44, name: L1_SingleMuOpen_NotBptxOR
        472, -- module_index: 45, name: L1_FirstBunchBeforeTrain
        448, -- module_index: 46, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        473, -- module_index: 47, name: L1_FirstBunchInTrain
        474, -- module_index: 48, name: L1_SecondBunchInTrain
        464, -- module_index: 49, name: L1_BptxOR
        475, -- module_index: 50, name: L1_SecondLastBunchInTrain
        447, -- module_index: 51, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        452, -- module_index: 52, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        462, -- module_index: 53, name: L1_MinimumBiasHF0
        461, -- module_index: 54, name: L1_MinimumBiasHF0_AND_BptxAND
        458, -- module_index: 55, name: L1_AlwaysTrue
        453, -- module_index: 56, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        459, -- module_index: 57, name: L1_ZeroBias
        463, -- module_index: 58, name: L1_NotBptxOR
        454, -- module_index: 59, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        460, -- module_index: 60, name: L1_ZeroBias_copy
          4, -- module_index: 61, name: L1_SingleMuOpen
    others => 0
);

-- ========================================================