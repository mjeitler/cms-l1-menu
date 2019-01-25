-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Vienna2018_v1

-- Unique ID of L1 Trigger Menu:
-- e8963a1b-c6a7-4540-8841-b2c9b4d3d8ff

-- Unique ID of firmware implementation:
-- 2f5fb397-e993-4681-aa57-c97d66129129

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        270, -- module_index: 0, name: L1_QuadJet36er2p7_IsoTau52er2p1
        430, -- module_index: 1, name: L1_QuadJet36er2p7_Tau52
        246, -- module_index: 2, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        247, -- module_index: 3, name: L1_HTT320er_QuadJet_70_55_40_40_er2p5
        249, -- module_index: 4, name: L1_HTT320er_QuadJet_70_55_45_45_er2p5
        177, -- module_index: 5, name: L1_HTT320er
        178, -- module_index: 6, name: L1_HTT340er
        250, -- module_index: 7, name: L1_HTT340er_QuadJet_70_55_45_45_er2p5
        248, -- module_index: 8, name: L1_HTT340er_QuadJet_70_55_40_40_er2p5
        504, -- module_index: 9, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        375, -- module_index: 10, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
        222, -- module_index: 11, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        382, -- module_index: 12, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        252, -- module_index: 13, name: L1_DoubleJet112er2p3_dEta_Max1p6
         45, -- module_index: 14, name: L1_QuadMu0
        273, -- module_index: 15, name: L1_ETM100_Jet60_dPhi_Min0p4
        274, -- module_index: 16, name: L1_ETM110_Jet60_dPhi_Min0p4
        431, -- module_index: 17, name: L1_ETM75_Jet60_dPhi_Min0p4
        272, -- module_index: 18, name: L1_ETM90_Jet60_dPhi_Min0p4
        399, -- module_index: 19, name: L1_TripleMu0_OQ
        335, -- module_index: 20, name: L1_TripleMu3_SQ
        400, -- module_index: 21, name: L1_TripleMu_5SQ_3SQ_0OQ
         43, -- module_index: 22, name: L1_TripleMu_5_3_3
         44, -- module_index: 23, name: L1_TripleMu_5_5_3
        163, -- module_index: 24, name: L1_TripleJet_105_85_76_VBF
        160, -- module_index: 25, name: L1_TripleJet_88_72_56_VBF
        162, -- module_index: 26, name: L1_TripleJet_98_83_71_VBF
        406, -- module_index: 27, name: L1_DoubleMu7_EG7
        365, -- module_index: 28, name: L1_DoubleMu7_SQ_EG7
        391, -- module_index: 29, name: L1_DoubleMu0_SQ_OS
         37, -- module_index: 30, name: L1_DoubleMu18er2p1
        396, -- module_index: 31, name: L1_DoubleMu4_SQ_OS
        393, -- module_index: 32, name: L1_DoubleMu4p5_SQ_OS
        397, -- module_index: 33, name: L1_DoubleMu5_SQ_OS
        389, -- module_index: 34, name: L1_DoubleMu8_SQ
         32, -- module_index: 35, name: L1_DoubleMu_12_5
         34, -- module_index: 36, name: L1_DoubleMu_13_6
        332, -- module_index: 37, name: L1_DoubleMu_15_5_SQ
        333, -- module_index: 38, name: L1_DoubleMu_15_7_SQ
        302, -- module_index: 39, name: L1_Mu18er2p1_IsoTau26er2p1
        299, -- module_index: 40, name: L1_Mu18er2p1_Tau24er2p1
        304, -- module_index: 41, name: L1_Mu20er2p1_IsoTau27er2p1
        303, -- module_index: 42, name: L1_Mu20er2p1_IsoTau26er2p1
         27, -- module_index: 43, name: L1_SingleMu18er2p1
         28, -- module_index: 44, name: L1_SingleMu20er2p1
        305, -- module_index: 45, name: L1_Mu22er2p1_IsoTau28er2p1
        312, -- module_index: 46, name: L1_Mu22er2p1_IsoTau38er2p1
        301, -- module_index: 47, name: L1_Mu22er2p1_Tau70er2p1
        310, -- module_index: 48, name: L1_Mu22er2p1_IsoTau35er2p1
        307, -- module_index: 49, name: L1_Mu22er2p1_IsoTau32er2p1
        308, -- module_index: 50, name: L1_Mu22er2p1_IsoTau33er2p1
        306, -- module_index: 51, name: L1_Mu22er2p1_IsoTau30er2p1
        300, -- module_index: 52, name: L1_Mu22er2p1_Tau50er2p1
         29, -- module_index: 53, name: L1_SingleMu22er2p1
        309, -- module_index: 54, name: L1_Mu22er2p1_IsoTau34er2p1
        311, -- module_index: 55, name: L1_Mu22er2p1_IsoTau36er2p1
        211, -- module_index: 56, name: L1_SingleMuOpen_NotBptxOR_3BX
        473, -- module_index: 57, name: L1_ZeroBias
         97, -- module_index: 58, name: L1_AlwaysTrue7
        448, -- module_index: 59, name: L1_ETT40_BptxAND
         98, -- module_index: 60, name: L1_AlwaysTrue8
        468, -- module_index: 61, name: L1_ZeroBias_copy
        449, -- module_index: 62, name: L1_ETT50_BptxAND
        206, -- module_index: 63, name: L1_AlwaysTrue10
         49, -- module_index: 64, name: L1_AlwaysTrue6
        450, -- module_index: 65, name: L1_ETT60_BptxAND
        212, -- module_index: 66, name: L1_SingleJet20er2p7_NotBptxOR
        452, -- module_index: 67, name: L1_ETT75_BptxAND
        465, -- module_index: 68, name: L1_AlwaysTrue
         99, -- module_index: 69, name: L1_AlwaysTrue9
        213, -- module_index: 70, name: L1_SingleJet20er2p7_NotBptxOR_3BX
          1, -- module_index: 71, name: L1_SingleMuOpen
        476, -- module_index: 72, name: L1_BptxOR
        453, -- module_index: 73, name: L1_ETT80_BptxAND
        457, -- module_index: 74, name: L1_ETT100_BptxAND
        454, -- module_index: 75, name: L1_ETT85_BptxAND
        210, -- module_index: 76, name: L1_SingleMuOpen_NotBptxOR
        455, -- module_index: 77, name: L1_ETT90_BptxAND
        417, -- module_index: 78, name: L1_FirstBunchAfterTrain
        456, -- module_index: 79, name: L1_ETT95_BptxAND
        447, -- module_index: 80, name: L1_SingleJet12_BptxAND
        451, -- module_index: 81, name: L1_ETT70_BptxAND
        416, -- module_index: 82, name: L1_FirstBunchInTrain
        214, -- module_index: 83, name: L1_SingleJet43er2p7_NotBptxOR_3BX
        466, -- module_index: 84, name: L1_NotBptxOR
         46, -- module_index: 85, name: L1_AlwaysTrue2
        459, -- module_index: 86, name: L1_MinimumBiasHF0_AND_BptxAND
        446, -- module_index: 87, name: L1_SingleEG2_BptxAND
        215, -- module_index: 88, name: L1_SingleJet46er2p7_NotBptxOR_3BX
         47, -- module_index: 89, name: L1_AlwaysTrue3
        415, -- module_index: 90, name: L1_IsolatedBunch
         48, -- module_index: 91, name: L1_AlwaysTrue4
        460, -- module_index: 92, name: L1_MinimumBiasHF0_OR_BptxAND
        458, -- module_index: 93, name: L1_ETT110_BptxAND
        511, -- module_index: 94, name: L1_AlwaysTrue5
          5, -- module_index: 95, name: L1_SingleMu0_BMTF
          6, -- module_index: 96, name: L1_SingleMu0_OMTF
         12, -- module_index: 97, name: L1_SingleMu11_LowQ
         15, -- module_index: 98, name: L1_SingleMu12_LowQ_EMTF
         16, -- module_index: 99, name: L1_SingleMu16
         19, -- module_index: 100, name: L1_SingleMu22
         22, -- module_index: 101, name: L1_SingleMu22_EMTF
         23, -- module_index: 102, name: L1_SingleMu25
          2, -- module_index: 103, name: L1_SingleMuCosmics_BMTF
          3, -- module_index: 104, name: L1_SingleMuCosmics_OMTF
        114, -- module_index: 105, name: L1_TripleEG_18_17_8
        100, -- module_index: 106, name: L1_DoubleEG_15_10
        101, -- module_index: 107, name: L1_DoubleEG_18_17
        103, -- module_index: 108, name: L1_DoubleEG_22_10
        105, -- module_index: 109, name: L1_DoubleEG_22_15
        107, -- module_index: 110, name: L1_DoubleEG_24_17
        109, -- module_index: 111, name: L1_DoubleEG_25_13
        279, -- module_index: 112, name: L1_DoubleEG_LooseIso23_10
        123, -- module_index: 113, name: L1_DoubleIsoTau28er2p1
        125, -- module_index: 114, name: L1_DoubleIsoTau32er2p1
        127, -- module_index: 115, name: L1_DoubleIsoTau34er2p1
        129, -- module_index: 116, name: L1_DoubleIsoTau36er2p1
        155, -- module_index: 117, name: L1_DoubleJet100er2p7
        157, -- module_index: 118, name: L1_DoubleJet120er2p7
        151, -- module_index: 119, name: L1_DoubleJet40er2p7
        154, -- module_index: 120, name: L1_DoubleJet80er2p7
        112, -- module_index: 121, name: L1_DoubleLooseIsoEG24er2p1
        122, -- module_index: 122, name: L1_DoubleTau70er2p1
        143, -- module_index: 123, name: L1_SingleJet35_FWD
        145, -- module_index: 124, name: L1_SingleJet90_FWD
         54, -- module_index: 125, name: L1_SingleEG24
         56, -- module_index: 126, name: L1_SingleEG28
         58, -- module_index: 127, name: L1_SingleEG32
         66, -- module_index: 128, name: L1_SingleEG34er2p1
         67, -- module_index: 129, name: L1_SingleEG36er2p1
         68, -- module_index: 130, name: L1_SingleEG38er2p1
         63, -- module_index: 131, name: L1_SingleEG42
         50, -- module_index: 132, name: L1_SingleEG5
         69, -- module_index: 133, name: L1_SingleIsoEG18
         70, -- module_index: 134, name: L1_SingleIsoEG20
         71, -- module_index: 135, name: L1_SingleIsoEG22
         72, -- module_index: 136, name: L1_SingleIsoEG24
         73, -- module_index: 137, name: L1_SingleIsoEG26
         74, -- module_index: 138, name: L1_SingleIsoEG28
         75, -- module_index: 139, name: L1_SingleIsoEG30
         76, -- module_index: 140, name: L1_SingleIsoEG32
         91, -- module_index: 141, name: L1_SingleIsoEG33er2p1
         92, -- module_index: 142, name: L1_SingleIsoEG34er2p1
         93, -- module_index: 143, name: L1_SingleIsoEG35er2p1
         94, -- module_index: 144, name: L1_SingleIsoEG36er2p1
         81, -- module_index: 145, name: L1_SingleIsoEG38
         82, -- module_index: 146, name: L1_SingleIsoEG40
        136, -- module_index: 147, name: L1_SingleJet120
        138, -- module_index: 148, name: L1_SingleJet150
        139, -- module_index: 149, name: L1_SingleJet160
        141, -- module_index: 150, name: L1_SingleJet180
        142, -- module_index: 151, name: L1_SingleJet200
        148, -- module_index: 152, name: L1_SingleJet35_HFm
        150, -- module_index: 153, name: L1_SingleJet60_HFm
        117, -- module_index: 154, name: L1_SingleTau100er2p1
        119, -- module_index: 155, name: L1_SingleTau130er2p1
        115, -- module_index: 156, name: L1_SingleTau20
        467, -- module_index: 157, name: L1_BptxXOR
        475, -- module_index: 158, name: L1_BptxMinus
        474, -- module_index: 159, name: L1_BptxPlus
        198, -- module_index: 160, name: L1_ETM150
        185, -- module_index: 161, name: L1_ETM50
        188, -- module_index: 162, name: L1_ETM75
        205, -- module_index: 163, name: L1_ETMHF150
        168, -- module_index: 164, name: L1_HTT120er
        169, -- module_index: 165, name: L1_HTT160er
        179, -- module_index: 166, name: L1_HTT380er
        181, -- module_index: 167, name: L1_HTT450er
        477, -- module_index: 168, name: L1_BPTX_AND_Ref1_VME
        485, -- module_index: 169, name: L1_BPTX_AND_Ref4_VME
        472, -- module_index: 170, name: L1_BPTX_BeamGas_B2_VME
        470, -- module_index: 171, name: L1_BPTX_BeamGas_Ref2_VME
        482, -- module_index: 172, name: L1_BPTX_OR_Ref3_VME
        483, -- module_index: 173, name: L1_BPTX_RefAND_VME
        488, -- module_index: 174, name: L1_FirstCollisionInTrain
        479, -- module_index: 175, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================