-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
double_eg_i45_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0004", X"0004", X"0000", X"0000"),
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
        double_eg_i45);


double_eg_i46_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"000A", X"000A", X"0000", X"0000"),
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
        double_eg_i46);


single_eg_i35_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0006", X"0000", X"0000", X"0000"),
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
        single_eg_i35);


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


single_eg_i37_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i37);


single_eg_i59_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
        single_eg_i59);


single_jet_i16_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
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
        single_jet_i16);


single_jet_i23_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
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
        single_jet_i23);


single_jet_i24_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
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
        single_jet_i24);


single_jet_i3_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
        single_jet_i3);


single_jet_i33_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
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
        single_jet_i33);


single_jet_i34_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
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
        single_jet_i34);


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


single_mu_i73_i: entity work.muon_conditions_v7
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
        single_mu_i73);


single_mu_i74_i: entity work.muon_conditions_v7
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
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_i74);


single_asymet_i65_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i65);


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


single_ett_i64_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i64);


single_mbt1_hfm_i82_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i82);


single_mbt1_hfp_i81_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i81);


-- Instantiations of algorithms

-- 7 L1_MinimumBiasHF2_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_and_bptx_and <= ( single_mbt1_hfp_i81 and single_mbt1_hfm_i82 ) and single_ext_i1;
algo(20) <= l1_minimum_bias_hf2_and_bptx_and;

-- 8 L1_MinimumBiasHF2_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_or_bptx_and <= ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(4) <= l1_minimum_bias_hf2_or_bptx_and;

-- 11 L1_MinimumBiasHF2_AND : (MBT1HFP1 AND MBT1HFM1)
l1_minimum_bias_hf2_and <= ( single_mbt1_hfp_i81 and single_mbt1_hfm_i82 );
algo(24) <= l1_minimum_bias_hf2_and;

-- 12 L1_MinimumBiasHF2_OR : (MBT1HFP1 OR MBT1HFM1)
l1_minimum_bias_hf2_or <= ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(1) <= l1_minimum_bias_hf2_or;

-- 15 L1_NotMinimumBiasHF2_OR :  NOT (MBT1HFP1 OR MBT1HFM1)
l1_not_minimum_bias_hf2_or <= not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(3) <= l1_not_minimum_bias_hf2_or;

-- 17 L1_NotMinimumBiasHF2_OR_BptxAND :  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_or_bptx_and <= not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(13) <= l1_not_minimum_bias_hf2_or_bptx_and;

-- 18 L1_DoubleEG5_NotMinimumBiasHF2_OR : comb{EG5,EG5} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_eg5_not_minimum_bias_hf2_or <= double_eg_i46 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(26) <= l1_double_eg5_not_minimum_bias_hf2_or;

-- 19 L1_DoubleEG2_NotMinimumBiasHF2_OR : comb{EG2,EG2} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_eg2_not_minimum_bias_hf2_or <= double_eg_i45 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(7) <= l1_double_eg2_not_minimum_bias_hf2_or;

-- 32 L1_SingleJet24_BptxAND : JET24 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_bptx_and <= single_jet_i3 and single_ext_i1;
algo(31) <= l1_single_jet24_bptx_and;

-- 37 L1_SingleJet56_BptxAND : JET56 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_bptx_and <= single_jet_i16 and single_ext_i1;
algo(32) <= l1_single_jet56_bptx_and;

-- 61 L1_SingleJet16_FWD_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and single_ext_i1;
algo(28) <= l1_single_jet16_fwd_bptx_and;

-- 66 L1_SingleJet64_FWD_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and single_ext_i1;
algo(29) <= l1_single_jet64_fwd_bptx_and;

-- 112 L1_SingleEG7_BptxAND : EG7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_bptx_and <= single_eg_i37 and single_ext_i1;
algo(30) <= l1_single_eg7_bptx_and;

-- 157 L1_SingleEG5_SingleEG40 : EG5 AND EG40
l1_single_eg5_single_eg40 <= single_eg_i36 and single_eg_i59;
algo(27) <= l1_single_eg5_single_eg40;

-- 233 L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i65 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(15) <= l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 234 L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i83 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(5) <= l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 235 L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i69 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(22) <= l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 236 L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i71 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(2) <= l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 237 L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i72 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(9) <= l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 249 L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_ett_i64 and single_asymet_i83 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(10) <= l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 250 L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_ett_i64 and single_asymet_i65 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(12) <= l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 251 L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_ett_i64 and single_asymet_i69 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(25) <= l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 252 L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_ett_i64 and single_asymet_i71 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(16) <= l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 253 L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_ett_i64 and single_asymet_i72 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 ) and single_ext_i1;
algo(11) <= l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 258 L1_ETT5_ETTAsym40_BptxAND : ETT5 AND ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_bptx_and <= single_ett_i64 and single_asymet_i83 and single_ext_i1;
algo(6) <= l1_ett5_ett_asym40_bptx_and;

-- 262 L1_ETT5_NotMinimumBiasHF2_OR : ETT5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_ett5_not_minimum_bias_hf2_or <= single_ett_i64 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(17) <= l1_ett5_not_minimum_bias_hf2_or;

-- 263 L1_SingleMuOpen_NotMinimumBiasHF2_OR : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu_open_not_minimum_bias_hf2_or <= single_mu_i73 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(23) <= l1_single_mu_open_not_minimum_bias_hf2_or;

-- 264 L1_SingleMu0_NotMinimumBiasHF2_OR : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu0_not_minimum_bias_hf2_or <= single_mu_i74 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(18) <= l1_single_mu0_not_minimum_bias_hf2_or;

-- 265 L1_SingleMu3_NotMinimumBiasHF2_OR : MU3[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_mu3_not_minimum_bias_hf2_or <= single_mu_i49 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(19) <= l1_single_mu3_not_minimum_bias_hf2_or;

-- 266 L1_DoubleMuOpen_NotMinimumBiasHF2_OR : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_mu_open_not_minimum_bias_hf2_or <= double_mu_i76 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(8) <= l1_double_mu_open_not_minimum_bias_hf2_or;

-- 267 L1_DoubleMu0_NotMinimumBiasHF2_OR : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_double_mu0_not_minimum_bias_hf2_or <= double_mu_i79 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(0) <= l1_double_mu0_not_minimum_bias_hf2_or;

-- 268 L1_SingleEG3_NotMinimumBiasHF2_OR : EG3 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_eg3_not_minimum_bias_hf2_or <= single_eg_i35 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(14) <= l1_single_eg3_not_minimum_bias_hf2_or;

-- 269 L1_SingleEG5_NotMinimumBiasHF2_OR : EG5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_single_eg5_not_minimum_bias_hf2_or <= single_eg_i36 and not ( single_mbt1_hfp_i81 or single_mbt1_hfm_i82 );
algo(21) <= l1_single_eg5_not_minimum_bias_hf2_or;


-- ========================================================