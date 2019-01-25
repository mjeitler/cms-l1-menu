-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3_test_correlation_conditions_v3_test

-- Unique ID of L1 Trigger Menu:
-- cd1736f5-2c73-49e7-bb57-ba14e8ac44cd

-- Unique ID of firmware implementation:
-- bafbf2d2-d2a5-4d4e-a6f8-e391e3ff31e5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
         46, -- module_index: 0, name: L1_DoubleMu_10_0_dEta_Max1p8_test1
        478, -- module_index: 1, name: L1_BPTX_AND_NIM
        479, -- module_index: 2, name: L1_BPTX_B1_NIM
        455, -- module_index: 3, name: L1_BPTX_BeamGas_Ref2_VME
        472, -- module_index: 4, name: L1_BPTX_RefAND_VME
        464, -- module_index: 5, name: L1_UnpairedBunchBptxMinus
        180, -- module_index: 6, name: L1_ETM30
        447, -- module_index: 7, name: L1_Mu14er2p1_ETM30
        446, -- module_index: 8, name: L1_Mu10er2p1_ETM30
         25, -- module_index: 9, name: L1_SingleMu14er2p1
         66, -- module_index: 10, name: L1_SingleEG34er2p1
         67, -- module_index: 11, name: L1_SingleEG36er2p1
         68, -- module_index: 12, name: L1_SingleEG38er2p1
         64, -- module_index: 13, name: L1_SingleEG45
         69, -- module_index: 14, name: L1_SingleIsoEG18
         84, -- module_index: 15, name: L1_SingleIsoEG20er2p1
         72, -- module_index: 16, name: L1_SingleIsoEG24
         87, -- module_index: 17, name: L1_SingleIsoEG26er2p1
         75, -- module_index: 18, name: L1_SingleIsoEG30
         90, -- module_index: 19, name: L1_SingleIsoEG32er2p1
         92, -- module_index: 20, name: L1_SingleIsoEG34er2p1
         79, -- module_index: 21, name: L1_SingleIsoEG36
         81, -- module_index: 22, name: L1_SingleIsoEG38
         96, -- module_index: 23, name: L1_SingleIsoEG40er2p1
        138, -- module_index: 24, name: L1_SingleJet150
        140, -- module_index: 25, name: L1_SingleJet170
        142, -- module_index: 26, name: L1_SingleJet200
        147, -- module_index: 27, name: L1_SingleJet35_HFp
        117, -- module_index: 28, name: L1_SingleTau100er2p1
        120, -- module_index: 29, name: L1_SingleTau140er2p1
        412, -- module_index: 30, name: L1_EG25er2p1_HTT125er
        103, -- module_index: 31, name: L1_DoubleEG_22_10
        107, -- module_index: 32, name: L1_DoubleEG_24_17
        273, -- module_index: 33, name: L1_DoubleEG_LooseIso23_10
        125, -- module_index: 34, name: L1_DoubleIsoTau32er2p1
        129, -- module_index: 35, name: L1_DoubleIsoTau36er2p1
        157, -- module_index: 36, name: L1_DoubleJet120er3p0
        154, -- module_index: 37, name: L1_DoubleJet80er3p0
        122, -- module_index: 38, name: L1_DoubleTau70er2p1
        145, -- module_index: 39, name: L1_SingleJet90_FWD
          5, -- module_index: 40, name: L1_SingleMu0_BMTF
         12, -- module_index: 41, name: L1_SingleMu11_LowQ
         16, -- module_index: 42, name: L1_SingleMu16
         22, -- module_index: 43, name: L1_SingleMu22_EMTF
         23, -- module_index: 44, name: L1_SingleMu25
         24, -- module_index: 45, name: L1_SingleMu30
          0, -- module_index: 46, name: L1_SingleMuCosmics
          3, -- module_index: 47, name: L1_SingleMuCosmics_OMTF
        390, -- module_index: 48, name: L1_DoubleMu0er1p5_SQ_OS
        387, -- module_index: 49, name: L1_DoubleMu4p5_SQ
        379, -- module_index: 50, name: L1_DoubleMu6_SQ_OS
         33, -- module_index: 51, name: L1_DoubleMu_12_8
         36, -- module_index: 52, name: L1_DoubleMu_15_7
         39, -- module_index: 53, name: L1_TripleMu0
        394, -- module_index: 54, name: L1_TripleMu0_OQ
         41, -- module_index: 55, name: L1_TripleMu_4_4_4
         43, -- module_index: 56, name: L1_TripleMu_5_3_3
         47, -- module_index: 57, name: L1_DoubleMu_10_0_dEta_Max1p8_test2
        267, -- module_index: 58, name: L1_ETM100_Jet60_dPhi_Min0p4
        416, -- module_index: 59, name: L1_ETM75_Jet60_dPhi_Min0p4
        266, -- module_index: 60, name: L1_ETM90_Jet60_dPhi_Min0p4
        160, -- module_index: 61, name: L1_TripleJet_88_72_56_VBF
         45, -- module_index: 62, name: L1_QuadMu0
         98, -- module_index: 63, name: L1_IsoEG33_Mt44
        425, -- module_index: 64, name: L1_DoubleMu0er1p4_dEta_Max1p8_OS
        246, -- module_index: 65, name: L1_DoubleJet112er2p3_dEta_Max1p6
        371, -- module_index: 66, name: L1_DoubleMu4p5er2p0_SQ_OS_Mass7to18
        493, -- module_index: 67, name: L1_CDC_3_TOP_DPHI2p618_3p142
        499, -- module_index: 68, name: L1_CDC_3_er1p6_TOP120_DPHI2p618_3p142
        505, -- module_index: 69, name: L1_CDC_SingleMu_3_er1p6_TOP120_DPHI2p618_3p142
        382, -- module_index: 70, name: L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9
        383, -- module_index: 71, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        277, -- module_index: 72, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        276, -- module_index: 73, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        214, -- module_index: 74, name: L1_DoubleJet30_Mass_Min360_dEta_Max1p5
        289, -- module_index: 75, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        428, -- module_index: 76, name: L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================