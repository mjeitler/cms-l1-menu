-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

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
    signal mu_pt_vector_bx_p1: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_p1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_p1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_p1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_p1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
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
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal diff_mu_mu_bx_0_bx_p1_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_p1_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_p1_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_p1_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_p1_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_p1_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_p1, os_charcorr_double_bx_0_bx_p1 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_p1, os_charcorr_triple_bx_0_bx_p1 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_p1, os_charcorr_quad_bx_0_bx_p1 : muon_charcorr_quad_array;
    signal ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_m1_bx_0, os_charcorr_triple_bx_m1_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_m1_bx_0, os_charcorr_quad_bx_m1_bx_0 : muon_charcorr_quad_array;
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_ext_10333571492674155900 : std_logic;
    signal single_ext_10333571492942459780 : std_logic;
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_10333571493479462268 : std_logic;
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_16249626042834147010 : std_logic;
    signal single_ext_17417807877912804092 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_17960169865075465755 : std_logic;
    signal single_ext_17960169865075597331 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6102798787913160053 : std_logic;
    signal single_ext_6102798787913291629 : std_logic;
    signal single_ext_6102798788181595509 : std_logic;
    signal single_ext_6102798788181727085 : std_logic;
    signal single_ext_6102799243448128885 : std_logic;
    signal single_ext_6394990348257196279 : std_logic;
    signal single_ext_6953200472440552930 : std_logic;
    signal single_ext_866206785869629780 : std_logic;
    signal single_ext_866206786138065236 : std_logic;
    signal single_ext_8736797827952254492 : std_logic;
    signal single_ext_8736797827952386068 : std_logic;
    signal single_ext_9945386644737729380 : std_logic;
    signal single_ext_9945386645006164836 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal calo_calo_correlation_12099677872530784312 : std_logic;
    signal calo_calo_correlation_3813196582576312175 : std_logic;
    signal calo_muon_correlation_1722762447326210349 : std_logic;
    signal invariant_mass_14086745238924011567 : std_logic;
    signal invariant_mass_2940649386995017095 : std_logic;
    signal muon_muon_correlation_16784489743460462578 : std_logic;
    signal muon_muon_correlation_3624461197095500212 : std_logic;
    signal muon_muon_correlation_685595273117808079 : std_logic;
    signal muon_muon_correlation_7969075141664344239 : std_logic;
    signal double_jet_16307690244847013909 : std_logic;
    signal double_jet_8659301379072772819 : std_logic;
    signal double_jet_8659439917537872595 : std_logic;
    signal double_jet_8659444315584383699 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal quad_jet_2899845767245260980 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_12507428088042853440 : std_logic;
    signal single_eg_12507579852048143424 : std_logic;
    signal single_eg_12507579852056532032 : std_logic;
    signal single_eg_12507579852182361152 : std_logic;
    signal single_eg_12507579852185506880 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852320773184 : std_logic;
    signal single_eg_14262501759976278963 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873079 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873200 : std_logic;
    signal single_eg_145873203 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_6872952165234631921 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_jet_5974006375341702652 : std_logic;
    signal single_jet_5974147112830057980 : std_logic;
    signal single_jet_5974285651295157756 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685275696206277 : std_logic;
    signal single_mu_3055890068178777637 : std_logic;
    signal single_mu_9379434261777827232 : std_logic;
    signal single_tau_22686292272 : std_logic;
    signal triple_jet_7930354149017105525 : std_logic;
    signal triple_mu_3324694397387754527 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu22er2p1 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_triple_mu_4_4_4 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg36er2p1 : std_logic;
    signal l1_single_iso_eg18 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_tau20 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_quad_jet60er3p0 : std_logic;
    signal l1_cdc_3_er2p1_top120_dphi2p618_3p665 : std_logic;
    signal l1_cdc_3_er1p2_top120_dphi2p618_3p665 : std_logic;
    signal l1_cd_cp1_3_er1p2_top120_dphi2p618_3p665 : std_logic;
    signal l1_single_mu_open_bottom : std_logic;
    signal l1_iso_eg28er2p1_jet34er3p0_d_r_min0p3 : std_logic;
    signal l1_mu20_eg17 : std_logic;
    signal l1_mu23_eg10 : std_logic;
    signal l1_mu23_iso_eg10 : std_logic;
    signal l1_mu5_eg23 : std_logic;
    signal l1_mu5_iso_eg20 : std_logic;
    signal l1_mu7_eg23 : std_logic;
    signal l1_mu7_iso_eg20 : std_logic;
    signal l1_mu7_iso_eg23 : std_logic;
    signal l1_mu10er2p3_jet32er2p3_d_r_max0p4_double_jet32er2p3_d_eta_max1p6 : std_logic;
    signal l1_double_jet_100_35_double_jet35_mass_min620 : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu5_sq_os_mass7to18 : std_logic;
    signal l1_mu5_eg15 : std_logic;
    signal l1_mu5_eg20 : std_logic;
    signal l1_mu5_iso_eg18 : std_logic;
    signal l1_mu12_eg10 : std_logic;
    signal l1_mu20_eg10 : std_logic;
    signal l1_mu20_eg15 : std_logic;
    signal l1_mu20_iso_eg6 : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_bptx_beam_gas_ref1_vme : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_bptx_b1_not_b2_vme : std_logic;
    signal l1_bptx_b2_not_b1_vme : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref2_nim : std_logic;
    signal l1_bptx_b1_not_b2_nim : std_logic;
    signal l1_bptx_b2_not_b1_nim : std_logic;
    signal l1_bptx_not_or_nim : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_first_collision_in_train : std_logic;
    signal l1_bptx_and_nim : std_logic;
    signal l1_bptx_b1_nim : std_logic;
    signal l1_bptx_b2_nim : std_logic;
    signal l1_bptx_or_nim : std_logic;

-- ========================================================