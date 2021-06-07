-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- dc57c735-a5e1-42af-83aa-e544104a35c4

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- External condition assignment
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.

    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions


-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions

    tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
        tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
        tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
        tau_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        tau_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low)));
        conv_tau_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_tau_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(tau_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate tau_data_bx_0_l;
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_upt_vector_bx_0(i)(MU_UPT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_UPT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.upt_high downto D_S_I_MU_V2.upt_low))), MU_UPT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs

    diff_tau_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_TAU_OBJECTS, NR_TAU_OBJECTS)
        port map(tau_eta_integer_bx_0, tau_eta_integer_bx_0, diff_tau_tau_bx_0_bx_0_eta_integer);
    diff_tau_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_TAU_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(tau_phi_integer_bx_0, tau_phi_integer_bx_0, diff_tau_tau_bx_0_bx_0_phi_integer);
    tau_tau_bx_0_bx_0_l1: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            diff_tau_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_DIFF_ETA_LUT(diff_tau_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_tau_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_DIFF_PHI_LUT(diff_tau_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate tau_tau_bx_0_bx_0_l2;
    end generate tau_tau_bx_0_bx_0_l1;
    diff_jet_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_JET_OBJECTS)
        port map(jet_eta_integer_bx_0, jet_eta_integer_bx_0, diff_jet_jet_bx_0_bx_0_eta_integer);
    diff_jet_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_JET_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(jet_phi_integer_bx_0, jet_phi_integer_bx_0, diff_jet_jet_bx_0_bx_0_phi_integer);
    jet_jet_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            diff_jet_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_ETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_jet_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_PHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate jet_jet_bx_0_bx_0_l2;
    end generate jet_jet_bx_0_bx_0_l1;
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

    tau_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_TAU_OBJECTS-1 generate
        tau_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
            tau_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_COSH_DETA_LUT(diff_tau_tau_bx_0_bx_0_eta_integer(i,j)), TAU_TAU_COSH_COS_VECTOR_WIDTH);
            tau_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(TAU_TAU_COS_DPHI_LUT(diff_tau_tau_bx_0_bx_0_phi_integer(i,j)), TAU_TAU_COSH_COS_VECTOR_WIDTH);
            tau_tau_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_tau_tau_bx_0_bx_0_eta_integer(i,j), TAU_TAU_DETA_BINS_WIDTH);
            tau_tau_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_tau_tau_bx_0_bx_0_phi_integer(i,j), TAU_TAU_DPHI_BINS_WIDTH);
        end generate tau_tau_bx_0_bx_0_cosh_cos_l2;
    end generate tau_tau_bx_0_bx_0_cosh_cos_l1;
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_eta_integer(i,j), JET_JET_DETA_BINS_WIDTH);
            jet_jet_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_jet_jet_bx_0_bx_0_phi_integer(i,j), JET_JET_DPHI_BINS_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_deta_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_0_bx_0_eta_integer(i,j), MU_MU_DETA_BINS_WIDTH);
            mu_mu_bx_0_bx_0_dphi_bin_vector(i,j) <= CONV_STD_LOGIC_VECTOR(diff_mu_mu_bx_0_bx_0_phi_integer(i,j), MU_MU_DPHI_BINS_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_i169_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"001E", X"0014", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i169
    );

double_eg_i173_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0032", X"001C", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => double_eg_i173
    );

double_jet_i264_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00F0", X"00F0", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => double_jet_i264
    );

double_tau_i204_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => TAU_TYPE,
        pt_thresholds => (X"0038", X"0038", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0030", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"00CF", X"0000", X"0000"),
        iso_luts => (X"E", X"E", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        tau_bx_0,
        condition_o => double_tau_i204
    );

single_eg_i146_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i146
    );

single_eg_i147_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i147
    );

single_eg_i156_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"003A", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i156
    );

single_eg_i157_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"00C5", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"008D", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i157
    );

