-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
         84, -- module_index: 0, name: L1_ETMHF100
         77, -- module_index: 1, name: L1_ETT5
        407, -- module_index: 2, name: L1_ETTAsym40
        409, -- module_index: 3, name: L1_ETTAsym60
        411, -- module_index: 4, name: L1_ETTAsym80
         70, -- module_index: 5, name: L1_HTT200er
         72, -- module_index: 6, name: L1_HTT360er
        472, -- module_index: 7, name: L1_ETT35_NotETT80_BptxAND
        475, -- module_index: 8, name: L1_ETT50_NotETT120_BptxAND
        465, -- module_index: 9, name: L1_ETT60_ETTAsym65_MinimumBiasHF2_OR_BptxAND
         39, -- module_index: 10, name: L1_SingleEG10er2p5
        370, -- module_index: 11, name: L1_SingleEG15_Centrality_50_100_BptxAND
        304, -- module_index: 12, name: L1_SingleJet56_Centrality_50_100_BptxAND
        337, -- module_index: 13, name: L1_DoubleJet16And12_MidEta2p7_Centrality_50_100_BptxAND
        371, -- module_index: 14, name: L1_SingleEG21_Centrality_50_100_BptxAND
        305, -- module_index: 15, name: L1_SingleJet60_Centrality_50_100_BptxAND
        296, -- module_index: 16, name: L1_SingleJet16_Centrality_50_100_BptxAND
        336, -- module_index: 17, name: L1_DoubleJet16And8_MidEta2p7_Centrality_50_100_BptxAND
        251, -- module_index: 18, name: L1_DoubleMuOpen_Centrality_50_100_BptxAND
        338, -- module_index: 19, name: L1_DoubleJet20And8_MidEta2p7_Centrality_50_100_BptxAND
        369, -- module_index: 20, name: L1_SingleEG7_Centrality_50_100_BptxAND
        302, -- module_index: 21, name: L1_SingleJet44_Centrality_50_100_BptxAND
        306, -- module_index: 22, name: L1_SingleJet64_Centrality_50_100_BptxAND
        368, -- module_index: 23, name: L1_SingleEG3_Centrality_50_100_BptxAND
        339, -- module_index: 24, name: L1_DoubleJet20And12_MidEta2p7_Centrality_50_100_BptxAND
        295, -- module_index: 25, name: L1_SingleJet8_Centrality_50_100_BptxAND
        297, -- module_index: 26, name: L1_SingleJet24_Centrality_50_100_BptxAND
        303, -- module_index: 27, name: L1_SingleJet48_Centrality_50_100_BptxAND
        300, -- module_index: 28, name: L1_SingleJet36_Centrality_50_100_BptxAND
        298, -- module_index: 29, name: L1_SingleJet28_Centrality_50_100_BptxAND
        301, -- module_index: 30, name: L1_SingleJet40_Centrality_50_100_BptxAND
        299, -- module_index: 31, name: L1_SingleJet32_Centrality_50_100_BptxAND
        340, -- module_index: 32, name: L1_DoubleJet28And16_MidEta2p7_Centrality_50_100_BptxAND
        325, -- module_index: 33, name: L1_DoubleJet16And12_MidEta2p7_BptxAND
        324, -- module_index: 34, name: L1_DoubleJet16And8_MidEta2p7_BptxAND
        327, -- module_index: 35, name: L1_DoubleJet20And12_MidEta2p7_BptxAND
        326, -- module_index: 36, name: L1_DoubleJet20And8_MidEta2p7_BptxAND
        328, -- module_index: 37, name: L1_DoubleJet28And16_MidEta2p7_BptxAND
         65, -- module_index: 38, name: L1_SingleJet120_FWD3p0
        278, -- module_index: 39, name: L1_SingleJet44_FWD_BptxAND
          6, -- module_index: 40, name: L1_SingleMu0
          8, -- module_index: 41, name: L1_SingleMu0_OMTF
         10, -- module_index: 42, name: L1_SingleMu3
          3, -- module_index: 43, name: L1_SingleMuCosmics_EMTF
         30, -- module_index: 44, name: L1_DoubleMu0_SQ
        239, -- module_index: 45, name: L1_DoubleMuOpen_MaxDr2p0_OS_BptxAND
        387, -- module_index: 46, name: L1_SingleEG12_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
        379, -- module_index: 47, name: L1_SingleEG7_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================