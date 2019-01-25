-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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

-- External condition assignment
single_ext_i172 <= ext_cond_bx_0(32); -- single_ext_i172
single_ext_i173 <= ext_cond_bx_0(35); -- single_ext_i173
single_ext_i174 <= ext_cond_bx_0(7); -- single_ext_i174
single_ext_i177 <= ext_cond_bx_0(9); -- single_ext_i177
single_ext_i178 <= ext_cond_bx_0(10); -- single_ext_i178
single_ext_i179 <= ext_cond_bx_0(7); -- single_ext_i179
single_ext_i180 <= ext_cond_bx_0(7); -- single_ext_i180
single_ext_i181 <= ext_cond_bx_0(7); -- single_ext_i181
single_ext_i182 <= ext_cond_bx_0(7); -- single_ext_i182
single_ext_i183 <= ext_cond_bx_0(4); -- single_ext_i183
single_ext_i184 <= ext_cond_bx_0(4); -- single_ext_i184
single_ext_i185 <= ext_cond_bx_0(4); -- single_ext_i185
single_ext_i186 <= ext_cond_bx_0(4); -- single_ext_i186
single_ext_i187 <= ext_cond_bx_0(22); -- single_ext_i187
single_ext_i188 <= ext_cond_bx_0(23); -- single_ext_i188
single_ext_i189 <= ext_cond_bx_0(19); -- single_ext_i189
single_ext_i35 <= ext_cond_bx_0(4); -- single_ext_i35
single_ext_i36 <= ext_cond_bx_0(40); -- single_ext_i36
single_ext_i37 <= ext_cond_bx_0(41); -- single_ext_i37
single_ext_i38 <= ext_cond_bx_0(43); -- single_ext_i38
single_ext_i39 <= ext_cond_bx_0(42); -- single_ext_i39
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
double_eg_i102_i: entity work.calo_conditions_v7_no_quad
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
        double_eg_i102);


single_eg_i100_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i100);


single_eg_i101_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i101);


single_eg_i110_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i110);


single_eg_i111_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i111);


single_eg_i7_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
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
        single_eg_i7);


single_eg_i84_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i84);


single_eg_i85_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i85);


single_eg_i88_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i88);


single_eg_i98_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i98);


single_eg_i99_i: entity work.calo_conditions_v7_no_quad
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
        single_eg_i99);


single_jet_i109_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i109);


single_jet_i12_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
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
        single_jet_i12);


single_jet_i16_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0190", X"0000", X"0000", X"0000"),
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


single_jet_i19_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
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
        (X"0078", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
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


single_jet_i29_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0039", X"0000", X"0000", X"0000"), (X"00C6", X"0000", X"0000", X"0000"),
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


single_jet_i52_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i52);


single_jet_i55_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i55);


single_jet_i58_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i58);


single_jet_i61_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i61);


single_jet_i62_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i62);


single_jet_i69_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i69);


single_jet_i70_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i70);


single_jet_i91_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i91);


single_jet_i92_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i92);


single_jet_i93_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i93);


single_jet_i94_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i94);


single_jet_i95_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i95);


single_jet_i96_i: entity work.calo_conditions_v7_no_quad
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
        single_jet_i96);


double_mu_i119_i: entity work.muon_conditions_v7
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
        double_mu_i119,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_i104_i: entity work.muon_conditions_v7
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
        single_mu_i104);


single_mu_i105_i: entity work.muon_conditions_v7
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
        single_mu_i105);


single_mu_i106_i: entity work.muon_conditions_v7
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
        single_mu_i106);


single_mu_i147_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0049", X"0000", X"0000", X"0000"), (X"01B7", X"0000", X"0000", X"0000"),
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
        single_mu_i147);


single_mu_i40_i: entity work.muon_conditions_v7
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
        single_mu_i40);


single_mu_i41_i: entity work.muon_conditions_v7
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
        single_mu_i41);


single_asymet_i123_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i123);


single_asymet_i125_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i125);


single_asymet_i168_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0037",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i168);


single_asymet_i169_i: entity work.esums_conditions
    generic map(true, ASYMET_TYPE,
        X"0041",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, asymet_bx_0, single_asymet_i169);


single_ett_i121_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"000A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i121);


single_ett_i130_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i130);


single_ett_i131_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i131);


single_ett_i136_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i136);


single_ett_i137_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i137);


