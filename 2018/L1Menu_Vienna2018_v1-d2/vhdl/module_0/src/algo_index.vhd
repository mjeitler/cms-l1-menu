-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Vienna2018_v1

-- Unique ID of L1 Trigger Menu:
-- e8963a1b-c6a7-4540-8841-b2c9b4d3d8ff

-- Unique ID of firmware implementation:
-- 777f3f0f-f01a-461a-a9b8-6973897307ab

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        477, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        485, -- module_index: 1, name: L1_BPTX_AND_Ref4_VME
        472, -- module_index: 2, name: L1_BPTX_BeamGas_B2_VME
        470, -- module_index: 3, name: L1_BPTX_BeamGas_Ref2_VME
        482, -- module_index: 4, name: L1_BPTX_OR_Ref3_VME
        483, -- module_index: 5, name: L1_BPTX_RefAND_VME
        476, -- module_index: 6, name: L1_BptxOR
        213, -- module_index: 7, name: L1_SingleJet20er2p7_NotBptxOR_3BX
          1, -- module_index: 8, name: L1_SingleMuOpen
        211, -- module_index: 9, name: L1_SingleMuOpen_NotBptxOR_3BX
         97, -- module_index: 10, name: L1_AlwaysTrue7
         99, -- module_index: 11, name: L1_AlwaysTrue9
        454, -- module_index: 12, name: L1_ETT85_BptxAND
        210, -- module_index: 13, name: L1_SingleMuOpen_NotBptxOR
        455, -- module_index: 14, name: L1_ETT90_BptxAND
        447, -- module_index: 15, name: L1_SingleJet12_BptxAND
        458, -- module_index: 16, name: L1_ETT110_BptxAND
        417, -- module_index: 17, name: L1_FirstBunchAfterTrain
        465, -- module_index: 18, name: L1_AlwaysTrue
        459, -- module_index: 19, name: L1_MinimumBiasHF0_AND_BptxAND
        416, -- module_index: 20, name: L1_FirstBunchInTrain
        214, -- module_index: 21, name: L1_SingleJet43er2p7_NotBptxOR_3BX
        466, -- module_index: 22, name: L1_NotBptxOR
         46, -- module_index: 23, name: L1_AlwaysTrue2
        215, -- module_index: 24, name: L1_SingleJet46er2p7_NotBptxOR_3BX
         47, -- module_index: 25, name: L1_AlwaysTrue3
        212, -- module_index: 26, name: L1_SingleJet20er2p7_NotBptxOR
         48, -- module_index: 27, name: L1_AlwaysTrue4
        456, -- module_index: 28, name: L1_ETT95_BptxAND
        511, -- module_index: 29, name: L1_AlwaysTrue5
        457, -- module_index: 30, name: L1_ETT100_BptxAND
         49, -- module_index: 31, name: L1_AlwaysTrue6
        448, -- module_index: 32, name: L1_ETT40_BptxAND
        415, -- module_index: 33, name: L1_IsolatedBunch
        206, -- module_index: 34, name: L1_AlwaysTrue10
         98, -- module_index: 35, name: L1_AlwaysTrue8
        468, -- module_index: 36, name: L1_ZeroBias_copy
        450, -- module_index: 37, name: L1_ETT60_BptxAND
        446, -- module_index: 38, name: L1_SingleEG2_BptxAND
        451, -- module_index: 39, name: L1_ETT70_BptxAND
        460, -- module_index: 40, name: L1_MinimumBiasHF0_OR_BptxAND
        453, -- module_index: 41, name: L1_ETT80_BptxAND
        449, -- module_index: 42, name: L1_ETT50_BptxAND
        452, -- module_index: 43, name: L1_ETT75_BptxAND
        473, -- module_index: 44, name: L1_ZeroBias
        198, -- module_index: 45, name: L1_ETM150
        183, -- module_index: 46, name: L1_ETM30
        462, -- module_index: 47, name: L1_Mu14er2p1_ETM30
        461, -- module_index: 48, name: L1_Mu10er2p1_ETM30
         25, -- module_index: 49, name: L1_SingleMu14er2p1
        185, -- module_index: 50, name: L1_ETM50
        188, -- module_index: 51, name: L1_ETM75
        205, -- module_index: 52, name: L1_ETMHF150
        168, -- module_index: 53, name: L1_HTT120er
        169, -- module_index: 54, name: L1_HTT160er
        177, -- module_index: 55, name: L1_HTT320er
        178, -- module_index: 56, name: L1_HTT340er
        246, -- module_index: 57, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        247, -- module_index: 58, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        249, -- module_index: 59, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        250, -- module_index: 60, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        248, -- module_index: 61, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
         29, -- module_index: 62, name: L1_SingleMu22er2p1
        306, -- module_index: 63, name: L1_Mu22er2p1_IsoTau30er2p1
        307, -- module_index: 64, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 65, name: L1_Mu22er2p1_IsoTau34er2p1
        308, -- module_index: 66, name: L1_Mu22er2p1_IsoTau33er2p1
        312, -- module_index: 67, name: L1_Mu22er2p1_IsoTau38er2p1
        301, -- module_index: 68, name: L1_Mu22er2p1_Tau70er2p1
        300, -- module_index: 69, name: L1_Mu22er2p1_Tau50er2p1
        305, -- module_index: 70, name: L1_Mu22er2p1_IsoTau28er2p1
        311, -- module_index: 71, name: L1_Mu22er2p1_IsoTau36er2p1
        310, -- module_index: 72, name: L1_Mu22er2p1_IsoTau35er2p1
          0, -- module_index: 73, name: L1_SingleMuCosmics
        209, -- module_index: 74, name: L1_AlwaysTrue13
        208, -- module_index: 75, name: L1_AlwaysTrue12
        218, -- module_index: 76, name: L1_AlwaysTrue16
        207, -- module_index: 77, name: L1_AlwaysTrue11
        216, -- module_index: 78, name: L1_AlwaysTrue14
        217, -- module_index: 79, name: L1_AlwaysTrue15
          4, -- module_index: 80, name: L1_SingleMuCosmics_EMTF
        426, -- module_index: 81, name: L1_Mu8_HTT150er
        391, -- module_index: 82, name: L1_DoubleMu0_SQ_OS
         37, -- module_index: 83, name: L1_DoubleMu18er2p1
        396, -- module_index: 84, name: L1_DoubleMu4_SQ_OS
        393, -- module_index: 85, name: L1_DoubleMu4p5_SQ_OS
        397, -- module_index: 86, name: L1_DoubleMu5_SQ_OS
        389, -- module_index: 87, name: L1_DoubleMu8_SQ
         32, -- module_index: 88, name: L1_DoubleMu_12_5
         34, -- module_index: 89, name: L1_DoubleMu_13_6
        332, -- module_index: 90, name: L1_DoubleMu_15_5_SQ
        333, -- module_index: 91, name: L1_DoubleMu_15_7_SQ
        406, -- module_index: 92, name: L1_DoubleMu7_EG7
        365, -- module_index: 93, name: L1_DoubleMu7_SQ_EG7
        163, -- module_index: 94, name: L1_TripleJet_105_85_76_VBF
        160, -- module_index: 95, name: L1_TripleJet_88_72_56_VBF
        162, -- module_index: 96, name: L1_TripleJet_98_83_71_VBF
        399, -- module_index: 97, name: L1_TripleMu0_OQ
        335, -- module_index: 98, name: L1_TripleMu3_SQ
        400, -- module_index: 99, name: L1_TripleMu_5SQ_3SQ_0OQ
         43, -- module_index: 100, name: L1_TripleMu_5_3_3
         44, -- module_index: 101, name: L1_TripleMu_5_5_3
        274, -- module_index: 102, name: L1_ETM110_Jet60_dPhi_Min0p4
        271, -- module_index: 103, name: L1_ETM80_Jet60_dPhi_Min0p4
         45, -- module_index: 104, name: L1_QuadMu0
        441, -- module_index: 105, name: L1_DoubleMu_10_0_dEta_Max1p8
        252, -- module_index: 106, name: L1_DoubleJet112er2p3_dEta_Max1p6
        375, -- module_index: 107, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        222, -- module_index: 108, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        382, -- module_index: 109, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        165, -- module_index: 110, name: L1_QuadJet40er2p7
        167, -- module_index: 111, name: L1_QuadJet60er2p7
    others => 0
);

-- ========================================================