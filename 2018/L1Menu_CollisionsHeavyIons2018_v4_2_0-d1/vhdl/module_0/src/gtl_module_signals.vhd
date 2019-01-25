-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
    signal single_cent0_i45 : std_logic;
    signal single_cent1_i46 : std_logic;
    signal single_cent2_i47 : std_logic;
    signal single_cent3_i48 : std_logic;
    signal single_cent4_i49 : std_logic;
    signal single_cent5_i50 : std_logic;
    signal single_cent6_i113 : std_logic;
    signal single_ext_i142 : std_logic;
    signal single_ext_i156 : std_logic;
    signal single_ext_i157 : std_logic;
    signal single_ext_i158 : std_logic;
    signal single_ext_i174 : std_logic;
    signal single_ext_i175 : std_logic;
    signal single_ext_i176 : std_logic;
    signal single_ext_i189 : std_logic;
    signal single_ext_i190 : std_logic;
    signal single_ext_i191 : std_logic;
    signal single_ext_i192 : std_logic;
    signal single_ext_i193 : std_logic;
    signal single_ext_i194 : std_logic;
    signal single_ext_i195 : std_logic;
    signal single_ext_i196 : std_logic;
    signal single_ext_i197 : std_logic;
    signal single_ext_i198 : std_logic;
    signal single_ext_i199 : std_logic;
    signal single_ext_i200 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_mbt0_hfm_i34 : std_logic;
    signal single_mbt0_hfp_i33 : std_logic;
    signal calo_calo_correlation_i151 : std_logic;
    signal calo_calo_correlation_i162 : std_logic;
    signal muon_muon_correlation_i118 : std_logic;
    signal double_jet_i79 : std_logic;
    signal double_jet_i80 : std_logic;
    signal double_jet_i81 : std_logic;
    signal double_jet_i82 : std_logic;
    signal double_jet_i83 : std_logic;
    signal double_mu_i112 : std_logic;
    signal double_mu_i119 : std_logic;
    signal double_mu_i120 : std_logic;
    signal single_eg_i84 : std_logic;
    signal single_eg_i86 : std_logic;
    signal single_eg_i88 : std_logic;
    signal single_eg_i89 : std_logic;
    signal single_jet_i13 : std_logic;
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
    signal single_jet_i65 : std_logic;
    signal single_jet_i66 : std_logic;
    signal single_jet_i67 : std_logic;
    signal single_jet_i68 : std_logic;
    signal single_jet_i69 : std_logic;
    signal single_jet_i70 : std_logic;
    signal single_jet_i71 : std_logic;
    signal single_jet_i72 : std_logic;
    signal single_jet_i73 : std_logic;
    signal single_jet_i74 : std_logic;
    signal single_jet_i75 : std_logic;
    signal single_jet_i76 : std_logic;
    signal single_jet_i77 : std_logic;
    signal single_jet_i78 : std_logic;

-- Signal definition for algorithms names
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
    signal l1_centrality_30_100 : std_logic;
    signal l1_centrality_50_100 : std_logic;
    signal l1_centrality_20_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;
    signal l1_double_mu_open_max_dr3p5_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_10_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_30_100_bptx_and : std_logic;
    signal l1_double_mu_open_centrality_40_100_bptx_and : std_logic;
    signal l1_double_mu0_centrality_10_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_30_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_double_mu0_centrality_50_100_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_single_jet8_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet16_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet24_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet32_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet36_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet40_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet48_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet56_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet60_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet36_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet56_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_30_100_bptx_and : std_logic;
    signal l1_single_jet8_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet16_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet28_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet36_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet44_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet56_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_single_jet64_fwd_centrality_50_100_bptx_and : std_logic;
    signal l1_double_jet16_and8_mid_eta2p7_centrality_30_100_bptx_and : std_logic;
    signal l1_double_jet16_and12_mid_eta2p7_centrality_30_100_bptx_and : std_logic;
    signal l1_double_jet20_and8_mid_eta2p7_centrality_30_100_bptx_and : std_logic;
    signal l1_double_jet20_and12_mid_eta2p7_centrality_30_100_bptx_and : std_logic;
    signal l1_double_jet28_and16_mid_eta2p7_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg3_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg7_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg15_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg21_centrality_30_100_bptx_and : std_logic;
    signal l1_single_eg7_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_castor1 : std_logic;
    signal l1_castor_medium_jet : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_muon : std_logic;
    signal l1_castor_muon_bptx_and : std_logic;
    signal l1_castor_high_jet : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;

-- ========================================================