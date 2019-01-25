-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Special2018_v1_0_0

-- Unique ID of L1 Trigger Menu:
-- fc29be71-db7f-4aff-9e46-094f956ff1d1

-- Unique ID of firmware implementation:
-- ede4df2a-e7ec-4ef1-b0f0-3d2b2b7fe1ac

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        320, -- module_index: 0, name: L1_BPTX_BeamGas_Ref1_VME
        290, -- module_index: 1, name: L1_BptxMinus
        288, -- module_index: 2, name: L1_BptxXOR
        289, -- module_index: 3, name: L1_BptxPlus
        345, -- module_index: 4, name: L1_TOTEM_4
        190, -- module_index: 5, name: L1_ETMHF100
        200, -- module_index: 6, name: L1_ETMHF120_HTT60er
        191, -- module_index: 7, name: L1_ETMHF110
        197, -- module_index: 8, name: L1_ETMHF90_HTT60er
        198, -- module_index: 9, name: L1_ETMHF100_HTT60er
        201, -- module_index: 10, name: L1_ETMHF130_HTT60er
        192, -- module_index: 11, name: L1_ETMHF120
        193, -- module_index: 12, name: L1_ETMHF130
        199, -- module_index: 13, name: L1_ETMHF110_HTT60er
         61, -- module_index: 14, name: L1_SingleEG36er2p5
         66, -- module_index: 15, name: L1_SingleEG50
         80, -- module_index: 16, name: L1_SingleIsoEG26er1p5
         81, -- module_index: 17, name: L1_SingleIsoEG28er2p5
         88, -- module_index: 18, name: L1_SingleIsoEG34er2p5
        131, -- module_index: 19, name: L1_SingleJet140er2p5
        120, -- module_index: 20, name: L1_SingleJet35
        122, -- module_index: 21, name: L1_SingleJet90
        100, -- module_index: 22, name: L1_DoubleEG_20_10_er2p5
        106, -- module_index: 23, name: L1_DoubleEG_LooseIso20_10_er2p5
        155, -- module_index: 24, name: L1_DoubleJet120er2p5
        136, -- module_index: 25, name: L1_SingleJet60_FWD3p0
         13, -- module_index: 26, name: L1_SingleMu12_DQ_BMTF
         19, -- module_index: 27, name: L1_SingleMu22
         10, -- module_index: 28, name: L1_SingleMu5
          2, -- module_index: 29, name: L1_SingleMuCosmics_OMTF
         39, -- module_index: 30, name: L1_DoubleMu9_SQ
         45, -- module_index: 31, name: L1_DoubleMu_15_7_Mass_Min1
    others => 0
);

-- ========================================================