-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- bee17521-369e-46ad-94a1-68752fcac3bc

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
        451, -- module_index: 3, name: L1_ETT70_BptxAND
        211, -- module_index: 4, name: L1_SingleMuOpen_NotBptxOR_3BX
        473, -- module_index: 5, name: L1_ZeroBias
        415, -- module_index: 6, name: L1_IsolatedBunch
        210, -- module_index: 7, name: L1_SingleMuOpen_NotBptxOR
        468, -- module_index: 8, name: L1_ZeroBias_copy
        454, -- module_index: 9, name: L1_ETT85_BptxAND
        455, -- module_index: 10, name: L1_ETT90_BptxAND
        417, -- module_index: 11, name: L1_FirstBunchAfterTrain
        449, -- module_index: 12, name: L1_ETT50_BptxAND
        214, -- module_index: 13, name: L1_SingleJet43er2p7_NotBptxOR_3BX
        446, -- module_index: 14, name: L1_SingleEG2_BptxAND
        416, -- module_index: 15, name: L1_FirstBunchInTrain
        460, -- module_index: 16, name: L1_MinimumBiasHF0_OR_BptxAND
        215, -- module_index: 17, name: L1_SingleJet46er2p7_NotBptxOR_3BX
        452, -- module_index: 18, name: L1_ETT75_BptxAND
        465, -- module_index: 19, name: L1_AlwaysTrue
        466, -- module_index: 20, name: L1_NotBptxOR
        457, -- module_index: 21, name: L1_ETT100_BptxAND
        458, -- module_index: 22, name: L1_ETT110_BptxAND
        453, -- module_index: 23, name: L1_ETT80_BptxAND
        448, -- module_index: 24, name: L1_ETT40_BptxAND
        459, -- module_index: 25, name: L1_MinimumBiasHF0_AND_BptxAND
          1, -- module_index: 26, name: L1_SingleMuOpen
        212, -- module_index: 27, name: L1_SingleJet20er2p7_NotBptxOR
        456, -- module_index: 28, name: L1_ETT95_BptxAND
        450, -- module_index: 29, name: L1_ETT60_BptxAND
        213, -- module_index: 30, name: L1_SingleJet20er2p7_NotBptxOR_3BX
        447, -- module_index: 31, name: L1_SingleJet12_BptxAND
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
        137, -- module_index: 43, name: L1_SingleJet140
        139, -- module_index: 44, name: L1_SingleJet160
        132, -- module_index: 45, name: L1_SingleJet20
        148, -- module_index: 46, name: L1_SingleJet35_HFm
        149, -- module_index: 47, name: L1_SingleJet60_HFp
        119, -- module_index: 48, name: L1_SingleTau130er2p1
        116, -- module_index: 49, name: L1_SingleTau80er2p1
        102, -- module_index: 50, name: L1_DoubleEG_20_18
        106, -- module_index: 51, name: L1_DoubleEG_23_10
        110, -- module_index: 52, name: L1_DoubleEG_25_14
        124, -- module_index: 53, name: L1_DoubleIsoTau30er2p1
        128, -- module_index: 54, name: L1_DoubleIsoTau35er2p1
        156, -- module_index: 55, name: L1_DoubleJet112er2p7
        152, -- module_index: 56, name: L1_DoubleJet50er2p7
        121, -- module_index: 57, name: L1_DoubleTau50er2p1
        144, -- module_index: 58, name: L1_SingleJet60_FWD
        281, -- module_index: 59, name: L1_TripleEG_LooseIso20_10_5
         11, -- module_index: 60, name: L1_SingleMu10_LowQ
         14, -- module_index: 61, name: L1_SingleMu12_LowQ_OMTF
         19, -- module_index: 62, name: L1_SingleMu22
         21, -- module_index: 63, name: L1_SingleMu22_OMTF
          8, -- module_index: 64, name: L1_SingleMu3
        371, -- module_index: 65, name: L1_Mu3_Jet30er2p5
          2, -- module_index: 66, name: L1_SingleMuCosmics_BMTF
        426, -- module_index: 67, name: L1_Mu8_HTT150er
         37, -- module_index: 68, name: L1_DoubleMu18er2p1
        393, -- module_index: 69, name: L1_DoubleMu4p5_SQ_OS
        389, -- module_index: 70, name: L1_DoubleMu8_SQ
         34, -- module_index: 71, name: L1_DoubleMu_13_6
        333, -- module_index: 72, name: L1_DoubleMu_15_7_SQ
        334, -- module_index: 73, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        251, -- module_index: 74, name: L1_DoubleJet100er2p3_dEta_Max1p6
        223, -- module_index: 75, name: L1_DoubleMu0er1p5_SQ_dR_Max1p4
        379, -- module_index: 76, name: L1_DoubleMu_20_2_SQ_Mass_Max20
        270, -- module_index: 77, name: L1_QuadJet36er2p7_IsoTau52er2p1
        430, -- module_index: 78, name: L1_QuadJet36er2p7_Tau52
        218, -- module_index: 79, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
        225, -- module_index: 80, name: L1_LooseIsoEG24er2p1_Jet26er2p7_dR_Min0p3
        444, -- module_index: 81, name: L1_Mu3_Jet60er2p7_dEta_Max0p4_dPhi_Max0p4
        292, -- module_index: 82, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================