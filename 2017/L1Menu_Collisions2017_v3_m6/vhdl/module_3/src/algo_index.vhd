-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- bf4bfc65-9d4c-4074-8054-cefe91c0eba5

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        180, -- module_index: 0, name: L1_ETM30
        447, -- module_index: 1, name: L1_Mu14er2p1_ETM30
        446, -- module_index: 2, name: L1_Mu10er2p1_ETM30
         25, -- module_index: 3, name: L1_SingleMu14er2p1
         60, -- module_index: 4, name: L1_SingleEG36
         68, -- module_index: 5, name: L1_SingleEG38er2p1
         64, -- module_index: 6, name: L1_SingleEG45
         69, -- module_index: 7, name: L1_SingleIsoEG18
         84, -- module_index: 8, name: L1_SingleIsoEG20er2p1
         72, -- module_index: 9, name: L1_SingleIsoEG24
         87, -- module_index: 10, name: L1_SingleIsoEG26er2p1
         75, -- module_index: 11, name: L1_SingleIsoEG30
         90, -- module_index: 12, name: L1_SingleIsoEG32er2p1
         92, -- module_index: 13, name: L1_SingleIsoEG34er2p1
         79, -- module_index: 14, name: L1_SingleIsoEG36
         81, -- module_index: 15, name: L1_SingleIsoEG38
         96, -- module_index: 16, name: L1_SingleIsoEG40er2p1
        138, -- module_index: 17, name: L1_SingleJet150
        140, -- module_index: 18, name: L1_SingleJet170
        142, -- module_index: 19, name: L1_SingleJet200
        147, -- module_index: 20, name: L1_SingleJet35_HFp
        117, -- module_index: 21, name: L1_SingleTau100er2p1
        120, -- module_index: 22, name: L1_SingleTau140er2p1
        412, -- module_index: 23, name: L1_EG25er2p1_HTT125er
        100, -- module_index: 24, name: L1_DoubleEG_15_10
        102, -- module_index: 25, name: L1_DoubleEG_20_18
        106, -- module_index: 26, name: L1_DoubleEG_23_10
        110, -- module_index: 27, name: L1_DoubleEG_25_14
        124, -- module_index: 28, name: L1_DoubleIsoTau30er2p1
        128, -- module_index: 29, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 30, name: L1_DoubleJet112er3p0
        152, -- module_index: 31, name: L1_DoubleJet50er3p0
        121, -- module_index: 32, name: L1_DoubleTau50er2p1
        144, -- module_index: 33, name: L1_SingleJet60_FWD
        275, -- module_index: 34, name: L1_TripleEG_LooseIso20_10_5
         11, -- module_index: 35, name: L1_SingleMu10_LowQ
         14, -- module_index: 36, name: L1_SingleMu12_LowQ_OMTF
         20, -- module_index: 37, name: L1_SingleMu22_BMTF
         29, -- module_index: 38, name: L1_SingleMu22er2p1
        305, -- module_index: 39, name: L1_Mu22er2p1_IsoTau36er2p1
        300, -- module_index: 40, name: L1_Mu22er2p1_IsoTau30er2p1
        301, -- module_index: 41, name: L1_Mu22er2p1_IsoTau32er2p1
        303, -- module_index: 42, name: L1_Mu22er2p1_IsoTau34er2p1
        306, -- module_index: 43, name: L1_Mu22er2p1_IsoTau38er2p1
        295, -- module_index: 44, name: L1_Mu22er2p1_Tau70er2p1
        304, -- module_index: 45, name: L1_Mu22er2p1_IsoTau35er2p1
        299, -- module_index: 46, name: L1_Mu22er2p1_IsoTau28er2p1
        302, -- module_index: 47, name: L1_Mu22er2p1_IsoTau33er2p1
        294, -- module_index: 48, name: L1_Mu22er2p1_Tau50er2p1
        386, -- module_index: 49, name: L1_DoubleMu0_SQ_OS
        391, -- module_index: 50, name: L1_DoubleMu4_SQ_OS
        392, -- module_index: 51, name: L1_DoubleMu5_SQ_OS
         32, -- module_index: 52, name: L1_DoubleMu_12_5
        327, -- module_index: 53, name: L1_DoubleMu_15_5_SQ
        397, -- module_index: 54, name: L1_DoubleMu7_EG7
        360, -- module_index: 55, name: L1_DoubleMu7_SQ_EG7
        330, -- module_index: 56, name: L1_TripleMu3_SQ
         42, -- module_index: 57, name: L1_TripleMu_5_0_0
         44, -- module_index: 58, name: L1_TripleMu_5_5_3
        268, -- module_index: 59, name: L1_ETM110_Jet60_dPhi_Min0p4
        265, -- module_index: 60, name: L1_ETM80_Jet60_dPhi_Min0p4
        159, -- module_index: 61, name: L1_TripleJet_84_68_48_VBF
        161, -- module_index: 62, name: L1_TripleJet_92_76_64_VBF
         97, -- module_index: 63, name: L1_IsoEG33_Mt40
         99, -- module_index: 64, name: L1_IsoEG33_Mt48
        426, -- module_index: 65, name: L1_DoubleMu_10_0_dEta_Max1p8
        370, -- module_index: 66, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        374, -- module_index: 67, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        495, -- module_index: 68, name: L1_CDC_3_er1p2_TOP120_DPHI2p094_3p142
        501, -- module_index: 69, name: L1_CDC_3_er2p1_TOP120_DPHI2p094_3p142
        507, -- module_index: 70, name: L1_CDCp1_3_TOP120_DPHI2p618_3p142
        163, -- module_index: 71, name: L1_QuadJet50er3p0
        280, -- module_index: 72, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        282, -- module_index: 73, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        215, -- module_index: 74, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        220, -- module_index: 75, name: L1_LooseIsoEG24er2p1_Jet26er3p0_dR_Min0p3
        429, -- module_index: 76, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================