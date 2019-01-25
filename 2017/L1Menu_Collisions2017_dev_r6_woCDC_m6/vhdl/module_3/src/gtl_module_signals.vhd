-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r6_woCDC

-- Unique ID of L1 Trigger Menu:
-- 769ff1e5-53d7-4e3d-813c-259f36a208a0

-- Unique ID of firmware implementation:
-- f497b2a1-149a-4580-85bd-c6a15234ad4a

-- Scale set:
-- scales_2017_05_22

-- VHDL producer version
-- v2.0.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6102799243448128885 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_etm_18699475893 : std_logic;
    signal single_etm_2393532815664 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626744368 : std_logic;
    signal single_htt_2496626776112 : std_logic;
    signal calo_calo_correlation_12099677872530784312 : std_logic;
    signal calo_esum_correlation_13491612199685231906 : std_logic;
    signal calo_esum_correlation_16768129600365282577 : std_logic;
    signal calo_muon_correlation_16240389188362377217 : std_logic;
    signal invariant_mass_15577908206133012537 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal muon_muon_correlation_9513481109957663155 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377951 : std_logic;
    signal double_jet_15903572090988376162 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_14617142003772573591 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961163303935834116 : std_logic;
    signal double_mu_2011765979326275391 : std_logic;
    signal double_tau_14808338227894500078 : std_logic;
    signal double_tau_15233202657361500387 : std_logic;
    signal double_tau_5584966257611717374 : std_logic;
    signal quad_jet_2680186536839014580 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852190749760 : std_logic;
    signal single_eg_12507579852318676032 : std_logic;
    signal single_eg_12507579852322870336 : std_logic;
    signal single_eg_14262501759707843507 : std_logic;
    signal single_eg_14262501759976278963 : std_logic;
    signal single_eg_14262501760244714419 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873208 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_6872943369141609713 : std_logic;
    signal single_jet_15873314052325834177 : std_logic;
    signal single_jet_15873314052330193857 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_jet_5974144913806802428 : std_logic;
    signal single_jet_5974216382062607868 : std_logic;
    signal single_jet_5974354920527707644 : std_logic;
    signal single_jet_8640423326805719435 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;
    signal single_mu_6225176159725710459 : std_logic;
    signal single_mu_7270359269352285314 : std_logic;
    signal single_mu_9379434265999970464 : std_logic;
    signal single_tau_16608844133906550600 : std_logic;
    signal single_tau_22686292658 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
    signal triple_mu_3324683353497813023 : std_logic;
    signal triple_mu_3324691786047638559 : std_logic;
    signal triple_mu_3324692191841327135 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu12_low_q_emtf : std_logic;
    signal l1_single_mu22_bmtf : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_triple_mu_5_3_3 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_eg28 : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_eg34er2p1 : std_logic;
    signal l1_single_eg36er2p1 : std_logic;
    signal l1_single_eg38er2p1 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg36 : std_logic;
    signal l1_single_iso_eg20er2p1 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_double_eg_25_14 : std_logic;
    signal l1_single_tau80er2p1 : std_logic;
    signal l1_double_tau50er2p1 : std_logic;
    signal l1_double_iso_tau28er2p1 : std_logic;
    signal l1_double_iso_tau34er2p1 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_single_jet90_fwd : std_logic;
    signal l1_single_jet60_h_fp : std_logic;
    signal l1_double_jet112er3p0 : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_htt160er : std_logic;
    signal l1_htt380er : std_logic;
    signal l1_htt500er : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_iso_eg28er2p1_jet34er3p0_d_r_min0p3 : std_logic;
    signal l1_etm90_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm110_jet60_d_phi_min0p4 : std_logic;
    signal l1_triple_mu3_sq : std_logic;
    signal l1_double_mu0er1p5_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu_20_2_sq_mass_max20 : std_logic;
    signal l1_double_mu4p5_sq_os : std_logic;
    signal l1_double_mu0er1p5_sq_os : std_logic;
    signal l1_triple_mu0_oq : std_logic;
    signal l1_quad_jet36er3p0_tau52 : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_mu3_jet_c60_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_or_nim : std_logic;

-- ========================================================