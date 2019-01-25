-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v2_0_0

-- Unique ID of L1 Trigger Menu:
-- 669da877-bfe2-4b02-842e-13ee40f3e064

-- Unique ID of firmware implementation:
-- cfa03eba-c8d7-4d4f-9e2c-8039338ad141

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.4.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        134, -- module_index: 0, name: L1_Mu10er2p3_Jet32er2p3_dR_Max0p4_DoubleJet32er2p3_dEta_Max1p6
        136, -- module_index: 1, name: L1_Mu12er2p3_Jet40er2p1_dR_Max0p4_DoubleJet40er2p1_dEta_Max1p6
        112, -- module_index: 2, name: L1_DoubleMu3_OS_DoubleEG7p5Upsilon
        257, -- module_index: 3, name: L1_LooseIsoEG22er2p1_IsoTau26er2p1_dR_Min0p3
        236, -- module_index: 4, name: L1_LooseIsoEG30er2p1_Jet34er2p5_dR_Min0p3
        351, -- module_index: 5, name: L1_DoubleJet30er2p5_Mass_Min300_dEta_Max1p5
        358, -- module_index: 6, name: L1_DoubleJet_115_40_DoubleJet40_Mass_Min620
        385, -- module_index: 7, name: L1_HTT320er_QuadJet_70_55_40_40_er2p4
        386, -- module_index: 8, name: L1_HTT320er_QuadJet_80_60_er2p1_45_40_er2p3
        387, -- module_index: 9, name: L1_HTT320er_QuadJet_80_60_er2p1_50_45_er2p3
        197, -- module_index: 10, name: L1_IsoEG32er2p5_Mt40
        199, -- module_index: 11, name: L1_IsoEG32er2p5_Mt48
         90, -- module_index: 12, name: L1_QuadMu0_SQ
         71, -- module_index: 13, name: L1_TripleMu0_OQ
         74, -- module_index: 14, name: L1_TripleMu3
         78, -- module_index: 15, name: L1_TripleMu_5_3_3
         42, -- module_index: 16, name: L1_DoubleMu0_SQ_OS
         62, -- module_index: 17, name: L1_DoubleMu4p5_SQ_OS
         48, -- module_index: 18, name: L1_DoubleMu_15_7
         99, -- module_index: 19, name: L1_Mu20_EG10er2p5
         18, -- module_index: 20, name: L1_SingleMu20
        160, -- module_index: 21, name: L1_SingleEG10er2p5
          5, -- module_index: 22, name: L1_SingleMu0_DQ
         13, -- module_index: 23, name: L1_SingleMu12_DQ_BMTF
         16, -- module_index: 24, name: L1_SingleMu15_DQ
         22, -- module_index: 25, name: L1_SingleMu22_EMTF
         27, -- module_index: 26, name: L1_SingleMu8er1p5
        228, -- module_index: 27, name: L1_TripleEG16er2p5
        206, -- module_index: 28, name: L1_DoubleEG_20_10_er2p5
        209, -- module_index: 29, name: L1_DoubleEG_25_14_er2p5
        275, -- module_index: 30, name: L1_DoubleIsoTau32er2p1
        217, -- module_index: 31, name: L1_DoubleLooseIsoEG22er2p1
        324, -- module_index: 32, name: L1_SingleJet35_FWD3p0
        161, -- module_index: 33, name: L1_SingleEG15er2p5
        167, -- module_index: 34, name: L1_SingleEG34er2p5
        172, -- module_index: 35, name: L1_SingleEG45er2p5
        183, -- module_index: 36, name: L1_SingleIsoEG24er2p1
        189, -- module_index: 37, name: L1_SingleIsoEG28er2p5
        330, -- module_index: 38, name: L1_SingleJet10erHE
        314, -- module_index: 39, name: L1_SingleJet200
        318, -- module_index: 40, name: L1_SingleJet90er2p5
        181, -- module_index: 41, name: L1_SingleLooseIsoEG30er2p5
        398, -- module_index: 42, name: L1_HTT120er
        405, -- module_index: 43, name: L1_HTT400er
        490, -- module_index: 44, name: L1_BPTX_BeamGas_Ref2_VME
        480, -- module_index: 45, name: L1_FirstCollisionInOrbit
        503, -- module_index: 46, name: L1_TOTEM_1
        468, -- module_index: 47, name: L1_UnpairedBunchBptxPlus
    others => 0
);

-- ========================================================