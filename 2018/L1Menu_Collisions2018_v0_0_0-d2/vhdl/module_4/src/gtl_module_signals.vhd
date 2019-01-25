-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2018_v0_0_0

-- Unique ID of L1 Trigger Menu:
-- ab180f50-10f1-4280-90cb-3f727321cac6

-- Unique ID of firmware implementation:
-- 815e57bf-b6ab-4733-98bf-d9de201a65ea

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

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
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_eg_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_eg_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_eg_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_eg_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_eg_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_16249626042834147010 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal single_etm_18699475760 : std_logic;
    signal single_etm_18699475888 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal calo_calo_correlation_12094985861278072888 : std_logic;
    signal calo_esum_correlation_13491612199618123042 : std_logic;
    signal calo_esum_correlation_16768129600298173713 : std_logic;
    signal invariant_mass_16981538589298500419 : std_logic;
    signal invariant_mass_2940919866919937415 : std_logic;
    signal invariant_mass_3063833799189854821 : std_logic;
    signal invariant_mass_3161027694297827830 : std_logic;
    signal invariant_mass_4461482972834602413 : std_logic;
    signal muon_muon_correlation_12923126501326425857 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_9513481109949270451 : std_logic;
    signal transverse_mass_1757817201761093878 : std_logic;
    signal double_eg_13782406706523981474 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_2931778810409473715 : std_logic;
    signal double_jet_15894403592514695266 : std_logic;
    signal double_jet_16379747838884957589 : std_logic;
    signal double_jet_16382562588652064149 : std_logic;
    signal double_jet_8659155958470085331 : std_logic;
    signal double_jet_8659301094004951763 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14617142003772573591 : std_logic;
    signal double_mu_16961163303935834116 : std_logic;
    signal double_mu_17582786187978172426 : std_logic;
    signal double_mu_3274363720173353484 : std_logic;
    signal single_eg_12507579852188652096 : std_logic;
    signal single_eg_12507579852316578368 : std_logic;
    signal single_eg_14262501759707843507 : std_logic;
    signal single_eg_14262501759976344371 : std_logic;
    signal single_eg_14262501760244714419 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_145873458 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_6872952164697761009 : std_logic;
    signal single_eg_9244741005469453054 : std_logic;
    signal single_eg_9244875145888041726 : std_logic;
    signal single_eg_9244877344911297278 : std_logic;
    signal single_jet_11401653256114550551 : std_logic;
    signal single_jet_13432253330323567498 : std_logic;
    signal single_jet_15873314026556030401 : std_logic;
    signal single_jet_15873314026560390081 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_8640423326805719435 : std_logic;
    signal single_mu_16260934496621930532 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_7069342828816371872 : std_logic;
    signal single_tau_3484217924725807556 : std_logic;
    signal triple_jet_1514927488965982623 : std_logic;
    signal triple_jet_655678244564915215 : std_logic;
    signal triple_jet_655678244565419151 : std_logic;
    signal triple_mu_3324683539710430239 : std_logic;
    signal triple_mu_3324685351042537503 : std_logic;
    signal triple_mu_3324685732743223327 : std_logic;
    signal triple_mu_3324691511169731615 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu12_low_q_bmtf : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_triple_mu3 : std_logic;
    signal l1_triple_mu_5_0_0 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_eg42 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_eg34er2p1 : std_logic;
    signal l1_single_eg38er2p1 : std_logic;
    signal l1_single_eg36er2p5 : std_logic;
    signal l1_single_iso_eg26 : std_logic;
    signal l1_single_iso_eg30 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_iso_eg26er2p5 : std_logic;
    signal l1_single_iso_eg30er2p5 : std_logic;
    signal l1_single_iso_eg32er2p5 : std_logic;
    signal l1_iso_eg33_mt40 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_loose_iso_eg24er2p1 : std_logic;
    signal l1_single_tau130er2p1 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet60_fwd : std_logic;
    signal l1_single_jet35_h_fm : std_logic;
    signal l1_single_jet60_h_fp : std_logic;
    signal l1_double_jet40er2p7 : std_logic;
    signal l1_double_jet60er2p7 : std_logic;
    signal l1_double_jet100er2p7 : std_logic;
    signal l1_triple_jet_105_85_76_vbf : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_double_jet30_mass_min400_d_eta_max1p5 : std_logic;
    signal l1_loose_iso_eg28er2p1_jet34er2p7_d_r_min0p3 : std_logic;
    signal l1_etm80_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm100_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_jet60er2p7_etm70 : std_logic;
    signal l1_double_jet60er2p7_etm80 : std_logic;
    signal l1_double_jet60er2p7_etm90 : std_logic;
    signal l1_double_jet60er2p7_etm100 : std_logic;
    signal l1_double_eg_loose_iso24_10 : std_logic;
    signal l1_double_jet_110_40_double_jet40_mass_min620 : std_logic;
    signal l1_double_jet_115_40_double_jet40_mass_min620 : std_logic;
    signal l1_double_mu0er1p4_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4p5_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu6_sq_os : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9 : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9 : std_logic;
    signal l1_double_mu4p5_sq : std_logic;
    signal l1_double_mu0er1p5_sq_os : std_logic;
    signal l1_double_mu3_os_double_eg7p5_upsilon : std_logic;
    signal l1_double_jet60er2p7_etm60 : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_single_jet10er_he : std_logic;

-- HB 2018-03-02: hidden algos
-- Signal definition for conditions names
    signal quad_eg_11534701996898131025 : std_logic;
    signal quad_eg_11535273742944591185 : std_logic;
    signal quad_eg_11536131362014281425 : std_logic;
    signal quad_eg_2163602249882847955 : std_logic;
    signal quad_jet_2605072146555545780 : std_logic;
    signal quad_jet_2679454108174592180 : std_logic;
    signal quad_jet_2753836069793638580 : std_logic;
    signal quad_jet_2828218031412684980 : std_logic;
    signal quad_tau_12421088949737603255 : std_logic;
    signal quad_tau_15497969416798340400 : std_logic;
    signal quad_tau_15499095316973618800 : std_logic;
    signal quad_tau_15500784167236536400 : std_logic;

-- Signal definition for algorithms names
    signal l1_quad_eg15 : std_logic;
    signal l1_quad_eg12 : std_logic;
    signal l1_quad_eg10 : std_logic;
    signal l1_quad_eg5 : std_logic;
    signal l1_quad_tau10 : std_logic;
    signal l1_quad_tau5 : std_logic;
    signal l1_quad_tau12 : std_logic;
    signal l1_quad_tau15 : std_logic;
    signal l1_quad_jet25er2p7 : std_logic;
    signal l1_quad_jet55er2p7 : std_logic;
    signal l1_quad_jet45er2p7 : std_logic;
    signal l1_quad_jet35er2p7 : std_logic;

-- ========================================================