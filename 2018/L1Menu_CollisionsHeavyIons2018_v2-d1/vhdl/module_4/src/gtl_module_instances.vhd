-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v2

-- Unique ID of L1 Trigger Menu:
-- e3d0f07f-f1ad-4fee-842a-79441531f4b3

-- Unique ID of firmware implementation:
-- bc29c622-7f74-4d05-8536-eab541c325b5

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i0 <= ext_cond_bx_0(4); -- single_ext_i0
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
single_eg_i42_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
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
        single_eg_i42);


single_eg_i43_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
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
        single_eg_i43);


single_eg_i44_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"001E", X"0000", X"0000", X"0000"),
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
        single_eg_i44);


single_eg_i46_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
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
        single_eg_i46);


single_eg_i56_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i56);


single_jet_i54_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
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
        single_jet_i54);


double_mu_i80_i: entity work.muon_conditions_v7
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
        "ls",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i80,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i81_i: entity work.muon_conditions_v7
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
        double_mu_i81,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i82_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0015", X"0015", X"0000", X"0000"),
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
        double_mu_i82,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i52_i: entity work.muon_conditions_v7
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
        single_mu_i52);


single_mu_i57_i: entity work.muon_conditions_v7
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
        single_mu_i57);


single_mu_i59_i: entity work.muon_conditions_v7
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
        single_mu_i59);


single_mu_i60_i: entity work.muon_conditions_v7
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
        single_mu_i60);


single_mu_i75_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i75);


single_mu_i77_i: entity work.muon_conditions_v7
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
        single_mu_i77);


single_asymet_i67_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i67);


single_asymet_i69_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i69);


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


single_ett_i63_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i63);


single_ett_i64_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i64);


single_ett_i65_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i65);


single_ett_i66_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i66);


single_ett_i73_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i73);


single_ett_i74_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i74);


single_mbt0_hfm_i2_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i2);


single_mbt0_hfp_i1_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i1);


-- Instantiations of algorithms

-- 2 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(2) <= l1_minimum_bias_hf1_and_bptx_and;

-- 3 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(12) <= l1_minimum_bias_hf1_or_bptx_and;

-- 4 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i1 xor single_mbt0_hfm_i2 ) and single_ext_i0;
algo(22) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 16 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(15) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 138 L1_SingleMu3_SingleJet32_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET32[JET-ETA_2p7]
l1_single_mu3_single_jet32_mid_eta2p7 <= single_mu_i52 and single_jet_i54;
algo(44) <= l1_single_mu3_single_jet32_mid_eta2p7;

-- 142 L1_SingleMu3_SingleEG20 : MU3[MU-QLTY_SNGL] AND EG20
l1_single_mu3_single_eg20 <= single_mu_i52 and single_eg_i56;
algo(42) <= l1_single_mu3_single_eg20;

-- 143 L1_SingleMu3_SingleEG30 : MU3[MU-QLTY_SNGL] AND EG30
l1_single_mu3_single_eg30 <= single_mu_i52 and single_eg_i46;
algo(43) <= l1_single_mu3_single_eg30;

-- 145 L1_SingleMu5_SingleEG12 : MU5[MU-QLTY_SNGL] AND EG12
l1_single_mu5_single_eg12 <= single_mu_i57 and single_eg_i43;
algo(45) <= l1_single_mu5_single_eg12;

-- 148 L1_SingleMu7_SingleEG7 : MU7[MU-QLTY_SNGL] AND EG7
l1_single_mu7_single_eg7 <= single_mu_i59 and single_eg_i42;
algo(48) <= l1_single_mu7_single_eg7;

-- 150 L1_SingleMu7_SingleEG12 : MU7[MU-QLTY_SNGL] AND EG12
l1_single_mu7_single_eg12 <= single_mu_i59 and single_eg_i43;
algo(46) <= l1_single_mu7_single_eg12;

-- 151 L1_SingleMu7_SingleEG15 : MU7[MU-QLTY_SNGL] AND EG15
l1_single_mu7_single_eg15 <= single_mu_i59 and single_eg_i44;
algo(47) <= l1_single_mu7_single_eg15;

-- 165 L1_NotETT100_MinimumBiasHF1_AND_BptxAND : ( NOT ETT100) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett100_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i63 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(5) <= l1_not_ett100_minimum_bias_hf1_and_bptx_and;

-- 166 L1_NotETT150_MinimumBiasHF1_AND_BptxAND : ( NOT ETT150) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett150_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i64 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(23) <= l1_not_ett150_minimum_bias_hf1_and_bptx_and;

