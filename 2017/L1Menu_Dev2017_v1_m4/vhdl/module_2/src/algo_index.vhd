-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6a6f4031-449d-4d69-9c1f-9c14b74fd137

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        102, -- module_index: 0, name: L1_QuadJetC40
        104, -- module_index: 1, name: L1_QuadJetC60
        170, -- module_index: 2, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
        267, -- module_index: 3, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
         33, -- module_index: 4, name: L1_DoubleMu0er1p6_dEta_Max1p8_OS
         38, -- module_index: 5, name: L1_QuadMu0
        154, -- module_index: 6, name: L1_Mu16er_Tau20er
         17, -- module_index: 7, name: L1_SingleMu16er
        156, -- module_index: 8, name: L1_Mu18er_Tau20er
         19, -- module_index: 9, name: L1_SingleMu20er
         20, -- module_index: 10, name: L1_SingleMu22er
         21, -- module_index: 11, name: L1_SingleMu25er
        157, -- module_index: 12, name: L1_Mu18er_Tau24er
        279, -- module_index: 13, name: L1_Mu22er_IsoTau26er
         18, -- module_index: 14, name: L1_SingleMu18er
        155, -- module_index: 15, name: L1_Mu16er_Tau24er
        280, -- module_index: 16, name: L1_Mu25er_IsoTau26er
        158, -- module_index: 17, name: L1_Mu18er_IsoTau26er
        159, -- module_index: 18, name: L1_Mu20er_IsoTau26er
         72, -- module_index: 19, name: L1_DoubleEG_18_17
         75, -- module_index: 20, name: L1_DoubleEG_22_10
         77, -- module_index: 21, name: L1_DoubleEG_24_17
        111, -- module_index: 22, name: L1_DoubleIsoTau32er
        278, -- module_index: 23, name: L1_DoubleIsoTau36er
         96, -- module_index: 24, name: L1_DoubleJetC100
         93, -- module_index: 25, name: L1_DoubleJetC50
        175, -- module_index: 26, name: L1_EG25er_HTT125
         23, -- module_index: 27, name: L1_DoubleMuOpen
         28, -- module_index: 28, name: L1_DoubleMu_12_5
        184, -- module_index: 29, name: L1_Mu10er_ETM30
         16, -- module_index: 30, name: L1_SingleMu14er
        186, -- module_index: 31, name: L1_Mu14er_ETM30
        185, -- module_index: 32, name: L1_Mu10er_ETM50
        139, -- module_index: 33, name: L1_ETM50
        137, -- module_index: 34, name: L1_ETM30
         46, -- module_index: 35, name: L1_SingleEG30
        259, -- module_index: 36, name: L1_SingleEG36
         52, -- module_index: 37, name: L1_SingleEG45
         63, -- module_index: 38, name: L1_SingleIsoEG20er
         56, -- module_index: 39, name: L1_SingleIsoEG24
         66, -- module_index: 40, name: L1_SingleIsoEG26er
         60, -- module_index: 41, name: L1_SingleIsoEG30
        263, -- module_index: 42, name: L1_SingleIsoEG32er
         85, -- module_index: 43, name: L1_SingleJet120
         88, -- module_index: 44, name: L1_SingleJet160
         91, -- module_index: 45, name: L1_SingleJet200
         84, -- module_index: 46, name: L1_SingleJet90
         14, -- module_index: 47, name: L1_SingleMu10_LowQ
          9, -- module_index: 48, name: L1_SingleMu18
         22, -- module_index: 49, name: L1_SingleMu30er
        187, -- module_index: 50, name: L1_HTM80_HTT220
        118, -- module_index: 51, name: L1_HTT220
        129, -- module_index: 52, name: L1_HTM80
        288, -- module_index: 53, name: L1_ETM115
        273, -- module_index: 54, name: L1_ETM85
        130, -- module_index: 55, name: L1_HTM100
        134, -- module_index: 56, name: L1_HTM150
        116, -- module_index: 57, name: L1_HTT160
        123, -- module_index: 58, name: L1_HTT300
    others => 0
);

-- ========================================================