-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        462, -- module_index: 0, name: L1_BPTX_AND_Ref1_VME
        470, -- module_index: 1, name: L1_BPTX_AND_Ref3_VME
        467, -- module_index: 2, name: L1_BPTX_B1NotB2_NIM
        468, -- module_index: 3, name: L1_BPTX_B2NotB1_NIM
        456, -- module_index: 4, name: L1_BPTX_BeamGas_B1_VME
        454, -- module_index: 5, name: L1_BPTX_BeamGas_Ref1_VME
        469, -- module_index: 6, name: L1_BPTX_NotOR_NIM
        481, -- module_index: 7, name: L1_BPTX_OR_NIM
        475, -- module_index: 8, name: L1_BPTX_OR_Ref4_VME
        460, -- module_index: 9, name: L1_BptxMinus
        459, -- module_index: 10, name: L1_BptxPlus
        473, -- module_index: 11, name: L1_FirstCollisionInOrbit
        477, -- module_index: 12, name: L1_FirstCollisionInTrain
        476, -- module_index: 13, name: L1_LastCollisionInTrain
        451, -- module_index: 14, name: L1_NotBptxOR
        464, -- module_index: 15, name: L1_UnpairedBunchBptxMinus
        463, -- module_index: 16, name: L1_UnpairedBunchBptxPlus
        458, -- module_index: 17, name: L1_ZeroBias
        453, -- module_index: 18, name: L1_ZeroBias_copy
        450, -- module_index: 19, name: L1_AlwaysTrue
        442, -- module_index: 20, name: L1_ETT100_BptxAND
        443, -- module_index: 21, name: L1_ETT110_BptxAND
        433, -- module_index: 22, name: L1_ETT40_BptxAND
        434, -- module_index: 23, name: L1_ETT50_BptxAND
        435, -- module_index: 24, name: L1_ETT60_BptxAND
        436, -- module_index: 25, name: L1_ETT70_BptxAND
        437, -- module_index: 26, name: L1_ETT75_BptxAND
        438, -- module_index: 27, name: L1_ETT80_BptxAND
        439, -- module_index: 28, name: L1_ETT85_BptxAND
        440, -- module_index: 29, name: L1_ETT90_BptxAND
        441, -- module_index: 30, name: L1_ETT95_BptxAND
        444, -- module_index: 31, name: L1_MinimumBiasHF0_AND_BptxAND
        445, -- module_index: 32, name: L1_MinimumBiasHF0_OR_BptxAND
        452, -- module_index: 33, name: L1_BptxXOR
        402, -- module_index: 34, name: L1_FirstBunchAfterTrain
        401, -- module_index: 35, name: L1_FirstBunchInTrain
        400, -- module_index: 36, name: L1_IsolatedBunch
         53, -- module_index: 37, name: L1_SingleEG18
         54, -- module_index: 38, name: L1_SingleEG24
         56, -- module_index: 39, name: L1_SingleEG28
         58, -- module_index: 40, name: L1_SingleEG32
         66, -- module_index: 41, name: L1_SingleEG34er2p1
         61, -- module_index: 42, name: L1_SingleEG38
         63, -- module_index: 43, name: L1_SingleEG42
         65, -- module_index: 44, name: L1_SingleEG50
         70, -- module_index: 45, name: L1_SingleIsoEG20
         85, -- module_index: 46, name: L1_SingleIsoEG22er2p1
         73, -- module_index: 47, name: L1_SingleIsoEG26
         88, -- module_index: 48, name: L1_SingleIsoEG28er2p1
         76, -- module_index: 49, name: L1_SingleIsoEG32
         77, -- module_index: 50, name: L1_SingleIsoEG34
         93, -- module_index: 51, name: L1_SingleIsoEG35er2p1
         80, -- module_index: 52, name: L1_SingleIsoEG37
         82, -- module_index: 53, name: L1_SingleIsoEG40
        137, -- module_index: 54, name: L1_SingleJet140
        139, -- module_index: 55, name: L1_SingleJet160
        132, -- module_index: 56, name: L1_SingleJet20
        148, -- module_index: 57, name: L1_SingleJet35_HFm
        149, -- module_index: 58, name: L1_SingleJet60_HFp
        119, -- module_index: 59, name: L1_SingleTau130er2p1
        116, -- module_index: 60, name: L1_SingleTau80er2p1
        432, -- module_index: 61, name: L1_SingleJet12_BptxAND
        208, -- module_index: 62, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        210, -- module_index: 63, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        104, -- module_index: 64, name: L1_DoubleEG_22_12
        108, -- module_index: 65, name: L1_DoubleEG_25_12
        274, -- module_index: 66, name: L1_DoubleEG_LooseIso24_10
        126, -- module_index: 67, name: L1_DoubleIsoTau33er2p1
        130, -- module_index: 68, name: L1_DoubleIsoTau38er2p1
        158, -- module_index: 69, name: L1_DoubleJet150er3p0
        111, -- module_index: 70, name: L1_DoubleLooseIsoEG22er2p1
        146, -- module_index: 71, name: L1_SingleJet120_FWD
        113, -- module_index: 72, name: L1_TripleEG_14_10_8
          7, -- module_index: 73, name: L1_SingleMu0_EMTF
         13, -- module_index: 74, name: L1_SingleMu12_LowQ_BMTF
         26, -- module_index: 75, name: L1_SingleMu16er2p1
        292, -- module_index: 76, name: L1_Mu18er2p1_Tau20er2p1
         27, -- module_index: 77, name: L1_SingleMu18er2p1
        293, -- module_index: 78, name: L1_Mu18er2p1_Tau24er2p1
        298, -- module_index: 79, name: L1_Mu20er2p1_IsoTau27er2p1
        297, -- module_index: 80, name: L1_Mu20er2p1_IsoTau26er2p1
        290, -- module_index: 81, name: L1_Mu16er2p1_Tau20er2p1
         28, -- module_index: 82, name: L1_SingleMu20er2p1
        296, -- module_index: 83, name: L1_Mu18er2p1_IsoTau26er2p1
        291, -- module_index: 84, name: L1_Mu16er2p1_Tau24er2p1
          4, -- module_index: 85, name: L1_SingleMuCosmics_EMTF
        206, -- module_index: 86, name: L1_SingleMuOpen_NotBptxOR_3BX
         37, -- module_index: 87, name: L1_DoubleMu18er2p1
        388, -- module_index: 88, name: L1_DoubleMu4p5_SQ_OS
        384, -- module_index: 89, name: L1_DoubleMu8_SQ
         34, -- module_index: 90, name: L1_DoubleMu_13_6
        328, -- module_index: 91, name: L1_DoubleMu_15_7_SQ
        329, -- module_index: 92, name: L1_DoubleMu_15_7_SQ_Mass_Min4
        245, -- module_index: 93, name: L1_DoubleJet100er2p3_dEta_Max1p6
        377, -- module_index: 94, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        492, -- module_index: 95, name: L1_CDC_3_TOP120_DPHI2p618_3p142
        498, -- module_index: 96, name: L1_CDC_3_er1p6_TOP120_DPHI2p094_3p142
        504, -- module_index: 97, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        510, -- module_index: 98, name: L1_CDCp1_3_er2p1_TOP120_DPHI2p618_3p142
        415, -- module_index: 99, name: L1_QuadJet36er3p0_Tau52
        213, -- module_index: 100, name: L1_DoubleJet30_Mass_Min340_dEta_Max1p5
        288, -- module_index: 101, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        430, -- module_index: 102, name: L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4
        286, -- module_index: 103, name: L1_DoubleJet35_rmovlp_IsoTau45_Mass_Min450
    others => 0
);

-- ========================================================