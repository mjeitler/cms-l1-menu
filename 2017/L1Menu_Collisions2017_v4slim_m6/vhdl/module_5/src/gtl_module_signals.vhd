-- ========================================================
-- from VHDL producer:

-- Module ID: 5

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- 3b802383-09ac-4bcb-9a87-6df7db8aa175

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.2.1

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
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
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
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_etm_18699475632 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626744368 : std_logic;
    signal single_htt_2496626760368 : std_logic;
    signal calo_calo_correlation_3813196582576312175 : std_logic;
    signal calo_calo_correlation_911641433388533200 : std_logic;
    signal calo_muon_correlation_15993852977789877467 : std_logic;
    signal calo_muon_correlation_1722762447326210349 : std_logic;
    signal invariant_mass_15191958030943548804 : std_logic;
    signal invariant_mass_2342552854377181621 : std_logic;
    signal invariant_mass_3160746219321117174 : std_logic;
    signal muon_muon_correlation_9513481109957663155 : std_logic;
    signal double_eg_13782406706523981474 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_2355036583129339571 : std_logic;
    signal double_jet_15939450583904677986 : std_logic;
    signal double_mu_13627348644483379947 : std_logic;
    signal double_mu_14585778268989477695 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_mu_2488845469206592112 : std_logic;
    signal double_mu_3224017188937267724 : std_logic;
    signal double_mu_3246535187074120204 : std_logic;
    signal double_tau_14808338296613976830 : std_logic;
    signal double_tau_3279123247861152510 : std_logic;
    signal quad_jet_2825312486036940980 : std_logic;
    signal single_eg_12507428088042853184 : std_logic;
    signal single_eg_12507579852048143168 : std_logic;
    signal single_eg_12507579852056531776 : std_logic;
    signal single_eg_12507579852182360896 : std_logic;
    signal single_eg_12507579852185506624 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873074 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873079 : std_logic;
    signal single_eg_145873200 : std_logic;
    signal single_eg_145873203 : std_logic;
    signal single_jet_1950256523785076171 : std_logic;
    signal single_jet_1950256523789435851 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685275696206277 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_6225176159725710459 : std_logic;
    signal single_mu_6225176160372139651 : std_logic;
    signal single_mu_7069342828816371872 : std_logic;
    signal single_mu_7145648846602061216 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_jet_4911751765552035770 : std_logic;
    signal triple_jet_4911751765585033658 : std_logic;
    signal triple_jet_4911751765586049466 : std_logic;
    signal triple_jet_4911751765586495930 : std_logic;
    signal triple_jet_4911751765603911482 : std_logic;
    signal triple_jet_4911751765604427322 : std_logic;
    signal triple_mu_3324690130789734431 : std_logic;
    signal triple_mu_3324691511169731615 : std_logic;
    signal triple_mu_6936497366859389375 : std_logic;
    signal triple_mu_9287399899537551596 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu0_emtf : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu12_low_q_bmtf : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu22_emtf : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_single_mu16er2p1 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_double_mu22er2p1 : std_logic;
    signal l1_triple_mu3 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_loose_iso_eg22er2p1 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_double_iso_tau33er2p1 : std_logic;
    signal l1_double_iso_tau38er2p1 : std_logic;
    signal l1_single_jet120_fwd : std_logic;
    signal l1_double_jet150er2p7 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_triple_jet_98_83_71_vbf : std_logic;
    signal l1_quad_jet50er2p7 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt380er : std_logic;
    signal l1_htt450er : std_logic;
    signal l1_etm50 : std_logic;
    signal l1_double_jet30_mass_min300_d_eta_max1p5 : std_logic;
    signal l1_mu20_eg17 : std_logic;
    signal l1_mu23_eg10 : std_logic;
    signal l1_mu23_loose_iso_eg10 : std_logic;
    signal l1_mu5_eg23 : std_logic;
    signal l1_mu5_loose_iso_eg20 : std_logic;
    signal l1_mu7_eg23 : std_logic;
    signal l1_mu7_loose_iso_eg20 : std_logic;
    signal l1_mu7_loose_iso_eg23 : std_logic;
    signal l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6 : std_logic;
    signal l1_double_eg_loose_iso24_10 : std_logic;
    signal l1_loose_iso_eg22er2p1_iso_tau26er2p1_d_r_min0p3 : std_logic;
    signal l1_double_mu0er1p5_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4p5er2p0_sq_os_mass7to18 : std_logic;
    signal l1_double_mu4_os_eg12 : std_logic;
    signal l1_double_mu5_os_eg12 : std_logic;
    signal l1_triple_mu_5_3p5_2p5_double_mu_5_2p5_os_mass_5to17 : std_logic;
    signal l1_triple_mu_5_4_2p5_double_mu_5_2p5_os_mass_5to17 : std_logic;
    signal l1_double_mu0_sq : std_logic;
    signal l1_double_mu4p5er2p0_sq_os : std_logic;
    signal l1_triple_mu_5_3p5_2p5 : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_oq : std_logic;
    signal l1_mu5_eg15 : std_logic;
    signal l1_mu5_eg20 : std_logic;
    signal l1_mu5_loose_iso_eg18 : std_logic;
    signal l1_mu12_eg10 : std_logic;
    signal l1_mu20_eg10 : std_logic;
    signal l1_mu20_eg15 : std_logic;
    signal l1_mu20_loose_iso_eg6 : std_logic;
    signal l1_mu3_jet120er2p7_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;

-- ========================================================