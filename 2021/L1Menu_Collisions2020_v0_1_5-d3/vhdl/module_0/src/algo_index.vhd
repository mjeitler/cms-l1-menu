-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 8c19d0da-9c13-43f4-8e24-584e3e9e17db

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        360, -- module_index: 0, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28
        349, -- module_index: 1, name: L1_DoubleJet30er2p5_Mass_Min200_dEta_Max1p5
        351, -- module_index: 2, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        353, -- module_index: 3, name: L1_DoubleJet30er2p5_Mass_Min360_dEta_Max1p5
        277, -- module_index: 4, name: L1_DoubleIsoTau30er2p1_Mass_Max80
        365, -- module_index: 5, name: L1_DoubleJet_80_30_Mass_Min420_Mu8
        135, -- module_index: 6, name: L1_Mu12er2p3_Jet40er2p3_dR_Max0p4_DoubleJet40er2p3_dEta_Max1p6
        125, -- module_index: 7, name: L1_Mu3_Jet120er2p5_dR_Max0p8
        123, -- module_index: 8, name: L1_Mu3_Jet60er2p5_dR_Max0p4
         86, -- module_index: 9, name: L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9
        373, -- module_index: 10, name: L1_TripleJet_100_80_70_DoubleJet_80_70_er2p5
        228, -- module_index: 11, name: L1_TripleEG16er2p5
        105, -- module_index: 12, name: L1_Mu6_DoubleEG12er2p5
        272, -- module_index: 13, name: L1_DoubleIsoTau34er2p1
        494, -- module_index: 14, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        287, -- module_index: 15, name: L1_Mu22er2p1_IsoTau40er2p1
        280, -- module_index: 16, name: L1_Mu18er2p1_Tau26er2p1
        363, -- module_index: 17, name: L1_DoubleJet35_Mass_Min450_IsoTau45_RmOvlp
        167, -- module_index: 18, name: L1_SingleEG34er2p5
        172, -- module_index: 19, name: L1_SingleEG45er2p5
        450, -- module_index: 20, name: L1_SingleJet20er2p5_NotBptxOR
        447, -- module_index: 21, name: L1_SingleMuOpen_er1p4_NotBptxOR_3BX
        451, -- module_index: 22, name: L1_SingleJet20er2p5_NotBptxOR_3BX
        452, -- module_index: 23, name: L1_SingleJet43er2p5_NotBptxOR_3BX
        464, -- module_index: 24, name: L1_BptxOR
        453, -- module_index: 25, name: L1_SingleJet46er2p5_NotBptxOR_3BX
        448, -- module_index: 26, name: L1_SingleMuOpen_er1p1_NotBptxOR_3BX
        463, -- module_index: 27, name: L1_NotBptxOR
         28, -- module_index: 28, name: L1_SingleMu9er1p5
        156, -- module_index: 29, name: L1_Mu0upt20ip3
        300, -- module_index: 30, name: L1_Mu0upt0
        304, -- module_index: 31, name: L1_Mu0upt50
        312, -- module_index: 32, name: L1_SingleJet120
        311, -- module_index: 33, name: L1_SingleJet90
         23, -- module_index: 34, name: L1_SingleMu25
        430, -- module_index: 35, name: L1_ETMHF110_HTT60er
        428, -- module_index: 36, name: L1_ETMHF90_HTT60er
        416, -- module_index: 37, name: L1_ETM120
        410, -- module_index: 38, name: L1_ETT1200
        399, -- module_index: 39, name: L1_HTT160er
        406, -- module_index: 40, name: L1_HTT450er
        492, -- module_index: 41, name: L1_BPTX_BeamGas_B2_VME
        484, -- module_index: 42, name: L1_BPTX_OR_Ref4_VME
        480, -- module_index: 43, name: L1_FirstCollisionInOrbit
        471, -- module_index: 44, name: L1_IsolatedBunch
        505, -- module_index: 45, name: L1_TOTEM_3
    others => 0
);

-- ========================================================