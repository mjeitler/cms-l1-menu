-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v1

-- Unique ID of L1 Trigger Menu:
-- 41e89c13-7e5a-4610-a477-a238c4a72331

-- Unique ID of firmware implementation:
-- 45336cdc-d724-464d-a3a6-196f2fa31e86

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        210, -- module_index: 0, name: L1_DoubleMuOpen
        209, -- module_index: 1, name: L1_DoubleMuOpen_BptxAND
        140, -- module_index: 2, name: L1_SingleMu3_SingleEG12
        194, -- module_index: 3, name: L1_SingleMu3
        143, -- module_index: 4, name: L1_SingleMu3_SingleEG30
        138, -- module_index: 5, name: L1_SingleMu3_SingleJet32_MidEta2p7
        144, -- module_index: 6, name: L1_SingleMu5_SingleEG10
        197, -- module_index: 7, name: L1_SingleMu5
        150, -- module_index: 8, name: L1_SingleMu7_SingleEG12
        206, -- module_index: 9, name: L1_SingleMu16
        207, -- module_index: 10, name: L1_SingleMu16_BptxAND
        121, -- module_index: 11, name: L1_DoubleEG5_BptxAND
         88, -- module_index: 12, name: L1_DoubleJet16And8_MidEta2p7
         92, -- module_index: 13, name: L1_DoubleJet28And16_MidEta2p7
        155, -- module_index: 14, name: L1_SingleEG5_SingleJet40_MidEta2p7
         64, -- module_index: 15, name: L1_SingleJet44_FWD_BptxAND
        116, -- module_index: 16, name: L1_SingleEG30_BptxAND
        110, -- module_index: 17, name: L1_SingleEG3_BptxAND
        118, -- module_index: 18, name: L1_SingleIsoEG7_BptxAND
         35, -- module_index: 19, name: L1_SingleJet36_BptxAND
         30, -- module_index: 20, name: L1_SingleJet8_BptxAND
    others => 0
);

-- ========================================================