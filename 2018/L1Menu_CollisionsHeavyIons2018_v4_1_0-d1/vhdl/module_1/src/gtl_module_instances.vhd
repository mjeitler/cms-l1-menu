-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_0

-- Unique ID of L1 Trigger Menu:
-- 7d0ea060-750b-4a39-a23d-4f78198b8446

-- Unique ID of firmware implementation:
-- d44505d2-7dee-45fa-a7e6-a5c3d0862858

-- Scale set:
-- scales_2018_08_07

-- VHDL producer version
-- v2.5.0

-- External condition assignment
single_ext_i169 <= ext_cond_bx_0(56); -- single_ext_i169
single_ext_i183 <= ext_cond_bx_0(57); -- single_ext_i183
single_ext_i184 <= ext_cond_bx_0(59); -- single_ext_i184
single_ext_i185 <= ext_cond_bx_0(58); -- single_ext_i185
single_ext_i199 <= ext_cond_bx_0(32); -- single_ext_i199
single_ext_i200 <= ext_cond_bx_0(35); -- single_ext_i200
single_ext_i28 <= ext_cond_bx_0(7); -- single_ext_i28
single_ext_i29 <= ext_cond_bx_0(7); -- single_ext_i29
single_ext_i30 <= ext_cond_bx_0(4); -- single_ext_i30
single_ext_i31 <= ext_cond_bx_0(7); -- single_ext_i31
single_ext_i32 <= ext_cond_bx_0(7); -- single_ext_i32
single_ext_i33 <= ext_cond_bx_0(4); -- single_ext_i33
single_ext_i34 <= ext_cond_bx_0(4); -- single_ext_i34
single_ext_i35 <= ext_cond_bx_0(4); -- single_ext_i35
single_ext_i36 <= ext_cond_bx_0(4); -- single_ext_i36
single_ext_i37 <= ext_cond_bx_0(7); -- single_ext_i37
single_ext_i40 <= ext_cond_bx_0(8); -- single_ext_i40
single_ext_i41 <= ext_cond_bx_0(0); -- single_ext_i41
single_ext_i42 <= ext_cond_bx_0(1); -- single_ext_i42
single_ext_i43 <= ext_cond_bx_0(2); -- single_ext_i43
single_ext_i44 <= ext_cond_bx_0(3); -- single_ext_i44
single_ext_i45 <= ext_cond_bx_0(5); -- single_ext_i45
single_ext_i46 <= ext_cond_bx_0(6); -- single_ext_i46
single_ext_i47 <= ext_cond_bx_0(10); -- single_ext_i47
single_ext_i48 <= ext_cond_bx_0(9); -- single_ext_i48
single_ext_i49 <= ext_cond_bx_0(11); -- single_ext_i49
single_ext_i50 <= ext_cond_bx_0(16); -- single_ext_i50
single_ext_i51 <= ext_cond_bx_0(17); -- single_ext_i51
single_ext_i52 <= ext_cond_bx_0(18); -- single_ext_i52
single_ext_i53 <= ext_cond_bx_0(19); -- single_ext_i53
single_ext_i54 <= ext_cond_bx_0(20); -- single_ext_i54
single_ext_i55 <= ext_cond_bx_0(21); -- single_ext_i55
single_ext_i56 <= ext_cond_bx_0(22); -- single_ext_i56
single_ext_i57 <= ext_cond_bx_0(23); -- single_ext_i57
single_ext_i63 <= ext_cond_bx_0(40); -- single_ext_i63
single_ext_i64 <= ext_cond_bx_0(41); -- single_ext_i64
single_ext_i65 <= ext_cond_bx_0(43); -- single_ext_i65
single_ext_i66 <= ext_cond_bx_0(42); -- single_ext_i66
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
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
        eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
        eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;

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
    diff_eg_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS)
        port map(eg_eta_integer_bx_0, jet_eta_integer_bx_0, diff_eg_jet_bx_0_bx_0_eta_integer);
    diff_eg_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, jet_phi_integer_bx_0, diff_eg_jet_bx_0_bx_0_phi_integer);
    eg_jet_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            diff_eg_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_ETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_PHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_jet_bx_0_bx_0_l2;
    end generate eg_jet_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
