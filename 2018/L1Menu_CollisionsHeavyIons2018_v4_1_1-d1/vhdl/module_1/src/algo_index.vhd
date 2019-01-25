-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_1

-- Unique ID of L1 Trigger Menu:
-- eb09cfc5-b4bc-4870-ac3c-0e7fa91c5c5d

-- Unique ID of firmware implementation:
-- 709f0a32-40b7-4539-af4a-dc697a3eb4f3

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        385, -- module_index: 0, name: L1_SingleEG12_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
        395, -- module_index: 1, name: L1_SingleEG15_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
        239, -- module_index: 2, name: L1_DoubleMuOpen_MaxDr2p0_OS_BptxAND
        319, -- module_index: 3, name: L1_SingleJet36_FWD_Centrality_50_100_BptxAND
        321, -- module_index: 4, name: L1_SingleJet56_FWD_Centrality_50_100_BptxAND
        316, -- module_index: 5, name: L1_SingleJet8_FWD_Centrality_50_100_BptxAND
        371, -- module_index: 6, name: L1_SingleEG21_Centrality_50_100_BptxAND
        363, -- module_index: 7, name: L1_SingleEG3_Centrality_30_100_BptxAND
        355, -- module_index: 8, name: L1_SingleIsoEG15_BptxAND
        260, -- module_index: 9, name: L1_SingleJet16_BptxAND
        297, -- module_index: 10, name: L1_SingleJet24_Centrality_50_100_BptxAND
        299, -- module_index: 11, name: L1_SingleJet32_Centrality_50_100_BptxAND
        265, -- module_index: 12, name: L1_SingleJet40_BptxAND
        267, -- module_index: 13, name: L1_SingleJet48_BptxAND
         50, -- module_index: 14, name: L1_SingleJet60
        293, -- module_index: 15, name: L1_SingleJet64_Centrality_30_100_BptxAND
        295, -- module_index: 16, name: L1_SingleJet8_Centrality_50_100_BptxAND
        444, -- module_index: 17, name: L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        421, -- module_index: 18, name: L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        476, -- module_index: 19, name: L1_ETT55_NotETT130_BptxAND
        492, -- module_index: 20, name: L1_NotETT110_MinimumBiasHF2_OR_BptxAND
         80, -- module_index: 21, name: L1_ETT2000
        140, -- module_index: 22, name: L1_MinimumBiasHF0_AND_BptxAND
        143, -- module_index: 23, name: L1_MinimumBiasHF0_OR_BptxAND
        156, -- module_index: 24, name: L1_MinimumBiasHF1_XOR_BptxAND
        142, -- module_index: 25, name: L1_NotMinimumBiasHF0_OR_BptxAND
        154, -- module_index: 26, name: L1_MinimumBiasHF1_AND_BptxAND
        141, -- module_index: 27, name: L1_NotMinimumBiasHF0_AND_BptxAND
        160, -- module_index: 28, name: L1_NotMinimumBiasHF1_OR_BptxAND
        155, -- module_index: 29, name: L1_MinimumBiasHF1_OR_BptxAND
        152, -- module_index: 30, name: L1_MinimumBiasHF1_AND
        153, -- module_index: 31, name: L1_MinimumBiasHF1_OR
        159, -- module_index: 32, name: L1_NotMinimumBiasHF1_OR
        158, -- module_index: 33, name: L1_NotMinimumBiasHF1_AND
        162, -- module_index: 34, name: L1_MinimumBiasHF2_AND
        166, -- module_index: 35, name: L1_NotMinimumBiasHF2_AND
        163, -- module_index: 36, name: L1_MinimumBiasHF2_OR
        169, -- module_index: 37, name: L1_NotMinimumBiasHF2_OR
        164, -- module_index: 38, name: L1_MinimumBiasHF2_AND_BptxAND
        165, -- module_index: 39, name: L1_MinimumBiasHF2_OR_BptxAND
        170, -- module_index: 40, name: L1_NotMinimumBiasHF2_OR_BptxAND
        167, -- module_index: 41, name: L1_NotMinimumBiasHF2_AND_BptxAND
        145, -- module_index: 42, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_1
        148, -- module_index: 43, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_1
        146, -- module_index: 44, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_2
        149, -- module_index: 45, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_2
        147, -- module_index: 46, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_4
        150, -- module_index: 47, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_4
        101, -- module_index: 48, name: L1_AlwaysTrue
        102, -- module_index: 49, name: L1_ZeroBias
        103, -- module_index: 50, name: L1_ZeroBias_copy
        130, -- module_index: 51, name: L1_BPTX_AND_Ref1_VME
        131, -- module_index: 52, name: L1_BPTX_AND_Ref3_VME
        132, -- module_index: 53, name: L1_BPTX_AND_Ref4_VME
        135, -- module_index: 54, name: L1_BPTX_BeamGas_B1_VME
        136, -- module_index: 55, name: L1_BPTX_BeamGas_B2_VME
        133, -- module_index: 56, name: L1_BPTX_BeamGas_Ref1_VME
        134, -- module_index: 57, name: L1_BPTX_BeamGas_Ref2_VME
        126, -- module_index: 58, name: L1_BPTX_NotOR_VME
        127, -- module_index: 59, name: L1_BPTX_OR_Ref3_VME
        128, -- module_index: 60, name: L1_BPTX_OR_Ref4_VME
        129, -- module_index: 61, name: L1_BPTX_RefAND_VME
        108, -- module_index: 62, name: L1_BptxMinus
        110, -- module_index: 63, name: L1_BptxMinus_NotBptxPlus
        106, -- module_index: 64, name: L1_BptxXOR
        109, -- module_index: 65, name: L1_BptxPlus_NotBptxMinus
        104, -- module_index: 66, name: L1_BptxOR
        105, -- module_index: 67, name: L1_NotBptxOR
        107, -- module_index: 68, name: L1_BptxPlus
        495, -- module_index: 69, name: L1_Castor1
        505, -- module_index: 70, name: L1_CastorHighJet
        506, -- module_index: 71, name: L1_CastorHighJet_BptxAND
        496, -- module_index: 72, name: L1_CastorMediumJet
        497, -- module_index: 73, name: L1_CastorMediumJet_BptxAND
        503, -- module_index: 74, name: L1_CastorMuon
        504, -- module_index: 75, name: L1_CastorMuon_BptxAND
        172, -- module_index: 76, name: L1_Centrality_30_100
        173, -- module_index: 77, name: L1_Centrality_50_100
        176, -- module_index: 78, name: L1_Centrality_Saturation
        119, -- module_index: 79, name: L1_FirstBunchAfterTrain
        120, -- module_index: 80, name: L1_FirstBunchBeforeTrain
        116, -- module_index: 81, name: L1_FirstBunchInTrain
        124, -- module_index: 82, name: L1_FirstCollisionInOrbit
        125, -- module_index: 83, name: L1_FirstCollisionInOrbit_Centrality30_100_BptxAND
        123, -- module_index: 84, name: L1_FirstCollisionInTrain
        115, -- module_index: 85, name: L1_IsolatedBunch
        118, -- module_index: 86, name: L1_LastBunchInTrain
        122, -- module_index: 87, name: L1_LastCollisionInTrain
        117, -- module_index: 88, name: L1_SecondBunchInTrain
        121, -- module_index: 89, name: L1_SecondLastBunchInTrain
         91, -- module_index: 90, name: L1_TOTEM_1
         92, -- module_index: 91, name: L1_TOTEM_2
         93, -- module_index: 92, name: L1_TOTEM_3
         94, -- module_index: 93, name: L1_TOTEM_4
        113, -- module_index: 94, name: L1_UnpairedBunchBptxMinus
        112, -- module_index: 95, name: L1_UnpairedBunchBptxPlus
         96, -- module_index: 96, name: L1_ZDCM
         98, -- module_index: 97, name: L1_ZDCM_BptxAND
        100, -- module_index: 98, name: L1_ZDCM_ZDCP_BptxAND
         97, -- module_index: 99, name: L1_ZDCP
         99, -- module_index: 100, name: L1_ZDCP_BptxAND
    others => 0
);

-- ========================================================