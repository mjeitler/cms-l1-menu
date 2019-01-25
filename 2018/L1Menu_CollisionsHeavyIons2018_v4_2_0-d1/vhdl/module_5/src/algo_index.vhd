-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
         80, -- module_index: 0, name: L1_ETT2000
        432, -- module_index: 1, name: L1_ETT5_BptxAND
        436, -- module_index: 2, name: L1_ETT5_ETTAsym40_BptxAND
        416, -- module_index: 3, name: L1_ETTAsym70_BptxAND
        438, -- module_index: 4, name: L1_ETT5_ETTAsym60_BptxAND
        437, -- module_index: 5, name: L1_ETT5_ETTAsym50_BptxAND
        471, -- module_index: 6, name: L1_ETT5_NotETT30_BptxAND
        440, -- module_index: 7, name: L1_ETT5_ETTAsym80_BptxAND
        413, -- module_index: 8, name: L1_ETTAsym40_BptxAND
        417, -- module_index: 9, name: L1_ETTAsym80_BptxAND
        414, -- module_index: 10, name: L1_ETTAsym50_BptxAND
        415, -- module_index: 11, name: L1_ETTAsym60_BptxAND
        439, -- module_index: 12, name: L1_ETT5_ETTAsym70_BptxAND
        474, -- module_index: 13, name: L1_ETT45_NotETT110_BptxAND
        453, -- module_index: 14, name: L1_ETT50_ETTAsym55_MinimumBiasHF2_OR_BptxAND
        455, -- module_index: 15, name: L1_ETT50_ETTAsym65_MinimumBiasHF2_OR_BptxAND
        347, -- module_index: 16, name: L1_SingleEG12_BptxAND
        226, -- module_index: 17, name: L1_SingleMu7_SingleEG12_BptxAND
        382, -- module_index: 18, name: L1_SingleEG12_SingleJet32_MidEta2p7_BptxAND
        383, -- module_index: 19, name: L1_SingleEG12_SingleJet40_MidEta2p7_BptxAND
        183, -- module_index: 20, name: L1_SingleMu5_BptxAND
        216, -- module_index: 21, name: L1_SingleMu3_SingleEG12_BptxAND
        221, -- module_index: 22, name: L1_SingleMu5_SingleEG12_BptxAND
        184, -- module_index: 23, name: L1_SingleMu7_BptxAND
        182, -- module_index: 24, name: L1_SingleMu3_BptxAND
         40, -- module_index: 25, name: L1_SingleEG15er2p5
        349, -- module_index: 26, name: L1_SingleEG21_BptxAND
         41, -- module_index: 27, name: L1_SingleEG26er2p5
        350, -- module_index: 28, name: L1_SingleEG30_BptxAND
        219, -- module_index: 29, name: L1_SingleMu3_SingleEG30_BptxAND
         36, -- module_index: 30, name: L1_SingleEG50
        346, -- module_index: 31, name: L1_SingleEG7_BptxAND
        228, -- module_index: 32, name: L1_SingleMu12_SingleEG7_BptxAND
        377, -- module_index: 33, name: L1_SingleEG7_SingleJet40_MidEta2p7_BptxAND
        224, -- module_index: 34, name: L1_SingleMu7_SingleEG7_BptxAND
        376, -- module_index: 35, name: L1_SingleEG7_SingleJet32_MidEta2p7_BptxAND
        185, -- module_index: 36, name: L1_SingleMu12_BptxAND
        352, -- module_index: 37, name: L1_SingleIsoEG3_BptxAND
         52, -- module_index: 38, name: L1_SingleJet120
        260, -- module_index: 39, name: L1_SingleJet16_BptxAND
        261, -- module_index: 40, name: L1_SingleJet24_BptxAND
        263, -- module_index: 41, name: L1_SingleJet32_BptxAND
         56, -- module_index: 42, name: L1_SingleJet35er2p5
        266, -- module_index: 43, name: L1_SingleJet44_BptxAND
         50, -- module_index: 44, name: L1_SingleJet60
        271, -- module_index: 45, name: L1_SingleJet72_BptxAND
         51, -- module_index: 46, name: L1_SingleJet90
         44, -- module_index: 47, name: L1_DoubleEG5
         62, -- module_index: 48, name: L1_SingleJet35_FWD3p0
        280, -- module_index: 49, name: L1_SingleJet64_FWD_BptxAND
          5, -- module_index: 50, name: L1_SingleMu0_DQ
         23, -- module_index: 51, name: L1_SingleMu22_EMTF
         12, -- module_index: 52, name: L1_SingleMu5
         14, -- module_index: 53, name: L1_SingleMu7
          0, -- module_index: 54, name: L1_SingleMuCosmics
        212, -- module_index: 55, name: L1_SingleMu3_SingleJet28_MidEta2p7_BptxAND
        223, -- module_index: 56, name: L1_SingleMu5_SingleEG20_BptxAND
         29, -- module_index: 57, name: L1_DoubleMu0
        234, -- module_index: 58, name: L1_DoubleMuOpen_SS_BptxAND
        385, -- module_index: 59, name: L1_SingleEG12_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
        395, -- module_index: 60, name: L1_SingleEG15_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================