single_eg_i160_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0038", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0022", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00DD", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i160
    );

single_eg_i163_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0040", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0039", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"0000", X"0000", X"0000"),
        iso_luts => (X"A", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i163
    );

single_eg_i189_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0030", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i189
    );

single_eg_i191_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0034", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i191
    );

single_eg_i192_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"003C", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0030", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00CF", X"0000", X"0000", X"0000"),
        iso_luts => (X"C", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => single_eg_i192
    );

single_jet_i242_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00F0", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i242
    );

single_jet_i243_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0168", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i243
    );

single_jet_i259_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"0010", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"00DF", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"00BC", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"0043", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"0020", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i259
    );

single_jet_i283_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => JET_TYPE,
        pt_thresholds => (X"00E6", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        jet_bx_0,
        condition_o => single_jet_i283
    );

triple_eg_i185_i: entity work.calo_conditions
    generic map(
        -- object cuts
        obj_type => EG_TYPE,
        pt_thresholds => (X"0020", X"0020", X"0020", X"0000"),
        nr_eta_windows => (1, 1, 1, 0),
        eta_w1_upper_limits => (X"0039", X"0039", X"0039", X"0000"),
        eta_w1_lower_limits => (X"00C6", X"00C6", X"00C6", X"0000"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        eg_bx_0,
        condition_o => triple_eg_i185
    );

double_mu_i34_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i34
    );

double_mu_i43_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"001F", X"000F", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i43
    );

double_mu_i48_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"008A", X"008A", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0176", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => double_mu_i48
    );

double_mu_i57_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000A", X"000A", X"0000", X"0000"),
        nr_eta_windows => (1, 1, 0, 0),
        eta_w1_upper_limits => (X"00B8", X"00B8", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0148", X"0148", X"0000", X"0000"),
        qual_luts => (X"F000", X"F000", X"FFFF", X"FFFF"),
        -- charge correlation cut
        requested_charge_correlation => "os",
        -- no correlation cuts
        nr_templates => 2
    )
    port map(
        lhc_clk,
        mu_bx_0,
        ls_charcorr_double => ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double => os_charcorr_double_bx_0_bx_0,
        condition_o => double_mu_i57
    );

quad_mu_i384_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0001"),
        -- charge correlation cut
        requested_charge_correlation => "os",
        -- no correlation cuts
        nr_templates => 4
    )
    port map(
        lhc_clk,
        mu_bx_0,
        ls_charcorr_quad => ls_charcorr_quad_bx_0_bx_0,
        os_charcorr_quad => os_charcorr_quad_bx_0_bx_0,
        condition_o => quad_mu_i384
    );

single_mu_i1_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"0049", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"01B7", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i1
    );

single_mu_i14_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0019", X"0000", X"0000", X"0000"),
        nr_eta_windows => (2, 0, 0, 0),
        eta_w1_upper_limits => (X"0072", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"004A", X"0000", X"0000", X"0000"),
        eta_w2_upper_limits => (X"01B6", X"0000", X"0000", X"0000"),
        eta_w2_lower_limits => (X"018E", X"0000", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i14
    );

single_mu_i235_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0065", X"0000", X"0000", X"0000"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i235
    );

single_mu_i24_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000D", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i24
    );

single_mu_i32_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0025", X"0000", X"0000", X"0000"),
        nr_eta_windows => (1, 0, 0, 0),
        eta_w1_upper_limits => (X"008A", X"0000", X"0000", X"0000"),
        eta_w1_lower_limits => (X"0176", X"0000", X"0000", X"0000"),
        qual_luts => (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i32
    );

single_mu_i373_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        upt_cuts => (true, false, false, false),
        upt_upper_limits => (X"00FF", X"0000", X"0000", X"0000"),
        upt_lower_limits => (X"0015", X"0000", X"0000", X"0000"),
        ip_luts => (X"4", X"F", X"F", X"F"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i373
    );

