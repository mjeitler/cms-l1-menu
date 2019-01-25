-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_2_0

-- Unique ID of L1 Trigger Menu:
-- 2eb60aa6-04d5-4c65-83d7-c3d1765d0009

-- Unique ID of firmware implementation:
-- f13b8808-493b-4e3f-bce1-f3afb77b8cfc

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        469, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        475, -- module_index: 1, name: L1_BptxMinus
        467, -- module_index: 2, name: L1_BptxXOR
        474, -- module_index: 3, name: L1_BptxPlus
        503, -- module_index: 4, name: L1_TOTEM_4
        168, -- module_index: 5, name: L1_HTT120er
        179, -- module_index: 6, name: L1_HTT380er
         51, -- module_index: 7, name: L1_SingleEG10
         70, -- module_index: 8, name: L1_SingleEG36er2p5
         64, -- module_index: 9, name: L1_SingleEG45er2p5
         87, -- module_index: 10, name: L1_SingleIsoEG26er2p1
         89, -- module_index: 11, name: L1_SingleIsoEG30er2p1
         95, -- module_index: 12, name: L1_SingleIsoEG34er2p5
        137, -- module_index: 13, name: L1_SingleJet140
        140, -- module_index: 14, name: L1_SingleJet170
        133, -- module_index: 15, name: L1_SingleJet35
        149, -- module_index: 16, name: L1_SingleJet60_HFp
        229, -- module_index: 17, name: L1_LooseIsoEG24er2p1_HTT100er
        230, -- module_index: 18, name: L1_LooseIsoEG26er2p1_HTT100er
        231, -- module_index: 19, name: L1_LooseIsoEG28er2p1_HTT100er
        232, -- module_index: 20, name: L1_LooseIsoEG30er2p1_HTT100er
        156, -- module_index: 21, name: L1_DoubleJet112er2p7
        112, -- module_index: 22, name: L1_DoubleLooseIsoEG24er2p1
        145, -- module_index: 23, name: L1_SingleJet90_FWD
          7, -- module_index: 24, name: L1_SingleMu0_EMTF
         15, -- module_index: 25, name: L1_SingleMu12_LowQ_EMTF
         20, -- module_index: 26, name: L1_SingleMu22_BMTF
          8, -- module_index: 27, name: L1_SingleMu3
        371, -- module_index: 28, name: L1_Mu3_Jet30er2p5
          4, -- module_index: 29, name: L1_SingleMuCosmics_EMTF
        344, -- module_index: 30, name: L1_DoubleMu0_OQ
         37, -- module_index: 31, name: L1_DoubleMu18er2p1
        389, -- module_index: 32, name: L1_DoubleMu9_SQ
        380, -- module_index: 33, name: L1_DoubleMu4_OS_EG12
        383, -- module_index: 34, name: L1_DoubleMu5_OS_EG12
        399, -- module_index: 35, name: L1_TripleMu0_OQ
        400, -- module_index: 36, name: L1_TripleMu_5SQ_3SQ_0OQ
        273, -- module_index: 37, name: L1_ETM100_Jet60_dPhi_Min0p4
        272, -- module_index: 38, name: L1_ETM90_Jet60_dPhi_Min0p4
         99, -- module_index: 39, name: L1_IsoEG32er2p5_Mt48
        252, -- module_index: 40, name: L1_DoubleJet112er2p3_dEta_Max1p6
        222, -- module_index: 41, name: L1_DoubleMu0er2_SQ_dR_Max1p4
        504, -- module_index: 42, name: L1_CDC_SingleMu_3_er1p2_TOP120_DPHI2p618_3p142
        270, -- module_index: 43, name: L1_QuadJet36er2p5_IsoTau52er2p1
        217, -- module_index: 44, name: L1_DoubleJet30er2p5_Mass_Min320_dEta_Max1p5
        293, -- module_index: 45, name: L1_LooseIsoEG22er2p1_Tau70er2p1_dR_Min0p3
        443, -- module_index: 46, name: L1_Mu3_Jet16er2p7_dEta_Max0p4_dPhi_Max0p4
        256, -- module_index: 47, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
    others => 0
);

-- ========================================================