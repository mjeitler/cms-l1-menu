-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
        213, -- module_index: 0, name: L1_DoubleMuOpen_OS
        214, -- module_index: 1, name: L1_DoubleMuOpen_OS_BptxAND
        141, -- module_index: 2, name: L1_SingleMu3_SingleEG15
        137, -- module_index: 3, name: L1_SingleMu3_SingleJet28_MidEta2p7
        139, -- module_index: 4, name: L1_SingleMu3_SingleJet40_MidEta2p7
        145, -- module_index: 5, name: L1_SingleMu5_SingleEG12
        151, -- module_index: 6, name: L1_SingleMu7_SingleEG15
        195, -- module_index: 7, name: L1_SingleMu3_BptxAND
        198, -- module_index: 8, name: L1_SingleMu5_BptxAND
        201, -- module_index: 9, name: L1_SingleMu7_BptxAND
        190, -- module_index: 10, name: L1_SingleMuOpen
        191, -- module_index: 11, name: L1_SingleMuOpen_BptxAND
        122, -- module_index: 12, name: L1_DoubleEG8_BptxAND
         91, -- module_index: 13, name: L1_DoubleJet20And12_MidEta2p7
        158, -- module_index: 14, name: L1_SingleEG10_SingleEG40
        153, -- module_index: 15, name: L1_SingleEG5_SingleJet28_MidEta2p7
         62, -- module_index: 16, name: L1_SingleJet28_FWD_BptxAND
         60, -- module_index: 17, name: L1_SingleJet8_FWD_BptxAND
        119, -- module_index: 18, name: L1_SingleIsoEG10_BptxAND
         33, -- module_index: 19, name: L1_SingleJet28_BptxAND
         38, -- module_index: 20, name: L1_SingleJet60_BptxAND
    others => 0
);

-- ========================================================