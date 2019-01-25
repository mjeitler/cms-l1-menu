-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_0

-- Unique ID of L1 Trigger Menu:
-- 7d0ea060-750b-4a39-a23d-4f78198b8446

-- Unique ID of firmware implementation:
-- d44505d2-7dee-45fa-a7e6-a5c3d0862858

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        387, -- module_index: 0, name: L1_SingleEG12_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
        379, -- module_index: 1, name: L1_SingleEG7_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
        241, -- module_index: 2, name: L1_DoubleMuOpen_MaxDr3p5_BptxAND
        312, -- module_index: 3, name: L1_SingleJet44_FWD_Centrality_30_100_BptxAND
        280, -- module_index: 4, name: L1_SingleJet64_FWD_BptxAND
        502, -- module_index: 5, name: L1_CastorMediumJet_SingleEG5_MinimumBiasHF1_OR_BptxAND
        347, -- module_index: 6, name: L1_SingleEG12_BptxAND
         34, -- module_index: 7, name: L1_SingleEG3
         36, -- module_index: 8, name: L1_SingleEG50
        353, -- module_index: 9, name: L1_SingleIsoEG7_BptxAND
         54, -- module_index: 10, name: L1_SingleJet200
        298, -- module_index: 11, name: L1_SingleJet28_Centrality_50_100_BptxAND
        264, -- module_index: 12, name: L1_SingleJet36_BptxAND
        266, -- module_index: 13, name: L1_SingleJet44_BptxAND
        268, -- module_index: 14, name: L1_SingleJet56_BptxAND
        305, -- module_index: 15, name: L1_SingleJet60_Centrality_50_100_BptxAND
         48, -- module_index: 16, name: L1_SingleJet8
        448, -- module_index: 17, name: L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        420, -- module_index: 18, name: L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        157, -- module_index: 19, name: L1_MinimumBiasHF1_AND_OR_ETT10_BptxAND
        449, -- module_index: 20, name: L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND
        451, -- module_index: 21, name: L1_ETT50_ETTAsym40_MinimumBiasHF2_OR_BptxAND
        458, -- module_index: 22, name: L1_ETT50_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        424, -- module_index: 23, name: L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND
        454, -- module_index: 24, name: L1_ETT50_ETTAsym60_MinimumBiasHF2_OR_BptxAND
        460, -- module_index: 25, name: L1_ETT50_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        426, -- module_index: 26, name: L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND
        455, -- module_index: 27, name: L1_ETT50_ETTAsym65_MinimumBiasHF2_OR_BptxAND
        441, -- module_index: 28, name: L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        466, -- module_index: 29, name: L1_ETT65_ETTAsym70_MinimumBiasHF2_OR_BptxAND
        446, -- module_index: 30, name: L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        422, -- module_index: 31, name: L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND
        447, -- module_index: 32, name: L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        423, -- module_index: 33, name: L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND
        474, -- module_index: 34, name: L1_ETT45_NotETT110_BptxAND
        434, -- module_index: 35, name: L1_ETT5_NotMinimumBiasHF2_OR
        419, -- module_index: 36, name: L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND
        488, -- module_index: 37, name: L1_NotETT100_MinimumBiasHF1_AND_BptxAND
        490, -- module_index: 38, name: L1_NotETT200_MinimumBiasHF1_AND_BptxAND
        483, -- module_index: 39, name: L1_NotETT95_MinimumBiasHF2_OR_BptxAND
         70, -- module_index: 40, name: L1_HTT200er
    others => 0
);

-- ========================================================