single_eg_i111_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i111);


single_eg_i116_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i116);


single_eg_i127_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i127);


single_jet_i102_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i102);


single_jet_i103_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i103);


single_jet_i13_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i13);


single_jet_i79_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i79);


single_jet_i80_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i80);


single_jet_i81_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i81);


single_jet_i83_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i83);


single_jet_i85_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i85);


single_jet_i87_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i87);


single_jet_i89_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i89);


single_jet_i92_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i92);


single_jet_i93_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i93);


single_jet_i98_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i98);


single_jet_i99_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i99);


single_asymet_i151_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i151);


single_ett_i160_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i160);


single_ett_i163_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i163);


single_ett_i164_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i164);


single_ett_i194_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i194);


single_ett_i62_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0FA0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i62);


calo_calo_correlation_i180_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"001E",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0078",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000027100",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_i180);

calo_calo_correlation_i191_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"0018",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0058",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000027100",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_i191);

muon_muon_correlation_i144_i: entity work.muon_muon_correlation_condition_v4
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
        muon_muon_correlation_i144);

single_mbt0_hfm_i39_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i39);


single_mbt1_hfm_i71_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i71);


single_mbt0_hfp_i38_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i38);


single_mbt1_hfp_i70_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i70);


single_cent0_i72 <= cent0_bx_0;


single_cent1_i73 <= cent1_bx_0;


single_cent2_i74 <= cent2_bx_0;


single_cent3_i75 <= cent3_bx_0;


single_cent4_i76 <= cent4_bx_0;


single_cent7_i78 <= cent7_bx_0;


-- Instantiations of algorithms

-- 50 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_i13;
algo(14) <= l1_single_jet60;

-- 80 L1_ETT2000 : ETT2000
l1_ett2000 <= single_ett_i62;
algo(21) <= l1_ett2000;

-- 91 L1_TOTEM_1 : EXT_TOTEM_1
l1_totem_1 <= single_ext_i63;
algo(90) <= l1_totem_1;

-- 92 L1_TOTEM_2 : EXT_TOTEM_2
l1_totem_2 <= single_ext_i64;
algo(91) <= l1_totem_2;

-- 93 L1_TOTEM_3 : EXT_TOTEM_3
l1_totem_3 <= single_ext_i66;
algo(92) <= l1_totem_3;

-- 94 L1_TOTEM_4 : EXT_TOTEM_4
l1_totem_4 <= single_ext_i65;
algo(93) <= l1_totem_4;

-- 96 L1_ZDCM : EXT_ZDCM
l1_zdcm <= single_ext_i199;
algo(96) <= l1_zdcm;

-- 97 L1_ZDCP : EXT_ZDCP
l1_zdcp <= single_ext_i200;
algo(99) <= l1_zdcp;

-- 98 L1_ZDCM_BptxAND : EXT_ZDCM AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcm_bptx_and <= single_ext_i199 and single_ext_i30;
algo(97) <= l1_zdcm_bptx_and;

-- 99 L1_ZDCP_BptxAND : EXT_ZDCP AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcp_bptx_and <= single_ext_i200 and single_ext_i30;
algo(100) <= l1_zdcp_bptx_and;

-- 100 L1_ZDCM_ZDCP_BptxAND : EXT_ZDCM AND EXT_ZDCP AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcm_zdcp_bptx_and <= single_ext_i199 and single_ext_i200 and single_ext_i30;
algo(98) <= l1_zdcm_zdcp_bptx_and;

-- 101 L1_AlwaysTrue : EXT_ZeroBias_BPTX_AND_VME OR ( NOT EXT_ZeroBias_BPTX_AND_VME)
l1_always_true <= single_ext_i30 or ( not single_ext_i30 );
algo(48) <= l1_always_true;

-- 102 L1_ZeroBias : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias <= single_ext_i30;
algo(49) <= l1_zero_bias;

