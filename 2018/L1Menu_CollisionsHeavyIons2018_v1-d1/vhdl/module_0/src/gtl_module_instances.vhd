-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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

-- External condition assignment
single_ext_i1 <= ext_cond_bx_0(4); -- single_ext_i1
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs

-- Instantiations of conditions
single_eg_i36_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"000A", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i36);


single_eg_i53_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i53);


single_jet_i2_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i2);


single_jet_i31_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i31);


single_jet_i32_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"003E", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i32);


single_jet_i6_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_i6);


double_mu_i76_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i76,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i79_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i79,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i49_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0007", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i49);


single_mu_i54_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000B", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i54);


single_mu_i55_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"000F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i55);


single_mu_i56_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0019", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i56);


single_mu_i75_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0021", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i75);


single_asymet_i65_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i65);


single_asymet_i68_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0037",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i68);


single_asymet_i69_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i69);


single_asymet_i70_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0041",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i70);


single_asymet_i71_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i71);


single_asymet_i72_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i72);


single_asymet_i83_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i83);


single_ett_i61_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i61);


single_ett_i62_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i62);


single_ett_i63_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i63);


single_ett_i64_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i64);


single_ett_i66_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i66);


single_ett_i67_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i67);


single_mbt0_hfm_i14_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i14);


single_mbt0_hfp_i13_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i13);


single_cent1_i60 <= cent1_bx_0;


single_cent2_i18 <= cent2_bx_0;


single_cent3_i19 <= cent3_bx_0;


single_cent4_i20 <= cent4_bx_0;


-- Instantiations of algorithms

-- 2 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(49) <= l1_minimum_bias_hf1_and_bptx_and;

-- 3 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(30) <= l1_minimum_bias_hf1_or_bptx_and;

-- 4 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i13 xor single_mbt0_hfm_i14 ) and single_ext_i1;
algo(41) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 5 L1_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_10_100_minimum_bias_hf1_and_bptx_and <= ( single_cent1_i60 or single_cent2_i18 or single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(4) <= l1_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 6 L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : (CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_30_100_minimum_bias_hf1_and_bptx_and <= ( single_cent2_i18 or single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(3) <= l1_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 10 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 );
algo(10) <= l1_minimum_bias_hf1_and;

-- 13 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 );
algo(12) <= l1_minimum_bias_hf1_or;

-- 14 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 );
algo(31) <= l1_not_minimum_bias_hf1_or;

-- 16 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(37) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 31 L1_SingleJet16_BptxAND : JET16 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_bptx_and <= single_jet_i2 and single_ext_i1;
algo(52) <= l1_single_jet16_bptx_and;

-- 36 L1_SingleJet44_BptxAND : JET44 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_bptx_and <= single_jet_i6 and single_ext_i1;
algo(53) <= l1_single_jet44_bptx_and;

-- 65 L1_SingleJet56_FWD_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_bptx_and <= ( single_jet_i31 or single_jet_i32 ) and single_ext_i1;
algo(50) <= l1_single_jet56_fwd_bptx_and;

-- 111 L1_SingleEG5_BptxAND : EG5 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_bptx_and <= single_eg_i36 and single_ext_i1;
algo(51) <= l1_single_eg5_bptx_and;

-- 147 L1_SingleMu5_SingleEG20 : MU5[MU-QLTY_SNGL] AND EG20
l1_single_mu5_single_eg20 <= single_mu_i54 and single_eg_i53;
algo(8) <= l1_single_mu5_single_eg20;

-- 165 L1_NotETT100_MinimumBiasHF1_AND_BptxAND : ( NOT ETT100) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett100_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i61 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(18) <= l1_not_ett100_minimum_bias_hf1_and_bptx_and;

-- 166 L1_NotETT150_MinimumBiasHF1_AND_BptxAND : ( NOT ETT150) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett150_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i62 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(19) <= l1_not_ett150_minimum_bias_hf1_and_bptx_and;

-- 167 L1_NotETT200_MinimumBiasHF1_AND_BptxAND : ( NOT ETT200) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett200_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i63 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(40) <= l1_not_ett200_minimum_bias_hf1_and_bptx_and;

