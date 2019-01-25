-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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
        392, -- module_index: 0, name: L1_SingleEG15_SingleJet28_MidEta2p7_MinDr0p4_BptxAND
        380, -- module_index: 1, name: L1_SingleEG7_SingleJet56_MidEta2p7_MinDr0p4_BptxAND
        253, -- module_index: 2, name: L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        174, -- module_index: 3, name: L1_Centrality_20_100_MinimumBiasHF1_AND_BptxAND
        254, -- module_index: 4, name: L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        243, -- module_index: 5, name: L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND
        246, -- module_index: 6, name: L1_DoubleMu0_NotMinimumBiasHF2_AND_BptxAND
        245, -- module_index: 7, name: L1_DoubleMu0_NotMinimumBiasHF2_OR_BptxAND
         29, -- module_index: 8, name: L1_DoubleMu0
        235, -- module_index: 9, name: L1_DoubleMu0_BptxAND
         30, -- module_index: 10, name: L1_DoubleMu0_SQ
         31, -- module_index: 11, name: L1_DoubleMu0_SQ_OS
        232, -- module_index: 12, name: L1_DoubleMuOpen_BptxAND
        234, -- module_index: 13, name: L1_DoubleMuOpen_SS_BptxAND
        218, -- module_index: 14, name: L1_SingleMu3_SingleEG20_BptxAND
        214, -- module_index: 15, name: L1_SingleMu3_SingleJet40_MidEta2p7_BptxAND
        221, -- module_index: 16, name: L1_SingleMu5_SingleEG12_BptxAND
        223, -- module_index: 17, name: L1_SingleMu5_SingleEG20_BptxAND
        225, -- module_index: 18, name: L1_SingleMu7_SingleEG10_BptxAND
        208, -- module_index: 19, name: L1_SingleMuOpen_SingleJet28_MidEta2p7_BptxAND
        211, -- module_index: 20, name: L1_SingleMuOpen_SingleJet64_MidEta2p7_BptxAND
        203, -- module_index: 21, name: L1_SingleMu0_NotMinimumBiasHF2_AND_BptxAND
        200, -- module_index: 22, name: L1_SingleMu0_NotMinimumBiasHF2_OR_BptxAND
        193, -- module_index: 23, name: L1_SingleMu3_MinimumBiasHF1_AND_BptxAND
        201, -- module_index: 24, name: L1_SingleMu3_NotMinimumBiasHF2_OR_BptxAND
        194, -- module_index: 25, name: L1_SingleMu5_MinimumBiasHF1_AND_BptxAND
        195, -- module_index: 26, name: L1_SingleMu7_MinimumBiasHF1_AND_BptxAND
        205, -- module_index: 27, name: L1_SingleMuOpen_Centrality_70_100_MinimumBiasHF1_AND_BptxAND
        206, -- module_index: 28, name: L1_SingleMuOpen_Centrality_80_100_MinimumBiasHF1_AND_BptxAND
        202, -- module_index: 29, name: L1_SingleMuOpen_NotMinimumBiasHF2_AND_BptxAND
        199, -- module_index: 30, name: L1_SingleMuOpen_NotMinimumBiasHF2_OR_BptxAND
          6, -- module_index: 31, name: L1_SingleMu0
          7, -- module_index: 32, name: L1_SingleMu0_BMTF
          9, -- module_index: 33, name: L1_SingleMu0_EMTF
         15, -- module_index: 34, name: L1_SingleMu12
         21, -- module_index: 35, name: L1_SingleMu22_BMTF
         22, -- module_index: 36, name: L1_SingleMu22_OMTF
        182, -- module_index: 37, name: L1_SingleMu3_BptxAND
        190, -- module_index: 38, name: L1_SingleMu3_Centrality_70_100_BptxAND
        192, -- module_index: 39, name: L1_SingleMu3_Centrality_80_100_BptxAND
         12, -- module_index: 40, name: L1_SingleMu5
        183, -- module_index: 41, name: L1_SingleMu5_BptxAND
         14, -- module_index: 42, name: L1_SingleMu7
        184, -- module_index: 43, name: L1_SingleMu7_BptxAND
          0, -- module_index: 44, name: L1_SingleMuCosmics
          3, -- module_index: 45, name: L1_SingleMuCosmics_EMTF
          4, -- module_index: 46, name: L1_SingleMuOpen
        180, -- module_index: 47, name: L1_SingleMuOpen_BptxAND
        189, -- module_index: 48, name: L1_SingleMuOpen_Centrality_70_100_BptxAND
        191, -- module_index: 49, name: L1_SingleMuOpen_Centrality_80_100_BptxAND
        402, -- module_index: 50, name: L1_DoubleEG2_NotMinimumBiasHF2_AND_BptxAND
        400, -- module_index: 51, name: L1_DoubleEG2_NotMinimumBiasHF2_OR_BptxAND
        403, -- module_index: 52, name: L1_DoubleEG5_NotMinimumBiasHF2_AND_BptxAND
        401, -- module_index: 53, name: L1_DoubleEG5_NotMinimumBiasHF2_OR_BptxAND
         43, -- module_index: 54, name: L1_DoubleEG2
        396, -- module_index: 55, name: L1_DoubleEG2_BptxAND
         44, -- module_index: 56, name: L1_DoubleEG5
        397, -- module_index: 57, name: L1_DoubleEG5_BptxAND
        398, -- module_index: 58, name: L1_DoubleEG8_BptxAND
        331, -- module_index: 59, name: L1_DoubleJet16And12_MidEta2p7_Centrality_30_100_BptxAND
        330, -- module_index: 60, name: L1_DoubleJet16And8_MidEta2p7_Centrality_30_100_BptxAND
        333, -- module_index: 61, name: L1_DoubleJet20And12_MidEta2p7_Centrality_30_100_BptxAND
        332, -- module_index: 62, name: L1_DoubleJet20And8_MidEta2p7_Centrality_30_100_BptxAND
        334, -- module_index: 63, name: L1_DoubleJet28And16_MidEta2p7_Centrality_30_100_BptxAND
        388, -- module_index: 64, name: L1_SingleEG15_SingleJet28_MidEta2p7_BptxAND
        373, -- module_index: 65, name: L1_SingleEG5_SingleJet28_MidEta2p7_BptxAND
        375, -- module_index: 66, name: L1_SingleEG5_SingleJet40_MidEta2p7_BptxAND
        376, -- module_index: 67, name: L1_SingleEG7_SingleJet32_MidEta2p7_BptxAND
        275, -- module_index: 68, name: L1_SingleJet16_FWD_BptxAND
        317, -- module_index: 69, name: L1_SingleJet16_FWD_Centrality_50_100_BptxAND
        276, -- module_index: 70, name: L1_SingleJet28_FWD_BptxAND
        318, -- module_index: 71, name: L1_SingleJet28_FWD_Centrality_50_100_BptxAND
         62, -- module_index: 72, name: L1_SingleJet35_FWD3p0
        320, -- module_index: 73, name: L1_SingleJet44_FWD_Centrality_50_100_BptxAND
        314, -- module_index: 74, name: L1_SingleJet64_FWD_Centrality_30_100_BptxAND
        360, -- module_index: 75, name: L1_SingleEG3_NotMinimumBiasHF2_AND_BptxAND
        358, -- module_index: 76, name: L1_SingleEG3_NotMinimumBiasHF2_OR_BptxAND
        348, -- module_index: 77, name: L1_SingleEG15_BptxAND
        365, -- module_index: 78, name: L1_SingleEG15_Centrality_30_100_BptxAND
        370, -- module_index: 79, name: L1_SingleEG15_Centrality_50_100_BptxAND
         40, -- module_index: 80, name: L1_SingleEG15er2p5
        350, -- module_index: 81, name: L1_SingleEG30_BptxAND
        345, -- module_index: 82, name: L1_SingleEG5_BptxAND
        346, -- module_index: 83, name: L1_SingleEG7_BptxAND
        364, -- module_index: 84, name: L1_SingleEG7_Centrality_30_100_BptxAND
        369, -- module_index: 85, name: L1_SingleEG7_Centrality_50_100_BptxAND
         38, -- module_index: 86, name: L1_SingleEG8er2p5
         57, -- module_index: 87, name: L1_SingleJet120er2p5
        284, -- module_index: 88, name: L1_SingleJet24_Centrality_30_100_BptxAND
        263, -- module_index: 89, name: L1_SingleJet32_BptxAND
        300, -- module_index: 90, name: L1_SingleJet36_Centrality_50_100_BptxAND
        289, -- module_index: 91, name: L1_SingleJet44_Centrality_30_100_BptxAND
        304, -- module_index: 92, name: L1_SingleJet56_Centrality_50_100_BptxAND
         59, -- module_index: 93, name: L1_SingleJet60er2p5
        272, -- module_index: 94, name: L1_SingleJet80_BptxAND
        452, -- module_index: 95, name: L1_ETT50_ETTAsym50_MinimumBiasHF2_OR_BptxAND
        459, -- module_index: 96, name: L1_ETT50_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        425, -- module_index: 97, name: L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND
        456, -- module_index: 98, name: L1_ETT50_ETTAsym70_MinimumBiasHF2_OR_BptxAND
        461, -- module_index: 99, name: L1_ETT50_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        427, -- module_index: 100, name: L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND
        464, -- module_index: 101, name: L1_ETT60_ETTAsym60_MinimumBiasHF2_OR_BptxAND
        467, -- module_index: 102, name: L1_ETT65_ETTAsym80_MinimumBiasHF2_OR_BptxAND
        472, -- module_index: 103, name: L1_ETT35_NotETT80_BptxAND
        437, -- module_index: 104, name: L1_ETT5_ETTAsym50_BptxAND
        439, -- module_index: 105, name: L1_ETT5_ETTAsym70_BptxAND
        440, -- module_index: 106, name: L1_ETT5_ETTAsym80_BptxAND
        433, -- module_index: 107, name: L1_ETT5_MinimumBiasHF1_OR_BptxAND
        471, -- module_index: 108, name: L1_ETT5_NotETT30_BptxAND
        494, -- module_index: 109, name: L1_NotETT150_MinimumBiasHF2_OR_BptxAND
        482, -- module_index: 110, name: L1_NotETT80_MinimumBiasHF2_OR_BptxAND
        487, -- module_index: 111, name: L1_NotETT95_MinimumBiasHF1_AND_BptxAND
        480, -- module_index: 112, name: L1_NotETT95_MinimumBiasHF1_OR_BptxAND
        414, -- module_index: 113, name: L1_ETTAsym50_BptxAND
        409, -- module_index: 114, name: L1_ETTAsym60
        415, -- module_index: 115, name: L1_ETTAsym60_BptxAND
        410, -- module_index: 116, name: L1_ETTAsym70
        416, -- module_index: 117, name: L1_ETTAsym70_BptxAND
        411, -- module_index: 118, name: L1_ETTAsym80
        417, -- module_index: 119, name: L1_ETTAsym80_BptxAND
         69, -- module_index: 120, name: L1_HTT120er
    others => 0
);

-- ========================================================