-- 103 L1_ZeroBias_copy : EXT_ZeroBias_BPTX_AND_VME
l1_zero_bias_copy <= single_ext_i30;
algo(50) <= l1_zero_bias_copy;

-- 104 L1_BptxOR : EXT_BPTX_OR_VME
l1_bptx_or <= single_ext_i37;
algo(66) <= l1_bptx_or;

-- 105 L1_NotBptxOR :  NOT EXT_BPTX_OR_VME
l1_not_bptx_or <= not single_ext_i37;
algo(67) <= l1_not_bptx_or;

-- 106 L1_BptxXOR : (EXT_BPTX_B1_VME AND ( NOT EXT_BPTX_B2_VME)) OR (EXT_BPTX_B2_VME AND ( NOT EXT_BPTX_B1_VME))
l1_bptx_xor <= ( single_ext_i45 and ( not single_ext_i46 ) ) or ( single_ext_i46 and ( not single_ext_i45 ) );
algo(64) <= l1_bptx_xor;

-- 107 L1_BptxPlus : EXT_BPTX_B1_VME
l1_bptx_plus <= single_ext_i45;
algo(68) <= l1_bptx_plus;

-- 108 L1_BptxMinus : EXT_BPTX_B2_VME
l1_bptx_minus <= single_ext_i46;
algo(62) <= l1_bptx_minus;

-- 109 L1_BptxPlus_NotBptxMinus : EXT_BPTX_B1_VME AND  NOT EXT_BPTX_B2_VME
l1_bptx_plus_not_bptx_minus <= single_ext_i45 and not single_ext_i46;
algo(65) <= l1_bptx_plus_not_bptx_minus;

-- 110 L1_BptxMinus_NotBptxPlus : EXT_BPTX_B2_VME AND  NOT EXT_BPTX_B1_VME
l1_bptx_minus_not_bptx_plus <= single_ext_i46 and not single_ext_i45;
algo(63) <= l1_bptx_minus_not_bptx_plus;

-- 112 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_i48;
algo(95) <= l1_unpaired_bunch_bptx_plus;

-- 113 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_i47;
algo(94) <= l1_unpaired_bunch_bptx_minus;

-- 115 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_i28 ) and ( not single_ext_i29 ) and single_ext_i30 and ( not single_ext_i31 ) and ( not single_ext_i32 );
algo(85) <= l1_isolated_bunch;

-- 116 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_i28 ) and ( not single_ext_i29 ) and single_ext_i30 and single_ext_i33 and single_ext_i34;
algo(81) <= l1_first_bunch_in_train;

-- 117 L1_SecondBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_second_bunch_in_train <= ( not single_ext_i28 ) and single_ext_i36 and single_ext_i30 and single_ext_i33 and single_ext_i34;
algo(88) <= l1_second_bunch_in_train;

-- 118 L1_LastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_last_bunch_in_train <= single_ext_i35 and single_ext_i36 and single_ext_i30 and ( not single_ext_i31 ) and ( not single_ext_i32 );
algo(86) <= l1_last_bunch_in_train;

-- 119 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_i35 and single_ext_i36 and ( not single_ext_i37 ) and ( not single_ext_i31 ) and ( not single_ext_i32 );
algo(79) <= l1_first_bunch_after_train;

-- 120 L1_FirstBunchBeforeTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_before_train <= ( not single_ext_i28 ) and ( not single_ext_i29 ) and ( not single_ext_i37 ) and single_ext_i33 and single_ext_i34;
algo(80) <= l1_first_bunch_before_train;

-- 121 L1_SecondLastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND ( NOT EXT_BPTX_OR_VME+2)
l1_second_last_bunch_in_train <= single_ext_i35 and single_ext_i36 and single_ext_i30 and single_ext_i33 and ( not single_ext_i32 );
algo(89) <= l1_second_last_bunch_in_train;

-- 122 L1_LastCollisionInTrain : EXT_BPTX_LastCollisionInTrain_VME
l1_last_collision_in_train <= single_ext_i56;
algo(87) <= l1_last_collision_in_train;

