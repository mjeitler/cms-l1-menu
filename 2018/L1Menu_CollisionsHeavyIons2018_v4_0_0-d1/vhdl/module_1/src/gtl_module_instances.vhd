-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_0_0

-- Unique ID of L1 Trigger Menu:
-- b12c51f7-2c74-44b9-b170-21566e834f41

-- Unique ID of firmware implementation:
-- c0a658bc-2cd9-438e-a63d-025076271663

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i197 <= ext_cond_bx_0(57); -- single_ext_i197
single_ext_i198 <= ext_cond_bx_0(59); -- single_ext_i198
single_ext_i199 <= ext_cond_bx_0(58); -- single_ext_i199
single_ext_i44 <= ext_cond_bx_0(7); -- single_ext_i44
single_ext_i45 <= ext_cond_bx_0(7); -- single_ext_i45
single_ext_i46 <= ext_cond_bx_0(4); -- single_ext_i46
single_ext_i47 <= ext_cond_bx_0(7); -- single_ext_i47
single_ext_i48 <= ext_cond_bx_0(7); -- single_ext_i48
single_ext_i49 <= ext_cond_bx_0(4); -- single_ext_i49
single_ext_i50 <= ext_cond_bx_0(4); -- single_ext_i50
single_ext_i51 <= ext_cond_bx_0(4); -- single_ext_i51
single_ext_i52 <= ext_cond_bx_0(4); -- single_ext_i52
single_ext_i53 <= ext_cond_bx_0(7); -- single_ext_i53
single_ext_i83 <= ext_cond_bx_0(40); -- single_ext_i83
single_ext_i84 <= ext_cond_bx_0(41); -- single_ext_i84
single_ext_i85 <= ext_cond_bx_0(43); -- single_ext_i85
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
    diff_mu_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
        port map(mu_eta_integer_bx_0, mu_eta_integer_bx_0, diff_mu_mu_bx_0_bx_0_eta_integer);
    diff_mu_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
        port map(mu_phi_integer_bx_0, mu_phi_integer_bx_0, diff_mu_mu_bx_0_bx_0_phi_integer);
    mu_mu_bx_0_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            diff_mu_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_mu_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate mu_mu_bx_0_bx_0_l2;
    end generate mu_mu_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
double_eg_i155_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i155);


double_eg_i156_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i156);


double_eg_i157_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
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
        double_eg_i157);


double_eg_i158_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i158);


double_jet_i132_i: entity work.calo_conditions_v7_no_quad
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
        double_jet_i132);


double_jet_i133_i: entity work.calo_conditions_v7_no_quad
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
        double_jet_i133);


double_jet_i134_i: entity work.calo_conditions_v7_no_quad
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
        double_jet_i134);


double_jet_i135_i: entity work.calo_conditions_v7_no_quad
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
        double_jet_i135);


double_jet_i136_i: entity work.calo_conditions_v7_no_quad
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
        double_jet_i136);


single_eg_i137_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i137);


single_eg_i138_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i138);


single_eg_i139_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i139);


single_eg_i140_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i140);


single_eg_i141_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i141);


single_eg_i142_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i142);


single_eg_i143_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i143);


single_eg_i150_i: entity work.calo_conditions_v7_no_quad
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
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i150);


single_eg_i151_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i151);


single_eg_i152_i: entity work.calo_conditions_v7_no_quad
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
        (X"A", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_i152);


single_eg_i153_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i153);


single_eg_i154_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i154);


single_eg_i162_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i162);


single_eg_i163_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i163);


single_jet_i105_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i105);


single_jet_i106_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i106);


single_jet_i107_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i107);


single_jet_i108_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i108);


single_jet_i109_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i109);


single_jet_i110_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i110);


single_jet_i111_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i111);


single_jet_i112_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i112);


single_jet_i113_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i113);


single_jet_i114_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i114);


single_jet_i115_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i115);


single_jet_i116_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0090", X"0000", X"0000", X"0000"),
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
        single_jet_i116);


single_jet_i117_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00A0", X"0000", X"0000", X"0000"),
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
        single_jet_i117);


single_jet_i118_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i118);


single_jet_i119_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i119);


single_jet_i120_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i120);


single_jet_i121_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i121);


single_jet_i122_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i122);


single_jet_i123_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i123);


single_jet_i124_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i124);


single_jet_i125_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i125);


single_jet_i126_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i126);


single_jet_i127_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i127);


single_jet_i128_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i128);


single_jet_i129_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i129);


single_jet_i130_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i130);


single_jet_i131_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i131);


single_jet_i144_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
        single_jet_i144);


single_jet_i145_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i145);


single_jet_i146_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i146);


single_jet_i147_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
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
        single_jet_i147);


single_jet_i148_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
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
        single_jet_i148);


single_jet_i149_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
        single_jet_i149);


single_jet_i161_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
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
        single_jet_i161);


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


double_mu_i164_i: entity work.muon_conditions_v7
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
        double_mu_i164,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i166_i: entity work.muon_conditions_v7
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
        "os",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_i166,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i167_i: entity work.muon_conditions_v7
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
        double_mu_i167,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i171_i: entity work.muon_conditions_v7
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
        double_mu_i171,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_i94_i: entity work.muon_conditions_v7
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
        double_mu_i94,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i159_i: entity work.muon_conditions_v7
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
        single_mu_i159);


single_mu_i160_i: entity work.muon_conditions_v7
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
        single_mu_i160);


single_mu_i89_i: entity work.muon_conditions_v7
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
        single_mu_i89);


single_mu_i90_i: entity work.muon_conditions_v7
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
        single_mu_i90);


single_mu_i91_i: entity work.muon_conditions_v7
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
        single_mu_i91);


single_mu_i92_i: entity work.muon_conditions_v7
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
        single_mu_i92);


single_mu_i93_i: entity work.muon_conditions_v7
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
        single_mu_i93);


single_asymet_i173_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i173);


single_asymet_i174_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i174);


single_asymet_i175_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i175);


single_asymet_i176_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i176);


single_asymet_i177_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i177);


single_asymet_i178_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0037",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i178);


single_asymet_i179_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0041",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i179);


single_ett_i172_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i172);


single_ett_i180_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i180);


single_ett_i181_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i181);


single_ett_i182_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i182);


single_ett_i183_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i183);


single_ett_i184_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i184);


single_ett_i185_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i185);


single_ett_i186_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"005A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i186);


single_ett_i187_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i187);


single_ett_i188_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i188);


single_ett_i189_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i189);


single_ett_i190_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i190);


single_ett_i191_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i191);


single_ett_i192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0028",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i192);


single_ett_i193_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i193);


single_ett_i194_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i194);


single_ett_i195_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i195);


single_ett_i95_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0014",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i95);


muon_muon_correlation_i168_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000003D0900", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_i168);

muon_muon_correlation_i169_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000003D0900", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_i169);

muon_muon_correlation_i170_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        0, 7, true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "ig",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000BAEB90", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_i170);

single_mbt0_hfm_i55_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i55);


single_mbt1_hfm_i97_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i97);


single_mbt0_hfp_i54_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i54);


single_mbt1_hfp_i96_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i96);


single_cent0_i98 <= cent0_bx_0;


single_cent1_i99 <= cent1_bx_0;


single_cent2_i100 <= cent2_bx_0;


single_cent3_i101 <= cent3_bx_0;


single_cent4_i102 <= cent4_bx_0;


single_cent5_i103 <= cent5_bx_0;


single_cent6_i165 <= cent6_bx_0;


-- Instantiations of algorithms

-- 4 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i93;
algo(95) <= l1_single_mu_open;

-- 6 L1_SingleMu0 : MU0[MU-QLTY_SNGL]
l1_single_mu0 <= single_mu_i159;
algo(291) <= l1_single_mu0;

-- 10 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_i91;
algo(296) <= l1_single_mu3;

-- 11 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_i90;
algo(331) <= l1_single_mu5;

-- 13 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_i89;
algo(36) <= l1_single_mu7;

-- 14 L1_SingleMu12 : MU12[MU-QLTY_SNGL]
l1_single_mu12 <= single_mu_i160;
algo(128) <= l1_single_mu12;

-- 18 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_i92;
algo(301) <= l1_single_mu16;

-- 24 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu_open <= double_mu_i164;
algo(73) <= l1_double_mu_open;

-- 25 L1_DoubleMuOpen_OS : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS]
l1_double_mu_open_os <= double_mu_i166;
algo(165) <= l1_double_mu_open_os;

-- 26 L1_DoubleMuOpen_SS : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS]
l1_double_mu_open_ss <= double_mu_i167;
algo(141) <= l1_double_mu_open_ss;

-- 27 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_i94;
algo(9) <= l1_double_mu0;

-- 34 L1_SingleEG3 : EG3
l1_single_eg3 <= single_eg_i137;
algo(298) <= l1_single_eg3;

-- 35 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_i138;
algo(325) <= l1_single_eg5;

-- 43 L1_DoubleEG2 : comb{EG2,EG2}
l1_double_eg2 <= double_eg_i155;
algo(158) <= l1_double_eg2;

-- 44 L1_DoubleEG5 : comb{EG5,EG5}
l1_double_eg5 <= double_eg_i156;
algo(18) <= l1_double_eg5;

-- 48 L1_SingleJet8 : JET8
l1_single_jet8 <= single_jet_i105;
algo(237) <= l1_single_jet8;

-- 50 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_i21;
algo(147) <= l1_single_jet60;

-- 77 L1_ETT5 : ETT5
l1_ett5 <= single_ett_i172;
algo(184) <= l1_ett5;

-- 91 L1_TOTEM_1 : EXT_TOTEM_1
l1_totem_1 <= single_ext_i83;
algo(287) <= l1_totem_1;

