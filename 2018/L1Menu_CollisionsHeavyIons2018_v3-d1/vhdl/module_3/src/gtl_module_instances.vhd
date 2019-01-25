-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
double_jet_i37_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0020", X"0010", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i37);


double_jet_i38_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0028", X"0010", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i38);


double_jet_i39_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0020", X"0018", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i39);


double_jet_i40_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0028", X"0018", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i40);


double_jet_i41_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0038", X"0020", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
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
        double_jet_i41);


single_eg_i42_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i42);


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


single_eg_i47_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"002A", X"0000", X"0000", X"0000"),
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
        single_eg_i47);


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


single_eg_i93_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"002A", X"0000", X"0000", X"0000"),
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
        single_eg_i93);


single_jet_i13_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
        single_jet_i13);


single_jet_i14_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i14);


single_jet_i15_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i15);


single_jet_i16_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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


single_jet_i17_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
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
        single_jet_i17);


single_jet_i18_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_jet_i18);


single_jet_i19_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i19);


single_jet_i20_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i20);


single_jet_i21_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
        single_jet_i21);


single_jet_i22_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
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
        single_jet_i22);


single_jet_i23_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
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
        (X"0010", X"0000", X"0000", X"0000"),
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


single_jet_i25_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i25);


single_jet_i26_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i26);


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


single_jet_i29_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_jet_i29);


single_jet_i30_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
        single_jet_i30);


single_jet_i31_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
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
        (X"0058", X"0000", X"0000", X"0000"),
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


single_jet_i33_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i33);


single_jet_i34_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i34);


single_jet_i35_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i35);


single_jet_i36_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i36);


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


single_jet_i94_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0,
        single_jet_i94);


double_mu_i78_i: entity work.muon_conditions_v7
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
        double_mu_i78,
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


single_asymet_i84_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i84);


single_ett_i66_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i66);


single_ett_i96_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i96);


single_mbt0_hfm_i2_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i2);


single_mbt0_hfp_i1_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i1);


single_cent1_i79 <= cent1_bx_0;


single_cent2_i3 <= cent2_bx_0;


single_cent3_i4 <= cent3_bx_0;


single_cent4_i5 <= cent4_bx_0;


single_cent5_i6 <= cent5_bx_0;


single_cent6_i7 <= cent6_bx_0;


single_cent7_i8 <= cent7_bx_0;


-- Instantiations of algorithms