single_mu_i5_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0000", X"0000", X"0000"),
        qual_luts => (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        -- no correlation cuts
        nr_templates => 1
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => single_mu_i5
    );

triple_mu_i60_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0001", X"0001", X"0001", X"0000"),
        qual_luts => (X"FFF0", X"FFF0", X"FFF0", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i60
    );

triple_mu_i64_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"0007", X"0007", X"0007", X"0000"),
        qual_luts => (X"F000", X"F000", X"F000", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i64
    );

triple_mu_i66_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0008", X"0006", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i66
    );

triple_mu_i73_i: entity work.muon_conditions
    generic map(
        -- object cuts
        pt_thresholds => (X"000B", X"0009", X"0006", X"0000"),
        qual_luts => (X"FF00", X"FF00", X"FF00", X"FFFF"),
        -- no correlation cuts
        nr_templates => 3
    )
    port map(
        lhc_clk,
        mu_bx_0,
        condition_o => triple_mu_i73
    );

single_ett_i321_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0C80",
        obj_type => ETT_TYPE
    )
    port map(
        lhc_clk,
        ett_bx_0,
        condition_o => single_ett_i321
    );

single_htt_i190_i: entity work.esums_conditions
    generic map(
        et_threshold => X"00C8",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i190
    );

single_htt_i314_i: entity work.esums_conditions
    generic map(
        et_threshold => X"0140",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i314
    );

single_htt_i317_i: entity work.esums_conditions
    generic map(
        et_threshold => X"02D0",
        obj_type => HTT_TYPE
    )
    port map(
        lhc_clk,
        htt_bx_0,
        condition_o => single_htt_i317
    );

invariant_mass_i211_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_TAU_OBJECTS,
        obj_type_calo1 => TAU_TYPE,
        pt_threshold_calo1 => X"003C",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"0030",
        eta_w1_lower_limit_calo1 => X"00CF",
        iso_lut_calo1 => X"E",
        nr_calo2_objects => NR_TAU_OBJECTS,
        obj_type_calo2 => TAU_TYPE,
        pt_threshold_calo2 => X"003C",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"0030",
        eta_w1_lower_limit_calo2 => X"00CF",
        iso_lut_calo2 => X"E",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => TAU_PT_VECTOR_WIDTH,
        pt2_width => TAU_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => TAU_TAU_COSH_COS_PRECISION,
        cosh_cos_width => TAU_TAU_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"000000001823CF40",
        mass_lower_limit => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        tau_bx_0,
        tau_bx_0,
        pt1 => tau_pt_vector_bx_0,
        pt2 => tau_pt_vector_bx_0,
        cosh_deta => tau_tau_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => tau_tau_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i211
    );

invariant_mass_i284_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"003D",
        eta_w1_lower_limit_calo1 => X"00C2",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i284
    );

invariant_mass_i285_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0078",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0078",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i285
    );

invariant_mass_i286_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0078",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 2,
        eta_w1_upper_limit_calo2 => X"00BA",
        eta_w1_lower_limit_calo2 => X"008D",
        eta_w2_upper_limit_calo2 => X"0072",
        eta_w2_lower_limit_calo2 => X"0045",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i286
    );

invariant_mass_i287_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0078",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i287
    );

invariant_mass_i288_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_eta_windows_calo1 => 2,
        eta_w1_upper_limit_calo1 => X"00BA",
        eta_w1_lower_limit_calo1 => X"008D",
        eta_w2_upper_limit_calo1 => X"0072",
        eta_w2_lower_limit_calo1 => X"0045",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i288
    );

