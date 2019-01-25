-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 20c66d59-117a-430e-becd-61bae7a6e5a1

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        198, -- module_index: 0, name: L1_DoubleMu0_SQ
        195, -- module_index: 1, name: L1_DoubleMu10
        193, -- module_index: 2, name: L1_DoubleMuOpen_OS
        196, -- module_index: 3, name: L1_DoubleMu_15_5_SQ
        177, -- module_index: 4, name: L1_SingleMuOpen_NotBptxOR_3BX
        267, -- module_index: 5, name: L1_ETT70_BptxAND
        119, -- module_index: 6, name: L1_SingleJet8_BptxAND
        268, -- module_index: 7, name: L1_ETT75_BptxAND
        269, -- module_index: 8, name: L1_ETT80_BptxAND
        270, -- module_index: 9, name: L1_ETT85_BptxAND
        235, -- module_index: 10, name: L1_ZeroBias
        273, -- module_index: 11, name: L1_ETT100_BptxAND
        228, -- module_index: 12, name: L1_NotBptxOR
        227, -- module_index: 13, name: L1_AlwaysTrue
        265, -- module_index: 14, name: L1_ETT50_BptxAND
        272, -- module_index: 15, name: L1_ETT95_BptxAND
        180, -- module_index: 16, name: L1_SingleJet43er2p7_NotBptxOR_3BX
         66, -- module_index: 17, name: L1_SingleEG2_BptxAND
        251, -- module_index: 18, name: L1_FirstBunchInTrain
        238, -- module_index: 19, name: L1_BptxOR
        181, -- module_index: 20, name: L1_SingleJet46er2p7_NotBptxOR_3BX
          1, -- module_index: 21, name: L1_SingleMuOpen
        271, -- module_index: 22, name: L1_ETT90_BptxAND
        179, -- module_index: 23, name: L1_SingleJet20er2p7_NotBptxOR_3BX
        178, -- module_index: 24, name: L1_SingleJet20er2p7_NotBptxOR
        224, -- module_index: 25, name: L1_IsolatedBunch
        176, -- module_index: 26, name: L1_SingleMuOpen_NotBptxOR
        226, -- module_index: 27, name: L1_MinimumBiasHF0_OR_BptxAND
        252, -- module_index: 28, name: L1_FirstBunchAfterTrain
        274, -- module_index: 29, name: L1_ETT110_BptxAND
        147, -- module_index: 30, name: L1_SingleJet12_BptxAND
        264, -- module_index: 31, name: L1_ETT40_BptxAND
        225, -- module_index: 32, name: L1_MinimumBiasHF0_AND_BptxAND
        230, -- module_index: 33, name: L1_ZeroBias_copy
        266, -- module_index: 34, name: L1_ETT60_BptxAND
         46, -- module_index: 35, name: L1_SingleMu0
         12, -- module_index: 36, name: L1_SingleMu11_LowQ
         16, -- module_index: 37, name: L1_SingleMu16
         18, -- module_index: 38, name: L1_SingleMu20
         23, -- module_index: 39, name: L1_SingleMu25
         24, -- module_index: 40, name: L1_SingleMu30
         10, -- module_index: 41, name: L1_SingleMu7
          2, -- module_index: 42, name: L1_SingleMuCosmics_BMTF
          3, -- module_index: 43, name: L1_SingleMuCosmics_OMTF
         98, -- module_index: 44, name: L1_DoubleEG_10_5
         99, -- module_index: 45, name: L1_DoubleEG_15_5
        102, -- module_index: 46, name: L1_DoubleEG_20_18
        104, -- module_index: 47, name: L1_DoubleEG_22_12
        106, -- module_index: 48, name: L1_DoubleEG_23_10
        108, -- module_index: 49, name: L1_DoubleEG_25_12
        110, -- module_index: 50, name: L1_DoubleEG_25_14
        156, -- module_index: 51, name: L1_DoubleJet112er2p7
        158, -- module_index: 52, name: L1_DoubleJet150er2p7
        160, -- module_index: 53, name: L1_DoubleJet16And8er2p7
        161, -- module_index: 54, name: L1_DoubleJet20And8er2p7
        151, -- module_index: 55, name: L1_DoubleJet40er2p7
        153, -- module_index: 56, name: L1_DoubleJet60er2p7
        150, -- module_index: 57, name: L1_DoubleJet8er2p7
        112, -- module_index: 58, name: L1_DoubleLooseIsoEG24er2p1
        128, -- module_index: 59, name: L1_SingleJet20_FWD
        129, -- module_index: 60, name: L1_SingleJet40_FWD
        144, -- module_index: 61, name: L1_SingleJet60_FWD
         51, -- module_index: 62, name: L1_SingleEG10
         52, -- module_index: 63, name: L1_SingleEG15
         67, -- module_index: 64, name: L1_SingleEG21
         55, -- module_index: 65, name: L1_SingleEG26
         57, -- module_index: 66, name: L1_SingleEG30
         59, -- module_index: 67, name: L1_SingleEG34
         61, -- module_index: 68, name: L1_SingleEG38
         63, -- module_index: 69, name: L1_SingleEG42
         50, -- module_index: 70, name: L1_SingleEG5
         69, -- module_index: 71, name: L1_SingleIsoEG18
         71, -- module_index: 72, name: L1_SingleIsoEG22
         73, -- module_index: 73, name: L1_SingleIsoEG26
         75, -- module_index: 74, name: L1_SingleIsoEG30
         77, -- module_index: 75, name: L1_SingleIsoEG34
         79, -- module_index: 76, name: L1_SingleIsoEG36
         81, -- module_index: 77, name: L1_SingleIsoEG38
        136, -- module_index: 78, name: L1_SingleJet120
        138, -- module_index: 79, name: L1_SingleJet150
        139, -- module_index: 80, name: L1_SingleJet160
        141, -- module_index: 81, name: L1_SingleJet180
        142, -- module_index: 82, name: L1_SingleJet200
        124, -- module_index: 83, name: L1_SingleJet28
        133, -- module_index: 84, name: L1_SingleJet35
        118, -- module_index: 85, name: L1_SingleJet44
        126, -- module_index: 86, name: L1_SingleJet50
        134, -- module_index: 87, name: L1_SingleJet60
        135, -- module_index: 88, name: L1_SingleJet90
        277, -- module_index: 89, name: L1_Totem2
        279, -- module_index: 90, name: L1_Totem4
        240, -- module_index: 91, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================