-- 167 L1_NotETT200_MinimumBiasHF1_AND_BptxAND : ( NOT ETT200) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett200_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i65 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(14) <= l1_not_ett200_minimum_bias_hf1_and_bptx_and;

-- 168 L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(6) <= l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 170 L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(25) <= l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 172 L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(33) <= l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 173 L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(21) <= l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 174 L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(16) <= l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 176 L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(19) <= l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 178 L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(24) <= l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 179 L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(26) <= l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 180 L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(11) <= l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 182 L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(27) <= l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 184 L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(29) <= l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 185 L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(30) <= l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 190 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i75;
algo(41) <= l1_single_mu_open;

-- 194 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_i52;
algo(35) <= l1_single_mu3;

-- 195 L1_SingleMu3_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_bptx_and <= single_mu_i52 and single_ext_i0;
algo(36) <= l1_single_mu3_bptx_and;

-- 196 L1_SingleMu3_MinimumBiasHF1_AND_BptxAND : MU3[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_minimum_bias_hf1_and_bptx_and <= single_mu_i52 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(13) <= l1_single_mu3_minimum_bias_hf1_and_bptx_and;

-- 197 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_i57;
algo(37) <= l1_single_mu5;

-- 198 L1_SingleMu5_BptxAND : MU5[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_bptx_and <= single_mu_i57 and single_ext_i0;
algo(38) <= l1_single_mu5_bptx_and;

-- 199 L1_SingleMu5_MinimumBiasHF1_AND_BptxAND : MU5[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_minimum_bias_hf1_and_bptx_and <= single_mu_i57 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(4) <= l1_single_mu5_minimum_bias_hf1_and_bptx_and;

-- 200 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_i59;
algo(39) <= l1_single_mu7;

-- 201 L1_SingleMu7_BptxAND : MU7[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_bptx_and <= single_mu_i59 and single_ext_i0;
algo(40) <= l1_single_mu7_bptx_and;

-- 202 L1_SingleMu7_MinimumBiasHF1_AND_BptxAND : MU7[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_minimum_bias_hf1_and_bptx_and <= single_mu_i59 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(31) <= l1_single_mu7_minimum_bias_hf1_and_bptx_and;

-- 205 L1_SingleMu12_MinimumBiasHF1_AND_BptxAND : MU12[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_minimum_bias_hf1_and_bptx_and <= single_mu_i60 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(20) <= l1_single_mu12_minimum_bias_hf1_and_bptx_and;

-- 207 L1_SingleMu16_BptxAND : MU16[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_bptx_and <= single_mu_i77 and single_ext_i0;
algo(34) <= l1_single_mu16_bptx_and;

-- 208 L1_SingleMu16_MinimumBiasHF1_AND_BptxAND : MU16[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_minimum_bias_hf1_and_bptx_and <= single_mu_i77 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(32) <= l1_single_mu16_minimum_bias_hf1_and_bptx_and;

-- 215 L1_DoubleMuOpen_SS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_ss_bptx_and <= double_mu_i80 and single_ext_i0;
algo(52) <= l1_double_mu_open_ss_bptx_and;

-- 217 L1_DoubleMu0_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_bptx_and <= double_mu_i81 and single_ext_i0;
algo(50) <= l1_double_mu0_bptx_and;

-- 218 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_i81;
algo(49) <= l1_double_mu0;

-- 219 L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_minimum_bias_hf1_and_bptx_and <= double_mu_i81 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(7) <= l1_double_mu0_minimum_bias_hf1_and_bptx_and;

-- 223 L1_DoubleMu10_BptxAND : comb{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu10_bptx_and <= double_mu_i82 and single_ext_i0;
algo(51) <= l1_double_mu10_bptx_and;

-- 228 L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(3) <= l1_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 229 L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_asymet_i83 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(17) <= l1_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 230 L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(9) <= l1_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 231 L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(18) <= l1_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 232 L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(28) <= l1_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 238 L1_ETTAsym40_BptxAND : ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_bptx_and <= single_asymet_i83 and single_ext_i0;
algo(0) <= l1_ett_asym40_bptx_and;

-- 244 L1_ETTAsym70 : ASYMET70
l1_ett_asym70 <= single_asymet_i71;
algo(1) <= l1_ett_asym70;

-- 248 L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i83 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(8) <= l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 261 L1_ETT5_MinimumBiasHF1_OR_BptxAND : ETT5 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(10) <= l1_ett5_minimum_bias_hf1_or_bptx_and;


-- ========================================================