-- 92 L1_TOTEM_2 : EXT_TOTEM_2
l1_totem_2 <= single_ext_i84;
algo(161) <= l1_totem_2;

-- 94 L1_TOTEM_4 : EXT_TOTEM_4
l1_totem_4 <= single_ext_i85;
algo(22) <= l1_totem_4;

-- 99 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_i46 or ( not single_ext_i46 );
algo(112) <= l1_always_true;

-- 100 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_i46;
algo(196) <= l1_zero_bias;

-- 101 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_i46;
algo(41) <= l1_zero_bias_copy;

-- 102 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_i53;
algo(254) <= l1_bptx_or;

-- 103 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_i53;
algo(192) <= l1_not_bptx_or;

-- 115 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_i44 ) and ( not single_ext_i45 ) and single_ext_i46 and ( not single_ext_i47 ) and ( not single_ext_i48 );
algo(72) <= l1_isolated_bunch;

-- 116 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_i44 ) and ( not single_ext_i45 ) and single_ext_i46 and single_ext_i49 and single_ext_i50;
algo(85) <= l1_first_bunch_in_train;

-- 117 L1_SecondBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_second_bunch_in_train <= ( not single_ext_i44 ) and single_ext_i52 and single_ext_i46 and single_ext_i49 and single_ext_i50;
algo(16) <= l1_second_bunch_in_train;

-- 118 L1_LastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_last_bunch_in_train <= single_ext_i51 and single_ext_i52 and single_ext_i46 and ( not single_ext_i47 ) and ( not single_ext_i48 );
algo(239) <= l1_last_bunch_in_train;

-- 119 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_i51 and single_ext_i52 and ( not single_ext_i53 ) and ( not single_ext_i47 ) and ( not single_ext_i48 );
algo(4) <= l1_first_bunch_after_train;

-- 120 L1_FirstBunchBeforeTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_before_train <= ( not single_ext_i44 ) and ( not single_ext_i45 ) and ( not single_ext_i53 ) and single_ext_i49 and single_ext_i50;
algo(223) <= l1_first_bunch_before_train;

-- 121 L1_SecondLastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND ( NOT EXT_BPTX_OR_VME+2)
l1_second_last_bunch_in_train <= single_ext_i51 and single_ext_i52 and single_ext_i46 and single_ext_i49 and ( not single_ext_i48 );
algo(217) <= l1_second_last_bunch_in_train;

-- 140 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(12) <= l1_minimum_bias_hf0_and_bptx_and;

-- 141 L1_NotMinimumBiasHF0_AND_BptxAND : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_and_bptx_and <= ( not ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) ) and single_ext_i46;
algo(31) <= l1_not_minimum_bias_hf0_and_bptx_and;

-- 142 L1_NotMinimumBiasHF0_OR_BptxAND : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_or_bptx_and <= ( not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) ) and single_ext_i46;
algo(269) <= l1_not_minimum_bias_hf0_or_bptx_and;

-- 143 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(194) <= l1_minimum_bias_hf0_or_bptx_and;

-- 145 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_1 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_1
l1_not_minimum_bias_hf0_and_bptx_and_totem_1 <= ( not ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i83;
algo(168) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_1;

-- 146 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_2 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_2
l1_not_minimum_bias_hf0_and_bptx_and_totem_2 <= ( not ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i84;
algo(13) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_2;

-- 147 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_4 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_4
l1_not_minimum_bias_hf0_and_bptx_and_totem_4 <= ( not ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i85;
algo(262) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_4;

-- 148 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_1 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_1
l1_not_minimum_bias_hf0_or_bptx_and_totem_1 <= ( not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i83;
algo(280) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_1;

-- 149 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_2 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_2
l1_not_minimum_bias_hf0_or_bptx_and_totem_2 <= ( not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i84;
algo(281) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_2;

-- 150 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_4 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_4
l1_not_minimum_bias_hf0_or_bptx_and_totem_4 <= ( not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) ) and single_ext_i46 and single_ext_i85;
algo(91) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_4;

-- 152 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 );
algo(308) <= l1_minimum_bias_hf1_and;

-- 153 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 );
algo(235) <= l1_minimum_bias_hf1_or;

-- 154 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(250) <= l1_minimum_bias_hf1_and_bptx_and;

-- 155 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(138) <= l1_minimum_bias_hf1_or_bptx_and;

-- 156 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i54 xor single_mbt0_hfm_i55 ) and single_ext_i46;
algo(117) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 157 L1_MinimumBiasHF1_AND_OR_ETT10_BptxAND : ((MBT0HFP1 AND MBT0HFM1) OR ETT10) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_or_ett10_bptx_and <= ( ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) or single_ett_i95 ) and single_ext_i46;
algo(116) <= l1_minimum_bias_hf1_and_or_ett10_bptx_and;

-- 158 L1_NotMinimumBiasHF1_AND :  NOT (MBT0HFP1 AND MBT0HFM1)
l1_not_minimum_bias_hf1_and <= not ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 );
algo(279) <= l1_not_minimum_bias_hf1_and;

-- 159 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 );
algo(164) <= l1_not_minimum_bias_hf1_or;

-- 160 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(226) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 162 L1_MinimumBiasHF2_AND : (MBT1HFP1 AND MBT1HFM1)
l1_minimum_bias_hf2_and <= ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 );
algo(245) <= l1_minimum_bias_hf2_and;

-- 163 L1_MinimumBiasHF2_OR : (MBT1HFP1 OR MBT1HFM1)
l1_minimum_bias_hf2_or <= ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 );
algo(175) <= l1_minimum_bias_hf2_or;

-- 164 L1_MinimumBiasHF2_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_and_bptx_and <= ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(123) <= l1_minimum_bias_hf2_and_bptx_and;

-- 165 L1_MinimumBiasHF2_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_or_bptx_and <= ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(143) <= l1_minimum_bias_hf2_or_bptx_and;

-- 166 L1_NotMinimumBiasHF2_AND :  NOT (MBT1HFP1 AND MBT1HFM1)
l1_not_minimum_bias_hf2_and <= not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 );
algo(60) <= l1_not_minimum_bias_hf2_and;

-- 167 L1_NotMinimumBiasHF2_OR :  NOT (MBT1HFP1 OR MBT1HFM1)
l1_not_minimum_bias_hf2_or <= not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 );
algo(101) <= l1_not_minimum_bias_hf2_or;

-- 168 L1_NotMinimumBiasHF2_OR_BptxAND :  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_or_bptx_and <= not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(313) <= l1_not_minimum_bias_hf2_or_bptx_and;

-- 172 L1_Centrality_30_100 : (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4)
l1_centrality_30_100 <= ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 );
algo(93) <= l1_centrality_30_100;

-- 173 L1_Centrality_50_100 : (CENT0 OR CENT1 OR CENT2)
l1_centrality_50_100 <= ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 );
algo(50) <= l1_centrality_50_100;

-- 174 L1_Centrality_20_100_MinimumBiasHF1_AND_BptxAND : (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4 OR CENT5) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_20_100_minimum_bias_hf1_and_bptx_and <= ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 or single_cent5_i103 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(277) <= l1_centrality_20_100_minimum_bias_hf1_and_bptx_and;

-- 175 L1_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_centrality_30_100_minimum_bias_hf1_and_bptx_and <= ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(83) <= l1_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 180 L1_SingleMuOpen_BptxAND : MU0[MU-QLTY_OPEN] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_bptx_and <= single_mu_i93 and single_ext_i46;
algo(124) <= l1_single_mu_open_bptx_and;