-- 123 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_i57;
algo(84) <= l1_first_collision_in_train;

-- 124 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_i53;
algo(82) <= l1_first_collision_in_orbit;

-- 125 L1_FirstCollisionInOrbit_Centrality30_100_BptxAND : EXT_BPTX_FirstCollidingBunch_VME AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_first_collision_in_orbit_centrality30_100_bptx_and <= single_ext_i53 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 or single_cent3_i75 or single_cent4_i76 ) and single_ext_i30;
algo(83) <= l1_first_collision_in_orbit_centrality30_100_bptx_and;

-- 126 L1_BPTX_NotOR_VME : EXT_BPTX_NotOR_VME
l1_bptx_not_or_vme <= single_ext_i49;
algo(58) <= l1_bptx_not_or_vme;

-- 127 L1_BPTX_OR_Ref3_VME : EXT_BPTX_OR_Ref3_VME
l1_bptx_or_ref3_vme <= single_ext_i51;
algo(59) <= l1_bptx_or_ref3_vme;

-- 128 L1_BPTX_OR_Ref4_VME : EXT_BPTX_OR_Ref4_VME
l1_bptx_or_ref4_vme <= single_ext_i55;
algo(60) <= l1_bptx_or_ref4_vme;

-- 129 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_i52;
algo(61) <= l1_bptx_ref_and_vme;

-- 130 L1_BPTX_AND_Ref1_VME : EXT_BPTX_AND_Ref1_VME
l1_bptx_and_ref1_vme <= single_ext_i40;
algo(51) <= l1_bptx_and_ref1_vme;

-- 131 L1_BPTX_AND_Ref3_VME : EXT_BPTX_AND_Ref3_VME
l1_bptx_and_ref3_vme <= single_ext_i50;
algo(52) <= l1_bptx_and_ref3_vme;

-- 132 L1_BPTX_AND_Ref4_VME : EXT_BPTX_AND_Ref4_VME
l1_bptx_and_ref4_vme <= single_ext_i54;
algo(53) <= l1_bptx_and_ref4_vme;

-- 133 L1_BPTX_BeamGas_Ref1_VME : EXT_BPTX_BeamGas_Ref1_VME
l1_bptx_beam_gas_ref1_vme <= single_ext_i41;
algo(56) <= l1_bptx_beam_gas_ref1_vme;

-- 134 L1_BPTX_BeamGas_Ref2_VME : EXT_BPTX_BeamGas_Ref2_VME
l1_bptx_beam_gas_ref2_vme <= single_ext_i42;
algo(57) <= l1_bptx_beam_gas_ref2_vme;

-- 135 L1_BPTX_BeamGas_B1_VME : EXT_BPTX_BeamGas_B1_VME
l1_bptx_beam_gas_b1_vme <= single_ext_i43;
algo(54) <= l1_bptx_beam_gas_b1_vme;

-- 136 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_i44;
algo(55) <= l1_bptx_beam_gas_b2_vme;

-- 140 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) and single_ext_i30;
algo(22) <= l1_minimum_bias_hf0_and_bptx_and;

-- 141 L1_NotMinimumBiasHF0_AND_BptxAND : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_and_bptx_and <= ( not ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) ) and single_ext_i30;
algo(28) <= l1_not_minimum_bias_hf0_and_bptx_and;

-- 142 L1_NotMinimumBiasHF0_OR_BptxAND : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_or_bptx_and <= ( not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) ) and single_ext_i30;
algo(26) <= l1_not_minimum_bias_hf0_or_bptx_and;

-- 143 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) and single_ext_i30;
algo(27) <= l1_minimum_bias_hf0_or_bptx_and;

