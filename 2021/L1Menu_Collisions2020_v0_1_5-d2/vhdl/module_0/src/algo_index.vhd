-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 4132978b-4b38-436f-89a5-ee797d7a9120

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        124, -- module_index: 1, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        235, -- module_index: 2, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        351, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        359, -- module_index: 4, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620
        376, -- module_index: 5, name: L1_QuadJet_95_75_65_20_DoubleJet_75_65_er2p5_Jet20_FWD3p0
        387, -- module_index: 6, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
         84, -- module_index: 7, name: L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17
         59, -- module_index: 8, name: L1_DoubleMu0er1p4_SQ_OS_dR_Max1p4
         61, -- module_index: 9, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
         52, -- module_index: 10, name: L1_MASSUPT_5_5_10_open
        198, -- module_index: 11, name: L1_IsoEG32er2p5_Mt44
         88, -- module_index: 12, name: L1_QuadMu0_OQ
         90, -- module_index: 13, name: L1_QuadMu0_SQ
         74, -- module_index: 14, name: L1_TripleMu3
         79, -- module_index: 15, name: L1_TripleMu_5_3_3_SQ
        148, -- module_index: 16, name: L1_DoubleMu3_SQ_ETMHF60_Jet60er2p5
        145, -- module_index: 17, name: L1_DoubleMu3_SQ_ETMHF50_HTT60er
        150, -- module_index: 18, name: L1_DoubleMu3_SQ_HTT220er
        151, -- module_index: 19, name: L1_DoubleMu3_SQ_HTT240er
        152, -- module_index: 20, name: L1_DoubleMu3_SQ_HTT260er
         40, -- module_index: 21, name: L1_DoubleMu0
         55, -- module_index: 22, name: L1_DoubleMu0er1p5_SQ
         44, -- module_index: 23, name: L1_DoubleMu8_SQ
        104, -- module_index: 24, name: L1_Mu6_DoubleEG10er2p5
        372, -- module_index: 25, name: L1_TripleJet_95_75_65_DoubleJet_75_65_er2p5
         99, -- module_index: 26, name: L1_Mu20_EG10er2p5
         18, -- module_index: 27, name: L1_SingleMu20
        160, -- module_index: 28, name: L1_SingleEG10er2p5
        287, -- module_index: 29, name: L1_Mu22er2p1_IsoTau40er2p1
        101, -- module_index: 30, name: L1_Mu7_LooseIsoEG20er2p5
        153, -- module_index: 31, name: L1_Mu0upt20ip0
        304, -- module_index: 32, name: L1_Mu0upt50
         13, -- module_index: 33, name: L1_SingleMu12_DQ_BMTF
         32, -- module_index: 34, name: L1_SingleMu16er1p5
         21, -- module_index: 35, name: L1_SingleMu22_OMTF
         28, -- module_index: 36, name: L1_SingleMu9er1p5
        448, -- module_index: 37, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        453, -- module_index: 38, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        451, -- module_index: 39, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        452, -- module_index: 40, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        447, -- module_index: 41, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        212, -- module_index: 42, name: L1_DoubleEG_LooseIso20_10_er2p5
        271, -- module_index: 43, name: L1_DoubleIsoTau32er2p1
        340, -- module_index: 44, name: L1_DoubleJet40er2p5
        327, -- module_index: 45, name: L1_SingleJet120_FWD3p0
        294, -- module_index: 46, name: L1_IsoTau40er2p1_ETMHF110
        422, -- module_index: 47, name: L1_ETMHF110
        291, -- module_index: 48, name: L1_IsoTau40er2p1_ETMHF80
        292, -- module_index: 49, name: L1_IsoTau40er2p1_ETMHF90
        238, -- module_index: 50, name: L1_LooseIsoEG24er2p1_HTT100er
        332, -- module_index: 51, name: L1_SingleJet140er2p5_ETMHF70
        320, -- module_index: 52, name: L1_SingleJet140er2p5
        165, -- module_index: 53, name: L1_SingleEG28er2p1
        171, -- module_index: 54, name: L1_SingleEG42er2p5
        183, -- module_index: 55, name: L1_SingleIsoEG24er2p1
        189, -- module_index: 56, name: L1_SingleIsoEG28er2p5
        330, -- module_index: 57, name: L1_SingleJet10erHE
        322, -- module_index: 58, name: L1_SingleJet180er2p5
        317, -- module_index: 59, name: L1_SingleJet60er2p5
        329, -- module_index: 60, name: L1_SingleJet8erHE
        178, -- module_index: 61, name: L1_SingleLooseIsoEG28er2p5
        428, -- module_index: 62, name: L1_ETMHF90_HTT60er
        416, -- module_index: 63, name: L1_ETM120
        426, -- module_index: 64, name: L1_ETMHF150
        398, -- module_index: 65, name: L1_HTT120er
        404, -- module_index: 66, name: L1_HTT360er
        458, -- module_index: 67, name: L1_AlwaysTrue
        460, -- module_index: 68, name: L1_ZeroBias_copy
        459, -- module_index: 69, name: L1_ZeroBias
        486, -- module_index: 70, name: L1_BPTX_AND_Ref1_VME
        487, -- module_index: 71, name: L1_BPTX_AND_Ref3_VME
        488, -- module_index: 72, name: L1_BPTX_AND_Ref4_VME
        491, -- module_index: 73, name: L1_BPTX_BeamGas_B1_VME
        492, -- module_index: 74, name: L1_BPTX_BeamGas_B2_VME
        489, -- module_index: 75, name: L1_BPTX_BeamGas_Ref1_VME
        490, -- module_index: 76, name: L1_BPTX_BeamGas_Ref2_VME
        482, -- module_index: 77, name: L1_BPTX_NotOR_VME
        483, -- module_index: 78, name: L1_BPTX_OR_Ref3_VME
        484, -- module_index: 79, name: L1_BPTX_OR_Ref4_VME
        485, -- module_index: 80, name: L1_BPTX_RefAND_VME
        467, -- module_index: 81, name: L1_BptxMinus
        466, -- module_index: 82, name: L1_BptxPlus
        465, -- module_index: 83, name: L1_BptxXOR
        477, -- module_index: 84, name: L1_FirstBunchAfterTrain
        476, -- module_index: 85, name: L1_LastBunchInTrain
        475, -- module_index: 86, name: L1_SecondLastBunchInTrain
        472, -- module_index: 87, name: L1_FirstBunchBeforeTrain
        480, -- module_index: 88, name: L1_FirstCollisionInOrbit
        479, -- module_index: 89, name: L1_FirstCollisionInTrain
        500, -- module_index: 90, name: L1_HCAL_LaserMon_Trig
        501, -- module_index: 91, name: L1_HCAL_LaserMon_Veto
        471, -- module_index: 92, name: L1_IsolatedBunch
        478, -- module_index: 93, name: L1_LastCollisionInTrain
        503, -- module_index: 94, name: L1_TOTEM_1
        504, -- module_index: 95, name: L1_TOTEM_2
        505, -- module_index: 96, name: L1_TOTEM_3
        506, -- module_index: 97, name: L1_TOTEM_4
        469, -- module_index: 98, name: L1_UnpairedBunchBptxMinus
        468, -- module_index: 99, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================