single_ett_i167_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0010",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_i167);


single_htt_i23_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_i23);


single_htt_i25_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_i25);


calo_calo_correlation_i159_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"000E",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0038",
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
        calo_calo_correlation_i159);

calo_calo_correlation_i165_i: entity work.calo_calo_correlation_condition_v4
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
        X"0070",
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
        calo_calo_correlation_i165);

muon_muon_correlation_i116_i: entity work.muon_muon_correlation_condition_v4
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
        muon_muon_correlation_i116);

single_mbt0_hfm_i34_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_i34);


single_mbt1_hfm_i44_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_i44);


single_mbt0_hfp_i33_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_i33);


single_mbt1_hfp_i43_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_i43);


single_cent0_i45 <= cent0_bx_0;


single_cent1_i46 <= cent1_bx_0;


single_cent7_i51 <= cent7_bx_0;


-- Instantiations of algorithms

-- 4 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_i41;
algo(95) <= l1_single_mu_open;

-- 21 L1_SingleMu22_BMTF : MU22[MU-QLTY_SNGL,MU-ETA_BMTF]
l1_single_mu22_bmtf <= single_mu_i147;
algo(90) <= l1_single_mu22_bmtf;

-- 34 L1_SingleEG3 : EG3
l1_single_eg3 <= single_eg_i84;
algo(66) <= l1_single_eg3;

-- 35 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_i85;
algo(68) <= l1_single_eg5;

-- 38 L1_SingleEG8er2p5 : EG8[EG-ETA_2p52]
l1_single_eg8er2p5 <= single_eg_i7;
algo(73) <= l1_single_eg8er2p5;

-- 49 L1_SingleJet35 : JET35
l1_single_jet35 <= single_jet_i12;
algo(81) <= l1_single_jet35;

-- 54 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_i16;
algo(79) <= l1_single_jet200;

-- 57 L1_SingleJet120er2p5 : JET120[JET-ETA_2p52]
l1_single_jet120er2p5 <= single_jet_i29;
algo(78) <= l1_single_jet120er2p5;

-- 63 L1_SingleJet60_FWD3p0 : JET60[JET-ETA_FWD_3p00_NEG] OR JET60[JET-ETA_FWD_3p00_POS]
l1_single_jet60_fwd3p0 <= single_jet_i19 or single_jet_i20;
algo(88) <= l1_single_jet60_fwd3p0;

-- 69 L1_HTT120er : HTT120
l1_htt120er <= single_htt_i23;
algo(41) <= l1_htt120er;

-- 71 L1_HTT280er : HTT280
l1_htt280er <= single_htt_i25;
algo(42) <= l1_htt280er;

-- 91 L1_TOTEM_1 : EXT_TOTEM_1
l1_totem_1 <= single_ext_i36;
algo(11) <= l1_totem_1;

-- 92 L1_TOTEM_2 : EXT_TOTEM_2
l1_totem_2 <= single_ext_i37;
algo(12) <= l1_totem_2;

-- 93 L1_TOTEM_3 : EXT_TOTEM_3
l1_totem_3 <= single_ext_i39;
algo(13) <= l1_totem_3;

-- 94 L1_TOTEM_4 : EXT_TOTEM_4
l1_totem_4 <= single_ext_i38;
algo(14) <= l1_totem_4;

-- 95 L1_ZDCM : EXT_ZDCM
l1_zdcm <= single_ext_i172;
algo(17) <= l1_zdcm;

-- 97 L1_ZDCM_BptxAND : EXT_ZDCM AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcm_bptx_and <= single_ext_i172 and single_ext_i35;
algo(18) <= l1_zdcm_bptx_and;

-- 98 L1_ZDCP_BptxAND : EXT_ZDCP AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcp_bptx_and <= single_ext_i173 and single_ext_i35;
algo(36) <= l1_zdcp_bptx_and;

-- 99 L1_ZDCM_ZDCP_BptxAND : EXT_ZDCM AND EXT_ZDCP AND EXT_ZeroBias_BPTX_AND_VME
l1_zdcm_zdcp_bptx_and <= single_ext_i172 and single_ext_i173 and single_ext_i35;
algo(20) <= l1_zdcm_zdcp_bptx_and;

