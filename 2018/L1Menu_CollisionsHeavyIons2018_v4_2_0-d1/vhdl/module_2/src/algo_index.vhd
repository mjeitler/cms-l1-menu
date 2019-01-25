-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_2_0

-- Unique ID of L1 Trigger Menu:
-- 18def6b5-725e-4ccd-bd48-aa6c63158cc8

-- Unique ID of firmware implementation:
-- d9e210d6-5dc9-44d5-a572-f85783174c8f

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
         96, -- module_index: 0, name: L1_ZDCP
        507, -- module_index: 1, name: L1_CastorHighJet_MinimumBiasHF1_OR_BptxAND
        419, -- module_index: 2, name: L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        423, -- module_index: 3, name: L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        479, -- module_index: 4, name: L1_NotETT80_MinimumBiasHF1_OR_BptxAND
        449, -- module_index: 5, name: L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        510, -- module_index: 6, name: L1_CastorHighJet_OR_MinimumBiasHF1_AND_BptxAND
        193, -- module_index: 7, name: L1_SingleMu3_MinimumBiasHF1_AND_BptxAND
        487, -- module_index: 8, name: L1_NotETT95_MinimumBiasHF1_AND_BptxAND
        480, -- module_index: 9, name: L1_NotETT95_MinimumBiasHF1_OR_BptxAND
        195, -- module_index: 10, name: L1_SingleMu7_MinimumBiasHF1_AND_BptxAND
        501, -- module_index: 11, name: L1_CastorMediumJet_SingleMu0_MinimumBiasHF1_OR_BptxAND
        488, -- module_index: 12, name: L1_NotETT100_MinimumBiasHF1_AND_BptxAND
        498, -- module_index: 13, name: L1_CastorMediumJet_MinimumBiasHF1_OR_BptxAND
        486, -- module_index: 14, name: L1_NotETT80_MinimumBiasHF1_AND_BptxAND
        243, -- module_index: 15, name: L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND
        493, -- module_index: 16, name: L1_NotETT150_MinimumBiasHF1_OR_BptxAND
        491, -- module_index: 17, name: L1_NotETT110_MinimumBiasHF1_OR_BptxAND
        145, -- module_index: 18, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_1
        421, -- module_index: 19, name: L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        194, -- module_index: 20, name: L1_SingleMu5_MinimumBiasHF1_AND_BptxAND
        146, -- module_index: 21, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_2
        489, -- module_index: 22, name: L1_NotETT150_MinimumBiasHF1_AND_BptxAND
        444, -- module_index: 23, name: L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND
        420, -- module_index: 24, name: L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        197, -- module_index: 25, name: L1_SingleMu16_MinimumBiasHF1_AND_BptxAND
        502, -- module_index: 26, name: L1_CastorMediumJet_SingleEG5_MinimumBiasHF1_OR_BptxAND
        446, -- module_index: 27, name: L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        447, -- module_index: 28, name: L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        148, -- module_index: 29, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_1
        490, -- module_index: 30, name: L1_NotETT200_MinimumBiasHF1_AND_BptxAND
        147, -- module_index: 31, name: L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_4
        149, -- module_index: 32, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_2
        485, -- module_index: 33, name: L1_NotETT20_MinimumBiasHF1_AND_BptxAND
        196, -- module_index: 34, name: L1_SingleMu12_MinimumBiasHF1_AND_BptxAND
        150, -- module_index: 35, name: L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_4
        478, -- module_index: 36, name: L1_NotETT20_MinimumBiasHF1_OR_BptxAND
        422, -- module_index: 37, name: L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        448, -- module_index: 38, name: L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        433, -- module_index: 39, name: L1_ETT5_MinimumBiasHF1_OR_BptxAND
        157, -- module_index: 40, name: L1_MinimumBiasHF1_AND_OR_ETT10_BptxAND
        264, -- module_index: 41, name: L1_SingleJet36_BptxAND
        267, -- module_index: 42, name: L1_SingleJet48_BptxAND
         59, -- module_index: 43, name: L1_SingleJet60er2p5
        272, -- module_index: 44, name: L1_SingleJet80_BptxAND
         43, -- module_index: 45, name: L1_DoubleEG2
        275, -- module_index: 46, name: L1_SingleJet16_FWD_BptxAND
        279, -- module_index: 47, name: L1_SingleJet56_FWD_BptxAND
          7, -- module_index: 48, name: L1_SingleMu0_BMTF
         15, -- module_index: 49, name: L1_SingleMu12
        186, -- module_index: 50, name: L1_SingleMu16_BptxAND
         20, -- module_index: 51, name: L1_SingleMu22
         11, -- module_index: 52, name: L1_SingleMu3Open_BptxAND
          2, -- module_index: 53, name: L1_SingleMuCosmics_OMTF
         31, -- module_index: 54, name: L1_DoubleMu0_SQ_OS
        240, -- module_index: 55, name: L1_DoubleMuOpen_MaxDr3p5
        392, -- module_index: 56, name: L1_SingleEG15_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
        380, -- module_index: 57, name: L1_SingleEG7_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================