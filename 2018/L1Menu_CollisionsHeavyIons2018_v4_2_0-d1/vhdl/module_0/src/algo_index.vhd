-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_2_0

-- Unique ID of L1 Trigger Menu:
-- 18def6b5-725e-4ccd-bd48-aa6c63158cc8

-- Unique ID of firmware implementation:
-- d9e210d6-5dc9-44d5-a572-f85783174c8f

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- HB 2016-09-16: constants for algo_mapping_rop.
type global_index_array is array (0 to NR_ALGOS-1) of integer;
constant global_index: global_index_array := (
        106, -- module_index: 0, name: L1_AlwaysTrue
        107, -- module_index: 1, name: L1_ZeroBias
        108, -- module_index: 2, name: L1_ZeroBias_copy
        133, -- module_index: 3, name: L1_BPTX_AND_Ref1_VME
        134, -- module_index: 4, name: L1_BPTX_AND_Ref3_VME
        135, -- module_index: 5, name: L1_BPTX_AND_Ref4_VME
        138, -- module_index: 6, name: L1_BPTX_BeamGas_B1_VME
        139, -- module_index: 7, name: L1_BPTX_BeamGas_B2_VME
        136, -- module_index: 8, name: L1_BPTX_BeamGas_Ref1_VME
        137, -- module_index: 9, name: L1_BPTX_BeamGas_Ref2_VME
        129, -- module_index: 10, name: L1_BPTX_NotOR_VME
        130, -- module_index: 11, name: L1_BPTX_OR_Ref3_VME
        131, -- module_index: 12, name: L1_BPTX_OR_Ref4_VME
        132, -- module_index: 13, name: L1_BPTX_RefAND_VME
        113, -- module_index: 14, name: L1_BptxMinus
        115, -- module_index: 15, name: L1_BptxMinus_NotBptxPlus
        111, -- module_index: 16, name: L1_BptxXOR
        114, -- module_index: 17, name: L1_BptxPlus_NotBptxMinus
        109, -- module_index: 18, name: L1_BptxOR
        110, -- module_index: 19, name: L1_NotBptxOR
        112, -- module_index: 20, name: L1_BptxPlus
        495, -- module_index: 21, name: L1_Castor1
        505, -- module_index: 22, name: L1_CastorHighJet
        506, -- module_index: 23, name: L1_CastorHighJet_BptxAND
        496, -- module_index: 24, name: L1_CastorMediumJet
        497, -- module_index: 25, name: L1_CastorMediumJet_BptxAND
        503, -- module_index: 26, name: L1_CastorMuon
        504, -- module_index: 27, name: L1_CastorMuon_BptxAND
        172, -- module_index: 28, name: L1_Centrality_30_100
        318, -- module_index: 29, name: L1_SingleJet28_FWD_Centrality_50_100_BptxAND
        128, -- module_index: 30, name: L1_FirstCollisionInOrbit_Centrality30_100_BptxAND
        289, -- module_index: 31, name: L1_SingleJet44_Centrality_30_100_BptxAND
        253, -- module_index: 32, name: L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND
        309, -- module_index: 33, name: L1_SingleJet16_FWD_Centrality_30_100_BptxAND
        364, -- module_index: 34, name: L1_SingleEG7_Centrality_30_100_BptxAND
        366, -- module_index: 35, name: L1_SingleEG21_Centrality_30_100_BptxAND
        173, -- module_index: 36, name: L1_Centrality_50_100
        312, -- module_index: 37, name: L1_SingleJet44_FWD_Centrality_30_100_BptxAND
        282, -- module_index: 38, name: L1_SingleJet8_Centrality_30_100_BptxAND
        331, -- module_index: 39, name: L1_DoubleJet16And12_MidEta2p7_Centrality_30_100_BptxAND
        317, -- module_index: 40, name: L1_SingleJet16_FWD_Centrality_50_100_BptxAND
        255, -- module_index: 41, name: L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND
        288, -- module_index: 42, name: L1_SingleJet40_Centrality_30_100_BptxAND
        292, -- module_index: 43, name: L1_SingleJet60_Centrality_30_100_BptxAND
        321, -- module_index: 44, name: L1_SingleJet56_FWD_Centrality_50_100_BptxAND
        287, -- module_index: 45, name: L1_SingleJet36_Centrality_30_100_BptxAND
        330, -- module_index: 46, name: L1_DoubleJet16And8_MidEta2p7_Centrality_30_100_BptxAND
        310, -- module_index: 47, name: L1_SingleJet28_FWD_Centrality_30_100_BptxAND
        249, -- module_index: 48, name: L1_DoubleMuOpen_Centrality_30_100_BptxAND
        285, -- module_index: 49, name: L1_SingleJet28_Centrality_30_100_BptxAND
        284, -- module_index: 50, name: L1_SingleJet24_Centrality_30_100_BptxAND
        308, -- module_index: 51, name: L1_SingleJet8_FWD_Centrality_30_100_BptxAND
        311, -- module_index: 52, name: L1_SingleJet36_FWD_Centrality_30_100_BptxAND
        314, -- module_index: 53, name: L1_SingleJet64_FWD_Centrality_30_100_BptxAND
        320, -- module_index: 54, name: L1_SingleJet44_FWD_Centrality_50_100_BptxAND
        293, -- module_index: 55, name: L1_SingleJet64_Centrality_30_100_BptxAND
        333, -- module_index: 56, name: L1_DoubleJet20And12_MidEta2p7_Centrality_30_100_BptxAND
        254, -- module_index: 57, name: L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        363, -- module_index: 58, name: L1_SingleEG3_Centrality_30_100_BptxAND
        290, -- module_index: 59, name: L1_SingleJet48_Centrality_30_100_BptxAND
        365, -- module_index: 60, name: L1_SingleEG15_Centrality_30_100_BptxAND
        174, -- module_index: 61, name: L1_Centrality_20_100_MinimumBiasHF1_AND_BptxAND
        313, -- module_index: 62, name: L1_SingleJet56_FWD_Centrality_30_100_BptxAND
        332, -- module_index: 63, name: L1_DoubleJet20And8_MidEta2p7_Centrality_30_100_BptxAND
        286, -- module_index: 64, name: L1_SingleJet32_Centrality_30_100_BptxAND
        316, -- module_index: 65, name: L1_SingleJet8_FWD_Centrality_50_100_BptxAND
        322, -- module_index: 66, name: L1_SingleJet64_FWD_Centrality_50_100_BptxAND
        334, -- module_index: 67, name: L1_DoubleJet28And16_MidEta2p7_Centrality_30_100_BptxAND
        319, -- module_index: 68, name: L1_SingleJet36_FWD_Centrality_50_100_BptxAND
        283, -- module_index: 69, name: L1_SingleJet16_Centrality_30_100_BptxAND
        175, -- module_index: 70, name: L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND
        250, -- module_index: 71, name: L1_DoubleMuOpen_Centrality_40_100_BptxAND
        248, -- module_index: 72, name: L1_DoubleMuOpen_Centrality_10_100_BptxAND
        291, -- module_index: 73, name: L1_SingleJet56_Centrality_30_100_BptxAND
        236, -- module_index: 74, name: L1_DoubleMu10_BptxAND
        241, -- module_index: 75, name: L1_DoubleMuOpen_MaxDr3p5_BptxAND
        393, -- module_index: 76, name: L1_SingleEG15_SingleJet44_MidEta2p7_MinDr0p4_BptxAND
        381, -- module_index: 77, name: L1_SingleEG7_SingleJet60_MidEta2p7_MinDr0p4_BptxAND
    others => 0
);

-- ========================================================