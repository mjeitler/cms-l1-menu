-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v3

-- Unique ID of L1 Trigger Menu:
-- bb9a82eb-17df-4991-b806-4028ee613a4c

-- Unique ID of firmware implementation:
-- 721d74e7-03e3-48ab-938d-1e8242e7c1dd

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
double_eg_i12_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i12);


double_eg_i53_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
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
        double_eg_i53);


single_eg_i43_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i43);


single_eg_i44_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i44);


single_eg_i45_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i45);


single_eg_i46_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i46);


single_eg_i48_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i48);


single_eg_i50_i: entity work.calo_conditions_v7_no_quad
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
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i50);


single_eg_i58_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i58);


single_eg_i60_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
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
        single_eg_i60);


single_eg_i92_i: entity work.calo_conditions_v7_no_quad
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
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i92);


single_jet_i27_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
        single_jet_i27);


single_jet_i28_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
        single_jet_i28);


single_jet_i56_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i56);


single_jet_i57_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
        single_jet_i57);


single_jet_i95_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
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
        single_jet_i95);


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
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ls",
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
        double_mu_i82,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i83_i: entity work.muon_conditions_v7
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
        double_mu_i83,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i54_i: entity work.muon_conditions_v7
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
        single_mu_i54);


single_mu_i59_i: entity work.muon_conditions_v7
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
        single_mu_i59);


single_mu_i61_i: entity work.muon_conditions_v7
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
        single_mu_i61);


single_mu_i62_i: entity work.muon_conditions_v7
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
        single_mu_i62);


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


single_mu_i76_i: entity work.muon_conditions_v7
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
        single_mu_i76);


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


single_asymet_i84_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i84);


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


single_ett_i97_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i97);


single_mbt0_hfm_i2_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i2);


single_mbt0_hfp_i1_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i1);


single_cent6_i7 <= cent6_bx_0;


single_cent7_i8 <= cent7_bx_0;


-- Instantiations of algorithms

-- 2 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(25) <= l1_minimum_bias_hf1_and_bptx_and;

-- 3 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(24) <= l1_minimum_bias_hf1_or_bptx_and;

-- 4 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i1 xor single_mbt0_hfm_i2 ) and single_ext_i0;
algo(42) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 10 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 );
algo(20) <= l1_minimum_bias_hf1_and;

-- 13 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 );
algo(38) <= l1_minimum_bias_hf1_or;

-- 14 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 );
algo(27) <= l1_not_minimum_bias_hf1_or;

-- 16 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(1) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 36 L1_SingleJet48_BptxAND : JET48 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet48_bptx_and <= single_jet_i95 and single_ext_i0;
algo(79) <= l1_single_jet48_bptx_and;

-- 62 L1_SingleJet28_FWD_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_bptx_and <= ( single_jet_i27 or single_jet_i28 ) and single_ext_i0;
algo(76) <= l1_single_jet28_fwd_bptx_and;

-- 127 L1_DoubleEG10_BptxAND : comb{EG10,EG10} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg10_bptx_and <= double_eg_i53 and single_ext_i0;
algo(71) <= l1_double_eg10_bptx_and;

-- 130 L1_DoubleEG2_BptxAND : comb{EG2,EG2} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_bptx_and <= double_eg_i12 and single_ext_i0;
algo(73) <= l1_double_eg2_bptx_and;

