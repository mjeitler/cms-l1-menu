-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 19c85715-3234-40e0-a608-952f97944368

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        243, -- module_index: 0, name: L1_BPTX_AND_Ref3_VME
        242, -- module_index: 1, name: L1_BPTX_NotOR_VME
        246, -- module_index: 2, name: L1_FirstCollisionInOrbit
        277, -- module_index: 3, name: L1_Totem2
         51, -- module_index: 4, name: L1_SingleEG10
         55, -- module_index: 5, name: L1_SingleEG26
         60, -- module_index: 6, name: L1_SingleEG36
         50, -- module_index: 7, name: L1_SingleEG5
         72, -- module_index: 8, name: L1_SingleIsoEG24
         77, -- module_index: 9, name: L1_SingleIsoEG34
         82, -- module_index: 10, name: L1_SingleIsoEG40
        139, -- module_index: 11, name: L1_SingleJet160
        120, -- module_index: 12, name: L1_SingleJet24
        118, -- module_index: 13, name: L1_SingleJet44
        127, -- module_index: 14, name: L1_SingleJet80
        101, -- module_index: 15, name: L1_DoubleEG_18_17
        107, -- module_index: 16, name: L1_DoubleEG_24_17
        157, -- module_index: 17, name: L1_DoubleJet120er2p7
        164, -- module_index: 18, name: L1_DoubleJet28And16er2p7
        111, -- module_index: 19, name: L1_DoubleLooseIsoEG22er2p1
        130, -- module_index: 20, name: L1_SingleJet50_FWD
         47, -- module_index: 21, name: L1_SingleMu12
          8, -- module_index: 22, name: L1_SingleMu3
          4, -- module_index: 23, name: L1_SingleMuCosmics_EMTF
        195, -- module_index: 24, name: L1_DoubleMu10
        211, -- module_index: 25, name: L1_LooseIsoEG15er2p1_Jet12er2p7_dR_Min0p3
    others => 0
);

-- ========================================================