invariant_mass_i289_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0050",
        nr_eta_windows_calo1 => 2,
        eta_w1_upper_limit_calo1 => X"00BA",
        eta_w1_lower_limit_calo1 => X"008D",
        eta_w2_upper_limit_calo1 => X"0072",
        eta_w2_lower_limit_calo1 => X"0045",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"0050",
        nr_eta_windows_calo2 => 2,
        eta_w1_upper_limit_calo2 => X"00BA",
        eta_w1_lower_limit_calo2 => X"008D",
        eta_w2_upper_limit_calo2 => X"0072",
        eta_w2_lower_limit_calo2 => X"0045",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i289
    );

invariant_mass_i290_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"005A",
        nr_eta_windows_calo1 => 1,
        eta_w1_upper_limit_calo1 => X"003D",
        eta_w1_lower_limit_calo1 => X"00C2",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"005A",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i290
    );

invariant_mass_i291_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0078",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"005A",
        nr_eta_windows_calo2 => 2,
        eta_w1_upper_limit_calo2 => X"00BA",
        eta_w1_lower_limit_calo2 => X"008D",
        eta_w2_upper_limit_calo2 => X"0072",
        eta_w2_lower_limit_calo2 => X"0045",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i291
    );

invariant_mass_i292_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"0078",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"005A",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i292
    );

invariant_mass_i293_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"005A",
        nr_eta_windows_calo1 => 2,
        eta_w1_upper_limit_calo1 => X"00BA",
        eta_w1_lower_limit_calo1 => X"008D",
        eta_w2_upper_limit_calo1 => X"0072",
        eta_w2_lower_limit_calo1 => X"0045",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"005A",
        nr_eta_windows_calo2 => 1,
        eta_w1_upper_limit_calo2 => X"003D",
        eta_w1_lower_limit_calo2 => X"00C2",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i293
    );

invariant_mass_i294_i: entity work.calo_calo_correlation_condition
    generic map(
      -- obj cuts
        nr_calo1_objects => NR_JET_OBJECTS,
        obj_type_calo1 => JET_TYPE,
        pt_threshold_calo1 => X"005A",
        nr_eta_windows_calo1 => 2,
        eta_w1_upper_limit_calo1 => X"00BA",
        eta_w1_lower_limit_calo1 => X"008D",
        eta_w2_upper_limit_calo1 => X"0072",
        eta_w2_lower_limit_calo1 => X"0045",
        nr_calo2_objects => NR_JET_OBJECTS,
        obj_type_calo2 => JET_TYPE,
        pt_threshold_calo2 => X"005A",
        nr_eta_windows_calo2 => 2,
        eta_w1_upper_limit_calo2 => X"00BA",
        eta_w1_lower_limit_calo2 => X"008D",
        eta_w2_upper_limit_calo2 => X"0072",
        eta_w2_lower_limit_calo2 => X"0045",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        pt1_width => JET_PT_VECTOR_WIDTH,
        pt2_width => JET_PT_VECTOR_WIDTH,
        mass_cosh_cos_precision => JET_JET_COSH_COS_PRECISION,
        cosh_cos_width => JET_JET_COSH_COS_VECTOR_WIDTH,
        mass_upper_limit => X"00041A6642C78140",
        mass_lower_limit => X"000000047999ED00",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        jet_bx_0,
        jet_bx_0,
        pt1 => jet_pt_vector_bx_0,
        pt2 => jet_pt_vector_bx_0,
        cosh_deta => jet_jet_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => jet_jet_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i294
    );

invariant_mass_i58_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000A",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00B8",
        eta_w1_lower_limit_muon1 => X"0148",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"000A",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"00B8",
        eta_w1_lower_limit_muon2 => X"0148",
        qual_lut_muon2 => X"F000",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"002907FE9BCB0C80",
        mass_lower_limit => X"000000000175D720",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double_bx_0_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i58
    );

invariant_mass_i72_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"000B",
        qual_lut_muon1 => X"FF00",
        pt_threshold_muon2 => X"0006",
        qual_lut_muon2 => X"FF00",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_TYPE,
        mass_upper_limit => X"00000000089CE520",
        mass_lower_limit => X"0000000000BEBC20",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double_bx_0_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_i72
    );