-- 145 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_1 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_1
l1_not_minimum_bias_hf0_and_bptx_and_totem_1 <= ( not ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i63;
algo(42) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_1;

-- 146 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_2 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_2
l1_not_minimum_bias_hf0_and_bptx_and_totem_2 <= ( not ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i64;
algo(44) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_2;

-- 147 L1_NotMinimumBiasHF0_AND_BptxAND_TOTEM_4 : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_4
l1_not_minimum_bias_hf0_and_bptx_and_totem_4 <= ( not ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i65;
algo(46) <= l1_not_minimum_bias_hf0_and_bptx_and_totem_4;

-- 148 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_1 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_1
l1_not_minimum_bias_hf0_or_bptx_and_totem_1 <= ( not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i63;
algo(43) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_1;

-- 149 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_2 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_2
l1_not_minimum_bias_hf0_or_bptx_and_totem_2 <= ( not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i64;
algo(45) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_2;

-- 150 L1_NotMinimumBiasHF0_OR_BptxAND_TOTEM_4 : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_TOTEM_4
l1_not_minimum_bias_hf0_or_bptx_and_totem_4 <= ( not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) ) and single_ext_i30 and single_ext_i65;
algo(47) <= l1_not_minimum_bias_hf0_or_bptx_and_totem_4;

-- 152 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 );
algo(30) <= l1_minimum_bias_hf1_and;

-- 153 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 );
algo(31) <= l1_minimum_bias_hf1_or;

-- 154 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 ) and single_ext_i30;
algo(24) <= l1_minimum_bias_hf1_and_bptx_and;

-- 155 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) and single_ext_i30;
algo(23) <= l1_minimum_bias_hf1_or_bptx_and;

-- 156 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i38 xor single_mbt0_hfm_i39 ) and single_ext_i30;
algo(29) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 158 L1_NotMinimumBiasHF1_AND :  NOT (MBT0HFP1 AND MBT0HFM1)
l1_not_minimum_bias_hf1_and <= not ( single_mbt0_hfp_i38 and single_mbt0_hfm_i39 );
algo(33) <= l1_not_minimum_bias_hf1_and;

-- 159 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 );
algo(32) <= l1_not_minimum_bias_hf1_or;

-- 160 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) and single_ext_i30;
algo(25) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 162 L1_MinimumBiasHF2_AND : (MBT1HFP1 AND MBT1HFM1)
l1_minimum_bias_hf2_and <= ( single_mbt1_hfp_i70 and single_mbt1_hfm_i71 );
algo(34) <= l1_minimum_bias_hf2_and;

-- 163 L1_MinimumBiasHF2_OR : (MBT1HFP1 OR MBT1HFM1)
l1_minimum_bias_hf2_or <= ( single_mbt1_hfp_i70 or single_mbt1_hfm_i71 );
algo(36) <= l1_minimum_bias_hf2_or;

-- 164 L1_MinimumBiasHF2_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_and_bptx_and <= ( single_mbt1_hfp_i70 and single_mbt1_hfm_i71 ) and single_ext_i30;
algo(38) <= l1_minimum_bias_hf2_and_bptx_and;

-- 165 L1_MinimumBiasHF2_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_or_bptx_and <= ( single_mbt1_hfp_i70 or single_mbt1_hfm_i71 ) and single_ext_i30;
algo(39) <= l1_minimum_bias_hf2_or_bptx_and;

-- 166 L1_NotMinimumBiasHF2_AND :  NOT (MBT1HFP1 AND MBT1HFM1)
l1_not_minimum_bias_hf2_and <= not ( single_mbt1_hfp_i70 and single_mbt1_hfm_i71 );
algo(35) <= l1_not_minimum_bias_hf2_and;

-- 167 L1_NotMinimumBiasHF2_AND_BptxAND :  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_and_bptx_and <= not ( single_mbt1_hfp_i70 and single_mbt1_hfm_i71 ) and single_ext_i30;
algo(41) <= l1_not_minimum_bias_hf2_and_bptx_and;

-- 169 L1_NotMinimumBiasHF2_OR :  NOT (MBT1HFP1 OR MBT1HFM1)
l1_not_minimum_bias_hf2_or <= not ( single_mbt1_hfp_i70 or single_mbt1_hfm_i71 );
algo(37) <= l1_not_minimum_bias_hf2_or;

