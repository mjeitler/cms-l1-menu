-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal single_ext_i156 : std_logic;
    signal single_ext_i158 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_mbt1_hfm_i44 : std_logic;
    signal single_mbt1_hfp_i43 : std_logic;
    signal single_ett_i121 : std_logic;
    signal single_ett_i129 : std_logic;
    signal single_ett_i131 : std_logic;
    signal single_ett_i133 : std_logic;
    signal single_ett_i134 : std_logic;
    signal single_ett_i138 : std_logic;
    signal single_ett_i140 : std_logic;
    signal single_ett_i170 : std_logic;
    signal single_ett_i171 : std_logic;
    signal calo_calo_correlation_i152 : std_logic;
    signal calo_calo_correlation_i163 : std_logic;
    signal double_eg_i102 : std_logic;
    signal double_eg_i103 : std_logic;
    signal double_eg_i154 : std_logic;
    signal double_eg_i155 : std_logic;
    signal double_mu_i112 : std_logic;
    signal double_mu_i114 : std_logic;
    signal double_mu_i119 : std_logic;
    signal single_eg_i111 : std_logic;
    signal single_eg_i84 : std_logic;
    signal single_eg_i85 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i52 : std_logic;
    signal single_jet_i65 : std_logic;
    signal single_jet_i66 : std_logic;
    signal single_jet_i71 : std_logic;
    signal single_jet_i72 : std_logic;
    signal single_mu_i1 : std_logic;
    signal single_mu_i104 : std_logic;
    signal single_mu_i106 : std_logic;
    signal single_mu_i148 : std_logic;
    signal single_mu_i40 : std_logic;
    signal single_mu_i41 : std_logic;
    signal single_mu_i6 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_mu3_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_mu_open_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_mu0_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_mu7_single_eg10_bptx_and : std_logic;
    signal l1_double_mu_open_bptx_and : std_logic;
    signal l1_double_mu_open_os_bptx_and : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_mu0_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_jet60_bptx_and : std_logic;
    signal l1_single_jet8_fwd_bptx_and : std_logic;
    signal l1_single_jet36_fwd_bptx_and : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_single_eg3_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_single_eg12_single_jet28_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet56_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_double_eg5_bptx_and : std_logic;
    signal l1_double_eg8_bptx_and : std_logic;
    signal l1_double_eg10_bptx_and : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_eg5_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_double_eg5_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym40_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym50_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym60_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym70_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym80_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym40_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym50_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym60_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym70_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym80_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett60_ett_asym60_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett65_ett_asym70_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett65_ett_asym80_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett20_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett80_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett95_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett110_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_not_ett150_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor_medium_jet_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_castor_high_jet_not_minimum_bias_hf2_and_bptx_and : std_logic;
    signal l1_castor_high_jet_not_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_castor_high_jet_or_minimum_bias_hf2_and_bptx_and : std_logic;

-- ========================================================