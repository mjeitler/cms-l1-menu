-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
        508, -- module_index: 0, name: L1_CastorHighJet_NotMinimumBiasHF2_AND_BptxAND
        401, -- module_index: 1, name: L1_DoubleEG5_NotMinimumBiasHF2_OR_BptxAND
        245, -- module_index: 2, name: L1_DoubleMu0_NotMinimumBiasHF2_OR_BptxAND
        454, -- module_index: 3, name: L1_ETT50_ETTAsym60_MinimumBiasHF2_OR_BptxAND
        457, -- module_index: 4, name: L1_ETT50_ETTAsym80_MinimumBiasHF2_OR_BptxAND
        466, -- module_index: 5, name: L1_ETT65_ETTAsym70_MinimumBiasHF2_OR_BptxAND
        424, -- module_index: 6, name: L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        462, -- module_index: 7, name: L1_ETT50_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        482, -- module_index: 8, name: L1_NotETT80_MinimumBiasHF2_OR_BptxAND
        359, -- module_index: 9, name: L1_SingleEG5_NotMinimumBiasHF2_OR_BptxAND
        361, -- module_index: 10, name: L1_SingleEG5_NotMinimumBiasHF2_AND_BptxAND
        511, -- module_index: 11, name: L1_CastorHighJet_OR_MinimumBiasHF2_AND_BptxAND
        461, -- module_index: 12, name: L1_ETT50_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        200, -- module_index: 13, name: L1_SingleMu0_NotMinimumBiasHF2_OR_BptxAND
        459, -- module_index: 14, name: L1_ETT50_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        244, -- module_index: 15, name: L1_DoubleMuOpen_NotMinimumBiasHF2_OR_BptxAND
        400, -- module_index: 16, name: L1_DoubleEG2_NotMinimumBiasHF2_OR_BptxAND
        483, -- module_index: 17, name: L1_NotETT95_MinimumBiasHF2_OR_BptxAND
        425, -- module_index: 18, name: L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        202, -- module_index: 19, name: L1_SingleMuOpen_NotMinimumBiasHF2_AND_BptxAND
        458, -- module_index: 20, name: L1_ETT50_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        451, -- module_index: 21, name: L1_ETT50_ETTAsym40_MinimumBiasHF2_OR_BptxAND
        467, -- module_index: 22, name: L1_ETT65_ETTAsym80_MinimumBiasHF2_OR_BptxAND
        246, -- module_index: 23, name: L1_DoubleMu0_NotMinimumBiasHF2_AND_BptxAND
        427, -- module_index: 24, name: L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        492, -- module_index: 25, name: L1_NotETT110_MinimumBiasHF2_OR_BptxAND
        203, -- module_index: 26, name: L1_SingleMu0_NotMinimumBiasHF2_AND_BptxAND
        452, -- module_index: 27, name: L1_ETT50_ETTAsym50_MinimumBiasHF2_OR_BptxAND
        201, -- module_index: 28, name: L1_SingleMu3_NotMinimumBiasHF2_OR_BptxAND
        499, -- module_index: 29, name: L1_CastorMediumJet_NotMinimumBiasHF2_OR_BptxAND
         27, -- module_index: 30, name: L1_DoubleMuOpen_NotMinimumBiasHF2_AND_BptxAND
        441, -- module_index: 31, name: L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        500, -- module_index: 32, name: L1_CastorMediumJet_NotMinimumBiasHF2_AND_BptxAND
        426, -- module_index: 33, name: L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        494, -- module_index: 34, name: L1_NotETT150_MinimumBiasHF2_OR_BptxAND
        360, -- module_index: 35, name: L1_SingleEG3_NotMinimumBiasHF2_AND_BptxAND
        428, -- module_index: 36, name: L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        509, -- module_index: 37, name: L1_CastorHighJet_NotMinimumBiasHF2_OR_BptxAND
        199, -- module_index: 38, name: L1_SingleMuOpen_NotMinimumBiasHF2_OR_BptxAND
        403, -- module_index: 39, name: L1_DoubleEG5_NotMinimumBiasHF2_AND_BptxAND
        402, -- module_index: 40, name: L1_DoubleEG2_NotMinimumBiasHF2_AND_BptxAND
        464, -- module_index: 41, name: L1_ETT60_ETTAsym60_MinimumBiasHF2_OR_BptxAND
        460, -- module_index: 42, name: L1_ETT50_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        456, -- module_index: 43, name: L1_ETT50_ETTAsym70_MinimumBiasHF2_OR_BptxAND
        358, -- module_index: 44, name: L1_SingleEG3_NotMinimumBiasHF2_OR_BptxAND
        481, -- module_index: 45, name: L1_NotETT20_MinimumBiasHF2_OR_BptxAND
        269, -- module_index: 46, name: L1_SingleJet60_BptxAND
         48, -- module_index: 47, name: L1_SingleJet8
        399, -- module_index: 48, name: L1_DoubleEG10_BptxAND
        397, -- module_index: 49, name: L1_DoubleEG5_BptxAND
        398, -- module_index: 50, name: L1_DoubleEG8_BptxAND
        277, -- module_index: 51, name: L1_SingleJet36_FWD_BptxAND
        274, -- module_index: 52, name: L1_SingleJet8_FWD_BptxAND
          9, -- module_index: 53, name: L1_SingleMu0_EMTF
         22, -- module_index: 54, name: L1_SingleMu22_OMTF
          1, -- module_index: 55, name: L1_SingleMuCosmics_BMTF
        225, -- module_index: 56, name: L1_SingleMu7_SingleEG10_BptxAND
        232, -- module_index: 57, name: L1_DoubleMuOpen_BptxAND
        233, -- module_index: 58, name: L1_DoubleMuOpen_OS_BptxAND
        384, -- module_index: 59, name: L1_SingleEG12_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
        394, -- module_index: 60, name: L1_SingleEG15_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================