-- 100 L1_ZDC_OR_OR_MinimumBiasHF1_OR_BptxAND : ((EXT_ZDCM OR EXT_ZDCP) OR (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_or_or_minimum_bias_hf1_or_bptx_and <= ( ( single_ext_i172 or single_ext_i173 ) or ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) ) and single_ext_i35;
algo(25) <= l1_zdc_or_or_minimum_bias_hf1_or_bptx_and;

-- 101 L1_ZDC_OR_OR_MinimumBiasHF2_OR_BptxAND : ((EXT_ZDCM OR EXT_ZDCP) OR (MBT1HFP1 OR MBT1HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_or_or_minimum_bias_hf2_or_bptx_and <= ( ( single_ext_i172 or single_ext_i173 ) or ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) ) and single_ext_i35;
algo(30) <= l1_zdc_or_or_minimum_bias_hf2_or_bptx_and;

-- 102 L1_ZDC_AND_OR_MinimumBiasHF1_AND_BptxAND : ((EXT_ZDCM AND EXT_ZDCP) OR (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_and_or_minimum_bias_hf1_and_bptx_and <= ( ( single_ext_i172 and single_ext_i173 ) or ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) ) and single_ext_i35;
algo(35) <= l1_zdc_and_or_minimum_bias_hf1_and_bptx_and;

-- 103 L1_ZDC_AND_OR_MinimumBiasHF1_OR_BptxAND : ((EXT_ZDCM AND EXT_ZDCP) OR (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_and_or_minimum_bias_hf1_or_bptx_and <= ( ( single_ext_i172 and single_ext_i173 ) or ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) ) and single_ext_i35;
algo(21) <= l1_zdc_and_or_minimum_bias_hf1_or_bptx_and;

-- 104 L1_ZDC_AND_OR_MinimumBiasHF2_AND_BptxAND : ((EXT_ZDCM AND EXT_ZDCP) OR (MBT1HFP1 AND MBT1HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_and_or_minimum_bias_hf2_and_bptx_and <= ( ( single_ext_i172 and single_ext_i173 ) or ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) ) and single_ext_i35;
algo(19) <= l1_zdc_and_or_minimum_bias_hf2_and_bptx_and;

-- 105 L1_ZDC_AND_OR_MinimumBiasHF2_OR_BptxAND : ((EXT_ZDCM AND EXT_ZDCP) OR (MBT1HFP1 OR MBT1HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_zdc_and_or_minimum_bias_hf2_or_bptx_and <= ( ( single_ext_i172 and single_ext_i173 ) or ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) ) and single_ext_i35;
algo(26) <= l1_zdc_and_or_minimum_bias_hf2_or_bptx_and;

-- 116 L1_UnpairedBunchBptxPlus : EXT_BPTX_B1NotB2_VME
l1_unpaired_bunch_bptx_plus <= single_ext_i177;
algo(16) <= l1_unpaired_bunch_bptx_plus;

-- 117 L1_UnpairedBunchBptxMinus : EXT_BPTX_B2NotB1_VME
l1_unpaired_bunch_bptx_minus <= single_ext_i178;
algo(15) <= l1_unpaired_bunch_bptx_minus;

-- 118 L1_IsolatedBunch : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_isolated_bunch <= ( not single_ext_i179 ) and ( not single_ext_i180 ) and single_ext_i35 and ( not single_ext_i181 ) and ( not single_ext_i182 );
algo(7) <= l1_isolated_bunch;

-- 119 L1_FirstBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_in_train <= ( not single_ext_i179 ) and ( not single_ext_i180 ) and single_ext_i35 and single_ext_i183 and single_ext_i184;
algo(4) <= l1_first_bunch_in_train;

-- 120 L1_SecondBunchInTrain : ( NOT EXT_BPTX_OR_VME-2) AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_second_bunch_in_train <= ( not single_ext_i179 ) and single_ext_i185 and single_ext_i35 and single_ext_i183 and single_ext_i184;
algo(9) <= l1_second_bunch_in_train;

-- 121 L1_LastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_last_bunch_in_train <= single_ext_i186 and single_ext_i185 and single_ext_i35 and ( not single_ext_i181 ) and ( not single_ext_i182 );
algo(2) <= l1_last_bunch_in_train;

-- 122 L1_FirstBunchAfterTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND ( NOT EXT_BPTX_OR_VME) AND ( NOT EXT_BPTX_OR_VME+1) AND ( NOT EXT_BPTX_OR_VME+2)
l1_first_bunch_after_train <= single_ext_i186 and single_ext_i185 and ( not single_ext_i174 ) and ( not single_ext_i181 ) and ( not single_ext_i182 );
algo(1) <= l1_first_bunch_after_train;

-- 123 L1_FirstBunchBeforeTrain : ( NOT EXT_BPTX_OR_VME-2) AND ( NOT EXT_BPTX_OR_VME-1) AND ( NOT EXT_BPTX_OR_VME) AND EXT_ZeroBias_BPTX_AND_VME+1 AND EXT_ZeroBias_BPTX_AND_VME+2
l1_first_bunch_before_train <= ( not single_ext_i179 ) and ( not single_ext_i180 ) and ( not single_ext_i174 ) and single_ext_i183 and single_ext_i184;
algo(3) <= l1_first_bunch_before_train;

-- 124 L1_SecondLastBunchInTrain : EXT_ZeroBias_BPTX_AND_VME-2 AND EXT_ZeroBias_BPTX_AND_VME-1 AND EXT_ZeroBias_BPTX_AND_VME AND EXT_ZeroBias_BPTX_AND_VME+1 AND ( NOT EXT_BPTX_OR_VME+2)
l1_second_last_bunch_in_train <= single_ext_i186 and single_ext_i185 and single_ext_i35 and single_ext_i183 and ( not single_ext_i182 );
algo(10) <= l1_second_last_bunch_in_train;

-- 125 L1_LastCollisionInTrain : EXT_BPTX_LastCollisionInTrain_VME
l1_last_collision_in_train <= single_ext_i187;
algo(8) <= l1_last_collision_in_train;

-- 126 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_i188;
algo(6) <= l1_first_collision_in_train;

-- 127 L1_FirstCollisionInOrbit : EXT_BPTX_FirstCollidingBunch_VME
l1_first_collision_in_orbit <= single_ext_i189;
algo(5) <= l1_first_collision_in_orbit;

-- 140 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) and single_ext_i35;
algo(31) <= l1_minimum_bias_hf0_and_bptx_and;

-- 141 L1_NotMinimumBiasHF0_AND_BptxAND : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_and_bptx_and <= ( not ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) ) and single_ext_i35;
algo(34) <= l1_not_minimum_bias_hf0_and_bptx_and;

-- 142 L1_NotMinimumBiasHF0_OR_BptxAND : ( NOT (MBT0HFP1 OR MBT0HFM1)) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf0_or_bptx_and <= ( not ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) ) and single_ext_i35;
algo(37) <= l1_not_minimum_bias_hf0_or_bptx_and;

-- 143 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(32) <= l1_minimum_bias_hf0_or_bptx_and;

-- 152 L1_MinimumBiasHF1_AND : (MBT0HFP1 AND MBT0HFM1)
l1_minimum_bias_hf1_and <= ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 );
algo(43) <= l1_minimum_bias_hf1_and;

-- 153 L1_MinimumBiasHF1_OR : (MBT0HFP1 OR MBT0HFM1)
l1_minimum_bias_hf1_or <= ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 );
algo(44) <= l1_minimum_bias_hf1_or;

-- 154 L1_MinimumBiasHF1_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) and single_ext_i35;
algo(22) <= l1_minimum_bias_hf1_and_bptx_and;