-- 181 L1_SingleMu0_BptxAND : MU0[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_bptx_and <= single_mu_i159 and single_ext_i46;
algo(253) <= l1_single_mu0_bptx_and;

-- 182 L1_SingleMu3_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_bptx_and <= single_mu_i91 and single_ext_i46;
algo(252) <= l1_single_mu3_bptx_and;

-- 183 L1_SingleMu5_BptxAND : MU5[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_bptx_and <= single_mu_i90 and single_ext_i46;
algo(199) <= l1_single_mu5_bptx_and;

-- 184 L1_SingleMu7_BptxAND : MU7[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_bptx_and <= single_mu_i89 and single_ext_i46;
algo(40) <= l1_single_mu7_bptx_and;

-- 185 L1_SingleMu12_BptxAND : MU12[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_bptx_and <= single_mu_i160 and single_ext_i46;
algo(189) <= l1_single_mu12_bptx_and;

-- 186 L1_SingleMu16_BptxAND : MU16[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_bptx_and <= single_mu_i92 and single_ext_i46;
algo(275) <= l1_single_mu16_bptx_and;

-- 189 L1_SingleMuOpen_Centrality_70_100_BptxAND : MU0[MU-QLTY_OPEN] AND (CENT0 OR CENT1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_70_100_bptx_and <= single_mu_i93 and ( single_cent0_i98 or single_cent1_i99 ) and single_ext_i46;
algo(97) <= l1_single_mu_open_centrality_70_100_bptx_and;

-- 190 L1_SingleMu3_Centrality_70_100_BptxAND : MU3[MU-QLTY_SNGL] AND (CENT0 OR CENT1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_70_100_bptx_and <= single_mu_i91 and ( single_cent0_i98 or single_cent1_i99 ) and single_ext_i46;
algo(230) <= l1_single_mu3_centrality_70_100_bptx_and;

-- 191 L1_SingleMuOpen_Centrality_80_100_BptxAND : MU0[MU-QLTY_OPEN] AND CENT0 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_80_100_bptx_and <= single_mu_i93 and single_cent0_i98 and single_ext_i46;
algo(241) <= l1_single_mu_open_centrality_80_100_bptx_and;

-- 192 L1_SingleMu3_Centrality_80_100_BptxAND : MU3[MU-QLTY_SNGL] AND CENT0 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_80_100_bptx_and <= single_mu_i91 and single_cent0_i98 and single_ext_i46;
algo(271) <= l1_single_mu3_centrality_80_100_bptx_and;

-- 193 L1_SingleMu3_MinimumBiasHF1_AND_BptxAND : MU3[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_minimum_bias_hf1_and_bptx_and <= single_mu_i91 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(274) <= l1_single_mu3_minimum_bias_hf1_and_bptx_and;

-- 194 L1_SingleMu5_MinimumBiasHF1_AND_BptxAND : MU5[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_minimum_bias_hf1_and_bptx_and <= single_mu_i90 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(5) <= l1_single_mu5_minimum_bias_hf1_and_bptx_and;

-- 195 L1_SingleMu7_MinimumBiasHF1_AND_BptxAND : MU7[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_minimum_bias_hf1_and_bptx_and <= single_mu_i89 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(321) <= l1_single_mu7_minimum_bias_hf1_and_bptx_and;

-- 196 L1_SingleMu12_MinimumBiasHF1_AND_BptxAND : MU12[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_minimum_bias_hf1_and_bptx_and <= single_mu_i160 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(186) <= l1_single_mu12_minimum_bias_hf1_and_bptx_and;

-- 197 L1_SingleMu16_MinimumBiasHF1_AND_BptxAND : MU16[MU-QLTY_SNGL] AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu16_minimum_bias_hf1_and_bptx_and <= single_mu_i92 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(183) <= l1_single_mu16_minimum_bias_hf1_and_bptx_and;

-- 199 L1_SingleMuOpen_NotMinimumBiasHF2_OR_BptxAND : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_not_minimum_bias_hf2_or_bptx_and <= single_mu_i93 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(137) <= l1_single_mu_open_not_minimum_bias_hf2_or_bptx_and;

-- 200 L1_SingleMu0_NotMinimumBiasHF2_OR_BptxAND : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_not_minimum_bias_hf2_or_bptx_and <= single_mu_i159 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(302) <= l1_single_mu0_not_minimum_bias_hf2_or_bptx_and;

-- 201 L1_SingleMu3_NotMinimumBiasHF2_OR_BptxAND : MU3[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_not_minimum_bias_hf2_or_bptx_and <= single_mu_i91 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(145) <= l1_single_mu3_not_minimum_bias_hf2_or_bptx_and;

-- 202 L1_SingleMuOpen_NotMinimumBiasHF2_AND_BptxAND : MU0[MU-QLTY_OPEN] AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_not_minimum_bias_hf2_and_bptx_and <= single_mu_i93 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(216) <= l1_single_mu_open_not_minimum_bias_hf2_and_bptx_and;

-- 203 L1_SingleMu0_NotMinimumBiasHF2_AND_BptxAND : MU0[MU-QLTY_SNGL] AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_not_minimum_bias_hf2_and_bptx_and <= single_mu_i159 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(323) <= l1_single_mu0_not_minimum_bias_hf2_and_bptx_and;

-- 205 L1_SingleMuOpen_Centrality_70_100_MinimumBiasHF1_AND_BptxAND : MU0[MU-QLTY_OPEN] AND (CENT0 OR CENT1) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_70_100_minimum_bias_hf1_and_bptx_and <= single_mu_i93 and ( single_cent0_i98 or single_cent1_i99 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(156) <= l1_single_mu_open_centrality_70_100_minimum_bias_hf1_and_bptx_and;

-- 206 L1_SingleMuOpen_Centrality_80_100_MinimumBiasHF1_AND_BptxAND : MU0[MU-QLTY_OPEN] AND CENT0 AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_80_100_minimum_bias_hf1_and_bptx_and <= single_mu_i93 and single_cent0_i98 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(126) <= l1_single_mu_open_centrality_80_100_minimum_bias_hf1_and_bptx_and;

-- 208 L1_SingleMuOpen_SingleJet28_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet28_mid_eta2p7_bptx_and <= single_mu_i93 and single_jet_i144 and single_ext_i46;
algo(142) <= l1_single_mu_open_single_jet28_mid_eta2p7_bptx_and;

-- 209 L1_SingleMuOpen_SingleJet44_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and <= single_mu_i93 and single_jet_i147 and single_ext_i46;
algo(34) <= l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and;

-- 210 L1_SingleMuOpen_SingleJet56_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and <= single_mu_i93 and single_jet_i148 and single_ext_i46;
algo(106) <= l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and;

-- 211 L1_SingleMuOpen_SingleJet64_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET64[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet64_mid_eta2p7_bptx_and <= single_mu_i93 and single_jet_i161 and single_ext_i46;
algo(122) <= l1_single_mu_open_single_jet64_mid_eta2p7_bptx_and;

-- 212 L1_SingleMu3_SingleJet28_MidEta2p7_BptxAND : MU3[MU-QLTY_SNGL] AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_jet28_mid_eta2p7_bptx_and <= single_mu_i91 and single_jet_i144 and single_ext_i46;
algo(208) <= l1_single_mu3_single_jet28_mid_eta2p7_bptx_and;

-- 213 L1_SingleMu3_SingleJet32_MidEta2p7_BptxAND : MU3[MU-QLTY_SNGL] AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_jet32_mid_eta2p7_bptx_and <= single_mu_i91 and single_jet_i145 and single_ext_i46;
algo(320) <= l1_single_mu3_single_jet32_mid_eta2p7_bptx_and;

-- 214 L1_SingleMu3_SingleJet40_MidEta2p7_BptxAND : MU3[MU-QLTY_SNGL] AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_jet40_mid_eta2p7_bptx_and <= single_mu_i91 and single_jet_i146 and single_ext_i46;
algo(283) <= l1_single_mu3_single_jet40_mid_eta2p7_bptx_and;

-- 216 L1_SingleMu3_SingleEG12_BptxAND : MU3[MU-QLTY_SNGL] AND EG12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_eg12_bptx_and <= single_mu_i91 and single_eg_i140 and single_ext_i46;
algo(318) <= l1_single_mu3_single_eg12_bptx_and;

-- 217 L1_SingleMu3_SingleEG15_BptxAND : MU3[MU-QLTY_SNGL] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_eg15_bptx_and <= single_mu_i91 and single_eg_i141 and single_ext_i46;
algo(293) <= l1_single_mu3_single_eg15_bptx_and;

-- 218 L1_SingleMu3_SingleEG20_BptxAND : MU3[MU-QLTY_SNGL] AND EG20 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_eg20_bptx_and <= single_mu_i91 and single_eg_i162 and single_ext_i46;
algo(300) <= l1_single_mu3_single_eg20_bptx_and;

-- 219 L1_SingleMu3_SingleEG30_BptxAND : MU3[MU-QLTY_SNGL] AND EG30 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_eg30_bptx_and <= single_mu_i91 and single_eg_i143 and single_ext_i46;
algo(108) <= l1_single_mu3_single_eg30_bptx_and;

-- 220 L1_SingleMu5_SingleEG10_BptxAND : MU5[MU-QLTY_SNGL] AND EG10 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg10_bptx_and <= single_mu_i90 and single_eg_i163 and single_ext_i46;
algo(20) <= l1_single_mu5_single_eg10_bptx_and;

-- 221 L1_SingleMu5_SingleEG12_BptxAND : MU5[MU-QLTY_SNGL] AND EG12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg12_bptx_and <= single_mu_i90 and single_eg_i140 and single_ext_i46;
algo(131) <= l1_single_mu5_single_eg12_bptx_and;

-- 222 L1_SingleMu5_SingleEG15_BptxAND : MU5[MU-QLTY_SNGL] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg15_bptx_and <= single_mu_i90 and single_eg_i141 and single_ext_i46;
algo(26) <= l1_single_mu5_single_eg15_bptx_and;

-- 223 L1_SingleMu5_SingleEG20_BptxAND : MU5[MU-QLTY_SNGL] AND EG20 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg20_bptx_and <= single_mu_i90 and single_eg_i162 and single_ext_i46;
algo(215) <= l1_single_mu5_single_eg20_bptx_and;

-- 224 L1_SingleMu7_SingleEG7_BptxAND : MU7[MU-QLTY_SNGL] AND EG7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg7_bptx_and <= single_mu_i89 and single_eg_i139 and single_ext_i46;
algo(125) <= l1_single_mu7_single_eg7_bptx_and;

-- 225 L1_SingleMu7_SingleEG10_BptxAND : MU7[MU-QLTY_SNGL] AND EG10 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg10_bptx_and <= single_mu_i89 and single_eg_i163 and single_ext_i46;
algo(54) <= l1_single_mu7_single_eg10_bptx_and;

-- 226 L1_SingleMu7_SingleEG12_BptxAND : MU7[MU-QLTY_SNGL] AND EG12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg12_bptx_and <= single_mu_i89 and single_eg_i140 and single_ext_i46;
algo(58) <= l1_single_mu7_single_eg12_bptx_and;

-- 227 L1_SingleMu7_SingleEG15_BptxAND : MU7[MU-QLTY_SNGL] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg15_bptx_and <= single_mu_i89 and single_eg_i141 and single_ext_i46;
algo(94) <= l1_single_mu7_single_eg15_bptx_and;

-- 228 L1_SingleMu12_SingleEG7_BptxAND : MU12[MU-QLTY_SNGL] AND EG7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu12_single_eg7_bptx_and <= single_mu_i160 and single_eg_i139 and single_ext_i46;
algo(198) <= l1_single_mu12_single_eg7_bptx_and;

-- 232 L1_DoubleMuOpen_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_bptx_and <= double_mu_i164 and single_ext_i46;
algo(144) <= l1_double_mu_open_bptx_and;

-- 233 L1_DoubleMuOpen_OS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_os_bptx_and <= double_mu_i166 and single_ext_i46;
algo(177) <= l1_double_mu_open_os_bptx_and;

-- 234 L1_DoubleMuOpen_SS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_ss_bptx_and <= double_mu_i167 and single_ext_i46;
algo(89) <= l1_double_mu_open_ss_bptx_and;

-- 235 L1_DoubleMu0_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_bptx_and <= double_mu_i94 and single_ext_i46;
algo(37) <= l1_double_mu0_bptx_and;

-- 236 L1_DoubleMu10_BptxAND : comb{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu10_bptx_and <= double_mu_i171 and single_ext_i46;
algo(155) <= l1_double_mu10_bptx_and;

-- 238 L1_DoubleMuOpen_MaxDr2p0_BptxAND : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX2p0] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_max_dr2p0_bptx_and <= muon_muon_correlation_i168 and single_ext_i46;
algo(0) <= l1_double_mu_open_max_dr2p0_bptx_and;

-- 239 L1_DoubleMuOpen_MaxDr2p0_OS_BptxAND : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX2p0,CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_max_dr2p0_os_bptx_and <= muon_muon_correlation_i169 and single_ext_i46;
algo(211) <= l1_double_mu_open_max_dr2p0_os_bptx_and;

-- 240 L1_DoubleMuOpen_MaxDr3p5 : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX3p5]
l1_double_mu_open_max_dr3p5 <= muon_muon_correlation_i170;
algo(221) <= l1_double_mu_open_max_dr3p5;

-- 241 L1_DoubleMuOpen_MaxDr3p5_BptxAND : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX3p5] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_max_dr3p5_bptx_and <= muon_muon_correlation_i170 and single_ext_i46;
algo(67) <= l1_double_mu_open_max_dr3p5_bptx_and;

-- 243 L1_DoubleMu0_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_minimum_bias_hf1_and_bptx_and <= double_mu_i94 and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(109) <= l1_double_mu0_minimum_bias_hf1_and_bptx_and;

-- 244 L1_DoubleMuOpen_NotMinimumBiasHF2_OR_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and <= double_mu_i164 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(316) <= l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and;

-- 245 L1_DoubleMu0_NotMinimumBiasHF2_OR_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_not_minimum_bias_hf2_or_bptx_and <= double_mu_i94 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(139) <= l1_double_mu0_not_minimum_bias_hf2_or_bptx_and;

-- 246 L1_DoubleMu0_NotMinimumBiasHF2_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_not_minimum_bias_hf2_and_bptx_and <= double_mu_i94 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(264) <= l1_double_mu0_not_minimum_bias_hf2_and_bptx_and;

-- 248 L1_DoubleMuOpen_Centrality_10_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4 OR CENT5 OR CENT6) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_10_100_bptx_and <= double_mu_i164 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 or single_cent5_i103 or single_cent6_i165 ) and single_ext_i46;
algo(159) <= l1_double_mu_open_centrality_10_100_bptx_and;

-- 249 L1_DoubleMuOpen_Centrality_30_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_30_100_bptx_and <= double_mu_i164 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(219) <= l1_double_mu_open_centrality_30_100_bptx_and;

-- 250 L1_DoubleMuOpen_Centrality_40_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_40_100_bptx_and <= double_mu_i164 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 ) and single_ext_i46;
algo(238) <= l1_double_mu_open_centrality_40_100_bptx_and;

-- 251 L1_DoubleMuOpen_Centrality_50_100_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_centrality_50_100_bptx_and <= double_mu_i164 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(244) <= l1_double_mu_open_centrality_50_100_bptx_and;

-- 253 L1_DoubleMu0_Centrality_10_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4 OR CENT5 OR CENT6) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and <= double_mu_i94 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 or single_cent5_i103 or single_cent6_i165 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(324) <= l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and;

-- 254 L1_DoubleMu0_Centrality_30_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and <= double_mu_i94 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(118) <= l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and;

-- 255 L1_DoubleMu0_Centrality_50_100_MinimumBiasHF1_AND_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND (CENT0 OR CENT1 OR CENT2) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and <= double_mu_i94 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(121) <= l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and;

-- 259 L1_SingleJet8_BptxAND : JET8 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_bptx_and <= single_jet_i105 and single_ext_i46;
algo(153) <= l1_single_jet8_bptx_and;

-- 260 L1_SingleJet16_BptxAND : JET16 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_bptx_and <= single_jet_i106 and single_ext_i46;
algo(261) <= l1_single_jet16_bptx_and;

-- 261 L1_SingleJet24_BptxAND : JET24 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_bptx_and <= single_jet_i107 and single_ext_i46;
algo(88) <= l1_single_jet24_bptx_and;

-- 262 L1_SingleJet28_BptxAND : JET28 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_bptx_and <= single_jet_i108 and single_ext_i46;
algo(240) <= l1_single_jet28_bptx_and;

-- 263 L1_SingleJet32_BptxAND : JET32 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_bptx_and <= single_jet_i109 and single_ext_i46;
algo(96) <= l1_single_jet32_bptx_and;

-- 264 L1_SingleJet36_BptxAND : JET36 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_bptx_and <= single_jet_i110 and single_ext_i46;
algo(319) <= l1_single_jet36_bptx_and;

-- 265 L1_SingleJet40_BptxAND : JET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_bptx_and <= single_jet_i111 and single_ext_i46;
algo(170) <= l1_single_jet40_bptx_and;

-- 266 L1_SingleJet44_BptxAND : JET44 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_bptx_and <= single_jet_i112 and single_ext_i46;
algo(127) <= l1_single_jet44_bptx_and;

-- 267 L1_SingleJet48_BptxAND : JET48 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet48_bptx_and <= single_jet_i113 and single_ext_i46;
algo(246) <= l1_single_jet48_bptx_and;

-- 268 L1_SingleJet56_BptxAND : JET56 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_bptx_and <= single_jet_i114 and single_ext_i46;
algo(151) <= l1_single_jet56_bptx_and;

-- 269 L1_SingleJet60_BptxAND : JET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_bptx_and <= single_jet_i21 and single_ext_i46;
algo(314) <= l1_single_jet60_bptx_and;

-- 270 L1_SingleJet64_BptxAND : JET64 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_bptx_and <= single_jet_i115 and single_ext_i46;
algo(3) <= l1_single_jet64_bptx_and;

-- 271 L1_SingleJet72_BptxAND : JET72 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet72_bptx_and <= single_jet_i116 and single_ext_i46;
algo(171) <= l1_single_jet72_bptx_and;

-- 272 L1_SingleJet80_BptxAND : JET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet80_bptx_and <= single_jet_i117 and single_ext_i46;
algo(214) <= l1_single_jet80_bptx_and;

-- 274 L1_SingleJet8_FWD_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_bptx_and <= ( single_jet_i118 or single_jet_i119 ) and single_ext_i46;
algo(243) <= l1_single_jet8_fwd_bptx_and;

-- 275 L1_SingleJet16_FWD_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_bptx_and <= ( single_jet_i120 or single_jet_i121 ) and single_ext_i46;
algo(299) <= l1_single_jet16_fwd_bptx_and;

-- 276 L1_SingleJet28_FWD_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_bptx_and <= ( single_jet_i122 or single_jet_i123 ) and single_ext_i46;
algo(273) <= l1_single_jet28_fwd_bptx_and;

-- 277 L1_SingleJet36_FWD_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_bptx_and <= ( single_jet_i124 or single_jet_i125 ) and single_ext_i46;
algo(205) <= l1_single_jet36_fwd_bptx_and;

-- 278 L1_SingleJet44_FWD_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_bptx_and <= ( single_jet_i126 or single_jet_i127 ) and single_ext_i46;
algo(255) <= l1_single_jet44_fwd_bptx_and;

-- 279 L1_SingleJet56_FWD_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_bptx_and <= ( single_jet_i128 or single_jet_i129 ) and single_ext_i46;
algo(285) <= l1_single_jet56_fwd_bptx_and;

-- 280 L1_SingleJet64_FWD_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_bptx_and <= ( single_jet_i130 or single_jet_i131 ) and single_ext_i46;
algo(207) <= l1_single_jet64_fwd_bptx_and;

-- 282 L1_SingleJet8_Centrality_30_100_BptxAND : JET8 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_centrality_30_100_bptx_and <= single_jet_i105 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(284) <= l1_single_jet8_centrality_30_100_bptx_and;

-- 283 L1_SingleJet16_Centrality_30_100_BptxAND : JET16 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_30_100_bptx_and <= single_jet_i106 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(166) <= l1_single_jet16_centrality_30_100_bptx_and;

-- 284 L1_SingleJet24_Centrality_30_100_BptxAND : JET24 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_centrality_30_100_bptx_and <= single_jet_i107 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(206) <= l1_single_jet24_centrality_30_100_bptx_and;

-- 285 L1_SingleJet28_Centrality_30_100_BptxAND : JET28 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_30_100_bptx_and <= single_jet_i108 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(133) <= l1_single_jet28_centrality_30_100_bptx_and;

-- 286 L1_SingleJet32_Centrality_30_100_BptxAND : JET32 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_centrality_30_100_bptx_and <= single_jet_i109 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(43) <= l1_single_jet32_centrality_30_100_bptx_and;

-- 287 L1_SingleJet36_Centrality_30_100_BptxAND : JET36 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_30_100_bptx_and <= single_jet_i110 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(6) <= l1_single_jet36_centrality_30_100_bptx_and;

-- 288 L1_SingleJet40_Centrality_30_100_BptxAND : JET40 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_centrality_30_100_bptx_and <= single_jet_i111 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(228) <= l1_single_jet40_centrality_30_100_bptx_and;

-- 289 L1_SingleJet44_Centrality_30_100_BptxAND : JET44 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_centrality_30_100_bptx_and <= single_jet_i112 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(182) <= l1_single_jet44_centrality_30_100_bptx_and;

-- 290 L1_SingleJet48_Centrality_30_100_BptxAND : JET48 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet48_centrality_30_100_bptx_and <= single_jet_i113 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(232) <= l1_single_jet48_centrality_30_100_bptx_and;

-- 291 L1_SingleJet56_Centrality_30_100_BptxAND : JET56 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_30_100_bptx_and <= single_jet_i114 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(55) <= l1_single_jet56_centrality_30_100_bptx_and;

-- 292 L1_SingleJet60_Centrality_30_100_BptxAND : JET60 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_centrality_30_100_bptx_and <= single_jet_i21 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(286) <= l1_single_jet60_centrality_30_100_bptx_and;

-- 293 L1_SingleJet64_Centrality_30_100_BptxAND : JET64 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_30_100_bptx_and <= single_jet_i115 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(152) <= l1_single_jet64_centrality_30_100_bptx_and;

-- 295 L1_SingleJet8_Centrality_50_100_BptxAND : JET8 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_centrality_50_100_bptx_and <= single_jet_i105 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(100) <= l1_single_jet8_centrality_50_100_bptx_and;

-- 296 L1_SingleJet16_Centrality_50_100_BptxAND : JET16 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_centrality_50_100_bptx_and <= single_jet_i106 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(229) <= l1_single_jet16_centrality_50_100_bptx_and;

-- 297 L1_SingleJet24_Centrality_50_100_BptxAND : JET24 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_centrality_50_100_bptx_and <= single_jet_i107 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(59) <= l1_single_jet24_centrality_50_100_bptx_and;

-- 298 L1_SingleJet28_Centrality_50_100_BptxAND : JET28 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_centrality_50_100_bptx_and <= single_jet_i108 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(39) <= l1_single_jet28_centrality_50_100_bptx_and;

-- 299 L1_SingleJet32_Centrality_50_100_BptxAND : JET32 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_centrality_50_100_bptx_and <= single_jet_i109 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(268) <= l1_single_jet32_centrality_50_100_bptx_and;

-- 300 L1_SingleJet36_Centrality_50_100_BptxAND : JET36 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_centrality_50_100_bptx_and <= single_jet_i110 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(157) <= l1_single_jet36_centrality_50_100_bptx_and;

-- 301 L1_SingleJet40_Centrality_50_100_BptxAND : JET40 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_centrality_50_100_bptx_and <= single_jet_i111 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(225) <= l1_single_jet40_centrality_50_100_bptx_and;

-- 302 L1_SingleJet44_Centrality_50_100_BptxAND : JET44 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_centrality_50_100_bptx_and <= single_jet_i112 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(222) <= l1_single_jet44_centrality_50_100_bptx_and;

-- 303 L1_SingleJet48_Centrality_50_100_BptxAND : JET48 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet48_centrality_50_100_bptx_and <= single_jet_i113 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(24) <= l1_single_jet48_centrality_50_100_bptx_and;

-- 304 L1_SingleJet56_Centrality_50_100_BptxAND : JET56 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_centrality_50_100_bptx_and <= single_jet_i114 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(328) <= l1_single_jet56_centrality_50_100_bptx_and;

-- 305 L1_SingleJet60_Centrality_50_100_BptxAND : JET60 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet60_centrality_50_100_bptx_and <= single_jet_i21 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(322) <= l1_single_jet60_centrality_50_100_bptx_and;

-- 306 L1_SingleJet64_Centrality_50_100_BptxAND : JET64 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_50_100_bptx_and <= single_jet_i115 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(173) <= l1_single_jet64_centrality_50_100_bptx_and;

-- 308 L1_SingleJet8_FWD_Centrality_30_100_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_centrality_30_100_bptx_and <= ( single_jet_i118 or single_jet_i119 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(251) <= l1_single_jet8_fwd_centrality_30_100_bptx_and;

-- 309 L1_SingleJet16_FWD_Centrality_30_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_30_100_bptx_and <= ( single_jet_i120 or single_jet_i121 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(65) <= l1_single_jet16_fwd_centrality_30_100_bptx_and;

-- 310 L1_SingleJet28_FWD_Centrality_30_100_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_centrality_30_100_bptx_and <= ( single_jet_i122 or single_jet_i123 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(213) <= l1_single_jet28_fwd_centrality_30_100_bptx_and;

-- 311 L1_SingleJet36_FWD_Centrality_30_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_30_100_bptx_and <= ( single_jet_i124 or single_jet_i125 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(149) <= l1_single_jet36_fwd_centrality_30_100_bptx_and;

-- 312 L1_SingleJet44_FWD_Centrality_30_100_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_centrality_30_100_bptx_and <= ( single_jet_i126 or single_jet_i127 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(204) <= l1_single_jet44_fwd_centrality_30_100_bptx_and;

-- 313 L1_SingleJet56_FWD_Centrality_30_100_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_centrality_30_100_bptx_and <= ( single_jet_i128 or single_jet_i129 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(1) <= l1_single_jet56_fwd_centrality_30_100_bptx_and;

-- 314 L1_SingleJet64_FWD_Centrality_30_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_30_100_bptx_and <= ( single_jet_i130 or single_jet_i131 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(163) <= l1_single_jet64_fwd_centrality_30_100_bptx_and;

-- 316 L1_SingleJet8_FWD_Centrality_50_100_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_centrality_50_100_bptx_and <= ( single_jet_i118 or single_jet_i119 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(82) <= l1_single_jet8_fwd_centrality_50_100_bptx_and;

-- 317 L1_SingleJet16_FWD_Centrality_50_100_BptxAND : (JET16[JET-ETA_FWD_2p7_NEG] OR JET16[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_fwd_centrality_50_100_bptx_and <= ( single_jet_i120 or single_jet_i121 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(282) <= l1_single_jet16_fwd_centrality_50_100_bptx_and;

-- 318 L1_SingleJet28_FWD_Centrality_50_100_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_centrality_50_100_bptx_and <= ( single_jet_i122 or single_jet_i123 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(224) <= l1_single_jet28_fwd_centrality_50_100_bptx_and;

-- 319 L1_SingleJet36_FWD_Centrality_50_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_50_100_bptx_and <= ( single_jet_i124 or single_jet_i125 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(260) <= l1_single_jet36_fwd_centrality_50_100_bptx_and;

-- 320 L1_SingleJet44_FWD_Centrality_50_100_BptxAND : (JET44[JET-ETA_FWD_2p7_NEG] OR JET44[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet44_fwd_centrality_50_100_bptx_and <= ( single_jet_i126 or single_jet_i127 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(236) <= l1_single_jet44_fwd_centrality_50_100_bptx_and;

-- 321 L1_SingleJet56_FWD_Centrality_50_100_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_centrality_50_100_bptx_and <= ( single_jet_i128 or single_jet_i129 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(311) <= l1_single_jet56_fwd_centrality_50_100_bptx_and;

-- 322 L1_SingleJet64_FWD_Centrality_50_100_BptxAND : (JET64[JET-ETA_FWD_2p7_NEG] OR JET64[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_fwd_centrality_50_100_bptx_and <= ( single_jet_i130 or single_jet_i131 ) and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(188) <= l1_single_jet64_fwd_centrality_50_100_bptx_and;

-- 324 L1_DoubleJet16And8_MidEta2p7_BptxAND : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and8_mid_eta2p7_bptx_and <= double_jet_i132 and single_ext_i46;
algo(330) <= l1_double_jet16_and8_mid_eta2p7_bptx_and;

-- 325 L1_DoubleJet16And12_MidEta2p7_BptxAND : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and12_mid_eta2p7_bptx_and <= double_jet_i134 and single_ext_i46;
algo(315) <= l1_double_jet16_and12_mid_eta2p7_bptx_and;

-- 326 L1_DoubleJet20And8_MidEta2p7_BptxAND : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and8_mid_eta2p7_bptx_and <= double_jet_i133 and single_ext_i46;
algo(309) <= l1_double_jet20_and8_mid_eta2p7_bptx_and;

-- 327 L1_DoubleJet20And12_MidEta2p7_BptxAND : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and12_mid_eta2p7_bptx_and <= double_jet_i135 and single_ext_i46;
algo(56) <= l1_double_jet20_and12_mid_eta2p7_bptx_and;

-- 328 L1_DoubleJet28And16_MidEta2p7_BptxAND : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet28_and16_mid_eta2p7_bptx_and <= double_jet_i136 and single_ext_i46;
algo(28) <= l1_double_jet28_and16_mid_eta2p7_bptx_and;

-- 330 L1_DoubleJet16And8_MidEta2p7_Centrality_30_100_BptxAND : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and8_mid_eta2p7_centrality_30_100_bptx_and <= double_jet_i132 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(98) <= l1_double_jet16_and8_mid_eta2p7_centrality_30_100_bptx_and;

-- 331 L1_DoubleJet16And12_MidEta2p7_Centrality_30_100_BptxAND : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and12_mid_eta2p7_centrality_30_100_bptx_and <= double_jet_i134 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(38) <= l1_double_jet16_and12_mid_eta2p7_centrality_30_100_bptx_and;

-- 332 L1_DoubleJet20And8_MidEta2p7_Centrality_30_100_BptxAND : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and8_mid_eta2p7_centrality_30_100_bptx_and <= double_jet_i133 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(162) <= l1_double_jet20_and8_mid_eta2p7_centrality_30_100_bptx_and;

-- 333 L1_DoubleJet20And12_MidEta2p7_Centrality_30_100_BptxAND : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and12_mid_eta2p7_centrality_30_100_bptx_and <= double_jet_i135 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(148) <= l1_double_jet20_and12_mid_eta2p7_centrality_30_100_bptx_and;

-- 334 L1_DoubleJet28And16_MidEta2p7_Centrality_30_100_BptxAND : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet28_and16_mid_eta2p7_centrality_30_100_bptx_and <= double_jet_i136 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(270) <= l1_double_jet28_and16_mid_eta2p7_centrality_30_100_bptx_and;

-- 336 L1_DoubleJet16And8_MidEta2p7_Centrality_50_100_BptxAND : comb{JET16[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and8_mid_eta2p7_centrality_50_100_bptx_and <= double_jet_i132 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(256) <= l1_double_jet16_and8_mid_eta2p7_centrality_50_100_bptx_and;

-- 337 L1_DoubleJet16And12_MidEta2p7_Centrality_50_100_BptxAND : comb{JET16[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet16_and12_mid_eta2p7_centrality_50_100_bptx_and <= double_jet_i134 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(119) <= l1_double_jet16_and12_mid_eta2p7_centrality_50_100_bptx_and;

-- 338 L1_DoubleJet20And8_MidEta2p7_Centrality_50_100_BptxAND : comb{JET20[JET-ETA_2p7],JET8[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and8_mid_eta2p7_centrality_50_100_bptx_and <= double_jet_i133 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(185) <= l1_double_jet20_and8_mid_eta2p7_centrality_50_100_bptx_and;

-- 339 L1_DoubleJet20And12_MidEta2p7_Centrality_50_100_BptxAND : comb{JET20[JET-ETA_2p7],JET12[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet20_and12_mid_eta2p7_centrality_50_100_bptx_and <= double_jet_i135 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(110) <= l1_double_jet20_and12_mid_eta2p7_centrality_50_100_bptx_and;

-- 340 L1_DoubleJet28And16_MidEta2p7_Centrality_50_100_BptxAND : comb{JET28[JET-ETA_2p7],JET16[JET-ETA_2p7]} AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_jet28_and16_mid_eta2p7_centrality_50_100_bptx_and <= double_jet_i136 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(187) <= l1_double_jet28_and16_mid_eta2p7_centrality_50_100_bptx_and;

-- 344 L1_SingleEG3_BptxAND : EG3 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_bptx_and <= single_eg_i137 and single_ext_i46;
algo(75) <= l1_single_eg3_bptx_and;

-- 345 L1_SingleEG5_BptxAND : EG5 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_bptx_and <= single_eg_i138 and single_ext_i46;
algo(29) <= l1_single_eg5_bptx_and;

-- 346 L1_SingleEG7_BptxAND : EG7 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_bptx_and <= single_eg_i139 and single_ext_i46;
algo(53) <= l1_single_eg7_bptx_and;

-- 347 L1_SingleEG12_BptxAND : EG12 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_bptx_and <= single_eg_i140 and single_ext_i46;
algo(33) <= l1_single_eg12_bptx_and;

-- 348 L1_SingleEG15_BptxAND : EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_bptx_and <= single_eg_i141 and single_ext_i46;
algo(195) <= l1_single_eg15_bptx_and;

-- 349 L1_SingleEG21_BptxAND : EG21 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_bptx_and <= single_eg_i142 and single_ext_i46;
algo(160) <= l1_single_eg21_bptx_and;

-- 350 L1_SingleEG30_BptxAND : EG30 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg30_bptx_and <= single_eg_i143 and single_ext_i46;
algo(134) <= l1_single_eg30_bptx_and;

-- 352 L1_SingleIsoEG3_BptxAND : EG3[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg3_bptx_and <= single_eg_i150 and single_ext_i46;
algo(132) <= l1_single_iso_eg3_bptx_and;

-- 353 L1_SingleIsoEG7_BptxAND : EG7[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg7_bptx_and <= single_eg_i151 and single_ext_i46;
algo(312) <= l1_single_iso_eg7_bptx_and;

-- 354 L1_SingleIsoEG12_BptxAND : EG12[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg12_bptx_and <= single_eg_i152 and single_ext_i46;
algo(107) <= l1_single_iso_eg12_bptx_and;

-- 355 L1_SingleIsoEG15_BptxAND : EG15[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg15_bptx_and <= single_eg_i153 and single_ext_i46;
algo(242) <= l1_single_iso_eg15_bptx_and;

-- 356 L1_SingleIsoEG21_BptxAND : EG21[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg21_bptx_and <= single_eg_i154 and single_ext_i46;
algo(77) <= l1_single_iso_eg21_bptx_and;

-- 358 L1_SingleEG3_NotMinimumBiasHF2_OR_BptxAND : EG3 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_not_minimum_bias_hf2_or_bptx_and <= single_eg_i137 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(14) <= l1_single_eg3_not_minimum_bias_hf2_or_bptx_and;

-- 359 L1_SingleEG5_NotMinimumBiasHF2_OR_BptxAND : EG5 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_not_minimum_bias_hf2_or_bptx_and <= single_eg_i138 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(42) <= l1_single_eg5_not_minimum_bias_hf2_or_bptx_and;

-- 360 L1_SingleEG3_NotMinimumBiasHF2_AND_BptxAND : EG3 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_not_minimum_bias_hf2_and_bptx_and <= single_eg_i137 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(10) <= l1_single_eg3_not_minimum_bias_hf2_and_bptx_and;

-- 361 L1_SingleEG5_NotMinimumBiasHF2_AND_BptxAND : EG5 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_not_minimum_bias_hf2_and_bptx_and <= single_eg_i138 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(154) <= l1_single_eg5_not_minimum_bias_hf2_and_bptx_and;

-- 363 L1_SingleEG3_Centrality_30_100_BptxAND : EG3 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_30_100_bptx_and <= single_eg_i137 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(248) <= l1_single_eg3_centrality_30_100_bptx_and;

-- 364 L1_SingleEG7_Centrality_30_100_BptxAND : EG7 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_centrality_30_100_bptx_and <= single_eg_i139 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(51) <= l1_single_eg7_centrality_30_100_bptx_and;

-- 365 L1_SingleEG15_Centrality_30_100_BptxAND : EG15 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_centrality_30_100_bptx_and <= single_eg_i141 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(276) <= l1_single_eg15_centrality_30_100_bptx_and;

-- 366 L1_SingleEG21_Centrality_30_100_BptxAND : EG21 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_centrality_30_100_bptx_and <= single_eg_i142 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 or single_cent3_i101 or single_cent4_i102 ) and single_ext_i46;
algo(329) <= l1_single_eg21_centrality_30_100_bptx_and;

-- 368 L1_SingleEG3_Centrality_50_100_BptxAND : EG3 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_50_100_bptx_and <= single_eg_i137 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(7) <= l1_single_eg3_centrality_50_100_bptx_and;

-- 369 L1_SingleEG7_Centrality_50_100_BptxAND : EG7 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_centrality_50_100_bptx_and <= single_eg_i139 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(69) <= l1_single_eg7_centrality_50_100_bptx_and;

-- 370 L1_SingleEG15_Centrality_50_100_BptxAND : EG15 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_centrality_50_100_bptx_and <= single_eg_i141 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(78) <= l1_single_eg15_centrality_50_100_bptx_and;

-- 371 L1_SingleEG21_Centrality_50_100_BptxAND : EG21 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_centrality_50_100_bptx_and <= single_eg_i142 and ( single_cent0_i98 or single_cent1_i99 or single_cent2_i100 ) and single_ext_i46;
algo(135) <= l1_single_eg21_centrality_50_100_bptx_and;

-- 373 L1_SingleEG5_SingleJet28_MidEta2p7_BptxAND : EG5 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet28_mid_eta2p7_bptx_and <= single_eg_i138 and single_jet_i144 and single_ext_i46;
algo(295) <= l1_single_eg5_single_jet28_mid_eta2p7_bptx_and;

-- 374 L1_SingleEG5_SingleJet32_MidEta2p7_BptxAND : EG5 AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet32_mid_eta2p7_bptx_and <= single_eg_i138 and single_jet_i145 and single_ext_i46;
algo(8) <= l1_single_eg5_single_jet32_mid_eta2p7_bptx_and;

-- 375 L1_SingleEG5_SingleJet40_MidEta2p7_BptxAND : EG5 AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet40_mid_eta2p7_bptx_and <= single_eg_i138 and single_jet_i146 and single_ext_i46;
algo(27) <= l1_single_eg5_single_jet40_mid_eta2p7_bptx_and;

-- 376 L1_SingleEG7_SingleJet28_MidEta2p7_BptxAND : EG7 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet28_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i144 and single_ext_i46;
algo(178) <= l1_single_eg7_single_jet28_mid_eta2p7_bptx_and;

-- 377 L1_SingleEG7_SingleJet32_MidEta2p7_BptxAND : EG7 AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet32_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i145 and single_ext_i46;
algo(76) <= l1_single_eg7_single_jet32_mid_eta2p7_bptx_and;

-- 378 L1_SingleEG7_SingleJet40_MidEta2p7_BptxAND : EG7 AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet40_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i146 and single_ext_i46;
algo(81) <= l1_single_eg7_single_jet40_mid_eta2p7_bptx_and;

-- 379 L1_SingleEG7_SingleJet44_MidEta2p7_BptxAND : EG7 AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet44_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i147 and single_ext_i46;
algo(86) <= l1_single_eg7_single_jet44_mid_eta2p7_bptx_and;

-- 380 L1_SingleEG7_SingleJet56_MidEta2p7_BptxAND : EG7 AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet56_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i148 and single_ext_i46;
algo(92) <= l1_single_eg7_single_jet56_mid_eta2p7_bptx_and;

-- 381 L1_SingleEG7_SingleJet60_MidEta2p7_BptxAND : EG7 AND JET60[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet60_mid_eta2p7_bptx_and <= single_eg_i139 and single_jet_i149 and single_ext_i46;
algo(326) <= l1_single_eg7_single_jet60_mid_eta2p7_bptx_and;

-- 382 L1_SingleEG12_SingleJet28_MidEta2p7_BptxAND : EG12 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet28_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i144 and single_ext_i46;
algo(272) <= l1_single_eg12_single_jet28_mid_eta2p7_bptx_and;

-- 383 L1_SingleEG12_SingleJet32_MidEta2p7_BptxAND : EG12 AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet32_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i145 and single_ext_i46;
algo(212) <= l1_single_eg12_single_jet32_mid_eta2p7_bptx_and;

-- 384 L1_SingleEG12_SingleJet40_MidEta2p7_BptxAND : EG12 AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet40_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i146 and single_ext_i46;
algo(307) <= l1_single_eg12_single_jet40_mid_eta2p7_bptx_and;

-- 385 L1_SingleEG12_SingleJet44_MidEta2p7_BptxAND : EG12 AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet44_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i147 and single_ext_i46;
algo(52) <= l1_single_eg12_single_jet44_mid_eta2p7_bptx_and;

-- 386 L1_SingleEG12_SingleJet56_MidEta2p7_BptxAND : EG12 AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet56_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i148 and single_ext_i46;
algo(305) <= l1_single_eg12_single_jet56_mid_eta2p7_bptx_and;

-- 387 L1_SingleEG12_SingleJet60_MidEta2p7_BptxAND : EG12 AND JET60[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet60_mid_eta2p7_bptx_and <= single_eg_i140 and single_jet_i149 and single_ext_i46;
algo(61) <= l1_single_eg12_single_jet60_mid_eta2p7_bptx_and;

-- 388 L1_SingleEG15_SingleJet28_MidEta2p7_BptxAND : EG15 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet28_mid_eta2p7_bptx_and <= single_eg_i141 and single_jet_i144 and single_ext_i46;
algo(136) <= l1_single_eg15_single_jet28_mid_eta2p7_bptx_and;

-- 389 L1_SingleEG15_SingleJet44_MidEta2p7_BptxAND : EG15 AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet44_mid_eta2p7_bptx_and <= single_eg_i141 and single_jet_i147 and single_ext_i46;
algo(303) <= l1_single_eg15_single_jet44_mid_eta2p7_bptx_and;

-- 390 L1_SingleEG15_SingleJet56_MidEta2p7_BptxAND : EG15 AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet56_mid_eta2p7_bptx_and <= single_eg_i141 and single_jet_i148 and single_ext_i46;
algo(290) <= l1_single_eg15_single_jet56_mid_eta2p7_bptx_and;

-- 391 L1_SingleEG15_SingleJet60_MidEta2p7_BptxAND : EG15 AND JET60[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet60_mid_eta2p7_bptx_and <= single_eg_i141 and single_jet_i149 and single_ext_i46;
algo(79) <= l1_single_eg15_single_jet60_mid_eta2p7_bptx_and;

-- 395 L1_DoubleEG2_BptxAND : comb{EG2,EG2} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_bptx_and <= double_eg_i155 and single_ext_i46;
algo(129) <= l1_double_eg2_bptx_and;

-- 396 L1_DoubleEG5_BptxAND : comb{EG5,EG5} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_bptx_and <= double_eg_i156 and single_ext_i46;
algo(45) <= l1_double_eg5_bptx_and;

-- 397 L1_DoubleEG8_BptxAND : comb{EG8,EG8} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg8_bptx_and <= double_eg_i157 and single_ext_i46;
algo(25) <= l1_double_eg8_bptx_and;

-- 398 L1_DoubleEG10_BptxAND : comb{EG10,EG10} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg10_bptx_and <= double_eg_i158 and single_ext_i46;
algo(120) <= l1_double_eg10_bptx_and;

-- 400 L1_DoubleEG2_NotMinimumBiasHF2_OR_BptxAND : comb{EG2,EG2} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_not_minimum_bias_hf2_or_bptx_and <= double_eg_i155 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(146) <= l1_double_eg2_not_minimum_bias_hf2_or_bptx_and;

-- 401 L1_DoubleEG5_NotMinimumBiasHF2_OR_BptxAND : comb{EG5,EG5} AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_not_minimum_bias_hf2_or_bptx_and <= double_eg_i156 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(23) <= l1_double_eg5_not_minimum_bias_hf2_or_bptx_and;

-- 402 L1_DoubleEG2_NotMinimumBiasHF2_AND_BptxAND : comb{EG2,EG2} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_not_minimum_bias_hf2_and_bptx_and <= double_eg_i155 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(172) <= l1_double_eg2_not_minimum_bias_hf2_and_bptx_and;

-- 403 L1_DoubleEG5_NotMinimumBiasHF2_AND_BptxAND : comb{EG5,EG5} AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg5_not_minimum_bias_hf2_and_bptx_and <= double_eg_i156 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(57) <= l1_double_eg5_not_minimum_bias_hf2_and_bptx_and;

-- 407 L1_ETTAsym40 : ASYMET40
l1_ett_asym40 <= single_asymet_i173;
algo(44) <= l1_ett_asym40;

-- 408 L1_ETTAsym50 : ASYMET50
l1_ett_asym50 <= single_asymet_i174;
algo(63) <= l1_ett_asym50;

-- 409 L1_ETTAsym60 : ASYMET60
l1_ett_asym60 <= single_asymet_i175;
algo(47) <= l1_ett_asym60;

-- 410 L1_ETTAsym70 : ASYMET70
l1_ett_asym70 <= single_asymet_i176;
algo(220) <= l1_ett_asym70;

-- 411 L1_ETTAsym80 : ASYMET80
l1_ett_asym80 <= single_asymet_i177;
algo(130) <= l1_ett_asym80;

-- 413 L1_ETTAsym40_BptxAND : ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_bptx_and <= single_asymet_i173 and single_ext_i46;
algo(332) <= l1_ett_asym40_bptx_and;

-- 414 L1_ETTAsym50_BptxAND : ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_bptx_and <= single_asymet_i174 and single_ext_i46;
algo(68) <= l1_ett_asym50_bptx_and;

-- 415 L1_ETTAsym60_BptxAND : ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_bptx_and <= single_asymet_i175 and single_ext_i46;
algo(90) <= l1_ett_asym60_bptx_and;

-- 416 L1_ETTAsym70_BptxAND : ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_bptx_and <= single_asymet_i176 and single_ext_i46;
algo(111) <= l1_ett_asym70_bptx_and;

-- 417 L1_ETTAsym80_BptxAND : ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_bptx_and <= single_asymet_i177 and single_ext_i46;
algo(174) <= l1_ett_asym80_bptx_and;

-- 419 L1_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_asymet_i173 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(48) <= l1_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 420 L1_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_asymet_i174 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(140) <= l1_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 421 L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_asymet_i175 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(209) <= l1_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 422 L1_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_asymet_i176 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(113) <= l1_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 423 L1_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_asymet_i177 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(267) <= l1_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 424 L1_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i173 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(80) <= l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 425 L1_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i174 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(203) <= l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 426 L1_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i175 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(103) <= l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 427 L1_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i176 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(292) <= l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 428 L1_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_asymet_i177 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(2) <= l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 432 L1_ETT5_BptxAND : ETT5 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_bptx_and <= single_ett_i172 and single_ext_i46;
algo(201) <= l1_ett5_bptx_and;

-- 433 L1_ETT5_MinimumBiasHF1_OR_BptxAND : ETT5 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(15) <= l1_ett5_minimum_bias_hf1_or_bptx_and;

-- 434 L1_ETT5_NotMinimumBiasHF2_OR : ETT5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_ett5_not_minimum_bias_hf2_or <= single_ett_i172 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 );
algo(11) <= l1_ett5_not_minimum_bias_hf2_or;

-- 436 L1_ETT5_ETTAsym40_BptxAND : ETT5 AND ASYMET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_bptx_and <= single_ett_i172 and single_asymet_i173 and single_ext_i46;
algo(150) <= l1_ett5_ett_asym40_bptx_and;

-- 437 L1_ETT5_ETTAsym50_BptxAND : ETT5 AND ASYMET50 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_bptx_and <= single_ett_i172 and single_asymet_i174 and single_ext_i46;
algo(35) <= l1_ett5_ett_asym50_bptx_and;

-- 438 L1_ETT5_ETTAsym60_BptxAND : ETT5 AND ASYMET60 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_bptx_and <= single_ett_i172 and single_asymet_i175 and single_ext_i46;
algo(259) <= l1_ett5_ett_asym60_bptx_and;

-- 439 L1_ETT5_ETTAsym70_BptxAND : ETT5 AND ASYMET70 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_bptx_and <= single_ett_i172 and single_asymet_i176 and single_ext_i46;
algo(288) <= l1_ett5_ett_asym70_bptx_and;

-- 440 L1_ETT5_ETTAsym80_BptxAND : ETT5 AND ASYMET80 AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_bptx_and <= single_ett_i172 and single_asymet_i177 and single_ext_i46;
algo(304) <= l1_ett5_ett_asym80_bptx_and;

-- 442 L1_ETT5_ETTAsym40_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET40 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i173 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(218) <= l1_ett5_ett_asym40_minimum_bias_hf1_or_bptx_and;

-- 443 L1_ETT5_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i174 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(210) <= l1_ett5_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 444 L1_ETT5_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i178 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(247) <= l1_ett5_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 445 L1_ETT5_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i175 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(115) <= l1_ett5_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 446 L1_ETT5_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i179 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(258) <= l1_ett5_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 447 L1_ETT5_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i176 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(265) <= l1_ett5_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 448 L1_ETT5_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT5 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i172 and single_asymet_i177 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(180) <= l1_ett5_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 449 L1_ETT5_ETTAsym40_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET40 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and <= single_ett_i172 and single_asymet_i173 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(227) <= l1_ett5_ett_asym40_not_minimum_bias_hf2_or_bptx_and;

-- 450 L1_ETT5_ETTAsym50_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET50 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and <= single_ett_i172 and single_asymet_i174 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(249) <= l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and;

-- 451 L1_ETT5_ETTAsym60_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET60 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and <= single_ett_i172 and single_asymet_i175 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(278) <= l1_ett5_ett_asym60_not_minimum_bias_hf2_or_bptx_and;

-- 452 L1_ETT5_ETTAsym70_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET70 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and <= single_ett_i172 and single_asymet_i176 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(306) <= l1_ett5_ett_asym70_not_minimum_bias_hf2_or_bptx_and;

-- 453 L1_ETT5_ETTAsym80_NotMinimumBiasHF2_OR_BptxAND : ETT5 AND ASYMET80 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and <= single_ett_i172 and single_asymet_i177 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(327) <= l1_ett5_ett_asym80_not_minimum_bias_hf2_or_bptx_and;

-- 455 L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i174 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(114) <= l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 456 L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i178 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(99) <= l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 457 L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i175 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(200) <= l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 458 L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i179 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(30) <= l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 459 L1_ETT8_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i176 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(102) <= l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 460 L1_ETT8_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i180 and single_asymet_i177 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(257) <= l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 462 L1_ETT10_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i174 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(105) <= l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 463 L1_ETT10_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i178 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(297) <= l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 464 L1_ETT10_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i175 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(64) <= l1_ett10_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 465 L1_ETT10_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i179 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(310) <= l1_ett10_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 466 L1_ETT10_ETTAsym70_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET70 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i176 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(294) <= l1_ett10_ett_asym70_minimum_bias_hf1_or_bptx_and;

-- 467 L1_ETT10_ETTAsym80_MinimumBiasHF1_OR_BptxAND : ETT10 AND ASYMET80 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and <= single_ett_i95 and single_asymet_i177 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(70) <= l1_ett10_ett_asym80_minimum_bias_hf1_or_bptx_and;

-- 471 L1_ETT5_NotETT30_BptxAND : ETT5 AND ( NOT ETT30) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett5_not_ett30_bptx_and <= single_ett_i172 and ( not single_ett_i181 ) and single_ext_i46;
algo(317) <= l1_ett5_not_ett30_bptx_and;

-- 472 L1_ETT35_NotETT80_BptxAND : ETT35 AND ( NOT ETT80) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett35_not_ett80_bptx_and <= single_ett_i182 and ( not single_ett_i183 ) and single_ext_i46;
algo(71) <= l1_ett35_not_ett80_bptx_and;

-- 473 L1_ETT40_NotETT95_BptxAND : ETT40 AND ( NOT ETT95) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett40_not_ett95_bptx_and <= single_ett_i184 and ( not single_ett_i185 ) and single_ext_i46;
algo(17) <= l1_ett40_not_ett95_bptx_and;

-- 474 L1_ETT45_NotETT110_BptxAND : ETT45 AND ( NOT ETT110) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett45_not_ett110_bptx_and <= single_ett_i186 and ( not single_ett_i187 ) and single_ext_i46;
algo(181) <= l1_ett45_not_ett110_bptx_and;

-- 475 L1_ETT50_NotETT120_BptxAND : ETT50 AND ( NOT ETT120) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett50_not_ett120_bptx_and <= single_ett_i188 and ( not single_ett_i189 ) and single_ext_i46;
algo(190) <= l1_ett50_not_ett120_bptx_and;

-- 476 L1_ETT55_NotETT130_BptxAND : ETT55 AND ( NOT ETT130) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett55_not_ett130_bptx_and <= single_ett_i190 and ( not single_ett_i191 ) and single_ext_i46;
algo(179) <= l1_ett55_not_ett130_bptx_and;

-- 478 L1_NotETT20_MinimumBiasHF1_OR_BptxAND : ( NOT ETT20) AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf1_or_bptx_and <= ( not single_ett_i192 ) and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(104) <= l1_not_ett20_minimum_bias_hf1_or_bptx_and;

-- 479 L1_NotETT80_MinimumBiasHF1_OR_BptxAND : ( NOT ETT80) AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett80_minimum_bias_hf1_or_bptx_and <= ( not single_ett_i183 ) and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(87) <= l1_not_ett80_minimum_bias_hf1_or_bptx_and;

-- 480 L1_NotETT95_MinimumBiasHF1_OR_BptxAND : ( NOT ETT95) AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett95_minimum_bias_hf1_or_bptx_and <= ( not single_ett_i185 ) and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(266) <= l1_not_ett95_minimum_bias_hf1_or_bptx_and;

-- 481 L1_NotETT20_MinimumBiasHF2_OR_BptxAND : ( NOT ETT20) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i192 ) and ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(263) <= l1_not_ett20_minimum_bias_hf2_or_bptx_and;

-- 482 L1_NotETT80_MinimumBiasHF2_OR_BptxAND : ( NOT ETT80) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett80_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i183 ) and ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(234) <= l1_not_ett80_minimum_bias_hf2_or_bptx_and;

-- 483 L1_NotETT95_MinimumBiasHF2_OR_BptxAND : ( NOT ETT95) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett95_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i185 ) and ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(193) <= l1_not_ett95_minimum_bias_hf2_or_bptx_and;

-- 485 L1_NotETT20_MinimumBiasHF1_AND_BptxAND : ( NOT ETT20) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett20_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i192 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(289) <= l1_not_ett20_minimum_bias_hf1_and_bptx_and;

-- 486 L1_NotETT80_MinimumBiasHF1_AND_BptxAND : ( NOT ETT80) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett80_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i183 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(84) <= l1_not_ett80_minimum_bias_hf1_and_bptx_and;

-- 487 L1_NotETT95_MinimumBiasHF1_AND_BptxAND : ( NOT ETT95) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett95_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i185 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(21) <= l1_not_ett95_minimum_bias_hf1_and_bptx_and;

-- 488 L1_NotETT100_MinimumBiasHF1_AND_BptxAND : ( NOT ETT100) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett100_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i193 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(169) <= l1_not_ett100_minimum_bias_hf1_and_bptx_and;

-- 489 L1_NotETT150_MinimumBiasHF1_AND_BptxAND : ( NOT ETT150) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett150_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i194 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(176) <= l1_not_ett150_minimum_bias_hf1_and_bptx_and;

-- 490 L1_NotETT200_MinimumBiasHF1_AND_BptxAND : ( NOT ETT200) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett200_minimum_bias_hf1_and_bptx_and <= ( not single_ett_i195 ) and ( single_mbt0_hfp_i54 and single_mbt0_hfm_i55 ) and single_ext_i46;
algo(202) <= l1_not_ett200_minimum_bias_hf1_and_bptx_and;

-- 496 L1_CastorMediumJet_MinimumBiasHF1_OR_BptxAND : EXT_CASTOR_2 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_minimum_bias_hf1_or_bptx_and <= single_ext_i197 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(231) <= l1_castor_medium_jet_minimum_bias_hf1_or_bptx_and;

-- 497 L1_CastorMediumJet_NotMinimumBiasHF2_OR_BptxAND : EXT_CASTOR_2 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and <= single_ext_i197 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(19) <= l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and;

-- 498 L1_CastorMediumJet_NotMinimumBiasHF2_AND_BptxAND : EXT_CASTOR_2 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and <= single_ext_i197 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(62) <= l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and;

-- 499 L1_CastorMediumJet_SingleMu0_MinimumBiasHF1_OR_BptxAND : EXT_CASTOR_2 AND MU0[MU-QLTY_SNGL] AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_single_mu0_minimum_bias_hf1_or_bptx_and <= single_ext_i197 and single_mu_i159 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(233) <= l1_castor_medium_jet_single_mu0_minimum_bias_hf1_or_bptx_and;

-- 500 L1_CastorMediumJet_SingleEG5_MinimumBiasHF1_OR_BptxAND : EXT_CASTOR_2 AND EG5 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_single_eg5_minimum_bias_hf1_or_bptx_and <= single_ext_i197 and single_eg_i138 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(66) <= l1_castor_medium_jet_single_eg5_minimum_bias_hf1_or_bptx_and;

-- 502 L1_CastorMuon : EXT_CASTOR_4
l1_castor_muon <= single_ext_i198;
algo(74) <= l1_castor_muon;

-- 503 L1_CastorMuon_BptxAND : EXT_CASTOR_4 AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_muon_bptx_and <= single_ext_i198 and single_ext_i46;
algo(197) <= l1_castor_muon_bptx_and;

-- 505 L1_CastorHighJet : EXT_CASTOR_3
l1_castor_high_jet <= single_ext_i199;
algo(167) <= l1_castor_high_jet;

-- 506 L1_CastorHighJet_BptxAND : EXT_CASTOR_3 AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_bptx_and <= single_ext_i199 and single_ext_i46;
algo(32) <= l1_castor_high_jet_bptx_and;

-- 507 L1_CastorHighJet_MinimumBiasHF1_OR_BptxAND : EXT_CASTOR_3 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_minimum_bias_hf1_or_bptx_and <= single_ext_i199 and ( single_mbt0_hfp_i54 or single_mbt0_hfm_i55 ) and single_ext_i46;
algo(191) <= l1_castor_high_jet_minimum_bias_hf1_or_bptx_and;

-- 508 L1_CastorHighJet_NotMinimumBiasHF2_AND_BptxAND : EXT_CASTOR_3 AND  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and <= single_ext_i199 and not ( single_mbt1_hfp_i96 and single_mbt1_hfm_i97 ) and single_ext_i46;
algo(46) <= l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and;

-- 509 L1_CastorHighJet_NotMinimumBiasHF2_OR_BptxAND : EXT_CASTOR_3 AND  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and <= single_ext_i199 and not ( single_mbt1_hfp_i96 or single_mbt1_hfm_i97 ) and single_ext_i46;
algo(49) <= l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and;


-- ========================================================