-- 170 L1_NotMinimumBiasHF2_OR_BptxAND :  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_or_bptx_and <= not ( single_mbt1_hfp_i70 or single_mbt1_hfm_i71 ) and single_ext_i30;
algo(40) <= l1_not_minimum_bias_hf2_or_bptx_and;

-- 172 L1_Centrality_30_100 : (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4)
l1_centrality_30_100 <= ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 or single_cent3_i75 or single_cent4_i76 );
algo(76) <= l1_centrality_30_100;

-- 173 L1_Centrality_50_100 : (CENT0 OR CENT1 OR CENT2)
l1_centrality_50_100 <= ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 );
algo(77) <= l1_centrality_50_100;

-- 176 L1_Centrality_Saturation : CENT7
l1_centrality_saturation <= single_cent7_i78;
algo(78) <= l1_centrality_saturation;

-- 239 L1_DoubleMuOpen_MaxDr2p0_OS_BptxAND : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX2p0,CHGCOR_OS] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_max_dr2p0_os_bptx_and <= muon_muon_correlation_i144 and single_ext_i30;
algo(2) <= l1_double_mu_open_max_dr2p0_os_bptx_and;

-- 260 L1_SingleJet16_BptxAND : JET16 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet16_bptx_and <= single_jet_i80 and single_ext_i30;
algo(9) <= l1_single_jet16_bptx_and;

-- 265 L1_SingleJet40_BptxAND : JET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_bptx_and <= single_jet_i85 and single_ext_i30;
algo(12) <= l1_single_jet40_bptx_and;

-- 267 L1_SingleJet48_BptxAND : JET48 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet48_bptx_and <= single_jet_i87 and single_ext_i30;
algo(13) <= l1_single_jet48_bptx_and;

-- 293 L1_SingleJet64_Centrality_30_100_BptxAND : JET64 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_centrality_30_100_bptx_and <= single_jet_i89 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 or single_cent3_i75 or single_cent4_i76 ) and single_ext_i30;
algo(15) <= l1_single_jet64_centrality_30_100_bptx_and;

-- 295 L1_SingleJet8_Centrality_50_100_BptxAND : JET8 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_centrality_50_100_bptx_and <= single_jet_i79 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(16) <= l1_single_jet8_centrality_50_100_bptx_and;

-- 297 L1_SingleJet24_Centrality_50_100_BptxAND : JET24 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet24_centrality_50_100_bptx_and <= single_jet_i81 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(10) <= l1_single_jet24_centrality_50_100_bptx_and;

-- 299 L1_SingleJet32_Centrality_50_100_BptxAND : JET32 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet32_centrality_50_100_bptx_and <= single_jet_i83 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(11) <= l1_single_jet32_centrality_50_100_bptx_and;

