-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_pp502Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- eb47f458-5cf5-408d-a5bf-004dffe6cd1b

-- Unique ID of firmware implementation:
-- 19c85715-3234-40e0-a608-952f97944368

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

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
    signal single_ext_15141600570663550655 : std_logic;
    signal single_ext_6106690317781795101 : std_logic;
    signal single_ext_8736797827952386068 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal calo_calo_correlation_17575152485775747229 : std_logic;
    signal double_eg_14235532651073082298 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367845054004377951 : std_logic;
    signal double_jet_4975926206739241185 : std_logic;
    signal double_jet_8659301094004951763 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_3137853811412761100 : std_logic;
    signal single_eg_12507579852182360640 : std_logic;
    signal single_eg_12507579852316578368 : std_logic;
    signal single_eg_12507579852323918400 : std_logic;
    signal single_eg_145873201 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873458 : std_logic;
    signal single_jet_15873313992196292033 : std_logic;
    signal single_jet_15873313992200651713 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310326 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_mu_14769293019696632261 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg42 : std_logic;
    signal l1_single_eg21 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg30 : std_logic;
    signal l1_single_iso_eg37 : std_logic;
    signal l1_single_eg18er2p1_jet16er2p7_d_r_min0p3 : std_logic;
    signal l1_double_eg_10_5 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_double_eg_25_14 : std_logic;
    signal l1_single_jet56 : std_logic;
    signal l1_single_jet20_fwd : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_double_jet60er2p7 : std_logic;
    signal l1_double_jet16_and8er2p7 : std_logic;
    signal l1_double_mu_open_ss : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_unpaired_bunch_bptx_minus : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_totem1 : std_logic;

-- ========================================================