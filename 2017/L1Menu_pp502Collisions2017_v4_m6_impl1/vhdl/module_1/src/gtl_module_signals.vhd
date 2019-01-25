-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
    signal single_ext_10333571493211026812 : std_logic;
    signal single_ext_17417807877912935668 : std_logic;
    signal single_ext_4108951444235007726 : std_logic;
    signal single_ext_6106690317781795102 : std_logic;
    signal calo_calo_correlation_7447271045831687480 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_eg_2355036583129339571 : std_logic;
    signal double_jet_15912422389070688354 : std_logic;
    signal double_jet_8659013125037689555 : std_logic;
    signal double_mu_12394164411069199406 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_12507579852186554944 : std_logic;
    signal single_eg_12507579852320772672 : std_logic;
    signal single_eg_12507579852450796096 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_jet_15873314017966095809 : std_logic;
    signal single_jet_15873314017970455489 : std_logic;
    signal single_jet_20010309940 : std_logic;
    signal single_jet_20010310196 : std_logic;
    signal single_jet_20010310704 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg40 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_double_loose_iso_eg22er2p1 : std_logic;
    signal l1_single_jet44 : std_logic;
    signal l1_single_jet24 : std_logic;
    signal l1_single_jet80 : std_logic;
    signal l1_single_jet50_fwd : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_double_jet120er2p7 : std_logic;
    signal l1_double_jet28_and16er2p7 : std_logic;
    signal l1_double_mu10 : std_logic;
    signal l1_loose_iso_eg15er2p1_jet12er2p7_d_r_min0p3 : std_logic;
    signal l1_bptx_not_or_vme : std_logic;
    signal l1_bptx_and_ref3_vme : std_logic;
    signal l1_first_collision_in_orbit : std_logic;
    signal l1_totem2 : std_logic;

-- ========================================================