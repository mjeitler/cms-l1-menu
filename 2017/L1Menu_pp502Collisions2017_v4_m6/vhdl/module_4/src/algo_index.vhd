-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 20c66d59-117a-430e-becd-61bae7a6e5a1

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
         30, -- module_index: 0, name: L1_DoubleMu0
        199, -- module_index: 1, name: L1_DoubleMu0_SQ_OS
        192, -- module_index: 2, name: L1_DoubleMuOpen
        194, -- module_index: 3, name: L1_DoubleMuOpen_SS
        197, -- module_index: 4, name: L1_DoubleMu_15_7_SQ
         44, -- module_index: 5, name: L1_Mu10er2p1_ETM30
         45, -- module_index: 6, name: L1_Mu14er2p1_ETM30
         11, -- module_index: 7, name: L1_SingleMu10_LowQ
         47, -- module_index: 8, name: L1_SingleMu12
         17, -- module_index: 9, name: L1_SingleMu18
         19, -- module_index: 10, name: L1_SingleMu22
          8, -- module_index: 11, name: L1_SingleMu3
          9, -- module_index: 12, name: L1_SingleMu5
          0, -- module_index: 13, name: L1_SingleMuCosmics
          4, -- module_index: 14, name: L1_SingleMuCosmics_EMTF
         97, -- module_index: 15, name: L1_DoubleEG_10_10
        100, -- module_index: 16, name: L1_DoubleEG_15_10
        101, -- module_index: 17, name: L1_DoubleEG_18_17
        103, -- module_index: 18, name: L1_DoubleEG_22_10
        105, -- module_index: 19, name: L1_DoubleEG_22_15
        107, -- module_index: 20, name: L1_DoubleEG_24_17
        109, -- module_index: 21, name: L1_DoubleEG_25_13
        155, -- module_index: 22, name: L1_DoubleJet100er2p7
        157, -- module_index: 23, name: L1_DoubleJet120er2p7
        162, -- module_index: 24, name: L1_DoubleJet16And12er2p7
        163, -- module_index: 25, name: L1_DoubleJet20And12er2p7
        164, -- module_index: 26, name: L1_DoubleJet28And16er2p7
        152, -- module_index: 27, name: L1_DoubleJet50er2p7
        154, -- module_index: 28, name: L1_DoubleJet80er2p7
        111, -- module_index: 29, name: L1_DoubleLooseIsoEG22er2p1
        146, -- module_index: 30, name: L1_SingleJet120_FWD
        143, -- module_index: 31, name: L1_SingleJet35_FWD
        130, -- module_index: 32, name: L1_SingleJet50_FWD
        145, -- module_index: 33, name: L1_SingleJet90_FWD
         53, -- module_index: 34, name: L1_SingleEG18
         54, -- module_index: 35, name: L1_SingleEG24
         56, -- module_index: 36, name: L1_SingleEG28
         58, -- module_index: 37, name: L1_SingleEG32
         60, -- module_index: 38, name: L1_SingleEG36
         62, -- module_index: 39, name: L1_SingleEG40
         64, -- module_index: 40, name: L1_SingleEG45
         65, -- module_index: 41, name: L1_SingleEG50
         70, -- module_index: 42, name: L1_SingleIsoEG20
         72, -- module_index: 43, name: L1_SingleIsoEG24
         74, -- module_index: 44, name: L1_SingleIsoEG28
         76, -- module_index: 45, name: L1_SingleIsoEG32
         78, -- module_index: 46, name: L1_SingleIsoEG35
         80, -- module_index: 47, name: L1_SingleIsoEG37
         82, -- module_index: 48, name: L1_SingleIsoEG40
        137, -- module_index: 49, name: L1_SingleJet140
        131, -- module_index: 50, name: L1_SingleJet16
        140, -- module_index: 51, name: L1_SingleJet170
        132, -- module_index: 52, name: L1_SingleJet20
        120, -- module_index: 53, name: L1_SingleJet24
        121, -- module_index: 54, name: L1_SingleJet32
        125, -- module_index: 55, name: L1_SingleJet40
        122, -- module_index: 56, name: L1_SingleJet48
        123, -- module_index: 57, name: L1_SingleJet56
        127, -- module_index: 58, name: L1_SingleJet80
        229, -- module_index: 59, name: L1_BptxXOR
        237, -- module_index: 60, name: L1_BptxMinus
        236, -- module_index: 61, name: L1_BptxPlus
        239, -- module_index: 62, name: L1_BPTX_AND_Ref1_VME
        243, -- module_index: 63, name: L1_BPTX_AND_Ref3_VME
        247, -- module_index: 64, name: L1_BPTX_AND_Ref4_VME
        233, -- module_index: 65, name: L1_BPTX_BeamGas_B1_VME
        234, -- module_index: 66, name: L1_BPTX_BeamGas_B2_VME
        231, -- module_index: 67, name: L1_BPTX_BeamGas_Ref1_VME
        232, -- module_index: 68, name: L1_BPTX_BeamGas_Ref2_VME
        242, -- module_index: 69, name: L1_BPTX_NotOR_VME
        244, -- module_index: 70, name: L1_BPTX_OR_Ref3_VME
        248, -- module_index: 71, name: L1_BPTX_OR_Ref4_VME
        245, -- module_index: 72, name: L1_BPTX_RefAND_VME
        246, -- module_index: 73, name: L1_FirstCollisionInOrbit
        250, -- module_index: 74, name: L1_FirstCollisionInTrain
        249, -- module_index: 75, name: L1_LastCollisionInTrain
        276, -- module_index: 76, name: L1_Totem1
        278, -- module_index: 77, name: L1_Totem3
        241, -- module_index: 78, name: L1_UnpairedBunchBptxMinus
    others => 0
);

-- ========================================================