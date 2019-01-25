-- ========================================================
-- from VHDL producer:

-- Module ID: 4

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

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_asymet_i122 : std_logic;
    signal single_asymet_i124 : std_logic;
    signal single_asymet_i126 : std_logic;
    signal single_asymet_i169 : std_logic;
    signal single_cent0_i45 : std_logic;
    signal single_cent1_i46 : std_logic;
    signal single_cent2_i47 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_mbt1_hfm_i44 : std_logic;
    signal single_mbt1_hfp_i43 : std_logic;
    signal single_etmhf_i27 : std_logic;
    signal single_ett_i121 : std_logic;
    signal single_ett_i128 : std_logic;
    signal single_ett_i129 : std_logic;
    signal single_ett_i134 : std_logic;
    signal single_ett_i135 : std_logic;
    signal single_ett_i170 : std_logic;
    signal single_htt_i24 : std_logic;
    signal single_htt_i26 : std_logic;
    signal calo_calo_correlation_i160 : std_logic;
    signal calo_calo_correlation_i166 : std_logic;
    signal muon_muon_correlation_i117 : std_logic;
    signal double_jet_i79 : std_logic;
    signal double_jet_i80 : std_logic;
    signal double_jet_i81 : std_logic;
    signal double_jet_i82 : std_logic;
    signal double_jet_i83 : std_logic;
    signal double_mu_i112 : std_logic;
    signal double_mu_i143 : std_logic;
    signal single_eg_i84 : std_logic;
    signal single_eg_i86 : std_logic;
    signal single_eg_i88 : std_logic;
    signal single_eg_i89 : std_logic;
    signal single_eg_i9 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i21 : std_logic;
    signal single_jet_i22 : std_logic;
    signal single_jet_i52 : std_logic;
    signal single_jet_i53 : std_logic;
    signal single_jet_i54 : std_logic;
    signal single_jet_i55 : std_logic;
    signal single_jet_i56 : std_logic;
    signal single_jet_i57 : std_logic;
    signal single_jet_i58 : std_logic;
    signal single_jet_i59 : std_logic;
    signal single_jet_i60 : std_logic;
    signal single_jet_i61 : std_logic;
    signal single_jet_i62 : std_logic;
    signal single_jet_i73 : std_logic;
    signal single_jet_i74 : std_logic;
    signal single_mu_i104 : std_logic;
    signal single_mu_i3 : std_logic;
    signal single_mu_i40 : std_logic;
    signal single_mu_i5 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_single_eg10er2p5 : std_logic;
    signal l1_single_jet120_fwd3p0 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt360er : std_logic;
    signal l1_ett5 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_double_mu_open_max_dr2p0_os_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_bptx_and : std_logic;
    signal l1_single_jet8_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet16_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet28_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet36_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet40_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet48_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet56_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet64_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg3_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg15_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg7_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg12_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_ett_asym40 : std_logic;
    signal l1_ett_asym60 : std_logic;
    signal l1_ett_asym80 : std_logic;
    signal l1_ett60_ett_asym65_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett35_not_ett80_bptx_and : std_logic;
    signal l1_ett50_not_ett120_bptx_and : std_logic;

-- ========================================================