-- 131 L1_SingleIsoEG7_BptxAND : EG7[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg7_bptx_and <= single_eg_i50 and single_ext_i0;
algo(78) <= l1_single_iso_eg7_bptx_and;

-- 140 L1_SingleIsoEG15_BptxAND : EG15[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg15_bptx_and <= single_eg_i92 and single_ext_i0;
algo(77) <= l1_single_iso_eg15_bptx_and;

-- 150 L1_SingleMu7_SingleEG12 : MU7[MU-QLTY_SNGL] AND EG12
l1_single_mu7_single_eg12 <= single_mu_i61 and single_eg_i45;
algo(61) <= l1_single_mu7_single_eg12;

-- 151 L1_SingleMu7_SingleEG15 : MU7[MU-QLTY_SNGL] AND EG15
l1_single_mu7_single_eg15 <= single_mu_i61 and single_eg_i46;
algo(62) <= l1_single_mu7_single_eg15;

-- 155 L1_SingleEG5_SingleJet40_MidEta2p7 : EG5 AND JET40[JET-ETA_2p7]
l1_single_eg5_single_jet40_mid_eta2p7 <= single_eg_i43 and single_jet_i57;
algo(75) <= l1_single_eg5_single_jet40_mid_eta2p7;

-- 162 L1_NotETT20_MinimumBiasHF1_AND_BptxAND : ( NOT ETT20) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i97 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(22) <= l1_not_ett20_minimum_bias_hf1_and_bptx_and;

-- 163 L1_NotETT20_MinimumBiasHF1_OR_BptxAND : ( NOT ETT20) AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf1_or_bptx_and <= ( not single_ett_i97 ) and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(44) <= l1_not_ett20_minimum_bias_hf1_or_bptx_and;

-- 164 L1_SingleMu5_SingleEG15 : MU5[MU-QLTY_SNGL] AND EG15
l1_single_mu5_single_eg15 <= single_mu_i59 and single_eg_i46;
algo(57) <= l1_single_mu5_single_eg15;

-- 165 L1_NotETT100_MinimumBiasHF1_AND_BptxAND : ( NOT ETT100) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett100_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i63 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(16) <= l1_not_ett100_minimum_bias_hf1_and_bptx_and;

-- 166 L1_NotETT150_MinimumBiasHF1_AND_BptxAND : ( NOT ETT150) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett150_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i64 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(14) <= l1_not_ett150_minimum_bias_hf1_and_bptx_and;

-- 167 L1_SingleMu3_SingleEG30 : MU3[MU-QLTY_SNGL] AND EG30
l1_single_mu3_single_eg30 <= single_mu_i54 and single_eg_i48;
algo(53) <= l1_single_mu3_single_eg30;

-- 170 L1_SingleMu3_SingleEG12 : MU3[MU-QLTY_SNGL] AND EG12
l1_single_mu3_single_eg12 <= single_mu_i54 and single_eg_i45;
algo(49) <= l1_single_mu3_single_eg12;

-- 171 L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i68 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(26) <= l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 189 L1_SingleMu5_SingleEG10 : MU5[MU-QLTY_SNGL] AND EG10
l1_single_mu5_single_eg10 <= single_mu_i59 and single_eg_i60;
algo(55) <= l1_single_mu5_single_eg10;

-- 192 L1_SingleMu0 : MU0[MU-QLTY_SNGL]
l1_single_mu0 <= single_mu_i76;
algo(64) <= l1_single_mu0;

-- 193 L1_SingleMu0_BptxAND : MU0[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_bptx_and <= single_mu_i76 and single_ext_i0;
algo(65) <= l1_single_mu0_bptx_and;

-- 194 L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i70 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(2) <= l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 195 L1_SingleMu3_SingleEG15 : MU3[MU-QLTY_SNGL] AND EG15
l1_single_mu3_single_eg15 <= single_mu_i54 and single_eg_i46;
algo(51) <= l1_single_mu3_single_eg15;

-- 196 L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(35) <= l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 197 L1_SingleMu3_SingleJet32_MidEta2p7 : MU3[MU-QLTY_SNGL] AND JET32[JET-ETA_2p7]
l1_single_mu3_single_jet32_mid_eta2p7 <= single_mu_i54 and single_jet_i56;
algo(54) <= l1_single_mu3_single_jet32_mid_eta2p7;

-- 205 L1_SingleMu12_MinimumBiasHF1_AND_BptxAND : MU12[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_minimum_bias_hf1_and_bptx_and <= single_mu_i62 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(12) <= l1_single_mu12_minimum_bias_hf1_and_bptx_and;

-- 208 L1_SingleMu16_MinimumBiasHF1_AND_BptxAND : MU16[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_minimum_bias_hf1_and_bptx_and <= single_mu_i77 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(43) <= l1_single_mu16_minimum_bias_hf1_and_bptx_and;

-- 215 L1_DoubleMuOpen_SS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_ss_bptx_and <= double_mu_i81 and single_ext_i0;
algo(48) <= l1_double_mu_open_ss_bptx_and;

-- 216 L1_DoubleMuOpen_SS : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS]
l1_double_mu_open_ss <= double_mu_i81;
algo(47) <= l1_double_mu_open_ss;

-- 217 L1_DoubleMu0_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_bptx_and <= double_mu_i82 and single_ext_i0;
algo(33) <= l1_double_mu0_bptx_and;

-- 218 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_i82;
algo(45) <= l1_double_mu0;

-- 219 L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_minimum_bias_hf1_and_bptx_and <= double_mu_i82 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(0) <= l1_double_mu0_minimum_bias_hf1_and_bptx_and;

-- 223 L1_DoubleMu10_BptxAND : comb{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu10_bptx_and <= double_mu_i83 and single_ext_i0;
algo(46) <= l1_double_mu10_bptx_and;

-- 226 L1_SingleMu7_MinimumBiasHF1_AND_BptxAND : MU7[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_minimum_bias_hf1_and_bptx_and <= single_mu_i61 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(5) <= l1_single_mu7_minimum_bias_hf1_and_bptx_and;

-- 234 L1_SingleMu5_MinimumBiasHF1_AND_BptxAND : MU5[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_minimum_bias_hf1_and_bptx_and <= single_mu_i59 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(7) <= l1_single_mu5_minimum_bias_hf1_and_bptx_and;

-- 235 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_i61;
algo(60) <= l1_single_mu7;

-- 237 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_i54;
algo(50) <= l1_single_mu3;

-- 261 L1_ETT5_MinimumBiasHF1_OR_BptxAND : ETT5 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(17) <= l1_ett5_minimum_bias_hf1_or_bptx_and;

-- 275 L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(13) <= l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 276 L1_SingleMu3_MinimumBiasHF1_AND_BptxAND : MU3[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_minimum_bias_hf1_and_bptx_and <= single_mu_i54 and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(8) <= l1_single_mu3_minimum_bias_hf1_and_bptx_and;

-- 277 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_i59;
algo(56) <= l1_single_mu5;

-- 278 L1_SingleMu3_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_bptx_and <= single_mu_i54 and single_ext_i0;
algo(66) <= l1_single_mu3_bptx_and;

-- 279 L1_SingleMu3_SingleEG20 : MU3[MU-QLTY_SNGL] AND EG20
l1_single_mu3_single_eg20 <= single_mu_i54 and single_eg_i58;
algo(52) <= l1_single_mu3_single_eg20;

-- 282 L1_DoubleEG2 : comb{EG2,EG2}
l1_double_eg2 <= double_eg_i12;
algo(72) <= l1_double_eg2;

-- 288 L1_NotMinimumBiasHF1_AND :  NOT (MBT0HFP1 AND MBT0HFM1)
l1_not_minimum_bias_hf1_and <= not ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 );
algo(32) <= l1_not_minimum_bias_hf1_and;

-- 291 L1_SingleMuOpen_Centrality_80_100_BptxAND : MU0[MU-QLTY_OPEN] AND CENT7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_80_100_bptx_and <= single_mu_i75 and single_cent7_i8 and single_ext_i0;
algo(68) <= l1_single_mu_open_centrality_80_100_bptx_and;

-- 293 L1_SingleMu3_Centrality_80_100_BptxAND : MU3[MU-QLTY_SNGL] AND CENT7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_80_100_bptx_and <= single_mu_i54 and single_cent7_i8 and single_ext_i0;
algo(67) <= l1_single_mu3_centrality_80_100_bptx_and;

-- 298 L1_SingleMu3_Centrality_70_100_BptxAND : MU3[MU-QLTY_SNGL] AND (CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_70_100_bptx_and <= single_mu_i54 and ( single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(69) <= l1_single_mu3_centrality_70_100_bptx_and;

-- 299 L1_SingleMuOpen_Centrality_70_100_BptxAND : MU0[MU-QLTY_OPEN] AND (CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_70_100_bptx_and <= single_mu_i75 and ( single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(70) <= l1_single_mu_open_centrality_70_100_bptx_and;

-- 301 L1_NotETT200_MinimumBiasHF1_AND_BptxAND : ( NOT ETT200) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett200_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i65 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(9) <= l1_not_ett200_minimum_bias_hf1_and_bptx_and;

-- 311 L1_SingleMu7_SingleEG7 : MU7[MU-QLTY_SNGL] AND EG7
l1_single_mu7_single_eg7 <= single_mu_i61 and single_eg_i44;
algo(63) <= l1_single_mu7_single_eg7;

-- 312 L1_SingleMu7_SingleEG10 : MU7[MU-QLTY_SNGL] AND EG10
l1_single_mu7_single_eg10 <= single_mu_i61 and single_eg_i60;
algo(59) <= l1_single_mu7_single_eg10;

-- 313 L1_SingleMu5_SingleEG20 : MU5[MU-QLTY_SNGL] AND EG20
l1_single_mu5_single_eg20 <= single_mu_i59 and single_eg_i58;
algo(58) <= l1_single_mu5_single_eg20;

-- 376 L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(10) <= l1_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 377 L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_asymet_i84 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(3) <= l1_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 378 L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(18) <= l1_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 379 L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(34) <= l1_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 380 L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(4) <= l1_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 407 L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i84 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(15) <= l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 456 L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i68 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(19) <= l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 457 L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(11) <= l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 458 L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i70 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(40) <= l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 459 L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(31) <= l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 460 L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(23) <= l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 461 L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(21) <= l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 462 L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i68 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(37) <= l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 463 L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i69 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(39) <= l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 464 L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i70 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(36) <= l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 465 L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(30) <= l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 466 L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i74 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(6) <= l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 467 L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i73 and single_asymet_i67 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(28) <= l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 468 L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i72 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(29) <= l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 469 L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i66 and single_asymet_i71 and ( single_mbt0_hfp_i1 or single_mbt0_hfm_i2 ) and single_ext_i0;
algo(41) <= l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 491 L1_SingleEG12_SingleJet40_MidEta2p7 : EG12 AND JET40[JET-ETA_2p7]
l1_single_eg12_single_jet40_mid_eta2p7 <= single_eg_i45 and single_jet_i57;
algo(74) <= l1_single_eg12_single_jet40_mid_eta2p7;


-- ========================================================