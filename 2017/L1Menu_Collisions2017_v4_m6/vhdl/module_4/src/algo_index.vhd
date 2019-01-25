-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- dc2d8756-228d-4263-9f4e-3f20cf9295a4

-- Unique ID of firmware implementation:
-- 497943d4-a582-4d36-aba1-d4848135ea28

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        472, -- module_index: 0, name: L1_BPTX_BeamGas_B2_VME
        483, -- module_index: 1, name: L1_BPTX_RefAND_VME
        479, -- module_index: 2, name: L1_UnpairedBunchBptxMinus
        183, -- module_index: 3, name: L1_ETM30
        461, -- module_index: 4, name: L1_Mu10er2p1_ETM30
        462, -- module_index: 5, name: L1_Mu14er2p1_ETM30
         25, -- module_index: 6, name: L1_SingleMu14er2p1
         66, -- module_index: 7, name: L1_SingleEG34er2p1
         67, -- module_index: 8, name: L1_SingleEG36er2p1
         68, -- module_index: 9, name: L1_SingleEG38er2p1
         64, -- module_index: 10, name: L1_SingleEG45
         69, -- module_index: 11, name: L1_SingleIsoEG18
         84, -- module_index: 12, name: L1_SingleIsoEG20er2p1
         72, -- module_index: 13, name: L1_SingleIsoEG24
         87, -- module_index: 14, name: L1_SingleIsoEG26er2p1
         75, -- module_index: 15, name: L1_SingleIsoEG30
         90, -- module_index: 16, name: L1_SingleIsoEG32er2p1
         92, -- module_index: 17, name: L1_SingleIsoEG34er2p1
         79, -- module_index: 18, name: L1_SingleIsoEG36
         81, -- module_index: 19, name: L1_SingleIsoEG38
         96, -- module_index: 20, name: L1_SingleIsoEG40er2p1
        138, -- module_index: 21, name: L1_SingleJet150
        140, -- module_index: 22, name: L1_SingleJet170
        142, -- module_index: 23, name: L1_SingleJet200
        147, -- module_index: 24, name: L1_SingleJet35_HFp
        117, -- module_index: 25, name: L1_SingleTau100er2p1
        120, -- module_index: 26, name: L1_SingleTau140er2p1
        427, -- module_index: 27, name: L1_EG25er2p1_HTT125er
        103, -- module_index: 28, name: L1_DoubleEG_22_10
        107, -- module_index: 29, name: L1_DoubleEG_24_17
        279, -- module_index: 30, name: L1_DoubleEG_LooseIso23_10
        125, -- module_index: 31, name: L1_DoubleIsoTau32er2p1
        129, -- module_index: 32, name: L1_DoubleIsoTau36er2p1
        157, -- module_index: 33, name: L1_DoubleJet120er2p7
        154, -- module_index: 34, name: L1_DoubleJet80er2p7
        122, -- module_index: 35, name: L1_DoubleTau70er2p1
        145, -- module_index: 36, name: L1_SingleJet90_FWD
          5, -- module_index: 37, name: L1_SingleMu0_BMTF
         12, -- module_index: 38, name: L1_SingleMu11_LowQ
         16, -- module_index: 39, name: L1_SingleMu16
         22, -- module_index: 40, name: L1_SingleMu22_EMTF
         23, -- module_index: 41, name: L1_SingleMu25
         24, -- module_index: 42, name: L1_SingleMu30
          0, -- module_index: 43, name: L1_SingleMuCosmics
          3, -- module_index: 44, name: L1_SingleMuCosmics_OMTF
        395, -- module_index: 45, name: L1_DoubleMu0er1p5_SQ_OS
        392, -- module_index: 46, name: L1_DoubleMu4p5_SQ
        384, -- module_index: 47, name: L1_DoubleMu6_SQ_OS
         33, -- module_index: 48, name: L1_DoubleMu_12_8
         36, -- module_index: 49, name: L1_DoubleMu_15_7
        164, -- module_index: 50, name: L1_TripleJet_100_85_72_VBF
        163, -- module_index: 51, name: L1_TripleJet_105_85_76_VBF
        161, -- module_index: 52, name: L1_TripleJet_92_76_64_VBF
        399, -- module_index: 53, name: L1_TripleMu0_OQ
         41, -- module_index: 54, name: L1_TripleMu_4_4_4
         43, -- module_index: 55, name: L1_TripleMu_5_3_3
        273, -- module_index: 56, name: L1_ETM100_Jet60_dPhi_Min0p4
        431, -- module_index: 57, name: L1_ETM75_Jet60_dPhi_Min0p4
        272, -- module_index: 58, name: L1_ETM90_Jet60_dPhi_Min0p4
         97, -- module_index: 59, name: L1_IsoEG33_Mt40
         99, -- module_index: 60, name: L1_IsoEG33_Mt48
        441, -- module_index: 61, name: L1_DoubleMu_10_0_dEta_Max1p8
        381, -- module_index: 62, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        382, -- module_index: 63, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        492, -- module_index: 64, name: L1_CDC_3_TOP120_DPHI2p618_3p142
        498, -- module_index: 65, name: L1_CDC_3_er1p6_TOP120_DPHI2p094_3p142
        504, -- module_index: 66, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        510, -- module_index: 67, name: L1_CDCp1_3_er2p1_TOP120_DPHI2p618_3p142
        283, -- module_index: 68, name: L1_DoubleJet_100_30_DoubleJet30_Mass_Min620
        282, -- module_index: 69, name: L1_DoubleJet_90_30_DoubleJet30_Mass_Min620
        219, -- module_index: 70, name: L1_DoubleJet30_Mass_Min360_dEta_Max1p5
        295, -- module_index: 71, name: L1_LooseIsoEG24er2p1_IsoTau27er2p1_dR_Min0p3
        443, -- module_index: 72, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        253, -- module_index: 73, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================