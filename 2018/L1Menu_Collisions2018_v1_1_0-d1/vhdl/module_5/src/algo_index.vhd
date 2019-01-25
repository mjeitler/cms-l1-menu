-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v1_1_0

-- Unique ID of L1 Trigger Menu:
-- 51f73297-2540-4cfa-8acd-992b0bd85f0f

-- Unique ID of firmware implementation:
-- 41e72266-8790-4da2-bf65-0255762b01df

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        489, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        467, -- module_index: 1, name: L1_BptxMinus
        465, -- module_index: 2, name: L1_BptxXOR
        466, -- module_index: 3, name: L1_BptxPlus
        506, -- module_index: 4, name: L1_TOTEM_4
        425, -- module_index: 5, name: L1_ETMHF140
        398, -- module_index: 6, name: L1_HTT120er
        405, -- module_index: 7, name: L1_HTT400er
        166, -- module_index: 8, name: L1_SingleEG28er1p5
        168, -- module_index: 9, name: L1_SingleEG36er2p5
        172, -- module_index: 10, name: L1_SingleEG45er2p5
        184, -- module_index: 11, name: L1_SingleIsoEG24er1p5
        185, -- module_index: 12, name: L1_SingleIsoEG26er2p5
        192, -- module_index: 13, name: L1_SingleIsoEG30er2p5
        312, -- module_index: 14, name: L1_SingleJet120
        361, -- module_index: 15, name: L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28
        360, -- module_index: 16, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        135, -- module_index: 17, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
    others => 0
);

-- ========================================================