invariant_mass_upt_i379_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        upt_cut_muon1 => true,
        upt_upper_limit_muon1 => X"00FF",
        upt_lower_limit_muon1 => X"0006",
        pt_threshold_muon2 => X"0001",
        upt_cut_muon2 => true,
        upt_upper_limit_muon2 => X"00FF",
        upt_lower_limit_muon2 => X"0006",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_UPT_TYPE,
        mass_upper_limit => X"002907FE9BCB0C80",
        mass_lower_limit => X"000000000BEBC200",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        upt1 => mu_upt_vector_bx_0,
        upt2 => mu_upt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_upt_i379
    );

invariant_mass_upt_i380_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        qual_lut_muon1 => X"FFF0",
        upt_cut_muon1 => true,
        upt_upper_limit_muon1 => X"00FF",
        upt_lower_limit_muon1 => X"0001",
        pt_threshold_muon2 => X"0001",
        qual_lut_muon2 => X"FFF0",
        upt_cut_muon2 => true,
        upt_upper_limit_muon2 => X"00FF",
        upt_lower_limit_muon2 => X"0001",
    -- correlation cuts
        mass_cut => true,
        mass_type => INVARIANT_MASS_UPT_TYPE,
        mass_upper_limit => X"002907FE9BCB0C80",
        mass_lower_limit => X"0000000002FAF080",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        pt1 => mu_pt_vector_bx_0,
        pt2 => mu_pt_vector_bx_0,
        upt1 => mu_upt_vector_bx_0,
        upt2 => mu_upt_vector_bx_0,
        cosh_deta => mu_mu_bx_0_bx_0_cosh_deta_vector,
        cos_dphi => mu_mu_bx_0_bx_0_cos_dphi_vector,
        condition_o => invariant_mass_upt_i380
    );

muon_muon_correlation_i47_i: entity work.muon_muon_correlation_condition
    generic map(
      -- obj cuts
        pt_threshold_muon1 => X"0001",
        nr_eta_windows_muon1 => 1,
        eta_w1_upper_limit_muon1 => X"00B8",
        eta_w1_lower_limit_muon1 => X"0148",
        qual_lut_muon1 => X"F000",
        pt_threshold_muon2 => X"0001",
        nr_eta_windows_muon2 => 1,
        eta_w1_upper_limit_muon2 => X"00B8",
        eta_w1_lower_limit_muon2 => X"0148",
        qual_lut_muon2 => X"F000",
        -- charge correlation cut
        requested_charge_correlation => "os",
    
    -- correlation cuts
        dr_cut => true,
        dr_upper_limit_vector => X"00000000001DEC28",
        dr_lower_limit_vector => X"0000000000000000",
        -- selector same/different bunch crossings
        same_bx => true
    )
    port map(
        lhc_clk,
        mu_bx_0,
        mu_bx_0,
        ls_charcorr_double_bx_0_bx_0,
        os_charcorr_double_bx_0_bx_0,
        diff_eta => diff_mu_mu_bx_0_bx_0_eta_vector,
        diff_phi => diff_mu_mu_bx_0_bx_0_phi_vector,
        condition_o => muon_muon_correlation_i47
    );


-- Instantiations of algorithms


-- 1 L1_SingleMuCosmics_BMTF : MU0[MU-ETA_BMTF]
l1_single_mu_cosmics_bmtf <= single_mu_i1;
algo(24) <= l1_single_mu_cosmics_bmtf;

-- 5 L1_SingleMu0_DQ : MU0[MU-QLTY_DBLE]
l1_single_mu0_dq <= single_mu_i5;
algo(20) <= l1_single_mu0_dq;

-- 14 L1_SingleMu12_DQ_OMTF : MU12[MU-QLTY_DBLE,MU-ETA_OMTF_POS,MU-ETA_OMTF_NEG]
l1_single_mu12_dq_omtf <= single_mu_i14;
algo(21) <= l1_single_mu12_dq_omtf;