-- 155 L1_MinimumBiasHF1_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(38) <= l1_minimum_bias_hf1_or_bptx_and;

-- 156 L1_MinimumBiasHF1_XOR_BptxAND : (MBT0HFP1 XOR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf1_xor_bptx_and <= ( single_mbt0_hfp_i33 xor single_mbt0_hfm_i34 ) and single_ext_i35;
algo(33) <= l1_minimum_bias_hf1_xor_bptx_and;

-- 158 L1_NotMinimumBiasHF1_AND :  NOT (MBT0HFP1 AND MBT0HFM1)
l1_not_minimum_bias_hf1_and <= not ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 );
algo(46) <= l1_not_minimum_bias_hf1_and;

-- 159 L1_NotMinimumBiasHF1_OR :  NOT (MBT0HFP1 OR MBT0HFM1)
l1_not_minimum_bias_hf1_or <= not ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 );
algo(45) <= l1_not_minimum_bias_hf1_or;

-- 160 L1_NotMinimumBiasHF1_OR_BptxAND :  NOT (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf1_or_bptx_and <= not ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(24) <= l1_not_minimum_bias_hf1_or_bptx_and;

-- 162 L1_MinimumBiasHF2_AND : (MBT1HFP1 AND MBT1HFM1)
l1_minimum_bias_hf2_and <= ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 );
algo(47) <= l1_minimum_bias_hf2_and;

