-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
    signal mu_pt_vector_bx_m1: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_m1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_m1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_m1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_m1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
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
    signal diff_mu_mu_bx_m1_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_m1_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_m1_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_m1_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_m1_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_m1_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_m1_bx_0, os_charcorr_triple_bx_m1_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_m1_bx_0, os_charcorr_quad_bx_m1_bx_0 : muon_charcorr_quad_array;
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_etm_18699475893 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626759728 : std_logic;
    signal single_htt_2496626776112 : std_logic;
    signal calo_calo_correlation_12094985861278072376 : std_logic;
    signal calo_calo_correlation_7041035331710545453 : std_logic;
    signal calo_esum_correlation_13491612199685231906 : std_logic;
    signal calo_esum_correlation_16768129600298173713 : std_logic;
    signal invariant_mass_15192153509407276420 : std_logic;
    signal invariant_mass_15192160106477018500 : std_logic;
    signal invariant_mass_2940638391876117895 : std_logic;
    signal invariant_mass_3160759413460650486 : std_logic;
    signal invariant_mass_3324232561693118895 : std_logic;
    signal muon_muon_correlation_15199048929593776303 : std_logic;
    signal muon_muon_correlation_5013507948943010765 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal transverse_mass_3639674040417019497 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367831859864844767 : std_logic;
    signal double_eg_14367845054004377823 : std_logic;
    signal double_eg_2931778810409473715 : std_logic;
    signal double_jet_15894403592514695266 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_jet_8659155958470085331 : std_logic;
    signal double_mu_14585796862184301375 : std_logic;
    signal double_mu_14585797510442963775 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_mu_16961159554147985412 : std_logic;
    signal double_mu_3139255731352238604 : std_logic;
    signal double_mu_3229327723899648524 : std_logic;
    signal double_mu_3251845722036501004 : std_logic;
    signal double_tau_14808338227894500078 : std_logic;
    signal double_tau_5584966257611717374 : std_logic;
    signal quad_mu_509409160461874775 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_1139639 : std_logic;
    signal single_eg_12507579852184457792 : std_logic;
    signal single_eg_12507579852190749248 : std_logic;
    signal single_eg_12507579852321821248 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873208 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_6872811427209405681 : std_logic;
    signal single_eg_6872947766651249905 : std_logic;
    signal single_eg_6873084106093094129 : std_logic;
    signal single_eg_6873087404627977457 : std_logic;
    signal single_eg_9244881742421986046 : std_logic;
    signal single_eg_9244883941445241598 : std_logic;
    signal single_jet_15873314001121770945 : std_logic;
    signal single_jet_15873314001126130625 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_jet_8640423326801359755 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_6011484727103937211 : std_logic;
    signal single_mu_6945763095221267579 : std_logic;
    signal single_mu_7181677643621025184 : std_logic;
    signal single_mu_7270359269352285314 : std_logic;
    signal single_mu_9343405464758863264 : std_logic;
    signal single_tau_16608831008486494024 : std_logic;
    signal single_tau_218368042610145022 : std_logic;
    signal single_tau_22686292272 : std_logic;
    signal single_tau_236382441119627006 : std_logic;
    signal single_tau_3484215725702552004 : std_logic;
    signal triple_eg_4430569691209534124 : std_logic;
    signal triple_jet_4911751765568543162 : std_logic;
    signal triple_jet_4911751765586089658 : std_logic;
    signal triple_jet_4911751765587089594 : std_logic;
    signal triple_mu_15692838580664758508 : std_logic;
    signal triple_mu_3324682852515662879 : std_logic;
    signal triple_mu_3324683539710430239 : std_logic;
    signal triple_mu_3324692191841327135 : std_logic;
    signal triple_mu_3324692885559266335 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_cosmics_omtf : std_logic;
    signal l1_single_mu0_omtf : std_logic;
    signal l1_single_mu12_low_q_emtf : std_logic;
    signal l1_single_mu18er2p1 : std_logic;
    signal l1_single_mu20er2p1 : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_triple_mu_5_0_0 : std_logic;
    signal l1_triple_mu_5_5_3 : std_logic;
    signal l1_quad_mu0 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg28 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg35 : std_logic;
    signal l1_single_iso_eg18er2p1 : std_logic;
    signal l1_single_iso_eg24er2p1 : std_logic;
    signal l1_single_iso_eg30er2p1 : std_logic;
    signal l1_single_iso_eg33er2p1 : std_logic;
    signal l1_single_iso_eg36er2p1 : std_logic;
    signal l1_single_iso_eg38er2p1 : std_logic;
    signal l1_iso_eg33_mt44 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_22_15 : std_logic;
    signal l1_double_eg_25_13 : std_logic;
    signal l1_double_loose_iso_eg24er2p1 : std_logic;
    signal l1_triple_eg_18_17_8 : std_logic;
    signal l1_single_tau20 : std_logic;
    signal l1_single_tau120er2p1 : std_logic;
    signal l1_double_iso_tau28er2p1 : std_logic;
    signal l1_double_iso_tau34er2p1 : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_single_jet35_fwd : std_logic;
    signal l1_single_jet60_h_fm : std_logic;
    signal l1_double_jet40er2p7 : std_logic;
    signal l1_double_jet100er2p7 : std_logic;
    signal l1_triple_jet_88_72_56_vbf : std_logic;
    signal l1_htt160er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_htt500er : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_double_jet30_mass_min360_d_eta_max1p5 : std_logic;
    signal l1_double_mu0er2_sq_d_r_max1p4 : std_logic;
    signal l1_loose_iso_eg26er2p1_jet34er2p7_d_r_min0p3 : std_logic;
    signal l1_double_jet112er2p3_d_eta_max1p6 : std_logic;
    signal l1_etm80_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm110_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_jet_90_30_double_jet30_mass_min620 : std_logic;
    signal l1_double_jet_100_30_double_jet30_mass_min620 : std_logic;
    signal l1_mu18er2p1_tau24er2p1 : std_logic;
    signal l1_mu18er2p1_iso_tau26er2p1 : std_logic;
    signal l1_mu20er2p1_iso_tau26er2p1 : std_logic;
    signal l1_mu20er2p1_iso_tau27er2p1 : std_logic;
    signal l1_double_mu_15_5_sq : std_logic;
    signal l1_triple_mu3_sq : std_logic;
    signal l1_double_mu7_sq_eg7 : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_double_mu4_sq_os : std_logic;
    signal l1_double_mu5_sq_os : std_logic;
    signal l1_triple_mu_5_oq_3p5_oq_2p5_oq_double_mu_5_2p5_oq_os_mass_8to14 : std_logic;
    signal l1_triple_mu_5_oq_3p5_oq_2p5_oq_double_mu_5_2p5_oq_os_mass_5to17 : std_logic;
    signal l1_double_mu7_eg7 : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_unpaired_bunch_bptx_plus : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_cdc_single_mu_3_er1p2_top120_dphi2p618_3p142 : std_logic;

-- ========================================================