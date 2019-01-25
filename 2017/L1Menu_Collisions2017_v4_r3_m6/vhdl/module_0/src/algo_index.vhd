-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r3

-- Unique ID of L1 Trigger Menu:
-- 091bc7c1-adf4-41be-8dc2-8bc3797597d2

-- Unique ID of firmware implementation:
-- debf71c9-b13a-43c4-9e1b-df86e2425514

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        477, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        470, -- module_index: 1, name: L1_BPTX_BeamGas_Ref2_VME
        476, -- module_index: 2, name: L1_BptxOR
        212, -- module_index: 3, name: L1_SingleJet20er2p7_NotBptxOR
        473, -- module_index: 4, name: L1_ZeroBias
        416, -- module_index: 5, name: L1_FirstBunchInTrain
        213, -- module_index: 6, name: L1_SingleJet20er2p7_NotBptxOR_3BX
        211, -- module_index: 7, name: L1_SingleMuOpen_NotBptxOR_3BX
          1, -- module_index: 8, name: L1_SingleMuOpen
        458, -- module_index: 9, name: L1_ETT110_BptxAND
        468, -- module_index: 10, name: L1_ZeroBias_copy
        417, -- module_index: 11, name: L1_FirstBunchAfterTrain
        460, -- module_index: 12, name: L1_MinimumBiasHF0_OR_BptxAND
        210, -- module_index: 13, name: L1_SingleMuOpen_NotBptxOR
        466, -- module_index: 14, name: L1_NotBptxOR
        214, -- module_index: 15, name: L1_SingleJet43er2p7_NotBptxOR_3BX
        453, -- module_index: 16, name: L1_ETT80_BptxAND
        457, -- module_index: 17, name: L1_ETT100_BptxAND
        447, -- module_index: 18, name: L1_SingleJet12_BptxAND
        459, -- module_index: 19, name: L1_MinimumBiasHF0_AND_BptxAND
        215, -- module_index: 20, name: L1_SingleJet46er2p7_NotBptxOR_3BX
        448, -- module_index: 21, name: L1_ETT40_BptxAND
        449, -- module_index: 22, name: L1_ETT50_BptxAND
        455, -- module_index: 23, name: L1_ETT90_BptxAND
        450, -- module_index: 24, name: L1_ETT60_BptxAND
        446, -- module_index: 25, name: L1_SingleEG2_BptxAND
        451, -- module_index: 26, name: L1_ETT70_BptxAND
        456, -- module_index: 27, name: L1_ETT95_BptxAND
        452, -- module_index: 28, name: L1_ETT75_BptxAND
        415, -- module_index: 29, name: L1_IsolatedBunch
        465, -- module_index: 30, name: L1_AlwaysTrue
        454, -- module_index: 31, name: L1_ETT85_BptxAND
         63, -- module_index: 32, name: L1_SingleEG42
         65, -- module_index: 33, name: L1_SingleEG50
         70, -- module_index: 34, name: L1_SingleIsoEG20
         85, -- module_index: 35, name: L1_SingleIsoEG22er2p1
         73, -- module_index: 36, name: L1_SingleIsoEG26
         88, -- module_index: 37, name: L1_SingleIsoEG28er2p1
         76, -- module_index: 38, name: L1_SingleIsoEG32
         77, -- module_index: 39, name: L1_SingleIsoEG34
         93, -- module_index: 40, name: L1_SingleIsoEG35er2p1
         80, -- module_index: 41, name: L1_SingleIsoEG37
         82, -- module_index: 42, name: L1_SingleIsoEG40
        136, -- module_index: 43, name: L1_SingleJet120
        138, -- module_index: 44, name: L1_SingleJet150
        140, -- module_index: 45, name: L1_SingleJet170
        142, -- module_index: 46, name: L1_SingleJet200
        147, -- module_index: 47, name: L1_SingleJet35_HFp
        507, -- module_index: 48, name: L1_SingleJet8erHE
        119, -- module_index: 49, name: L1_SingleTau130er2p1
        427, -- module_index: 50, name: L1_EG25er2p1_HTT125er
        103, -- module_index: 51, name: L1_DoubleEG_22_10
        107, -- module_index: 52, name: L1_DoubleEG_24_17
        279, -- module_index: 53, name: L1_DoubleEG_LooseIso23_10
        125, -- module_index: 54, name: L1_DoubleIsoTau32er2p1
        129, -- module_index: 55, name: L1_DoubleIsoTau36er2p1
        157, -- module_index: 56, name: L1_DoubleJet120er2p7
        154, -- module_index: 57, name: L1_DoubleJet80er2p7
        122, -- module_index: 58, name: L1_DoubleTau70er2p1
        145, -- module_index: 59, name: L1_SingleJet90_FWD
          5, -- module_index: 60, name: L1_SingleMu0_BMTF
         12, -- module_index: 61, name: L1_SingleMu11_LowQ
         16, -- module_index: 62, name: L1_SingleMu16
         20, -- module_index: 63, name: L1_SingleMu22_BMTF
         29, -- module_index: 64, name: L1_SingleMu22er2p1
        306, -- module_index: 65, name: L1_Mu22er2p1_IsoTau30er2p1
        307, -- module_index: 66, name: L1_Mu22er2p1_IsoTau32er2p1
        309, -- module_index: 67, name: L1_Mu22er2p1_IsoTau34er2p1
        311, -- module_index: 68, name: L1_Mu22er2p1_IsoTau36er2p1
        312, -- module_index: 69, name: L1_Mu22er2p1_IsoTau38er2p1
        310, -- module_index: 70, name: L1_Mu22er2p1_IsoTau35er2p1
        300, -- module_index: 71, name: L1_Mu22er2p1_Tau50er2p1
        305, -- module_index: 72, name: L1_Mu22er2p1_IsoTau28er2p1
        308, -- module_index: 73, name: L1_Mu22er2p1_IsoTau33er2p1
        301, -- module_index: 74, name: L1_Mu22er2p1_Tau70er2p1
        395, -- module_index: 75, name: L1_DoubleMu0er1p5_SQ_OS
        392, -- module_index: 76, name: L1_DoubleMu4p5_SQ
        384, -- module_index: 77, name: L1_DoubleMu6_SQ_OS
         33, -- module_index: 78, name: L1_DoubleMu_12_8
         36, -- module_index: 79, name: L1_DoubleMu_15_7
        164, -- module_index: 80, name: L1_TripleJet_100_85_72_VBF
        163, -- module_index: 81, name: L1_TripleJet_105_85_76_VBF
        161, -- module_index: 82, name: L1_TripleJet_92_76_64_VBF
        399, -- module_index: 83, name: L1_TripleMu0_OQ
         41, -- module_index: 84, name: L1_TripleMu_4_4_4
         43, -- module_index: 85, name: L1_TripleMu_5_3_3
        273, -- module_index: 86, name: L1_ETM100_Jet60_dPhi_Min0p4
        431, -- module_index: 87, name: L1_ETM75_Jet60_dPhi_Min0p4
        272, -- module_index: 88, name: L1_ETM90_Jet60_dPhi_Min0p4
         97, -- module_index: 89, name: L1_IsoEG33_Mt40
         99, -- module_index: 90, name: L1_IsoEG33_Mt48
        441, -- module_index: 91, name: L1_DoubleMu_10_0_dEta_Max1p8
        381, -- module_index: 92, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
        382, -- module_index: 93, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        165, -- module_index: 94, name: L1_QuadJet40er2p7
        284, -- module_index: 95, name: L1_DoubleJet_100_35_DoubleJet35_Mass_Min620
        285, -- module_index: 96, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        287, -- module_index: 97, name: L1_DoubleJet_115_35_DoubleJet35_Mass_Min620
        221, -- module_index: 98, name: L1_DoubleJet30_Mass_Min400_dEta_Max1p5
    others => 0
);

-- ========================================================