-- 163 L1_MinimumBiasHF2_OR : (MBT1HFP1 OR MBT1HFM1)
l1_minimum_bias_hf2_or <= ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 );
algo(50) <= l1_minimum_bias_hf2_or;

-- 164 L1_MinimumBiasHF2_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_and_bptx_and <= ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(27) <= l1_minimum_bias_hf2_and_bptx_and;

-- 165 L1_MinimumBiasHF2_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_minimum_bias_hf2_or_bptx_and <= ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(23) <= l1_minimum_bias_hf2_or_bptx_and;

-- 166 L1_NotMinimumBiasHF2_AND :  NOT (MBT1HFP1 AND MBT1HFM1)
l1_not_minimum_bias_hf2_and <= not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 );
algo(49) <= l1_not_minimum_bias_hf2_and;

-- 167 L1_NotMinimumBiasHF2_AND_BptxAND :  NOT (MBT1HFP1 AND MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_and_bptx_and <= not ( single_mbt1_hfp_i43 and single_mbt1_hfm_i44 ) and single_ext_i35;
algo(29) <= l1_not_minimum_bias_hf2_and_bptx_and;

-- 169 L1_NotMinimumBiasHF2_OR :  NOT (MBT1HFP1 OR MBT1HFM1)
l1_not_minimum_bias_hf2_or <= not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 );
algo(51) <= l1_not_minimum_bias_hf2_or;

-- 170 L1_NotMinimumBiasHF2_OR_BptxAND :  NOT (MBT1HFP1 OR MBT1HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_not_minimum_bias_hf2_or_bptx_and <= not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 ) and single_ext_i35;
algo(28) <= l1_not_minimum_bias_hf2_or_bptx_and;

-- 176 L1_Centrality_Saturation : CENT7
l1_centrality_saturation <= single_cent7_i51;
algo(0) <= l1_centrality_saturation;

-- 180 L1_SingleMuOpen_BptxAND : MU0[MU-QLTY_OPEN] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_bptx_and <= single_mu_i41 and single_ext_i35;
algo(64) <= l1_single_mu_open_bptx_and;

-- 181 L1_SingleMu0_BptxAND : MU0[MU-QLTY_SNGL] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu0_bptx_and <= single_mu_i104 and single_ext_i35;
algo(89) <= l1_single_mu0_bptx_and;