-- 18 L1_Centrality_30_100 : (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_centrality_30_100 <= ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(57) <= l1_centrality_30_100;

-- 19 L1_Centrality_50_100 : (CENT5 OR CENT6 OR CENT7)
l1_centrality_50_100 <= ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(59) <= l1_centrality_50_100;

-- 27 L1_SingleJet8 : JET8
l1_single_jet8 <= single_jet_i13;
algo(97) <= l1_single_jet8;

-- 28 L1_SingleJet8_BptxAND : JET8 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_bptx_and <= single_jet_i13 and single_ext_i0;
algo(98) <= l1_single_jet8_bptx_and;

-- 29 L1_SingleJet16_BptxAND : JET16 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_bptx_and <= single_jet_i14 and single_ext_i0;
algo(88) <= l1_single_jet16_bptx_and;

-- 30 L1_SingleJet24_BptxAND : JET24 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_bptx_and <= single_jet_i15 and single_ext_i0;
algo(89) <= l1_single_jet24_bptx_and;

-- 31 L1_SingleJet28_BptxAND : JET28 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_bptx_and <= single_jet_i16 and single_ext_i0;
algo(90) <= l1_single_jet28_bptx_and;

-- 32 L1_SingleJet32_BptxAND : JET32 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_bptx_and <= single_jet_i17 and single_ext_i0;
algo(91) <= l1_single_jet32_bptx_and;

-- 33 L1_SingleJet36_BptxAND : JET36 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_bptx_and <= single_jet_i18 and single_ext_i0;
algo(92) <= l1_single_jet36_bptx_and;

-- 34 L1_SingleJet40_BptxAND : JET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_bptx_and <= single_jet_i94 and single_ext_i0;
algo(93) <= l1_single_jet40_bptx_and;

-- 37 L1_SingleJet56_BptxAND : JET56 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_bptx_and <= single_jet_i20 and single_ext_i0;
algo(94) <= l1_single_jet56_bptx_and;

-- 38 L1_SingleJet60_BptxAND : JET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_bptx_and <= single_jet_i21 and single_ext_i0;
algo(95) <= l1_single_jet60_bptx_and;

-- 39 L1_SingleJet64_BptxAND : JET64 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_bptx_and <= single_jet_i22 and single_ext_i0;
algo(96) <= l1_single_jet64_bptx_and;

-- 40 L1_SingleJet8_Centrality_30_100_BptxAND : JET8 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_centrality_30_100_bptx_and <= single_jet_i13 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(20) <= l1_single_jet8_centrality_30_100_bptx_and;

-- 41 L1_SingleJet16_Centrality_30_100_BptxAND : JET16 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_30_100_bptx_and <= single_jet_i14 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(16) <= l1_single_jet16_centrality_30_100_bptx_and;

-- 42 L1_SingleJet24_Centrality_30_100_BptxAND : JET24 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_centrality_30_100_bptx_and <= single_jet_i15 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(19) <= l1_single_jet24_centrality_30_100_bptx_and;

-- 43 L1_SingleJet28_Centrality_30_100_BptxAND : JET28 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_30_100_bptx_and <= single_jet_i16 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(15) <= l1_single_jet28_centrality_30_100_bptx_and;

-- 44 L1_SingleJet32_Centrality_30_100_BptxAND : JET32 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_centrality_30_100_bptx_and <= single_jet_i17 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(17) <= l1_single_jet32_centrality_30_100_bptx_and;

-- 45 L1_SingleJet36_Centrality_30_100_BptxAND : JET36 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_30_100_bptx_and <= single_jet_i18 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(18) <= l1_single_jet36_centrality_30_100_bptx_and;

-- 46 L1_SingleJet44_Centrality_30_100_BptxAND : JET44 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_centrality_30_100_bptx_and <= single_jet_i19 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(8) <= l1_single_jet44_centrality_30_100_bptx_and;

-- 47 L1_SingleJet56_Centrality_30_100_BptxAND : JET56 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_30_100_bptx_and <= single_jet_i20 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(9) <= l1_single_jet56_centrality_30_100_bptx_and;

-- 48 L1_SingleJet60_Centrality_30_100_BptxAND : JET60 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_centrality_30_100_bptx_and <= single_jet_i21 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(6) <= l1_single_jet60_centrality_30_100_bptx_and;

-- 49 L1_SingleJet64_Centrality_30_100_BptxAND : JET64 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_30_100_bptx_and <= single_jet_i22 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(2) <= l1_single_jet64_centrality_30_100_bptx_and;

-- 50 L1_SingleJet8_Centrality_50_100_BptxAND : JET8 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_centrality_50_100_bptx_and <= single_jet_i13 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(52) <= l1_single_jet8_centrality_50_100_bptx_and;

-- 51 L1_SingleJet16_Centrality_50_100_BptxAND : JET16 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_50_100_bptx_and <= single_jet_i14 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(34) <= l1_single_jet16_centrality_50_100_bptx_and;

-- 52 L1_SingleJet24_Centrality_50_100_BptxAND : JET24 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_centrality_50_100_bptx_and <= single_jet_i15 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(46) <= l1_single_jet24_centrality_50_100_bptx_and;

-- 53 L1_SingleJet28_Centrality_50_100_BptxAND : JET28 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_50_100_bptx_and <= single_jet_i16 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(40) <= l1_single_jet28_centrality_50_100_bptx_and;

-- 54 L1_SingleJet32_Centrality_50_100_BptxAND : JET32 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_centrality_50_100_bptx_and <= single_jet_i17 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(49) <= l1_single_jet32_centrality_50_100_bptx_and;

-- 55 L1_SingleJet36_Centrality_50_100_BptxAND : JET36 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_50_100_bptx_and <= single_jet_i18 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(42) <= l1_single_jet36_centrality_50_100_bptx_and;

-- 56 L1_SingleJet44_Centrality_50_100_BptxAND : JET44 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_centrality_50_100_bptx_and <= single_jet_i19 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(51) <= l1_single_jet44_centrality_50_100_bptx_and;

-- 57 L1_SingleJet56_Centrality_50_100_BptxAND : JET56 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_50_100_bptx_and <= single_jet_i20 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(44) <= l1_single_jet56_centrality_50_100_bptx_and;

-- 58 L1_SingleJet60_Centrality_50_100_BptxAND : JET60 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_centrality_50_100_bptx_and <= single_jet_i21 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(26) <= l1_single_jet60_centrality_50_100_bptx_and;

-- 59 L1_SingleJet64_Centrality_50_100_BptxAND : JET64 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_50_100_bptx_and <= single_jet_i22 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(35) <= l1_single_jet64_centrality_50_100_bptx_and;

-- 60 L1_SingleJet8_FWD_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and single_ext_i0;
algo(79) <= l1_single_jet8_fwd_bptx_and;

-- 63 L1_SingleJet36_FWD_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_bptx_and <= ( single_jet_i29 or single_jet_i30 ) and single_ext_i0;
algo(75) <= l1_single_jet36_fwd_bptx_and;

-- 64 L1_SingleJet44_FWD_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_bptx_and <= ( single_jet_i31 or single_jet_i32 ) and single_ext_i0;
algo(76) <= l1_single_jet44_fwd_bptx_and;

-- 65 L1_SingleJet56_FWD_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and single_ext_i0;
algo(77) <= l1_single_jet56_fwd_bptx_and;

-- 66 L1_SingleJet64_FWD_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_bptx_and <= ( single_jet_i35 or single_jet_i36 ) and single_ext_i0;
algo(78) <= l1_single_jet64_fwd_bptx_and;

-- 67 L1_SingleJet8_FWD_Centrality_30_100_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_centrality_30_100_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(43) <= l1_single_jet8_fwd_centrality_30_100_bptx_and;

-- 68 L1_SingleJet16_FWD_Centrality_30_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_30_100_bptx_and <= ( single_jet_i25 or single_jet_i26 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(29) <= l1_single_jet16_fwd_centrality_30_100_bptx_and;

-- 69 L1_SingleJet28_FWD_Centrality_30_100_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_centrality_30_100_bptx_and <= ( single_jet_i27 or single_jet_i28 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(50) <= l1_single_jet28_fwd_centrality_30_100_bptx_and;

-- 70 L1_SingleJet36_FWD_Centrality_30_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_30_100_bptx_and <= ( single_jet_i29 or single_jet_i30 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(38) <= l1_single_jet36_fwd_centrality_30_100_bptx_and;

-- 71 L1_SingleJet44_FWD_Centrality_30_100_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_centrality_30_100_bptx_and <= ( single_jet_i31 or single_jet_i32 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(54) <= l1_single_jet44_fwd_centrality_30_100_bptx_and;

-- 72 L1_SingleJet56_FWD_Centrality_30_100_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_centrality_30_100_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(37) <= l1_single_jet56_fwd_centrality_30_100_bptx_and;

-- 73 L1_SingleJet64_FWD_Centrality_30_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_30_100_bptx_and <= ( single_jet_i35 or single_jet_i36 ) and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(31) <= l1_single_jet64_fwd_centrality_30_100_bptx_and;

-- 74 L1_SingleJet8_FWD_Centrality_50_100_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_centrality_50_100_bptx_and <= ( single_jet_i23 or single_jet_i24 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(25) <= l1_single_jet8_fwd_centrality_50_100_bptx_and;

-- 75 L1_SingleJet16_FWD_Centrality_50_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_50_100_bptx_and <= ( single_jet_i25 or single_jet_i26 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(39) <= l1_single_jet16_fwd_centrality_50_100_bptx_and;

-- 76 L1_SingleJet28_FWD_Centrality_50_100_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_centrality_50_100_bptx_and <= ( single_jet_i27 or single_jet_i28 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(28) <= l1_single_jet28_fwd_centrality_50_100_bptx_and;

-- 77 L1_SingleJet36_FWD_Centrality_50_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_50_100_bptx_and <= ( single_jet_i29 or single_jet_i30 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(48) <= l1_single_jet36_fwd_centrality_50_100_bptx_and;

-- 78 L1_SingleJet44_FWD_Centrality_50_100_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_centrality_50_100_bptx_and <= ( single_jet_i31 or single_jet_i32 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(36) <= l1_single_jet44_fwd_centrality_50_100_bptx_and;

-- 79 L1_SingleJet56_FWD_Centrality_50_100_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_centrality_50_100_bptx_and <= ( single_jet_i33 or single_jet_i34 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(53) <= l1_single_jet56_fwd_centrality_50_100_bptx_and;

-- 80 L1_SingleJet64_FWD_Centrality_50_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_50_100_bptx_and <= ( single_jet_i35 or single_jet_i36 ) and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(33) <= l1_single_jet64_fwd_centrality_50_100_bptx_and;

-- 141 L1_SingleIsoEG21_BptxAND : EG21[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg21_bptx_and <= single_eg_i93 and single_ext_i0;
algo(87) <= l1_single_iso_eg21_bptx_and;

-- 161 L1_ETT5_NotETT30_BptxAND : ETT5 AND ( NOT ETT30) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_not_ett30_bptx_and <= single_ett_i66 and ( not single_ett_i96 ) and single_ext_i0;
algo(106) <= l1_ett5_not_ett30_bptx_and;

-- 190 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i75;
algo(60) <= l1_single_mu_open;

-- 191 L1_SingleMuOpen_BptxAND : MU0[MU-QLTY_OPEN] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_bptx_and <= single_mu_i75 and single_ext_i0;
algo(61) <= l1_single_mu_open_bptx_and;

-- 209 L1_DoubleMuOpen_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_bptx_and <= double_mu_i78 and single_ext_i0;
algo(22) <= l1_double_mu_open_bptx_and;

-- 210 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu_open <= double_mu_i78;
algo(21) <= l1_double_mu_open;

-- 211 L1_DoubleMuOpen_Centrality_10_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_10_100_bptx_and <= double_mu_i78 and ( single_cent1_i79 or single_cent2_i3 or single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(13) <= l1_double_mu_open_centrality_10_100_bptx_and;

-- 212 L1_DoubleMuOpen_Centrality_50_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_50_100_bptx_and <= double_mu_i78 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(24) <= l1_double_mu_open_centrality_50_100_bptx_and;

-- 222 L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT5 OR CENT6 OR CENT7) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i82 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(4) <= l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 224 L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT1 OR CENT2 OR CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i82 and ( single_cent1_i79 or single_cent2_i3 or single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(0) <= l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 225 L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and <= double_mu_i82 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(7) <= l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 259 L1_ETT5_BptxAND : ETT5 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_bptx_and <= single_ett_i66 and single_ext_i0;
algo(100) <= l1_ett5_bptx_and;

-- 294 L1_DoubleMuOpen_Centrality_30_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_30_100_bptx_and <= double_mu_i78 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(5) <= l1_double_mu_open_centrality_30_100_bptx_and;

-- 295 L1_DoubleMuOpen_Centrality_40_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_40_100_bptx_and <= double_mu_i78 and ( single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(23) <= l1_double_mu_open_centrality_40_100_bptx_and;

-- 326 L1_Centrality_20_100_MinimumBiasHF1_AND_BptxAND : (CENT2 OR CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_20_100_minimum_bias_hf1_and_bptx_and <= ( single_cent2_i3 or single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(3) <= l1_centrality_20_100_minimum_bias_hf1_and_bptx_and;

-- 333 L1_SingleEG7_SingleJet32_MidEta2p7 : EG7 AND JET32[JET-ETA_2p7]
l1_single_eg7_single_jet32_mid_eta2p7 <= single_eg_i44 and single_jet_i56;
algo(73) <= l1_single_eg7_single_jet32_mid_eta2p7;

-- 336 L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_30_100_minimum_bias_hf1_and_bptx_and <= ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and ( single_mbt0_hfp_i1 and single_mbt0_hfm_i2 ) and single_ext_i0;
algo(1) <= l1_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 358 L1_DoubleJet16And8_MidEta2p7 : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet16_and8_mid_eta2p7 <= double_jet_i37;
algo(68) <= l1_double_jet16_and8_mid_eta2p7;

-- 359 L1_DoubleJet20And8_MidEta2p7 : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]}
l1_double_jet20_and8_mid_eta2p7 <= double_jet_i38;
algo(70) <= l1_double_jet20_and8_mid_eta2p7;

-- 360 L1_DoubleJet20And12_MidEta2p7 : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]}
l1_double_jet20_and12_mid_eta2p7 <= double_jet_i40;
algo(69) <= l1_double_jet20_and12_mid_eta2p7;

-- 361 L1_DoubleJet28And16_MidEta2p7 : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]}
l1_double_jet28_and16_mid_eta2p7 <= double_jet_i41;
algo(71) <= l1_double_jet28_and16_mid_eta2p7;

-- 363 L1_DoubleJet16And12_MidEta2p7 : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]}
l1_double_jet16_and12_mid_eta2p7 <= double_jet_i39;
algo(62) <= l1_double_jet16_and12_mid_eta2p7;

-- 400 L1_ETTAsym70_BptxAND : ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_bptx_and <= single_asymet_i71 and single_ext_i0;
algo(103) <= l1_ett_asym70_bptx_and;

-- 401 L1_ETTAsym80_BptxAND : ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_bptx_and <= single_asymet_i72 and single_ext_i0;
algo(105) <= l1_ett_asym80_bptx_and;

-- 413 L1_ETT5_ETTAsym80_BptxAND : ETT5 AND ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_bptx_and <= single_ett_i66 and single_asymet_i72 and single_ext_i0;
algo(102) <= l1_ett5_ett_asym80_bptx_and;

-- 414 L1_ETT5_ETTAsym70_BptxAND : ETT5 AND ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_bptx_and <= single_ett_i66 and single_asymet_i71 and single_ext_i0;
algo(104) <= l1_ett5_ett_asym70_bptx_and;

-- 415 L1_ETT5_ETTAsym60_BptxAND : ETT5 AND ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_bptx_and <= single_ett_i66 and single_asymet_i69 and single_ext_i0;
algo(107) <= l1_ett5_ett_asym60_bptx_and;

-- 417 L1_ETT5_ETTAsym40_BptxAND : ETT5 AND ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_bptx_and <= single_ett_i66 and single_asymet_i84 and single_ext_i0;
algo(99) <= l1_ett5_ett_asym40_bptx_and;

-- 419 L1_ETTAsym60_BptxAND : ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_bptx_and <= single_asymet_i69 and single_ext_i0;
algo(101) <= l1_ett_asym60_bptx_and;

-- 420 L1_ETTAsym40_BptxAND : ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_bptx_and <= single_asymet_i84 and single_ext_i0;
algo(108) <= l1_ett_asym40_bptx_and;

-- 432 L1_DoubleJet16And8_MidEta2p7_Centrality_30_100 : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_double_jet16_and8_mid_eta2p7_centrality_30_100 <= double_jet_i37 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(27) <= l1_double_jet16_and8_mid_eta2p7_centrality_30_100;

-- 433 L1_DoubleJet20And8_MidEta2p7_Centrality_30_100 : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_double_jet20_and8_mid_eta2p7_centrality_30_100 <= double_jet_i38 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(47) <= l1_double_jet20_and8_mid_eta2p7_centrality_30_100;

-- 434 L1_DoubleJet16And12_MidEta2p7_Centrality_30_100 : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_double_jet16_and12_mid_eta2p7_centrality_30_100 <= double_jet_i39 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(30) <= l1_double_jet16_and12_mid_eta2p7_centrality_30_100;

-- 435 L1_DoubleJet20And12_MidEta2p7_Centrality_30_100 : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_double_jet20_and12_mid_eta2p7_centrality_30_100 <= double_jet_i40 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(41) <= l1_double_jet20_and12_mid_eta2p7_centrality_30_100;

-- 436 L1_DoubleJet28And16_MidEta2p7_Centrality_30_100 : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7)
l1_double_jet28_and16_mid_eta2p7_centrality_30_100 <= double_jet_i41 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(55) <= l1_double_jet28_and16_mid_eta2p7_centrality_30_100;

-- 437 L1_DoubleJet16And8_MidEta2p7_Centrality_50_100 : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT5 OR CENT6 OR CENT7)
l1_double_jet16_and8_mid_eta2p7_centrality_50_100 <= double_jet_i37 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(66) <= l1_double_jet16_and8_mid_eta2p7_centrality_50_100;

-- 438 L1_DoubleJet20And8_MidEta2p7_Centrality_50_100 : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT5 OR CENT6 OR CENT7)
l1_double_jet20_and8_mid_eta2p7_centrality_50_100 <= double_jet_i38 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(67) <= l1_double_jet20_and8_mid_eta2p7_centrality_50_100;

-- 439 L1_DoubleJet16And12_MidEta2p7_Centrality_50_100 : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT5 OR CENT6 OR CENT7)
l1_double_jet16_and12_mid_eta2p7_centrality_50_100 <= double_jet_i39 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(63) <= l1_double_jet16_and12_mid_eta2p7_centrality_50_100;

-- 440 L1_DoubleJet20And12_MidEta2p7_Centrality_50_100 : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT5 OR CENT6 OR CENT7)
l1_double_jet20_and12_mid_eta2p7_centrality_50_100 <= double_jet_i40 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(64) <= l1_double_jet20_and12_mid_eta2p7_centrality_50_100;

-- 441 L1_DoubleJet28And16_MidEta2p7_Centrality_50_100 : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT5 OR CENT6 OR CENT7)
l1_double_jet28_and16_mid_eta2p7_centrality_50_100 <= double_jet_i41 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 );
algo(65) <= l1_double_jet28_and16_mid_eta2p7_centrality_50_100;

-- 472 L1_SingleEG3 : EG3
l1_single_eg3 <= single_eg_i42;
algo(83) <= l1_single_eg3;

-- 474 L1_SingleEG3_BptxAND : EG3 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_bptx_and <= single_eg_i42 and single_ext_i0;
algo(84) <= l1_single_eg3_bptx_and;

-- 475 L1_SingleEG5_BptxAND : EG5 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_bptx_and <= single_eg_i43 and single_ext_i0;
algo(86) <= l1_single_eg5_bptx_and;

-- 477 L1_SingleEG12_BptxAND : EG12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_bptx_and <= single_eg_i45 and single_ext_i0;
algo(80) <= l1_single_eg12_bptx_and;

-- 478 L1_SingleEG15_BptxAND : EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_bptx_and <= single_eg_i46 and single_ext_i0;
algo(81) <= l1_single_eg15_bptx_and;

-- 479 L1_SingleEG21_BptxAND : EG21 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_bptx_and <= single_eg_i47 and single_ext_i0;
algo(82) <= l1_single_eg21_bptx_and;

-- 480 L1_SingleEG30_BptxAND : EG30 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg30_bptx_and <= single_eg_i48 and single_ext_i0;
algo(85) <= l1_single_eg30_bptx_and;

-- 481 L1_SingleEG3_Centrality_30_100_BptxAND : EG3 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_30_100_bptx_and <= single_eg_i42 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(11) <= l1_single_eg3_centrality_30_100_bptx_and;

-- 482 L1_SingleEG7_Centrality_30_100_BptxAND : EG7 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_centrality_30_100_bptx_and <= single_eg_i44 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(14) <= l1_single_eg7_centrality_30_100_bptx_and;

-- 483 L1_SingleEG15_Centrality_30_100_BptxAND : EG15 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_centrality_30_100_bptx_and <= single_eg_i46 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(10) <= l1_single_eg15_centrality_30_100_bptx_and;

-- 484 L1_SingleEG21_Centrality_30_100_BptxAND : EG21 AND (CENT3 OR CENT4 OR CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_centrality_30_100_bptx_and <= single_eg_i47 and ( single_cent3_i4 or single_cent4_i5 or single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(12) <= l1_single_eg21_centrality_30_100_bptx_and;

-- 485 L1_SingleEG3_Centrality_50_100_BptxAND : EG3 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_50_100_bptx_and <= single_eg_i42 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(45) <= l1_single_eg3_centrality_50_100_bptx_and;

-- 486 L1_SingleEG7_Centrality_50_100_BptxAND : EG7 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_centrality_50_100_bptx_and <= single_eg_i44 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(32) <= l1_single_eg7_centrality_50_100_bptx_and;

-- 487 L1_SingleEG15_Centrality_50_100_BptxAND : EG15 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_centrality_50_100_bptx_and <= single_eg_i46 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(56) <= l1_single_eg15_centrality_50_100_bptx_and;

-- 488 L1_SingleEG21_Centrality_50_100_BptxAND : EG21 AND (CENT5 OR CENT6 OR CENT7) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_centrality_50_100_bptx_and <= single_eg_i47 and ( single_cent5_i6 or single_cent6_i7 or single_cent7_i8 ) and single_ext_i0;
algo(58) <= l1_single_eg21_centrality_50_100_bptx_and;

-- 489 L1_SingleEG7_SingleJet40_MidEta2p7 : EG7 AND JET40[JET-ETA_2p7]
l1_single_eg7_single_jet40_mid_eta2p7 <= single_eg_i44 and single_jet_i57;
algo(74) <= l1_single_eg7_single_jet40_mid_eta2p7;

-- 490 L1_SingleEG12_SingleJet32_MidEta2p7 : EG12 AND JET32[JET-ETA_2p7]
l1_single_eg12_single_jet32_mid_eta2p7 <= single_eg_i45 and single_jet_i56;
algo(72) <= l1_single_eg12_single_jet32_mid_eta2p7;


-- ========================================================