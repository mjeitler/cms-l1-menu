-- ========================================================
-- from VHDL producer:

-- Module ID: 3

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
    signal single_ext_6106690317781795104 : std_logic;
    signal single_ext_6953200472440552930 : std_logic;
    signal single_ext_9945386645006164836 : std_logic;
    signal single_ext_9960888781174681113 : std_logic;
    signal single_etm_18699475376 : std_logic;
    signal calo_calo_correlation_15773712634827548829 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367845054004377823 : std_logic;
    signal double_jet_8658941588062407379 : std_logic;
    signal double_jet_8659228526237518547 : std_logic;
    signal double_mu_3137853811412695564 : std_logic;
    signal single_eg_12507579852056531520 : std_logic;
    signal single_eg_12507579852190749248 : std_logic;
    signal single_eg_12507579852322869824 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_jet_15873314052325834177 : std_logic;
    signal single_jet_15873314052330193857 : std_logic;
    signal single_jet_1950256523785076171 : std_logic;
    signal single_jet_1950256523789435851 : std_logic;
    signal single_jet_20010310066 : std_logic;
    signal single_jet_20010310320 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_7037562455545169312 : std_logic;
    signal single_mu_7109620049583097248 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_mu10er2p1_etm30 : std_logic;
    signal l1_mu14er2p1_etm30 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_iso_eg18 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg36 : std_logic;
    signal l1_single_eg15er2p1_jet12er2p7_d_r_min0p3 : std_logic;
    signal l1_double_eg_10_10 : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_25_13 : std_logic;
    signal l1_single_jet32 : std_logic;
    signal l1_single_jet50 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_single_jet90_fwd : std_logic;
    signal l1_single_jet120_fwd : std_logic;
    signal l1_double_jet50er2p7 : std_logic;
    signal l1_double_jet16_and12er2p7 : std_logic;
    signal l1_double_mu_open_os : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_bptx_or_ref4_vme : std_logic;
    signal l1_last_collision_in_train : std_logic;
    signal l1_totem4 : std_logic;

-- ========================================================