-- 189 L1_SingleMuOpen_Centrality_70_100_BptxAND : MU0[MU-QLTY_OPEN] AND (CENT0 OR CENT1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_70_100_bptx_and <= single_mu_i41 and ( single_cent0_i45 or single_cent1_i46 ) and single_ext_i35;
algo(93) <= l1_single_mu_open_centrality_70_100_bptx_and;

-- 190 L1_SingleMu3_Centrality_70_100_BptxAND : MU3[MU-QLTY_SNGL] AND (CENT0 OR CENT1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_70_100_bptx_and <= single_mu_i40 and ( single_cent0_i45 or single_cent1_i46 ) and single_ext_i35;
algo(91) <= l1_single_mu3_centrality_70_100_bptx_and;

-- 191 L1_SingleMuOpen_Centrality_80_100_BptxAND : MU0[MU-QLTY_OPEN] AND CENT0 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_80_100_bptx_and <= single_mu_i41 and single_cent0_i45 and single_ext_i35;
algo(94) <= l1_single_mu_open_centrality_80_100_bptx_and;

-- 192 L1_SingleMu3_Centrality_80_100_BptxAND : MU3[MU-QLTY_SNGL] AND CENT0 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_centrality_80_100_bptx_and <= single_mu_i40 and single_cent0_i45 and single_ext_i35;
algo(92) <= l1_single_mu3_centrality_80_100_bptx_and;

-- 205 L1_SingleMuOpen_Centrality_70_100_MinimumBiasHF1_AND_BptxAND : MU0[MU-QLTY_OPEN] AND (CENT0 OR CENT1) AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_70_100_minimum_bias_hf1_and_bptx_and <= single_mu_i41 and ( single_cent0_i45 or single_cent1_i46 ) and ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) and single_ext_i35;
algo(96) <= l1_single_mu_open_centrality_70_100_minimum_bias_hf1_and_bptx_and;

-- 206 L1_SingleMuOpen_Centrality_80_100_MinimumBiasHF1_AND_BptxAND : MU0[MU-QLTY_OPEN] AND CENT0 AND (MBT0HFP1 AND MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_centrality_80_100_minimum_bias_hf1_and_bptx_and <= single_mu_i41 and single_cent0_i45 and ( single_mbt0_hfp_i33 and single_mbt0_hfm_i34 ) and single_ext_i35;
algo(97) <= l1_single_mu_open_centrality_80_100_minimum_bias_hf1_and_bptx_and;

-- 208 L1_SingleMuOpen_SingleJet28_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet28_mid_eta2p7_bptx_and <= single_mu_i41 and single_jet_i91 and single_ext_i35;
algo(102) <= l1_single_mu_open_single_jet28_mid_eta2p7_bptx_and;

-- 209 L1_SingleMuOpen_SingleJet44_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and <= single_mu_i41 and single_jet_i94 and single_ext_i35;
algo(103) <= l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and;

-- 210 L1_SingleMuOpen_SingleJet56_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and <= single_mu_i41 and single_jet_i95 and single_ext_i35;
algo(104) <= l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and;

-- 211 L1_SingleMuOpen_SingleJet64_MidEta2p7_BptxAND : MU0[MU-QLTY_OPEN] AND JET64[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_jet64_mid_eta2p7_bptx_and <= single_mu_i41 and single_jet_i109 and single_ext_i35;
algo(105) <= l1_single_mu_open_single_jet64_mid_eta2p7_bptx_and;

-- 213 L1_SingleMu3_SingleJet32_MidEta2p7_BptxAND : MU3[MU-QLTY_SNGL] AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_jet32_mid_eta2p7_bptx_and <= single_mu_i40 and single_jet_i92 and single_ext_i35;
algo(99) <= l1_single_mu3_single_jet32_mid_eta2p7_bptx_and;

-- 214 L1_SingleMu3_SingleJet40_MidEta2p7_BptxAND : MU3[MU-QLTY_SNGL] AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_jet40_mid_eta2p7_bptx_and <= single_mu_i40 and single_jet_i93 and single_ext_i35;
algo(100) <= l1_single_mu3_single_jet40_mid_eta2p7_bptx_and;

-- 217 L1_SingleMuOpen_SingleEG15_BptxAND : MU0[MU-QLTY_OPEN] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu_open_single_eg15_bptx_and <= single_mu_i41 and single_eg_i88 and single_ext_i35;
algo(60) <= l1_single_mu_open_single_eg15_bptx_and;

-- 218 L1_SingleMu3_SingleEG20_BptxAND : MU3[MU-QLTY_SNGL] AND EG20 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu3_single_eg20_bptx_and <= single_mu_i40 and single_eg_i110 and single_ext_i35;
algo(98) <= l1_single_mu3_single_eg20_bptx_and;

-- 220 L1_SingleMu5_SingleEG10_BptxAND : MU5[MU-QLTY_SNGL] AND EG10 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg10_bptx_and <= single_mu_i105 and single_eg_i111 and single_ext_i35;
algo(101) <= l1_single_mu5_single_eg10_bptx_and;

-- 222 L1_SingleMu5_SingleEG15_BptxAND : MU5[MU-QLTY_SNGL] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu5_single_eg15_bptx_and <= single_mu_i105 and single_eg_i88 and single_ext_i35;
algo(62) <= l1_single_mu5_single_eg15_bptx_and;

-- 227 L1_SingleMu7_SingleEG15_BptxAND : MU7[MU-QLTY_SNGL] AND EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_mu7_single_eg15_bptx_and <= single_mu_i106 and single_eg_i88 and single_ext_i35;
algo(61) <= l1_single_mu7_single_eg15_bptx_and;

-- 235 L1_DoubleMu0_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu0_bptx_and <= double_mu_i119 and single_ext_i35;
algo(106) <= l1_double_mu0_bptx_and;

-- 238 L1_DoubleMuOpen_MaxDr2p0_BptxAND : dist{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[DR_MAX2p0] AND EXT_ZeroBias_BPTX_AND_VME
l1_double_mu_open_max_dr2p0_bptx_and <= muon_muon_correlation_i116 and single_ext_i35;
algo(107) <= l1_double_mu_open_max_dr2p0_bptx_and;

-- 259 L1_SingleJet8_BptxAND : JET8 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet8_bptx_and <= single_jet_i52 and single_ext_i35;
algo(85) <= l1_single_jet8_bptx_and;

-- 262 L1_SingleJet28_BptxAND : JET28 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_bptx_and <= single_jet_i55 and single_ext_i35;
algo(80) <= l1_single_jet28_bptx_and;

-- 265 L1_SingleJet40_BptxAND : JET40 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet40_bptx_and <= single_jet_i58 and single_ext_i35;
algo(82) <= l1_single_jet40_bptx_and;

-- 268 L1_SingleJet56_BptxAND : JET56 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet56_bptx_and <= single_jet_i61 and single_ext_i35;
algo(83) <= l1_single_jet56_bptx_and;

-- 270 L1_SingleJet64_BptxAND : JET64 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet64_bptx_and <= single_jet_i62 and single_ext_i35;
algo(84) <= l1_single_jet64_bptx_and;

-- 276 L1_SingleJet28_FWD_BptxAND : (JET28[JET-ETA_FWD_2p7_NEG] OR JET28[JET-ETA_FWD_2p7_POS]) AND EXT_ZeroBias_BPTX_AND_VME
l1_single_jet28_fwd_bptx_and <= ( single_jet_i69 or single_jet_i70 ) and single_ext_i35;
algo(87) <= l1_single_jet28_fwd_bptx_and;

-- 344 L1_SingleEG3_BptxAND : EG3 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg3_bptx_and <= single_eg_i84 and single_ext_i35;
algo(67) <= l1_single_eg3_bptx_and;

-- 345 L1_SingleEG5_BptxAND : EG5 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_bptx_and <= single_eg_i85 and single_ext_i35;
algo(69) <= l1_single_eg5_bptx_and;

-- 348 L1_SingleEG15_BptxAND : EG15 AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_bptx_and <= single_eg_i88 and single_ext_i35;
algo(57) <= l1_single_eg15_bptx_and;

-- 353 L1_SingleIsoEG7_BptxAND : EG7[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg7_bptx_and <= single_eg_i98 and single_ext_i35;
algo(77) <= l1_single_iso_eg7_bptx_and;

-- 354 L1_SingleIsoEG12_BptxAND : EG12[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg12_bptx_and <= single_eg_i99 and single_ext_i35;
algo(74) <= l1_single_iso_eg12_bptx_and;

-- 355 L1_SingleIsoEG15_BptxAND : EG15[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg15_bptx_and <= single_eg_i100 and single_ext_i35;
algo(75) <= l1_single_iso_eg15_bptx_and;

-- 356 L1_SingleIsoEG21_BptxAND : EG21[EG-ISO_0xA] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_iso_eg21_bptx_and <= single_eg_i101 and single_ext_i35;
algo(76) <= l1_single_iso_eg21_bptx_and;

-- 373 L1_SingleEG5_SingleJet28_MidEta2p7_BptxAND : EG5 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet28_mid_eta2p7_bptx_and <= single_eg_i85 and single_jet_i91 and single_ext_i35;
algo(70) <= l1_single_eg5_single_jet28_mid_eta2p7_bptx_and;

-- 374 L1_SingleEG5_SingleJet32_MidEta2p7_BptxAND : EG5 AND JET32[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet32_mid_eta2p7_bptx_and <= single_eg_i85 and single_jet_i92 and single_ext_i35;
algo(72) <= l1_single_eg5_single_jet32_mid_eta2p7_bptx_and;

-- 375 L1_SingleEG5_SingleJet40_MidEta2p7_BptxAND : EG5 AND JET40[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg5_single_jet40_mid_eta2p7_bptx_and <= single_eg_i85 and single_jet_i93 and single_ext_i35;
algo(71) <= l1_single_eg5_single_jet40_mid_eta2p7_bptx_and;

-- 378 L1_SingleEG7_SingleJet28_MidEta2p7_MinDr0p4_BptxAND : dist{EG7,JET28[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg7_single_jet28_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i159 and single_ext_i35;
algo(109) <= l1_single_eg7_single_jet28_mid_eta2p7_min_dr0p4_bptx_and;

-- 386 L1_SingleEG12_SingleJet56_MidEta2p7_MinDr0p4_BptxAND : dist{EG12,JET56[JET-ETA_2p7]}[DR_MIN_0p4] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg12_single_jet56_mid_eta2p7_min_dr0p4_bptx_and <= calo_calo_correlation_i165 and single_ext_i35;
algo(108) <= l1_single_eg12_single_jet56_mid_eta2p7_min_dr0p4_bptx_and;

-- 388 L1_SingleEG15_SingleJet28_MidEta2p7_BptxAND : EG15 AND JET28[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet28_mid_eta2p7_bptx_and <= single_eg_i88 and single_jet_i91 and single_ext_i35;
algo(59) <= l1_single_eg15_single_jet28_mid_eta2p7_bptx_and;

-- 389 L1_SingleEG15_SingleJet44_MidEta2p7_BptxAND : EG15 AND JET44[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet44_mid_eta2p7_bptx_and <= single_eg_i88 and single_jet_i94 and single_ext_i35;
algo(65) <= l1_single_eg15_single_jet44_mid_eta2p7_bptx_and;

-- 390 L1_SingleEG15_SingleJet56_MidEta2p7_BptxAND : EG15 AND JET56[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet56_mid_eta2p7_bptx_and <= single_eg_i88 and single_jet_i95 and single_ext_i35;
algo(58) <= l1_single_eg15_single_jet56_mid_eta2p7_bptx_and;

-- 391 L1_SingleEG15_SingleJet60_MidEta2p7_BptxAND : EG15 AND JET60[JET-ETA_2p7] AND EXT_ZeroBias_BPTX_AND_VME
l1_single_eg15_single_jet60_mid_eta2p7_bptx_and <= single_eg_i88 and single_jet_i96 and single_ext_i35;
algo(63) <= l1_single_eg15_single_jet60_mid_eta2p7_bptx_and;

-- 396 L1_DoubleEG2_BptxAND : comb{EG2,EG2} AND EXT_ZeroBias_BPTX_AND_VME
l1_double_eg2_bptx_and <= double_eg_i102 and single_ext_i35;
algo(86) <= l1_double_eg2_bptx_and;

-- 408 L1_ETTAsym50 : ASYMET50
l1_ett_asym50 <= single_asymet_i123;
algo(39) <= l1_ett_asym50;

-- 410 L1_ETTAsym70 : ASYMET70
l1_ett_asym70 <= single_asymet_i125;
algo(40) <= l1_ett_asym70;

-- 434 L1_ETT5_NotMinimumBiasHF2_OR : ETT5 AND  NOT (MBT1HFP1 OR MBT1HFM1)
l1_ett5_not_minimum_bias_hf2_or <= single_ett_i121 and not ( single_mbt1_hfp_i43 or single_mbt1_hfm_i44 );
algo(48) <= l1_ett5_not_minimum_bias_hf2_or;

-- 442 L1_ETT8_ETTAsym50_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET50 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and <= single_ett_i167 and single_asymet_i123 and ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(54) <= l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and;

-- 443 L1_ETT8_ETTAsym55_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET55 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and <= single_ett_i167 and single_asymet_i168 and ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(55) <= l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and;

-- 445 L1_ETT8_ETTAsym65_MinimumBiasHF1_OR_BptxAND : ETT8 AND ASYMET65 AND (MBT0HFP1 OR MBT0HFM1) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and <= single_ett_i167 and single_asymet_i169 and ( single_mbt0_hfp_i33 or single_mbt0_hfm_i34 ) and single_ext_i35;
algo(56) <= l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and;

-- 473 L1_ETT40_NotETT95_BptxAND : ETT40 AND ( NOT ETT95) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett40_not_ett95_bptx_and <= single_ett_i130 and ( not single_ett_i131 ) and single_ext_i35;
algo(52) <= l1_ett40_not_ett95_bptx_and;

-- 476 L1_ETT55_NotETT130_BptxAND : ETT55 AND ( NOT ETT130) AND EXT_ZeroBias_BPTX_AND_VME
l1_ett55_not_ett130_bptx_and <= single_ett_i136 and ( not single_ett_i137 ) and single_ext_i35;
algo(53) <= l1_ett55_not_ett130_bptx_and;


-- ========================================================