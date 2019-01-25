-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal single_asymet_i149 : std_logic;
    signal single_asymet_i150 : std_logic;
    signal single_asymet_i151 : std_logic;
    signal single_asymet_i152 : std_logic;
    signal single_asymet_i153 : std_logic;
    signal single_asymet_i195 : std_logic;
    signal single_asymet_i196 : std_logic;
    signal single_cent0_i72 : std_logic;
    signal single_cent1_i73 : std_logic;
    signal single_cent2_i74 : std_logic;
    signal single_cent3_i75 : std_logic;
    signal single_cent4_i76 : std_logic;
    signal single_ext_i183 : std_logic;
    signal single_ext_i30 : std_logic;
    signal single_mbt0_hfm_i39 : std_logic;
    signal single_mbt1_hfm_i71 : std_logic;
    signal single_mbt0_hfp_i38 : std_logic;
    signal single_mbt1_hfp_i70 : std_logic;
    signal single_ett_i148 : std_logic;
    signal single_ett_i158 : std_logic;
    signal single_ett_i159 : std_logic;
    signal single_ett_i160 : std_logic;
    signal single_ett_i161 : std_logic;
    signal single_ett_i166 : std_logic;
    signal single_ett_i168 : std_logic;
    signal single_ett_i194 : std_logic;
    signal single_ett_i198 : std_logic;
    signal single_ett_i69 : std_logic;
    signal single_htt_i24 : std_logic;
    signal calo_calo_correlation_i187 : std_logic;
    signal calo_calo_correlation_i193 : std_logic;
    signal muon_muon_correlation_i145 : std_logic;
    signal single_eg_i11 : std_logic;
    signal single_eg_i111 : std_logic;
    signal single_eg_i112 : std_logic;
    signal single_eg_i114 : std_logic;
    signal single_eg_i125 : std_logic;
    signal single_jet_i100 : std_logic;
    signal single_jet_i101 : std_logic;
    signal single_jet_i104 : std_logic;
    signal single_jet_i105 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i16 : std_logic;
    signal single_jet_i79 : std_logic;
    signal single_jet_i82 : std_logic;
    signal single_jet_i84 : std_logic;
    signal single_jet_i86 : std_logic;
    signal single_jet_i88 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_eg3 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_minimum_bias_hf1_and_or_ett10_bptx_and : std_logic;
    signal l1_double_mu_open_max_dr3p5_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet44_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet64_fwd_bptx_and : std_logic;
    signal l1_single_jet28_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg12_bptx_and : std_logic;
    signal l1_single_iso_eg7_bptx_and : std_logic;
    signal l1_single_eg7_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg12_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_not_minimum_bias_hf2_or : std_logic;
    signal l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym40_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym60_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym65_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett65_ett_asym70_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett45_not_ett110_bptx_and : std_logic;
    signal l1_not_ett95_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett200_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_castor_medium_jet_single_eg5_minimum_bias_hf1_or_bptx_and : std_logic;

-- ========================================================