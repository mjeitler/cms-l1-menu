-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v3

-- Unique ID of L1 Trigger Menu:
-- 03973478-d11d-4cea-a950-3da1ab12af5e

-- Unique ID of firmware implementation:
-- 6a453f90-24a2-4a4d-86e9-c1951413e927

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        466, -- module_index: 0, name: L1_BPTX_AND_Ref2_NIM
        480, -- module_index: 1, name: L1_BPTX_B2_NIM
        465, -- module_index: 2, name: L1_BPTX_NotOR_VME
        461, -- module_index: 3, name: L1_BptxOR
        206, -- module_index: 4, name: L1_SingleMuOpen_NotBptxOR_3BX
        442, -- module_index: 5, name: L1_ETT100_BptxAND
        443, -- module_index: 6, name: L1_ETT110_BptxAND
        205, -- module_index: 7, name: L1_SingleMuOpen_NotBptxOR
        432, -- module_index: 8, name: L1_SingleJet12_BptxAND
        208, -- module_index: 9, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        400, -- module_index: 10, name: L1_IsolatedBunch
        402, -- module_index: 11, name: L1_FirstBunchAfterTrain
        209, -- module_index: 12, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        450, -- module_index: 13, name: L1_AlwaysTrue
        431, -- module_index: 14, name: L1_SingleEG2_BptxAND
        210, -- module_index: 15, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        434, -- module_index: 16, name: L1_ETT50_BptxAND
        433, -- module_index: 17, name: L1_ETT40_BptxAND
        435, -- module_index: 18, name: L1_ETT60_BptxAND
        444, -- module_index: 19, name: L1_MinimumBiasHF0_AND_BptxAND
        458, -- module_index: 20, name: L1_ZeroBias
        436, -- module_index: 21, name: L1_ETT70_BptxAND
        445, -- module_index: 22, name: L1_MinimumBiasHF0_OR_BptxAND
        451, -- module_index: 23, name: L1_NotBptxOR
        438, -- module_index: 24, name: L1_ETT80_BptxAND
        453, -- module_index: 25, name: L1_ZeroBias_copy
        439, -- module_index: 26, name: L1_ETT85_BptxAND
        440, -- module_index: 27, name: L1_ETT90_BptxAND
          1, -- module_index: 28, name: L1_SingleMuOpen
        207, -- module_index: 29, name: L1_SingleJet20er3p0_NotBptxOR
        441, -- module_index: 30, name: L1_ETT95_BptxAND
        401, -- module_index: 31, name: L1_FirstBunchInTrain
        437, -- module_index: 32, name: L1_ETT75_BptxAND
         63, -- module_index: 33, name: L1_SingleEG42
         65, -- module_index: 34, name: L1_SingleEG50
         70, -- module_index: 35, name: L1_SingleIsoEG20
         85, -- module_index: 36, name: L1_SingleIsoEG22er2p1
         73, -- module_index: 37, name: L1_SingleIsoEG26
         88, -- module_index: 38, name: L1_SingleIsoEG28er2p1
         76, -- module_index: 39, name: L1_SingleIsoEG32
         77, -- module_index: 40, name: L1_SingleIsoEG34
         93, -- module_index: 41, name: L1_SingleIsoEG35er2p1
         80, -- module_index: 42, name: L1_SingleIsoEG37
         82, -- module_index: 43, name: L1_SingleIsoEG40
        137, -- module_index: 44, name: L1_SingleJet140
        139, -- module_index: 45, name: L1_SingleJet160
        132, -- module_index: 46, name: L1_SingleJet20
        148, -- module_index: 47, name: L1_SingleJet35_HFm
        149, -- module_index: 48, name: L1_SingleJet60_HFp
        119, -- module_index: 49, name: L1_SingleTau130er2p1
        116, -- module_index: 50, name: L1_SingleTau80er2p1
        102, -- module_index: 51, name: L1_DoubleEG_20_18
        106, -- module_index: 52, name: L1_DoubleEG_23_10
        110, -- module_index: 53, name: L1_DoubleEG_25_14
        124, -- module_index: 54, name: L1_DoubleIsoTau30er2p1
        128, -- module_index: 55, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 56, name: L1_DoubleJet112er3p0
        152, -- module_index: 57, name: L1_DoubleJet50er3p0
        121, -- module_index: 58, name: L1_DoubleTau50er2p1
        144, -- module_index: 59, name: L1_SingleJet60_FWD
        275, -- module_index: 60, name: L1_TripleEG_LooseIso20_10_5
         11, -- module_index: 61, name: L1_SingleMu10_LowQ
         14, -- module_index: 62, name: L1_SingleMu12_LowQ_OMTF
         20, -- module_index: 63, name: L1_SingleMu22_BMTF
         29, -- module_index: 64, name: L1_SingleMu22er2p1
        302, -- module_index: 65, name: L1_Mu22er2p1_IsoTau33er2p1
        305, -- module_index: 66, name: L1_Mu22er2p1_IsoTau36er2p1
        300, -- module_index: 67, name: L1_Mu22er2p1_IsoTau30er2p1
        303, -- module_index: 68, name: L1_Mu22er2p1_IsoTau34er2p1
        294, -- module_index: 69, name: L1_Mu22er2p1_Tau50er2p1
        306, -- module_index: 70, name: L1_Mu22er2p1_IsoTau38er2p1
        301, -- module_index: 71, name: L1_Mu22er2p1_IsoTau32er2p1
        304, -- module_index: 72, name: L1_Mu22er2p1_IsoTau35er2p1
        295, -- module_index: 73, name: L1_Mu22er2p1_Tau70er2p1
        299, -- module_index: 74, name: L1_Mu22er2p1_IsoTau28er2p1
        386, -- module_index: 75, name: L1_DoubleMu0_SQ_OS
        391, -- module_index: 76, name: L1_DoubleMu4_SQ_OS
        392, -- module_index: 77, name: L1_DoubleMu5_SQ_OS
         32, -- module_index: 78, name: L1_DoubleMu_12_5
        327, -- module_index: 79, name: L1_DoubleMu_15_5_SQ
        397, -- module_index: 80, name: L1_DoubleMu7_EG7
        360, -- module_index: 81, name: L1_DoubleMu7_SQ_EG7
        330, -- module_index: 82, name: L1_TripleMu3_SQ
         42, -- module_index: 83, name: L1_TripleMu_5_0_0
         44, -- module_index: 84, name: L1_TripleMu_5_5_3
        268, -- module_index: 85, name: L1_ETM110_Jet60_dPhi_Min0p4
        265, -- module_index: 86, name: L1_ETM80_Jet60_dPhi_Min0p4
        159, -- module_index: 87, name: L1_TripleJet_84_68_48_VBF
        161, -- module_index: 88, name: L1_TripleJet_92_76_64_VBF
         97, -- module_index: 89, name: L1_IsoEG33_Mt40
         99, -- module_index: 90, name: L1_IsoEG33_Mt48
        426, -- module_index: 91, name: L1_DoubleMu_10_0_dEta_Max1p8
        370, -- module_index: 92, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        374, -- module_index: 93, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        495, -- module_index: 94, name: L1_CDC_3_er1p2_TOP120_DPHI2p094_3p142
        501, -- module_index: 95, name: L1_CDC_3_er2p1_TOP120_DPHI2p094_3p142
        507, -- module_index: 96, name: L1_CDCp1_3_TOP120_DPHI2p618_3p142
        163, -- module_index: 97, name: L1_QuadJet50er3p0
        280, -- module_index: 98, name: L1_DoubleJet_110_40_DoubleJet40_Mass_Min620
        282, -- module_index: 99, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        215, -- module_index: 100, name: L1_DoubleJet30_Mass_Min380_dEta_Max1p5
        220, -- module_index: 101, name: L1_LooseIsoEG24er2p1_Jet26er3p0_dR_Min0p3
        429, -- module_index: 102, name: L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4
    others => 0
);

-- ========================================================