-- 25 L1_SingleMu6er1p5 : MU6[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu6er1p5 <= single_mu_i24;
algo(23) <= l1_single_mu6er1p5;

-- 33 L1_SingleMu18er1p5 : MU18[MU-QLTY_SNGL,MU-ETA_1p5]
l1_single_mu18er1p5 <= single_mu_i32;
algo(22) <= l1_single_mu18er1p5;

-- 36 L1_MASSUPT_5_5_20 : mass_inv_upt{MU0[MU-UPT_5],MU0[MU-UPT_5]}[MASSUPT_20]
l1_massupt_5_5_20 <= invariant_mass_upt_i379;
algo(10) <= l1_massupt_5_5_20;

-- 37 L1_MASSUPT_0_0_10_open : mass_inv_upt{MU0[MU-UPT_0,MU-QLTY_OPEN],MU0[MU-UPT_0,MU-QLTY_OPEN]}[MASSUPT_10]
l1_massupt_0_0_10_open <= invariant_mass_upt_i380;
algo(9) <= l1_massupt_0_0_10_open;

-- 40 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_i34;
algo(14) <= l1_double_mu0;

-- 49 L1_DoubleMu_15_7_SQ : comb{MU15[MU-QLTY_SNGL],MU7[MU-QLTY_SNGL]}
l1_double_mu_15_7_sq <= double_mu_i43;
algo(17) <= l1_double_mu_15_7_sq;

-- 54 L1_DoubleMu0er2p0_SQ_OS_dR_Max1p4 : dist{MU0[MU-QLTY_SNGL,MU-ETA_2p0],MU0[MU-QLTY_SNGL,MU-ETA_2p0]}[DR_1p4,CHGCOR_OS]
l1_double_mu0er2p0_sq_os_d_r_max1p4 <= muon_muon_correlation_i47;
algo(8) <= l1_double_mu0er2p0_sq_os_d_r_max1p4;

-- 55 L1_DoubleMu0er1p5_SQ : comb{MU0[MU-QLTY_SNGL,MU-ETA_1p5],MU0[MU-QLTY_SNGL,MU-ETA_1p5]}
l1_double_mu0er1p5_sq <= double_mu_i48;
algo(15) <= l1_double_mu0er1p5_sq;

-- 64 L1_DoubleMu4p5er2p0_SQ_OS : comb{MU4p5[MU-QLTY_SNGL,MU-ETA_2p0],MU4p5[MU-QLTY_SNGL,MU-ETA_2p0]}[CHGCOR_OS]
l1_double_mu4p5er2p0_sq_os <= double_mu_i57;
algo(16) <= l1_double_mu4p5er2p0_sq_os;

-- 65 L1_DoubleMu4p5er2p0_SQ_OS_Mass_Min7 : mass_inv{MU4p5[MU-QLTY_SNGL,MU-ETA_2p0],MU4p5[MU-QLTY_SNGL,MU-ETA_2p0]}[CHGCOR_OS,MASS_MIN_7]
l1_double_mu4p5er2p0_sq_os_mass_min7 <= invariant_mass_i58;
algo(7) <= l1_double_mu4p5er2p0_sq_os_mass_min7;

-- 68 L1_QuadMu0_OS : comb{MU0,MU0,MU0,MU0}[CHGCOR_OS]
l1_quad_mu0_os <= quad_mu_i384;
algo(11) <= l1_quad_mu0_os;

-- 71 L1_TripleMu0_OQ : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_triple_mu0_oq <= triple_mu_i60;
algo(12) <= l1_triple_mu0_oq;

-- 75 L1_TripleMu3_SQ : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}
l1_triple_mu3_sq <= triple_mu_i64;
algo(13) <= l1_triple_mu3_sq;

