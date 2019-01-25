-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
    signal single_asymet_i123 : std_logic;
    signal single_asymet_i124 : std_logic;
    signal single_asymet_i125 : std_logic;
    signal single_asymet_i126 : std_logic;
    signal single_asymet_i168 : std_logic;
    signal single_ext_i156 : std_logic;
    signal single_ext_i158 : std_logic;
    signal single_ext_i173 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_ext_i36 : std_logic;
    signal single_ext_i37 : std_logic;
    signal single_ext_i38 : std_logic;
    signal single_mbt0_hfm_i34 : std_logic;
    signal single_mbt0_hfp_i33 : std_logic;
    signal single_ett_i121 : std_logic;
    signal single_ett_i129 : std_logic;
    signal single_ett_i131 : std_logic;
    signal single_ett_i133 : std_logic;
    signal single_ett_i138 : std_logic;
    signal single_ett_i139 : std_logic;
    signal single_ett_i140 : std_logic;
    signal single_ett_i141 : std_logic;
    signal single_ett_i167 : std_logic;
    signal single_ett_i42 : std_logic;
    signal calo_calo_correlation_i150 : std_logic;
    signal calo_calo_correlation_i161 : std_logic;
    signal muon_muon_correlation_i118 : std_logic;
    signal double_eg_i102 : std_logic;
    signal double_mu_i119 : std_logic;
    signal double_mu_i144 : std_logic;
    signal single_eg_i85 : std_logic;
    signal single_jet_i31 : std_logic;
    signal single_jet_i57 : std_logic;
    signal single_jet_i60 : std_logic;
    signal single_jet_i64 : std_logic;
    signal single_jet_i67 : std_logic;
    signal single_jet_i68 : std_logic;
    signal single_jet_i75 : std_logic;
    signal single_jet_i76 : std_logic;
    signal single_mu_i104 : std_logic;
    signal single_mu_i105 : std_logic;
    signal single_mu_i106 : std_logic;
    signal single_mu_i107 : std_logic;
    signal single_mu_i108 : std_logic;
    signal single_mu_i145 : std_logic;
    signal single_mu_i146 : std_logic;
    signal single_mu_i2 : std_logic;
    signal single_mu_i4 : std_logic;
    signal single_mu_i40 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu3_open_bptx_and : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_double_eg2 : std_logic;
    signal l1_single_jet60er2p5 : std_logic;
    signal l1_zdcp : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_1 : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_2 : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and_totem_4 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_1 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_2 : std_logic;
    signal l1_not_minimum_bias_hf0_or_bptx_and_totem_4 : std_logic;
    signal l1_minimum_bias_hf1_and_or_ett10_bptx_and : std_logic;
    signal l1_single_mu16_bptx_and : std_logic;
    signal l1_single_mu3_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu5_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu7_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu12_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_mu16_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu_open_max_dr3p5 : std_logic;
    signal l1_double_mu0_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet48_bptx_and : std_logic;
    signal l1_single_jet80_bptx_and : std_logic;
    signal l1_single_jet16_fwd_bptx_and : std_logic;
    signal l1_single_jet56_fwd_bptx_and : std_logic;
    signal l1_single_eg7_single_jet56_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet28_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_ett_asym40_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett5_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym60_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym70_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett8_ett_asym80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym50_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_ett10_ett_asym55_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett80_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett95_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett80_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett95_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett200_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_not_ett110_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_single_mu0_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_single_eg5_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_high_jet_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_castor_high_jet_or_minimum_bias_hf1_and_bptx_and : std_logic;

-- ========================================================