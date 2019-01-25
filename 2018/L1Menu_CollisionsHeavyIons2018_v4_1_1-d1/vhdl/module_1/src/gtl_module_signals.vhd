-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_CollisionsHeavyIons2018_v4_1_1

-- Unique ID of L1 Trigger Menu:
-- eb09cfc5-b4bc-4870-ac3c-0e7fa91c5c5d

-- Unique ID of firmware implementation:
-- 709f0a32-40b7-4539-af4a-dc697a3eb4f3

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
    signal single_asymet_i151 : std_logic;
    signal single_cent0_i72 : std_logic;
    signal single_cent1_i73 : std_logic;
    signal single_cent2_i74 : std_logic;
    signal single_cent3_i75 : std_logic;
    signal single_cent4_i76 : std_logic;
    signal single_cent7_i78 : std_logic;
    signal single_ext_i169 : std_logic;
    signal single_ext_i183 : std_logic;
    signal single_ext_i184 : std_logic;
    signal single_ext_i185 : std_logic;
    signal single_ext_i199 : std_logic;
    signal single_ext_i200 : std_logic;
    signal single_ext_i28 : std_logic;
    signal single_ext_i29 : std_logic;
    signal single_ext_i30 : std_logic;
    signal single_ext_i31 : std_logic;
    signal single_ext_i32 : std_logic;
    signal single_ext_i33 : std_logic;
    signal single_ext_i34 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_ext_i36 : std_logic;
    signal single_ext_i37 : std_logic;
    signal single_ext_i40 : std_logic;
    signal single_ext_i41 : std_logic;
    signal single_ext_i42 : std_logic;
    signal single_ext_i43 : std_logic;
    signal single_ext_i44 : std_logic;
    signal single_ext_i45 : std_logic;
    signal single_ext_i46 : std_logic;
    signal single_ext_i47 : std_logic;
    signal single_ext_i48 : std_logic;
    signal single_ext_i49 : std_logic;
    signal single_ext_i50 : std_logic;
    signal single_ext_i51 : std_logic;
    signal single_ext_i52 : std_logic;
    signal single_ext_i53 : std_logic;
    signal single_ext_i54 : std_logic;
    signal single_ext_i55 : std_logic;
    signal single_ext_i56 : std_logic;
    signal single_ext_i57 : std_logic;
    signal single_ext_i63 : std_logic;
    signal single_ext_i64 : std_logic;
    signal single_ext_i65 : std_logic;
    signal single_ext_i66 : std_logic;
    signal single_mbt0_hfm_i39 : std_logic;
    signal single_mbt1_hfm_i71 : std_logic;
    signal single_mbt0_hfp_i38 : std_logic;
    signal single_mbt1_hfp_i70 : std_logic;
    signal single_ett_i160 : std_logic;
    signal single_ett_i163 : std_logic;
    signal single_ett_i164 : std_logic;
    signal single_ett_i194 : std_logic;
    signal single_ett_i62 : std_logic;
    signal calo_calo_correlation_i180 : std_logic;
    signal calo_calo_correlation_i191 : std_logic;
    signal muon_muon_correlation_i144 : std_logic;
    signal single_eg_i111 : std_logic;
    signal single_eg_i116 : std_logic;
    signal single_eg_i127 : std_logic;
    signal single_jet_i102 : std_logic;
    signal single_jet_i103 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i79 : std_logic;
    signal single_jet_i80 : std_logic;
    signal single_jet_i81 : std_logic;
    signal single_jet_i83 : std_logic;
    signal single_jet_i85 : std_logic;
    signal single_jet_i87 : std_logic;
    signal single_jet_i89 : std_logic;
    signal single_jet_i92 : std_logic;
    signal single_jet_i93 : std_logic;
    signal single_jet_i98 : std_logic;
    signal single_jet_i99 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_jet60 : std_logic;
    signal l1_ett2000 : std_logic;
    signal l1_totem_1 : std_logic;
    signal l1_totem_2 : std_logic;
    signal l1_totem_3 : std_logic;
    signal l1_totem_4 : std_logic;
    signal l1_zdcm : std_logic;
    signal l1_zdcp : std_logic;
    signal l1_zdcm_bptx_and : std_logic;
    signal l1_zdcp_bptx_and : std_logic;
    signal l1_zdcm_zdcp_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_plus_not_bptx_minus : std_logic;
    signal l1_bptx_minus_not_bptx_plus : std_logic;
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
    signal l1_first_collision_in_orbit_centrality30_100_bptx_and : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_1 : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_2 : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_4 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_1 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_2 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_4 : std_logic;
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
    signal l1_centrality_30_100 : std_logic;
    signal l1_centrality_50_100 : std_logic;
    signal l1_centrality_saturation : std_logic;
    signal l1_double_mu_open_max_dr2p0_os_bptx_and : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet40_bptx_and : std_logic;
    signal l1_single_jet48_bptx_and : std_logic;
    signal l1_single_jet64_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet36_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet56_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_iso_eg15_bptx_and : std_logic;
    signal l1_single_eg3_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_50_100_bptx_and : std_logic;
    signal l1_single_eg12_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett55_not_ett130_bptx_and : std_logic;
    signal l1_not_ett110_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor1 : std_logic;
    signal l1_castor_medium_jet : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_muon : std_logic;
    signal l1_castor_muon_bptx_and : std_logic;
    signal l1_castor_high_jet : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;

-- ========================================================