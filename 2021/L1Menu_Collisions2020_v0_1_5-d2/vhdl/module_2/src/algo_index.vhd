-- ========================================================
-- from VHDL producer:

-- Module ID: 2

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- dc57c735-a5e1-42af-83aa-e544104a35c4

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        364, -- module_index: 0, name: L1_DoubleJet_80_30_Mass_Min420_IsoTau40_RmOvlp
        121, -- module_index: 1, name: L1_Mu3_Jet16er2p5_dR_Max0p4
        124, -- module_index: 2, name: L1_Mu3_Jet80er2p5_dR_Max0p4
        235, -- module_index: 3, name: L1_LooseIsoEG28er2p1_Jet34er2p5_dR_Min0p3
        350, -- module_index: 4, name: L1_DoubleJet30er2p5_Mass_Min250_dEta_Max1p5
        357, -- module_index: 5, name: L1_DoubleJet_110_35_DoubleJet35_Mass_Min620
        274, -- module_index: 6, name: L1_DoubleIsoTau28er2p1_Mass_Max90
        382, -- module_index: 7, name: L1_QuadJet60er2p5
         43, -- module_index: 8, name: L1_DoubleMu0_Mass_Min1
         58, -- module_index: 9, name: L1_DoubleMu0er1p5_SQ_OS_dR_Max1p4
         61, -- module_index: 10, name: L1_DoubleMu4_SQ_OS_dR_Max1p2
         38, -- module_index: 11, name: L1_MASSUPT_0_0_20_open
        345, -- module_index: 12, name: L1_DoubleJet100er2p3_dEta_Max1p6
         79, -- module_index: 13, name: L1_TripleMu_5_3_3_SQ
         51, -- module_index: 14, name: L1_DoubleMu18er2p1
         46, -- module_index: 15, name: L1_DoubleMu_12_5
        279, -- module_index: 16, name: L1_Mu18er2p1_Tau24er2p1
        280, -- module_index: 17, name: L1_Mu18er2p1_Tau26er2p1
        303, -- module_index: 18, name: L1_Mu0upt20
        156, -- module_index: 19, name: L1_Mu0upt20ip3
          8, -- module_index: 20, name: L1_SingleMu0_EMTF
         30, -- module_index: 21, name: L1_SingleMu12er1p5
         19, -- module_index: 22, name: L1_SingleMu22
         11, -- module_index: 23, name: L1_SingleMu7_DQ
          3, -- module_index: 24, name: L1_SingleMuCosmics_EMTF
        224, -- module_index: 25, name: L1_TripleEG_16_12_8_er2p5
        207, -- module_index: 26, name: L1_DoubleEG_22_10_er2p5
        213, -- module_index: 27, name: L1_DoubleEG_LooseIso22_10_er2p5
        272, -- module_index: 28, name: L1_DoubleIsoTau34er2p1
        218, -- module_index: 29, name: L1_DoubleLooseIsoEG24er2p1
        325, -- module_index: 30, name: L1_SingleJet60_FWD3p0
        166, -- module_index: 31, name: L1_SingleEG28er1p5
        168, -- module_index: 32, name: L1_SingleEG36er2p5
        173, -- module_index: 33, name: L1_SingleEG50
        187, -- module_index: 34, name: L1_SingleIsoEG26er1p5
        193, -- module_index: 35, name: L1_SingleIsoEG30er2p1
        319, -- module_index: 36, name: L1_SingleJet120er2p5
        309, -- module_index: 37, name: L1_SingleJet35
        176, -- module_index: 38, name: L1_SingleLooseIsoEG26er1p5
        264, -- module_index: 39, name: L1_SingleTau120er2p1
    others => 0
);

-- ========================================================