-- 77 L1_TripleMu_5_3p5_2p5 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}
l1_triple_mu_5_3p5_2p5 <= triple_mu_i66;
algo(5) <= l1_triple_mu_5_3p5_2p5;

-- 83 L1_TripleMu_5_3p5_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_i66 and invariant_mass_i72;
algo(4) <= l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17;

-- 84 L1_TripleMu_5_4_2p5_DoubleMu_5_2p5_OS_Mass_5to17 : comb{MU5[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_DBLE],MU2p5[MU-QLTY_DBLE]}[MASS_MASS_5to17,CHGCOR_OS]
l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 <= triple_mu_i73 and invariant_mass_i72;
algo(6) <= l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17;

-- 155 L1_Mu0upt20ip2 : MU0[MU-IP_2,MU-UPT_20]
l1_mu0upt20ip2 <= single_mu_i373;
algo(19) <= l1_mu0upt20ip2;

-- 178 L1_SingleLooseIsoEG28er2p5 : EG28[EG-ETA_2p52,EG-ISO_0xC]
l1_single_loose_iso_eg28er2p5 <= single_eg_i146;
algo(40) <= l1_single_loose_iso_eg28er2p5;

-- 179 L1_SingleLooseIsoEG28er2p1 : EG28[EG-ETA_2p13,EG-ISO_0xC]
l1_single_loose_iso_eg28er2p1 <= single_eg_i147;
algo(33) <= l1_single_loose_iso_eg28er2p1;

-- 188 L1_SingleIsoEG28_FWD2p5 : EG28[EG-ETA_FWD_2p52_POS,EG-ISO_0xA] OR EG28[EG-ETA_FWD_2p52_NEG,EG-ISO_0xA]
l1_single_iso_eg28_fwd2p5 <= single_eg_i156 or single_eg_i157;
algo(30) <= l1_single_iso_eg28_fwd2p5;

-- 191 L1_SingleIsoEG28er1p5 : EG28[EG-ETA_1p52_HASHFIX,EG-ISO_0xA]
l1_single_iso_eg28er1p5 <= single_eg_i160;
algo(36) <= l1_single_iso_eg28er1p5;

-- 194 L1_SingleIsoEG32er2p5 : EG32[EG-ETA_2p52,EG-ISO_0xA]
l1_single_iso_eg32er2p5 <= single_eg_i163;
algo(37) <= l1_single_iso_eg32er2p5;

-- 205 L1_DoubleEG_15_10_er2p5 : comb{EG15[EG-ETA_2p52],EG10[EG-ETA_2p52]}
l1_double_eg_15_10_er2p5 <= double_eg_i169;
algo(26) <= l1_double_eg_15_10_er2p5;

-- 209 L1_DoubleEG_25_14_er2p5 : comb{EG25[EG-ETA_2p52],EG14[EG-ETA_2p52]}
l1_double_eg_25_14_er2p5 <= double_eg_i173;
algo(27) <= l1_double_eg_25_14_er2p5;

-- 228 L1_TripleEG16er2p5 : comb{EG16[EG-ETA_2p52],EG16[EG-ETA_2p52],EG16[EG-ETA_2p52]}
l1_triple_eg16er2p5 <= triple_eg_i185;
algo(25) <= l1_triple_eg16er2p5;

-- 238 L1_LooseIsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg24er2p1_htt100er <= single_eg_i189 and single_htt_i190;
algo(31) <= l1_loose_iso_eg24er2p1_htt100er;

-- 239 L1_LooseIsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg26er2p1_htt100er <= single_eg_i191 and single_htt_i190;
algo(32) <= l1_loose_iso_eg26er2p1_htt100er;

-- 240 L1_LooseIsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg28er2p1_htt100er <= single_eg_i147 and single_htt_i190;
algo(35) <= l1_loose_iso_eg28er2p1_htt100er;

