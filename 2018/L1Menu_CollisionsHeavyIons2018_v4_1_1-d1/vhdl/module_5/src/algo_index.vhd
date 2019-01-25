-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        393, -- module_index: 0, name: L1_SingleEG15_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
        381, -- module_index: 1, name: L1_SingleEG7_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
        255, -- module_index: 2, name: L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
         27, -- module_index: 3, name: L1_DoubleMuOpen_NotMinimumBiasHF2_AND_BptxAND
        244, -- module_index: 4, name: L1_DoubleMuOpen_NotMinimumBiasHF2_OR_BptxAND
        236, -- module_index: 5, name: L1_DoubleMu10_BptxAND
        248, -- module_index: 6, name: L1_DoubleMuOpen_Centrality_10_100_BptxAND
        249, -- module_index: 7, name: L1_DoubleMuOpen_Centrality_30_100_BptxAND
        250, -- module_index: 8, name: L1_DoubleMuOpen_Centrality_40_100_BptxAND
        251, -- module_index: 9, name: L1_DoubleMuOpen_Centrality_50_100_BptxAND
        233, -- module_index: 10, name: L1_DoubleMuOpen_OS_BptxAND
        228, -- module_index: 11, name: L1_SingleMu12_SingleEG7_BptxAND
        216, -- module_index: 12, name: L1_SingleMu3_SingleEG12_BptxAND
        219, -- module_index: 13, name: L1_SingleMu3_SingleEG30_BptxAND
        212, -- module_index: 14, name: L1_SingleMu3_SingleJet28_MidEta2p7_BptxAND
        213, -- module_index: 15, name: L1_SingleMu3_SingleJet32_MidEta2p7_BptxAND
        220, -- module_index: 16, name: L1_SingleMu5_SingleEG10_BptxAND
        222, -- module_index: 17, name: L1_SingleMu5_SingleEG15_BptxAND
        226, -- module_index: 18, name: L1_SingleMu7_SingleEG12_BptxAND
        227, -- module_index: 19, name: L1_SingleMu7_SingleEG15_BptxAND
        224, -- module_index: 20, name: L1_SingleMu7_SingleEG7_BptxAND
        217, -- module_index: 21, name: L1_SingleMuOpen_SingleEG15_BptxAND
        209, -- module_index: 22, name: L1_SingleMuOpen_SingleJet44_MidEta2p7_BptxAND
        210, -- module_index: 23, name: L1_SingleMuOpen_SingleJet56_MidEta2p7_BptxAND
        501, -- module_index: 24, name: L1_CastorMediumJet_SingleMu0_MinimumBiasHF1_OR_BptxAND
        498, -- module_index: 25, name: L1_CastorMediumJet_MinimumBiasHF1_OR_BptxAND
        196, -- module_index: 26, name: L1_SingleMu12_MinimumBiasHF1_AND_BptxAND
        197, -- module_index: 27, name: L1_SingleMu16_MinimumBiasHF1_AND_BptxAND
        181, -- module_index: 28, name: L1_SingleMu0_BptxAND
          5, -- module_index: 29, name: L1_SingleMu0_DQ
          8, -- module_index: 30, name: L1_SingleMu0_OMTF
        185, -- module_index: 31, name: L1_SingleMu12_BptxAND
        186, -- module_index: 32, name: L1_SingleMu16_BptxAND
         20, -- module_index: 33, name: L1_SingleMu22
         23, -- module_index: 34, name: L1_SingleMu22_EMTF
         10, -- module_index: 35, name: L1_SingleMu3
         11, -- module_index: 36, name: L1_SingleMu3Open_BptxAND
          1, -- module_index: 37, name: L1_SingleMuCosmics_BMTF
          2, -- module_index: 38, name: L1_SingleMuCosmics_OMTF
        399, -- module_index: 39, name: L1_DoubleEG10_BptxAND
        325, -- module_index: 40, name: L1_DoubleJet16And12_MidEta2p7_BptxAND
        337, -- module_index: 41, name: L1_DoubleJet16And12_MidEta2p7_Centrality_50_100_BptxAND
        324, -- module_index: 42, name: L1_DoubleJet16And8_MidEta2p7_BptxAND
        336, -- module_index: 43, name: L1_DoubleJet16And8_MidEta2p7_Centrality_50_100_BptxAND
        327, -- module_index: 44, name: L1_DoubleJet20And12_MidEta2p7_BptxAND
        339, -- module_index: 45, name: L1_DoubleJet20And12_MidEta2p7_Centrality_50_100_BptxAND
        326, -- module_index: 46, name: L1_DoubleJet20And8_MidEta2p7_BptxAND
        338, -- module_index: 47, name: L1_DoubleJet20And8_MidEta2p7_Centrality_50_100_BptxAND
        328, -- module_index: 48, name: L1_DoubleJet28And16_MidEta2p7_BptxAND
        340, -- module_index: 49, name: L1_DoubleJet28And16_MidEta2p7_Centrality_50_100_BptxAND
        382, -- module_index: 50, name: L1_SingleEG12_SingleJet32_MidEta2p7_BptxAND
        383, -- module_index: 51, name: L1_SingleEG12_SingleJet40_MidEta2p7_BptxAND
        389, -- module_index: 52, name: L1_SingleEG15_SingleJet44_MidEta2p7_BptxAND
        390, -- module_index: 53, name: L1_SingleEG15_SingleJet56_MidEta2p7_BptxAND
        391, -- module_index: 54, name: L1_SingleEG15_SingleJet60_MidEta2p7_BptxAND
        374, -- module_index: 55, name: L1_SingleEG5_SingleJet32_MidEta2p7_BptxAND
        377, -- module_index: 56, name: L1_SingleEG7_SingleJet40_MidEta2p7_BptxAND
         65, -- module_index: 57, name: L1_SingleJet120_FWD3p0
        309, -- module_index: 58, name: L1_SingleJet16_FWD_Centrality_30_100_BptxAND
        310, -- module_index: 59, name: L1_SingleJet28_FWD_Centrality_30_100_BptxAND
        277, -- module_index: 60, name: L1_SingleJet36_FWD_BptxAND
        279, -- module_index: 61, name: L1_SingleJet56_FWD_BptxAND
        322, -- module_index: 62, name: L1_SingleJet64_FWD_Centrality_50_100_BptxAND
        361, -- module_index: 63, name: L1_SingleEG5_NotMinimumBiasHF2_AND_BptxAND
        359, -- module_index: 64, name: L1_SingleEG5_NotMinimumBiasHF2_OR_BptxAND
         39, -- module_index: 65, name: L1_SingleEG10er2p5
        349, -- module_index: 66, name: L1_SingleEG21_BptxAND
        344, -- module_index: 67, name: L1_SingleEG3_BptxAND
        354, -- module_index: 68, name: L1_SingleIsoEG12_BptxAND
         52, -- module_index: 69, name: L1_SingleJet120
        261, -- module_index: 70, name: L1_SingleJet24_BptxAND
        286, -- module_index: 71, name: L1_SingleJet32_Centrality_30_100_BptxAND
        287, -- module_index: 72, name: L1_SingleJet36_Centrality_30_100_BptxAND
        302, -- module_index: 73, name: L1_SingleJet44_Centrality_50_100_BptxAND
        291, -- module_index: 74, name: L1_SingleJet56_Centrality_30_100_BptxAND
        270, -- module_index: 75, name: L1_SingleJet64_BptxAND
        259, -- module_index: 76, name: L1_SingleJet8_BptxAND
        453, -- module_index: 77, name: L1_ETT50_ETTAsym55_MinimumBiasHF2_OR_BptxAND
        457, -- module_index: 78, name: L1_ETT50_ETTAsym80_MinimumBiasHF2_OR_BptxAND
        462, -- module_index: 79, name: L1_ETT50_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        428, -- module_index: 80, name: L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND
        465, -- module_index: 81, name: L1_ETT60_ETTAsym65_MinimumBiasHF2_OR_BptxAND
        442, -- module_index: 82, name: L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND
        473, -- module_index: 83, name: L1_ETT40_NotETT95_BptxAND
        438, -- module_index: 84, name: L1_ETT5_ETTAsym60_BptxAND
        485, -- module_index: 85, name: L1_NotETT20_MinimumBiasHF1_AND_BptxAND
        478, -- module_index: 86, name: L1_NotETT20_MinimumBiasHF1_OR_BptxAND
        507, -- module_index: 87, name: L1_CastorHighJet_MinimumBiasHF1_OR_BptxAND
        510, -- module_index: 88, name: L1_CastorHighJet_OR_MinimumBiasHF1_AND_BptxAND
        508, -- module_index: 89, name: L1_CastorHighJet_NotMinimumBiasHF2_AND_BptxAND
        511, -- module_index: 90, name: L1_CastorHighJet_OR_MinimumBiasHF2_AND_BptxAND
        509, -- module_index: 91, name: L1_CastorHighJet_NotMinimumBiasHF2_OR_BptxAND
        500, -- module_index: 92, name: L1_CastorMediumJet_NotMinimumBiasHF2_AND_BptxAND
        499, -- module_index: 93, name: L1_CastorMediumJet_NotMinimumBiasHF2_OR_BptxAND
        175, -- module_index: 94, name: L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
         84, -- module_index: 95, name: L1_ETMHF100
         71, -- module_index: 96, name: L1_HTT280er
    others => 0
);

-- ========================================================