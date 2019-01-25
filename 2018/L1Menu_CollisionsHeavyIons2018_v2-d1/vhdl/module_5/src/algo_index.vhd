-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v2

-- Unique ID of L1 Trigger Menu:
-- e3d0f07f-f1ad-4fee-842a-79441531f4b3

-- Unique ID of firmware implementation:
-- bc29c622-7f74-4d05-8536-eab541c325b5

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        246, -- module_index: 0, name: L1_ETTAsym50
        241, -- module_index: 1, name: L1_ETTAsym70_BptxAND
         11, -- module_index: 2, name: L1_MinimumBiasHF2_AND
         15, -- module_index: 3, name: L1_NotMinimumBiasHF2_OR
         12, -- module_index: 4, name: L1_MinimumBiasHF2_OR
        256, -- module_index: 5, name: L1_ETT5_ETTAsym60_BptxAND
        183, -- module_index: 6, name: L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND
        114, -- module_index: 7, name: L1_SingleEG15_BptxAND
        110, -- module_index: 8, name: L1_SingleEG3_BptxAND
        125, -- module_index: 9, name: L1_SingleEG7_Centrality_30_100_BptxAND
        128, -- module_index: 10, name: L1_SingleEG7_Centrality_50_100_BptxAND
         31, -- module_index: 11, name: L1_SingleJet16_BptxAND
         33, -- module_index: 12, name: L1_SingleJet28_BptxAND
         35, -- module_index: 13, name: L1_SingleJet36_BptxAND
         37, -- module_index: 14, name: L1_SingleJet56_BptxAND
         39, -- module_index: 15, name: L1_SingleJet64_BptxAND
        268, -- module_index: 16, name: L1_SingleEG3_NotMinimumBiasHF2_OR
        269, -- module_index: 17, name: L1_SingleEG5_NotMinimumBiasHF2_OR
        122, -- module_index: 18, name: L1_DoubleEG8_BptxAND
         93, -- module_index: 19, name: L1_DoubleJet16And8_MidEta2p7_Centrality_30_100
         98, -- module_index: 20, name: L1_DoubleJet16And8_MidEta2p7_Centrality_50_100
         92, -- module_index: 21, name: L1_DoubleJet28And16_MidEta2p7
        153, -- module_index: 22, name: L1_SingleEG5_SingleJet28_MidEta2p7
        154, -- module_index: 23, name: L1_SingleEG5_SingleJet32_MidEta2p7
         69, -- module_index: 24, name: L1_SingleJet28_FWD_Centrality_30_100_BptxAND
         76, -- module_index: 25, name: L1_SingleJet28_FWD_Centrality_50_100_BptxAND
         65, -- module_index: 26, name: L1_SingleJet56_FWD_BptxAND
         67, -- module_index: 27, name: L1_SingleJet8_FWD_Centrality_30_100_BptxAND
         74, -- module_index: 28, name: L1_SingleJet8_FWD_Centrality_50_100_BptxAND
        204, -- module_index: 29, name: L1_SingleMu12_BptxAND
        152, -- module_index: 30, name: L1_SingleMu12_SingleEG7
        140, -- module_index: 31, name: L1_SingleMu3_SingleEG12
        147, -- module_index: 32, name: L1_SingleMu5_SingleEG20
        216, -- module_index: 33, name: L1_DoubleMuOpen_SS
    others => 0
);

-- ========================================================