-- 316 L1_SingleJet8_FWD_Centrality_50_100_BptxAND : (JET8[JET-ETA_FWD_2p7_NEG] OR JET8[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_fwd_centrality_50_100_bptx_and <= ( single_jet_i92 or single_jet_i93 ) and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(5) <= l1_single_jet8_fwd_centrality_50_100_bptx_and;

-- 319 L1_SingleJet36_FWD_Centrality_50_100_BptxAND : (JET36[JET-ETA_FWD_2p7_NEG] OR JET36[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet36_fwd_centrality_50_100_bptx_and <= ( single_jet_i98 or single_jet_i99 ) and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(3) <= l1_single_jet36_fwd_centrality_50_100_bptx_and;

-- 321 L1_SingleJet56_FWD_Centrality_50_100_BptxAND : (JET56[JET-ETA_FWD_2p7_NEG] OR JET56[JET-ETA_FWD_2p7_POS]) AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_fwd_centrality_50_100_bptx_and <= ( single_jet_i102 or single_jet_i103 ) and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(4) <= l1_single_jet56_fwd_centrality_50_100_bptx_and;

-- 355 L1_SingleIsoEG15_BptxAND : EG15[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg15_bptx_and <= single_eg_i127 and single_ext_i30;
algo(8) <= l1_single_iso_eg15_bptx_and;

-- 363 L1_SingleEG3_Centrality_30_100_BptxAND : EG3 AND (CENT0 OR CENT1 OR CENT2 OR CENT3 OR CENT4) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_centrality_30_100_bptx_and <= single_eg_i111 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 or single_cent3_i75 or single_cent4_i76 ) and single_ext_i30;
algo(7) <= l1_single_eg3_centrality_30_100_bptx_and;

-- 371 L1_SingleEG21_Centrality_50_100_BptxAND : EG21 AND (CENT0 OR CENT1 OR CENT2) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg21_centrality_50_100_bptx_and <= single_eg_i116 and ( single_cent0_i72 or single_cent1_i73 or single_cent2_i74 ) and single_ext_i30;
algo(6) <= l1_single_eg21_centrality_50_100_bptx_and;

-- 385 L1_SingleEG12_SingleJet44_MidEta2p7_MinDr0p4_BptxAND : dist{EG12,JET44[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet44_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i191 and single_ext_i30;
algo(0) <= l1_single_eg12_single_jet44_mid_eta2p7_min_dr0p4_bptx_and;

-- 395 L1_SingleEG15_SingleJet60_MidEta2p7_MinDr0p4_BptxAND : dist{EG15,JET60[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet60_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i180 and single_ext_i30;
algo(1) <= l1_single_eg15_single_jet60_mid_eta2p7_min_dr0p4_bptx_and;

-- 421 L1_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_asymet_i151 and ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) and single_ext_i30;
algo(18) <= l1_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 444 L1_ETT8_ETTAsym60_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET60 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and <= single_ett_i194 and single_asymet_i151 and ( single_mbt0_hfp_i38 or single_mbt0_hfm_i39 ) and single_ext_i30;
algo(17) <= l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and;

-- 476 L1_ETT55_NotETT130_BptxAND : ETT55 AND ( NOT ETT130) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett55_not_ett130_bptx_and <= single_ett_i163 and ( not single_ett_i164 ) and single_ext_i30;
algo(19) <= l1_ett55_not_ett130_bptx_and;

-- 492 L1_NotETT110_MinimumBiasHF2_OR_BptxAND : ( NOT ETT110) AND (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_ett110_minimum_bias_hf2_or_bptx_and <= ( not single_ett_i160 ) and ( single_mbt1_hfp_i70 or single_mbt1_hfm_i71 ) and single_ext_i30;
algo(20) <= l1_not_ett110_minimum_bias_hf2_or_bptx_and;

-- 495 L1_Castor1 : EXT_CASTOR_1
l1_castor1 <= single_ext_i169;
algo(69) <= l1_castor1;

-- 496 L1_CastorMediumJet : EXT_CASTOR_2
l1_castor_medium_jet <= single_ext_i183;
algo(72) <= l1_castor_medium_jet;

-- 497 L1_CastorMediumJet_BptxAND : EXT_CASTOR_2 AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_medium_jet_bptx_and <= single_ext_i183 and single_ext_i30;
algo(73) <= l1_castor_medium_jet_bptx_and;

-- 503 L1_CastorMuon : EXT_CASTOR_4
l1_castor_muon <= single_ext_i184;
algo(74) <= l1_castor_muon;

-- 504 L1_CastorMuon_BptxAND : EXT_CASTOR_4 AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_muon_bptx_and <= single_ext_i184 and single_ext_i30;
algo(75) <= l1_castor_muon_bptx_and;

-- 505 L1_CastorHighJet : EXT_CASTOR_3
l1_castor_high_jet <= single_ext_i185;
algo(70) <= l1_castor_high_jet;

-- 506 L1_CastorHighJet_BptxAND : EXT_CASTOR_3 AND EXT_ZeroBias_BPTX_AND_VME
l1_castor_high_jet_bptx_and <= single_ext_i185 and single_ext_i30;
algo(71) <= l1_castor_high_jet_bptx_and;


-- ========================================================