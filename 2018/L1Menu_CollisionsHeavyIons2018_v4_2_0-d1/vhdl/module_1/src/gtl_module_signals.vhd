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
    signal single_asymet_i123 : std_logic;
    signal single_asymet_i125 : std_logic;
    signal single_asymet_i168 : std_logic;
    signal single_asymet_i169 : std_logic;
    signal single_cent0_i45 : std_logic;
    signal single_cent1_i46 : std_logic;
    signal single_cent7_i51 : std_logic;
    signal single_ext_i172 : std_logic;
    signal single_ext_i173 : std_logic;
    signal single_ext_i174 : std_logic;
    signal single_ext_i177 : std_logic;
    signal single_ext_i178 : std_logic;
    signal single_ext_i179 : std_logic;
    signal single_ext_i180 : std_logic;
    signal single_ext_i181 : std_logic;
    signal single_ext_i182 : std_logic;
    signal single_ext_i183 : std_logic;
    signal single_ext_i184 : std_logic;
    signal single_ext_i185 : std_logic;
    signal single_ext_i186 : std_logic;
    signal single_ext_i187 : std_logic;
    signal single_ext_i188 : std_logic;
    signal single_ext_i189 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_ext_i36 : std_logic;
    signal single_ext_i37 : std_logic;
    signal single_ext_i38 : std_logic;
    signal single_ext_i39 : std_logic;
    signal single_mbt0_hfm_i34 : std_logic;
    signal single_mbt1_hfm_i44 : std_logic;
    signal single_mbt0_hfp_i33 : std_logic;
    signal single_mbt1_hfp_i43 : std_logic;
    signal single_ett_i121 : std_logic;
    signal single_ett_i130 : std_logic;
    signal single_ett_i131 : std_logic;
    signal single_ett_i136 : std_logic;
    signal single_ett_i137 : std_logic;
    signal single_ett_i167 : std_logic;
    signal single_htt_i23 : std_logic;
    signal single_htt_i25 : std_logic;
    signal calo_calo_correlation_i159 : std_logic;
    signal calo_calo_correlation_i165 : std_logic;
    signal muon_muon_correlation_i116 : std_logic;
    signal double_eg_i102 : std_logic;
    signal double_mu_i119 : std_logic;
    signal single_eg_i100 : std_logic;
    signal single_eg_i101 : std_logic;
    signal single_eg_i110 : std_logic;
    signal single_eg_i111 : std_logic;
    signal single_eg_i7 : std_logic;
    signal single_eg_i84 : std_logic;
    signal single_eg_i85 : std_logic;
    signal single_eg_i88 : std_logic;
    signal single_eg_i98 : std_logic;
    signal single_eg_i99 : std_logic;
    signal single_jet_i109 : std_logic;
    signal single_jet_i12 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i19 : std_logic;
    signal single_jet_i20 : std_logic;
    signal single_jet_i29 : std_logic;
    signal single_jet_i52 : std_logic;
    signal single_jet_i55 : std_logic;
    signal single_jet_i58 : std_logic;
    signal single_jet_i61 : std_logic;
    signal single_jet_i62 : std_logic;
    signal single_jet_i69 : std_logic;
    signal single_jet_i70 : std_logic;
    signal single_jet_i91 : std_logic;
    signal single_jet_i92 : std_logic;
    signal single_jet_i93 : std_logic;
    signal single_jet_i94 : std_logic;
    signal single_jet_i95 : std_logic;
    signal single_jet_i96 : std_logic;
    signal single_mu_i104 : std_logic;
    signal single_mu_i105 : std_logic;
    signal single_mu_i106 : std_logic;
    signal single_mu_i147 : std_logic;
    signal single_mu_i40 : std_logic;
    signal single_mu_i41 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu22_bmtf : std_logic;
    signal l1_single_eg3 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg8er2p5 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_single_jet120er2p5 : std_logic;
    signal l1_single_jet60_fwd3p0 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_totem_1 : std_logic;
    signal l1_totem_2 : std_logic;
    signal l1_totem_3 : std_logic;
    signal l1_totem_4 : std_logic;
    signal l1_zdcm : std_logic;
    signal l1_zdcm_bptx_and : std_logic;
    signal l1_zdcp_bptx_and : std_logic;
    signal l1_zdcm_zdcp_bptx_and : std_logic;
    signal l1_zdc_or_or_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_zdc_or_or_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_zdc_and_or_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_zdc_and_or_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_zdc_and_or_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_zdc_and_or_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_second_bunch_in_train : std_logic;
    signal l1_last_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_first_bunch_before_train : std_logic;
    signal l1_second_last_bunch_in_train : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_and : std_logic;
    signal l1_minimum_bias_hf1_or : std_logic;
    signal l1_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_xor_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf1_and : std_logic;
    signal l1_not_minimum_bias_hf1_or : std_logic;
    signal l1_not_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_and : std_logic;
    signal l1_minimum_bias_hf2_or : std_logic;
    signal l1_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf2_and : std_logic;
    signal l1_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf2_or : std_logic;
    signal l1_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_centrality_saturation : std_logic;
    signal l1_single_mu_open_bptx_and : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_single_mu_open_centrality_70_100_bptx_and : std_logic;
    signal l1_single_mu3_centrality_70_100_bptx_and : std_logic;
    signal l1_single_mu_open_centrality_80_100_bptx_and : std_logic;
    signal l1_single_mu3_centrality_80_100_bptx_and : std_logic;
    signal l1_single_mu_open_centrality_70_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu_open_centrality_80_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet28_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet44_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet56_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu_open_single_jet64_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu_open_single_eg15_bptx_and : std_logic;
    signal l1_single_mu3_single_eg20_bptx_and : std_logic;
    signal l1_single_mu5_single_eg10_bptx_and : std_logic;
    signal l1_single_mu5_single_eg15_bptx_and : std_logic;
    signal l1_single_mu7_single_eg15_bptx_and : std_logic;
    signal l1_double_mu0_bptx_and : std_logic;
    signal l1_double_mu_open_max_dr2p0_bptx_and : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet28_bptx_and : std_logic;
    signal l1_single_jet40_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet64_bptx_and : std_logic;
    signal l1_single_jet28_fwd_bptx_and : std_logic;
    signal l1_single_eg3_bptx_and : std_logic;
    signal l1_single_eg5_bptx_and : std_logic;
    signal l1_single_eg15_bptx_and : std_logic;
    signal l1_single_iso_eg7_bptx_and : std_logic;
    signal l1_single_iso_eg12_bptx_and : std_logic;
    signal l1_single_iso_eg15_bptx_and : std_logic;
    signal l1_single_iso_eg21_bptx_and : std_logic;
    signal l1_single_eg5_single_jet28_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg5_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg5_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg7_single_jet28_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg12_single_jet56_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet28_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet44_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet56_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg15_single_jet60_mid_eta2p7_bptx_and : std_logic;
    signal l1_double_eg2_bptx_and : std_logic;
    signal l1_ett_asym50 : std_logic;
    signal l1_ett_asym70 : std_logic;
    signal l1_ett5_not_minimum_bias_hf2_or : std_logic;
    signal l1_ett8_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym65_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett40_not_ett95_bptx_and : std_logic;
    signal l1_ett55_not_ett130_bptx_and : std_logic;

-- ========================================================