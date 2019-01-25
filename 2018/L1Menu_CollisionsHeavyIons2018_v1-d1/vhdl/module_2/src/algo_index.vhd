-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
        218, -- module_index: 0, name: L1_DoubleMu0
          1, -- module_index: 1, name: L1_ZeroBias_copy
          9, -- module_index: 2, name: L1_AlwaysTrue
        217, -- module_index: 3, name: L1_DoubleMu0_BptxAND
          0, -- module_index: 4, name: L1_ZeroBias
        216, -- module_index: 5, name: L1_DoubleMuOpen_SS
        215, -- module_index: 6, name: L1_DoubleMuOpen_SS_BptxAND
        146, -- module_index: 7, name: L1_SingleMu5_SingleEG15
        148, -- module_index: 8, name: L1_SingleMu7_SingleEG7
        123, -- module_index: 9, name: L1_DoubleEG10_BptxAND
         90, -- module_index: 10, name: L1_DoubleJet16And12_MidEta2p7
         89, -- module_index: 11, name: L1_DoubleJet20And8_MidEta2p7
        156, -- module_index: 12, name: L1_SingleEG5_SingleEG32
        154, -- module_index: 13, name: L1_SingleEG5_SingleJet32_MidEta2p7
         63, -- module_index: 14, name: L1_SingleJet36_FWD_BptxAND
        113, -- module_index: 15, name: L1_SingleEG12_BptxAND
        114, -- module_index: 16, name: L1_SingleEG15_BptxAND
        115, -- module_index: 17, name: L1_SingleEG21_BptxAND
        117, -- module_index: 18, name: L1_SingleIsoEG3_BptxAND
         34, -- module_index: 19, name: L1_SingleJet32_BptxAND
         39, -- module_index: 20, name: L1_SingleJet64_BptxAND
    others => 0
);

-- ========================================================