-- 168 L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i65 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(25) <= l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 169 L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i68 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(32) <= l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 170 L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i69 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(28) <= l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 171 L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i70 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(44) <= l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 172 L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i71 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(14) <= l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 173 L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i72 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(38) <= l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 174 L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i65 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(20) <= l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 175 L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i68 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(35) <= l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 176 L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i69 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(36) <= l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 177 L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i70 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(24) <= l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 178 L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i71 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(42) <= l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 179 L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i72 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(15) <= l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 180 L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i65 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(29) <= l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 181 L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i68 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(33) <= l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 182 L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i69 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(16) <= l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 183 L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i70 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(43) <= l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 184 L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i71 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(47) <= l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 185 L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i67 and single_asymet_i72 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(46) <= l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 196 L1_SingleMu3_MinimumBiasHF1_AND_BptxAND : MU3[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_minimum_bias_hf1_and_bptx_and <= single_mu_i49 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(39) <= l1_single_mu3_minimum_bias_hf1_and_bptx_and;

-- 199 L1_SingleMu5_MinimumBiasHF1_AND_BptxAND : MU5[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_minimum_bias_hf1_and_bptx_and <= single_mu_i54 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(26) <= l1_single_mu5_minimum_bias_hf1_and_bptx_and;

-- 202 L1_SingleMu7_MinimumBiasHF1_AND_BptxAND : MU7[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_minimum_bias_hf1_and_bptx_and <= single_mu_i55 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(11) <= l1_single_mu7_minimum_bias_hf1_and_bptx_and;

-- 204 L1_SingleMu12_BptxAND : MU12[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_bptx_and <= single_mu_i56 and single_ext_i1;
algo(48) <= l1_single_mu12_bptx_and;

-- 205 L1_SingleMu12_MinimumBiasHF1_AND_BptxAND : MU12[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_minimum_bias_hf1_and_bptx_and <= single_mu_i56 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(9) <= l1_single_mu12_minimum_bias_hf1_and_bptx_and;

-- 208 L1_SingleMu16_MinimumBiasHF1_AND_BptxAND : MU16[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_minimum_bias_hf1_and_bptx_and <= single_mu_i75 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(13) <= l1_single_mu16_minimum_bias_hf1_and_bptx_and;

-- 211 L1_DoubleMuOpen_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i76 and ( single_cent1_i60 or single_cent2_i18 or single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(7) <= l1_double_mu_open_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 212 L1_DoubleMuOpen_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i76 and ( single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(2) <= l1_double_mu_open_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 219 L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_minimum_bias_hf1_and_bptx_and <= double_mu_i79 and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(1) <= l1_double_mu0_minimum_bias_hf1_and_bptx_and;

-- 220 L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i79 and ( single_cent1_i60 or single_cent2_i18 or single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(0) <= l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 221 L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and <= double_mu_i79 and ( single_cent2_i18 or single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(5) <= l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 222 L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i79 and ( single_cent3_i19 or single_cent4_i20 ) and ( single_mbt0_hfp_i13 and single_mbt0_hfm_i14 ) and single_ext_i1;
algo(6) <= l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 228 L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_asymet_i72 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(17) <= l1_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 229 L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_asymet_i83 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(34) <= l1_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 230 L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_asymet_i65 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(22) <= l1_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 231 L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_asymet_i69 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(27) <= l1_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 232 L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_asymet_i71 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(45) <= l1_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 238 L1_ETTAsym40_BptxAND : ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_bptx_and <= single_asymet_i83 and single_ext_i1;
algo(65) <= l1_ett_asym40_bptx_and;

-- 239 L1_ETTAsym50_BptxAND : ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_bptx_and <= single_asymet_i65 and single_ext_i1;
algo(55) <= l1_ett_asym50_bptx_and;

-- 240 L1_ETTAsym60_BptxAND : ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_bptx_and <= single_asymet_i69 and single_ext_i1;
algo(56) <= l1_ett_asym60_bptx_and;

-- 241 L1_ETTAsym70_BptxAND : ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_bptx_and <= single_asymet_i71 and single_ext_i1;
algo(58) <= l1_ett_asym70_bptx_and;

-- 242 L1_ETTAsym80_BptxAND : ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_bptx_and <= single_asymet_i72 and single_ext_i1;
algo(57) <= l1_ett_asym80_bptx_and;

-- 243 L1_ETTAsym80 : ASYMET80
l1_ett_asym80 <= single_asymet_i72;
algo(69) <= l1_ett_asym80;

-- 244 L1_ETTAsym70 : ASYMET70
l1_ett_asym70 <= single_asymet_i71;
algo(68) <= l1_ett_asym70;

-- 245 L1_ETTAsym60 : ASYMET60
l1_ett_asym60 <= single_asymet_i69;
algo(67) <= l1_ett_asym60;

-- 246 L1_ETTAsym50 : ASYMET50
l1_ett_asym50 <= single_asymet_i65;
algo(66) <= l1_ett_asym50;

-- 247 L1_ETTAsym40 : ASYMET40
l1_ett_asym40 <= single_asymet_i83;
algo(64) <= l1_ett_asym40;

-- 248 L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and single_asymet_i83 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(21) <= l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 254 L1_ETT5_ETTAsym80_BptxAND : ETT5 AND ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_bptx_and <= single_ett_i64 and single_asymet_i72 and single_ext_i1;
algo(60) <= l1_ett5_ett_asym80_bptx_and;

-- 255 L1_ETT5_ETTAsym70_BptxAND : ETT5 AND ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_bptx_and <= single_ett_i64 and single_asymet_i71 and single_ext_i1;
algo(62) <= l1_ett5_ett_asym70_bptx_and;

-- 256 L1_ETT5_ETTAsym60_BptxAND : ETT5 AND ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_bptx_and <= single_ett_i64 and single_asymet_i69 and single_ext_i1;
algo(61) <= l1_ett5_ett_asym60_bptx_and;

-- 257 L1_ETT5_ETTAsym50_BptxAND : ETT5 AND ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_bptx_and <= single_ett_i64 and single_asymet_i65 and single_ext_i1;
algo(54) <= l1_ett5_ett_asym50_bptx_and;

-- 259 L1_ETT5_BptxAND : ETT5 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_bptx_and <= single_ett_i64 and single_ext_i1;
algo(59) <= l1_ett5_bptx_and;

-- 260 L1_ETT5 : ETT5
l1_ett5 <= single_ett_i64;
algo(63) <= l1_ett5;

-- 261 L1_ETT5_MinimumBiasHF1_OR_BptxAND : ETT5 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_minimum_bias_hf1_or_bptx_and <= single_ett_i64 and ( single_mbt0_hfp_i13 or single_mbt0_hfm_i14 ) and single_ext_i1;
algo(23) <= l1_ett5_minimum_bias_hf1_or_bptx_and;


-- ========================================================