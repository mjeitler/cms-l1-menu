-- ========================================================
-- from VHDL producer:

-- Module ID: 5

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
    signal single_asymet_i168 : std_logic;
    signal single_asymet_i169 : std_logic;
    signal single_ext_i35 : std_logic;
    signal single_mbt1_hfm_i44 : std_logic;
    signal single_mbt1_hfp_i43 : std_logic;
    signal single_ett_i121 : std_logic;
    signal single_ett_i127 : std_logic;
    signal single_ett_i132 : std_logic;
    signal single_ett_i133 : std_logic;
    signal single_ett_i134 : std_logic;
    signal single_ett_i32 : std_logic;
    signal calo_calo_correlation_i153 : std_logic;
    signal calo_calo_correlation_i164 : std_logic;
    signal double_eg_i103 : std_logic;
    signal double_mu_i115 : std_logic;
    signal double_mu_i119 : std_logic;
    signal single_eg_i10 : std_logic;
    signal single_eg_i11 : std_logic;
    signal single_eg_i110 : std_logic;
    signal single_eg_i8 : std_logic;
    signal single_eg_i86 : std_logic;
    signal single_eg_i87 : std_logic;
    signal single_eg_i89 : std_logic;
    signal single_eg_i90 : std_logic;
    signal single_eg_i97 : std_logic;
    signal single_jet_i13 : std_logic;
    signal single_jet_i14 : std_logic;
    signal single_jet_i15 : std_logic;
    signal single_jet_i17 : std_logic;
    signal single_jet_i18 : std_logic;
    signal single_jet_i30 : std_logic;
    signal single_jet_i53 : std_logic;
    signal single_jet_i54 : std_logic;
    signal single_jet_i56 : std_logic;
    signal single_jet_i59 : std_logic;
    signal single_jet_i63 : std_logic;
    signal single_jet_i77 : std_logic;
    signal single_jet_i78 : std_logic;
    signal single_jet_i91 : std_logic;
    signal single_jet_i92 : std_logic;
    signal single_jet_i93 : std_logic;
    signal single_mu_i0 : std_logic;
    signal single_mu_i105 : std_logic;
    signal single_mu_i106 : std_logic;
    signal single_mu_i107 : std_logic;
    signal single_mu_i149 : std_logic;
    signal single_mu_i28 : std_logic;
    signal single_mu_i40 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu0_dq : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu22_emtf : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_eg15er2p5 : std_logic;
    signal l1_single_eg26er2p5 : std_logic;
    signal l1_double_eg5 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet35er2p5 : std_logic;
    signal l1_single_jet35_fwd3p0 : std_logic;
    signal l1_ett2000 : std_logic;
    signal l1_single_mu3_bptx_and : std_logic;
    signal l1_single_mu5_bptx_and : std_logic;
    signal l1_single_mu7_bptx_and : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_single_mu3_single_jet28_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_mu3_single_eg12_bptx_and : std_logic;
    signal l1_single_mu3_single_eg30_bptx_and : std_logic;
    signal l1_single_mu5_single_eg12_bptx_and : std_logic;
    signal l1_single_mu5_single_eg20_bptx_and : std_logic;
    signal l1_single_mu7_single_eg7_bptx_and : std_logic;
    signal l1_single_mu7_single_eg12_bptx_and : std_logic;
    signal l1_single_mu12_single_eg7_bptx_and : std_logic;
    signal l1_double_mu_open_ss_bptx_and : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet24_bptx_and : std_logic;
    signal l1_single_jet32_bptx_and : std_logic;
    signal l1_single_jet44_bptx_and : std_logic;
    signal l1_single_jet72_bptx_and : std_logic;
    signal l1_single_jet64_fwd_bptx_and : std_logic;
    signal l1_single_eg7_bptx_and : std_logic;
    signal l1_single_eg12_bptx_and : std_logic;
    signal l1_single_eg21_bptx_and : std_logic;
    signal l1_single_eg30_bptx_and : std_logic;
    signal l1_single_iso_eg3_bptx_and : std_logic;
    signal l1_single_eg7_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg7_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg12_single_jet32_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg12_single_jet40_mid_eta2p7_bptx_and : std_logic;
    signal l1_single_eg12_single_jet44_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_single_eg15_single_jet60_mid_eta2p7_min_dr0p4_bptx_and : std_logic;
    signal l1_ett_asym40_bptx_and : std_logic;
    signal l1_ett_asym50_bptx_and : std_logic;
    signal l1_ett_asym60_bptx_and : std_logic;
    signal l1_ett_asym70_bptx_and : std_logic;
    signal l1_ett_asym80_bptx_and : std_logic;
    signal l1_ett5_bptx_and : std_logic;
    signal l1_ett5_ett_asym40_bptx_and : std_logic;
    signal l1_ett5_ett_asym50_bptx_and : std_logic;
    signal l1_ett5_ett_asym60_bptx_and : std_logic;
    signal l1_ett5_ett_asym70_bptx_and : std_logic;
    signal l1_ett5_ett_asym80_bptx_and : std_logic;
    signal l1_ett50_ett_asym55_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett50_ett_asym65_minimum_bias_hf2_or_bptx_and : std_logic;
    signal l1_ett5_not_ett30_bptx_and : std_logic;
    signal l1_ett45_not_ett110_bptx_and : std_logic;

-- ========================================================