-- 241 L1_LooseIsoEG30er2p1_HTT100er : EG30[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg30er2p1_htt100er <= single_eg_i192 and single_htt_i190;
algo(34) <= l1_loose_iso_eg30er2p1_htt100er;

-- 269 L1_DoubleIsoTau28er2p1 : comb{TAU28[TAU-ETA_2p13,TAU-ISO_0xE],TAU28[TAU-ETA_2p13,TAU-ISO_0xE]}
l1_double_iso_tau28er2p1 <= double_tau_i204;
algo(28) <= l1_double_iso_tau28er2p1;

-- 276 L1_DoubleIsoTau30er2p1_Mass_Max90 : mass_inv{TAU30[TAU-ETA_2p13,TAU-ISO_0xE],TAU30[TAU-ETA_2p13,TAU-ISO_0xE]}[MASS_MAX_90]
l1_double_iso_tau30er2p1_mass_max90 <= invariant_mass_i211;
algo(3) <= l1_double_iso_tau30er2p1_mass_max90;

-- 305 L1_Mu0upt100 : MU0[MU-UPT_100]
l1_mu0upt100 <= single_mu_i235;
algo(18) <= l1_mu0upt100;

-- 312 L1_SingleJet120 : JET120
l1_single_jet120 <= single_jet_i242;
algo(1) <= l1_single_jet120;

-- 313 L1_SingleJet180 : JET180
l1_single_jet180 <= single_jet_i243;
algo(38) <= l1_single_jet180;

-- 329 L1_SingleJet8erHE : JET8[JET-ETA_1p392_2p958_NEG,JET-ETA_1p392_2p958_POS]
l1_single_jet8er_he <= single_jet_i259;
algo(39) <= l1_single_jet8er_he;

-- 342 L1_DoubleJet120er2p5 : comb{JET120[JET-ETA_2p52],JET120[JET-ETA_2p52]}
l1_double_jet120er2p5 <= double_jet_i264;
algo(29) <= l1_double_jet120er2p5;

-- 360 L1_DoubleJet_115_40_DoubleJet40_Mass_Min620_Jet60TT28 : JET115 AND (mass_inv{JET40[JET-ETA_CEN_2p70],JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET60,JET60}[MASS_MIN_620] OR mass_inv{JET60,JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620] OR mass_inv{JET60,JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET40[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET40[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620])
l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28 <= single_jet_i283 and ( invariant_mass_i284 or invariant_mass_i285 or invariant_mass_i286 or invariant_mass_i287 or invariant_mass_i288 or invariant_mass_i289 );
algo(0) <= l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28;

-- 361 L1_DoubleJet_120_45_DoubleJet45_Mass_Min620_Jet60TT28 : JET120 AND (mass_inv{JET45[JET-ETA_CEN_2p70],JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET60,JET60}[MASS_MIN_620] OR mass_inv{JET60,JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620] OR mass_inv{JET60,JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET45[JET-ETA_CEN_2p70]}[MASS_MIN_620] OR mass_inv{JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS],JET45[JET-ETA_FWD_3p00_NEG,JET-ETA_FWD_3p00_POS]}[MASS_MIN_620])
l1_double_jet_120_45_double_jet45_mass_min620_jet60_tt28 <= single_jet_i242 and ( invariant_mass_i290 or invariant_mass_i285 or invariant_mass_i291 or invariant_mass_i292 or invariant_mass_i293 or invariant_mass_i294 );
algo(2) <= l1_double_jet_120_45_double_jet45_mass_min620_jet60_tt28;

-- 399 L1_HTT160er : HTT160
l1_htt160er <= single_htt_i314;
algo(42) <= l1_htt160er;

-- 404 L1_HTT360er : HTT360
l1_htt360er <= single_htt_i317;
algo(43) <= l1_htt360er;

-- 411 L1_ETT1600 : ETT1600
l1_ett1600 <= single_ett_i321;
algo(41) <= l1_ett1600;


-- ========================================================