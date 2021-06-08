-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 4132978b-4b38-436f-89a5-ee797d7a9120

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.9.4

-- tmEventSetup version
-- v0.8.1

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_upt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_deta_bin_vector : calo_deta_bin_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_dphi_bin_vector : calo_dphi_bin_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_deta_bin_vector : calo_deta_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_dphi_bin_vector : calo_dphi_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_deta_bin_vector : calo_deta_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_dphi_bin_vector : calo_dphi_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_deta_bin_vector : muon_deta_bin_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_dphi_bin_vector : muon_dphi_bin_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_i329 : std_logic;
    signal single_ext_i330 : std_logic;
    signal single_ext_i331 : std_logic;
    signal single_ext_i332 : std_logic;
    signal single_ext_i333 : std_logic;
    signal single_ext_i334 : std_logic;
    signal single_ext_i336 : std_logic;
    signal single_ext_i337 : std_logic;
    signal single_ext_i344 : std_logic;
    signal single_ext_i345 : std_logic;
    signal single_ext_i346 : std_logic;
    signal single_ext_i347 : std_logic;
    signal single_ext_i348 : std_logic;
    signal single_ext_i349 : std_logic;
    signal single_ext_i350 : std_logic;
    signal single_ext_i351 : std_logic;
    signal single_ext_i352 : std_logic;
    signal single_ext_i353 : std_logic;
    signal single_ext_i354 : std_logic;
    signal single_ext_i355 : std_logic;
    signal single_ext_i356 : std_logic;
    signal single_ext_i357 : std_logic;
    signal single_ext_i358 : std_logic;
    signal single_ext_i359 : std_logic;
    signal single_ext_i360 : std_logic;
    signal single_ext_i361 : std_logic;
    signal single_ext_i362 : std_logic;
    signal single_ext_i363 : std_logic;
    signal single_ext_i365 : std_logic;
    signal single_ext_i366 : std_logic;
    signal single_ext_i367 : std_logic;
    signal single_ext_i368 : std_logic;
    signal single_ext_i369 : std_logic;
    signal single_ext_i370 : std_logic;
    signal single_etm_i323 : std_logic;
    signal single_etmhf_i106 : std_logic;
    signal single_etmhf_i123 : std_logic;
    signal single_etmhf_i224 : std_logic;
    signal single_etmhf_i225 : std_logic;
    signal single_etmhf_i227 : std_logic;
    signal single_etmhf_i262 : std_logic;
    signal single_etmhf_i328 : std_logic;
    signal single_htt_i107 : std_logic;
    signal single_htt_i120 : std_logic;
    signal single_htt_i124 : std_logic;
    signal single_htt_i125 : std_logic;
    signal single_htt_i190 : std_logic;
    signal single_htt_i196 : std_logic;
    signal single_htt_i313 : std_logic;
    signal single_htt_i317 : std_logic;
    signal calo_calo_correlation_i187 : std_logic;
    signal calo_muon_correlation_i100 : std_logic;
    signal invariant_mass_i271 : std_logic;
    signal invariant_mass_i282 : std_logic;
    signal invariant_mass_i284 : std_logic;
    signal invariant_mass_i285 : std_logic;
    signal invariant_mass_i286 : std_logic;
    signal invariant_mass_i287 : std_logic;
    signal invariant_mass_i288 : std_logic;
    signal invariant_mass_i289 : std_logic;
    signal invariant_mass_i72 : std_logic;
    signal invariant_mass_upt_i382 : std_logic;
    signal muon_muon_correlation_i52 : std_logic;
    signal muon_muon_correlation_i54 : std_logic;
    signal transverse_mass_i167 : std_logic;
    signal double_eg_i175 : std_logic;
    signal double_eg_i85 : std_logic;
    signal double_jet_i122 : std_logic;
    signal double_jet_i281 : std_logic;
    signal double_jet_i300 : std_logic;
    signal double_mu_i119 : std_logic;
    signal double_mu_i34 : std_logic;
    signal double_mu_i38 : std_logic;
    signal double_mu_i48 : std_logic;
    signal double_tau_i206 : std_logic;
    signal quad_jet_i305 : std_logic;
    signal quad_jet_i312 : std_logic;
    signal quad_mu_i76 : std_logic;
    signal quad_mu_i78 : std_logic;
    signal single_eg_i132 : std_logic;
    signal single_eg_i138 : std_logic;
    signal single_eg_i146 : std_logic;
    signal single_eg_i151 : std_logic;
    signal single_eg_i158 : std_logic;
    signal single_eg_i189 : std_logic;
    signal single_eg_i81 : std_logic;
    signal single_eg_i82 : std_logic;
    signal single_jet_i121 : std_logic;
    signal single_jet_i248 : std_logic;
    signal single_jet_i250 : std_logic;
    signal single_jet_i257 : std_logic;
    signal single_jet_i258 : std_logic;
    signal single_jet_i259 : std_logic;
    signal single_jet_i260 : std_logic;
    signal single_jet_i283 : std_logic;
    signal single_jet_i306 : std_logic;
    signal single_jet_i307 : std_logic;
    signal single_jet_i339 : std_logic;
    signal single_jet_i340 : std_logic;
    signal single_jet_i341 : std_logic;
    signal single_mu_i12 : std_logic;
    signal single_mu_i13 : std_logic;
    signal single_mu_i18 : std_logic;
    signal single_mu_i21 : std_logic;
    signal single_mu_i216 : std_logic;
    signal single_mu_i234 : std_logic;
    signal single_mu_i27 : std_logic;
    signal single_mu_i31 : std_logic;
    signal single_mu_i335 : std_logic;
    signal single_mu_i338 : std_logic;
    signal single_mu_i371 : std_logic;
    signal single_mu_i84 : std_logic;
    signal single_tau_i222 : std_logic;
    signal triple_jet_i299 : std_logic;
    signal triple_mu_i63 : std_logic;
    signal triple_mu_i68 : std_logic;
    signal triple_mu_i73 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu12_dq_bmtf : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_single_mu9er1p5 : std_logic;
    signal l1_single_mu16er1p5 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu8_sq : std_logic;
    signal l1_massupt_5_5_10_open : std_logic;
    signal l1_double_mu0er1p5_sq : std_logic;
    signal l1_double_mu0er1p4_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_triple_mu3 : std_logic;
    signal l1_triple_mu_5_3_3_sq : std_logic;
    signal l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 : std_logic;
    signal l1_quad_mu0_oq : std_logic;
    signal l1_quad_mu0_sq : std_logic;
    signal l1_mu20_eg10er2p5 : std_logic;
    signal l1_mu7_loose_iso_eg20er2p5 : std_logic;
    signal l1_mu6_double_eg10er2p5 : std_logic;
    signal l1_mu3_jet80er2p5_d_r_max0p4 : std_logic;
    signal l1_double_mu3_sq_etmhf50_htt60er : std_logic;
    signal l1_double_mu3_sq_etmhf60_jet60er2p5 : std_logic;
    signal l1_double_mu3_sq_htt220er : std_logic;
    signal l1_double_mu3_sq_htt240er : std_logic;
    signal l1_double_mu3_sq_htt260er : std_logic;
    signal l1_mu0upt20ip0 : std_logic;
    signal l1_single_eg10er2p5 : std_logic;
    signal l1_single_eg28er2p1 : std_logic;
    signal l1_single_eg42er2p5 : std_logic;
    signal l1_single_loose_iso_eg28er2p5 : std_logic;
    signal l1_single_iso_eg24er2p1 : std_logic;
    signal l1_single_iso_eg28er2p5 : std_logic;
    signal l1_iso_eg32er2p5_mt44 : std_logic;
    signal l1_double_eg_loose_iso20_10_er2p5 : std_logic;
    signal l1_loose_iso_eg28er2p1_jet34er2p5_d_r_min0p3 : std_logic;
    signal l1_loose_iso_eg24er2p1_htt100er : std_logic;
    signal l1_double_iso_tau32er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau40er2p1 : std_logic;
    signal l1_iso_tau40er2p1_etmhf80 : std_logic;
    signal l1_iso_tau40er2p1_etmhf90 : std_logic;
    signal l1_iso_tau40er2p1_etmhf110 : std_logic;
    signal l1_mu0upt50 : std_logic;
    signal l1_single_jet60er2p5 : std_logic;
    signal l1_single_jet140er2p5 : std_logic;
    signal l1_single_jet180er2p5 : std_logic;
    signal l1_single_jet120_fwd3p0 : std_logic;
    signal l1_single_jet8er_he : std_logic;
    signal l1_single_jet10er_he : std_logic;
    signal l1_single_jet140er2p5_etmhf70 : std_logic;
    signal l1_double_jet40er2p5 : std_logic;
    signal l1_double_jet30er2p5_mass_min300_d_eta_max1p5 : std_logic;
    signal l1_double_jet_120_45_double_jet45_mass_min620 : std_logic;
    signal l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28 : std_logic;
    signal l1_triple_jet_95_75_65_double_jet_75_65_er2p5 : std_logic;
    signal l1_quad_jet_95_75_65_20_double_jet_75_65_er2p5_jet20_fwd3p0 : std_logic;
    signal l1_htt320er_quad_jet_80_60_er2p1_50_45_er2p3 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt360er : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf150 : std_logic;
    signal l1_etmhf90_htt60er : std_logic;
    signal l1_single_mu_open_er1p4_not_bptx_or_3_bx : std_logic;
    signal l1_single_mu_open_er1p1_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p5_not_bptx_or_3_bx : std_logic;
    signal l1_always_true : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_before_train : std_logic;
    signal l1_second_last_bunch_in_train : std_logic;
    signal l1_last_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
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
    signal l1_hcal_laser_mon_trig : std_logic;
    signal l1_hcal_laser_mon_veto : std_logic;
    signal l1_totem_1 : std_logic;
    signal l1_totem_2 : std_logic;
    signal l1_totem_3 : std_logic;
    signal l1_totem_4 : std_logic;

-- ========================================================