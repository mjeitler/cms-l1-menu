-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v2

-- Unique ID of L1 Trigger Menu:
-- 41c33f29-85b6-415a-adbb-b289ab542faf

-- Unique ID of firmware implementation:
-- 18ff0efc-43b4-4cac-8ccb-ccf63e944307

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.1.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        478, -- module_index: 0, name: L1_BPTX_AND_NIM
        462, -- module_index: 1, name: L1_BPTX_AND_Ref1_VME
        466, -- module_index: 2, name: L1_BPTX_AND_Ref2_NIM
        470, -- module_index: 3, name: L1_BPTX_AND_Ref3_VME
        474, -- module_index: 4, name: L1_BPTX_AND_Ref4_VME
        467, -- module_index: 5, name: L1_BPTX_B1NotB2_NIM
        479, -- module_index: 6, name: L1_BPTX_B1_NIM
        468, -- module_index: 7, name: L1_BPTX_B2NotB1_NIM
        480, -- module_index: 8, name: L1_BPTX_B2_NIM
        456, -- module_index: 9, name: L1_BPTX_BeamGas_B1_VME
        457, -- module_index: 10, name: L1_BPTX_BeamGas_B2_VME
        454, -- module_index: 11, name: L1_BPTX_BeamGas_Ref1_VME
        455, -- module_index: 12, name: L1_BPTX_BeamGas_Ref2_VME
        469, -- module_index: 13, name: L1_BPTX_NotOR_NIM
        465, -- module_index: 14, name: L1_BPTX_NotOR_VME
        481, -- module_index: 15, name: L1_BPTX_OR_NIM
        471, -- module_index: 16, name: L1_BPTX_OR_Ref3_VME
        475, -- module_index: 17, name: L1_BPTX_OR_Ref4_VME
        472, -- module_index: 18, name: L1_BPTX_RefAND_VME
        460, -- module_index: 19, name: L1_BptxMinus
        461, -- module_index: 20, name: L1_BptxOR
          1, -- module_index: 21, name: L1_SingleMuOpen
        459, -- module_index: 22, name: L1_BptxPlus
        473, -- module_index: 23, name: L1_FirstCollisionInOrbit
        477, -- module_index: 24, name: L1_FirstCollisionInTrain
        476, -- module_index: 25, name: L1_LastCollisionInTrain
        451, -- module_index: 26, name: L1_NotBptxOR
        464, -- module_index: 27, name: L1_UnpairedBunchBptxMinus
        463, -- module_index: 28, name: L1_UnpairedBunchBptxPlus
        458, -- module_index: 29, name: L1_ZeroBias
        453, -- module_index: 30, name: L1_ZeroBias_copy
        450, -- module_index: 31, name: L1_AlwaysTrue
        442, -- module_index: 32, name: L1_ETT100_BptxAND
        443, -- module_index: 33, name: L1_ETT110_BptxAND
        433, -- module_index: 34, name: L1_ETT40_BptxAND
        434, -- module_index: 35, name: L1_ETT50_BptxAND
        435, -- module_index: 36, name: L1_ETT60_BptxAND
        436, -- module_index: 37, name: L1_ETT70_BptxAND
        437, -- module_index: 38, name: L1_ETT75_BptxAND
        438, -- module_index: 39, name: L1_ETT80_BptxAND
        439, -- module_index: 40, name: L1_ETT85_BptxAND
        440, -- module_index: 41, name: L1_ETT90_BptxAND
        441, -- module_index: 42, name: L1_ETT95_BptxAND
        444, -- module_index: 43, name: L1_MinimumBiasHF0_AND_BptxAND
        445, -- module_index: 44, name: L1_MinimumBiasHF0_OR_BptxAND
        452, -- module_index: 45, name: L1_BptxXOR
        402, -- module_index: 46, name: L1_FirstBunchAfterTrain
        401, -- module_index: 47, name: L1_FirstBunchInTrain
        400, -- module_index: 48, name: L1_IsolatedBunch
         62, -- module_index: 49, name: L1_SingleEG40
         65, -- module_index: 50, name: L1_SingleEG50
         84, -- module_index: 51, name: L1_SingleIsoEG20er2p1
         86, -- module_index: 52, name: L1_SingleIsoEG24er2p1
         88, -- module_index: 53, name: L1_SingleIsoEG28er2p1
         90, -- module_index: 54, name: L1_SingleIsoEG32er2p1
         78, -- module_index: 55, name: L1_SingleIsoEG35
         80, -- module_index: 56, name: L1_SingleIsoEG37
         96, -- module_index: 57, name: L1_SingleIsoEG40er2p1
        131, -- module_index: 58, name: L1_SingleJet16
        132, -- module_index: 59, name: L1_SingleJet20
        147, -- module_index: 60, name: L1_SingleJet35_HFp
        118, -- module_index: 61, name: L1_SingleTau120er2p1
        116, -- module_index: 62, name: L1_SingleTau80er2p1
        431, -- module_index: 63, name: L1_SingleEG2_BptxAND
        432, -- module_index: 64, name: L1_SingleJet12_BptxAND
        212, -- module_index: 65, name: L1_SingleJet20er3p0_NotBptxOR
        213, -- module_index: 66, name: L1_SingleJet20er3p0_NotBptxOR_3BX
        214, -- module_index: 67, name: L1_SingleJet43er3p0_NotBptxOR_3BX
        215, -- module_index: 68, name: L1_SingleJet46er3p0_NotBptxOR_3BX
        109, -- module_index: 69, name: L1_DoubleEG_25_13
        123, -- module_index: 70, name: L1_DoubleIsoTau28er2p1
        128, -- module_index: 71, name: L1_DoubleIsoTau35er2p1
        157, -- module_index: 72, name: L1_DoubleJet120er3p0
        112, -- module_index: 73, name: L1_DoubleLooseIsoEG24er2p1
        144, -- module_index: 74, name: L1_SingleJet60_FWD
          5, -- module_index: 75, name: L1_SingleMu0_BMTF
         13, -- module_index: 76, name: L1_SingleMu12_LowQ_BMTF
         19, -- module_index: 77, name: L1_SingleMu22
         29, -- module_index: 78, name: L1_SingleMu22er2p1
        303, -- module_index: 79, name: L1_Mu22er2p1_IsoTau36er2p1
        293, -- module_index: 80, name: L1_Mu22er2p1_Tau50er2p1
        297, -- module_index: 81, name: L1_Mu22er2p1_IsoTau28er2p1
        301, -- module_index: 82, name: L1_Mu22er2p1_IsoTau34er2p1
        299, -- module_index: 83, name: L1_Mu22er2p1_IsoTau32er2p1
        304, -- module_index: 84, name: L1_Mu22er2p1_IsoTau38er2p1
        298, -- module_index: 85, name: L1_Mu22er2p1_IsoTau30er2p1
        294, -- module_index: 86, name: L1_Mu22er2p1_Tau70er2p1
        302, -- module_index: 87, name: L1_Mu22er2p1_IsoTau35er2p1
        300, -- module_index: 88, name: L1_Mu22er2p1_IsoTau33er2p1
        210, -- module_index: 89, name: L1_SingleMuOpen_NotBptxOR
        211, -- module_index: 90, name: L1_SingleMuOpen_NotBptxOR_3BX
         38, -- module_index: 91, name: L1_DoubleMu22er2p1
        382, -- module_index: 92, name: L1_DoubleMu5_SQ_OS
         33, -- module_index: 93, name: L1_DoubleMu_12_8
        365, -- module_index: 94, name: L1_DoubleMu4_OS_EG12
        368, -- module_index: 95, name: L1_DoubleMu5_OS_EG12
         41, -- module_index: 96, name: L1_TripleMu_4_4_4
        383, -- module_index: 97, name: L1_TripleMu_5_3p5_2p5
        371, -- module_index: 98, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        370, -- module_index: 99, name: L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17
        367, -- module_index: 100, name: L1_DoubleMu4p5_SQ_OS_dR_Max1p2
        491, -- module_index: 101, name: L1_CDC_3_TOP120_DPHI2p094_3p142
        497, -- module_index: 102, name: L1_CDC_3_er1p6_TOP120_DPHI1p570_3p142
        503, -- module_index: 103, name: L1_CDC_SingleMu_3_TOP120_DPHI2p618_3p142
        509, -- module_index: 104, name: L1_CDCp1_3_er1p6_TOP120_DPHI2p618_3p142
        263, -- module_index: 105, name: L1_QuadJet36er3p0_IsoTau52er2p1
        286, -- module_index: 106, name: L1_LooseIsoEG20er2p1_IsoTau25er2p1_dR_Min0p3
        223, -- module_index: 107, name: L1_LooseIsoEG30er2p1_Jet34er3p0_dR_Min0p3
        247, -- module_index: 108, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================