-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_2

-- Unique ID of L1 Trigger Menu:
-- a55448f7-430f-4308-91f2-5dd4d886290b

-- Unique ID of firmware implementation:
-- ac2706bf-9e49-4bab-9185-ab61982ba331

-- Scale set:
-- scales_2020_10_04

-- VHDL producer version
-- v2.9.0

-- tmEventSetup version
-- v0.8.1

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
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

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_deta_bin_vector : calo_deta_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_dphi_bin_vector : calo_dphi_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_deta_bin_vector : calo_deta_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_dphi_bin_vector : calo_dphi_bin_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_mass_div_dr : mass_div_dr_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_etmhf_i327 : std_logic;
    signal single_htt_i313 : std_logic;
    signal single_htt_i318 : std_logic;
    signal calo_calo_correlation_i114 : std_logic;
    signal calo_muon_correlation_i113 : std_logic;
    signal invariant_mass_i284 : std_logic;
    signal invariant_mass_i285 : std_logic;
    signal invariant_mass_i286 : std_logic;
    signal invariant_mass_i287 : std_logic;
    signal invariant_mass_i288 : std_logic;
    signal invariant_mass_i289 : std_logic;
    signal invariant_mass_i290 : std_logic;
    signal invariant_mass_i291 : std_logic;
    signal invariant_mass_i292 : std_logic;
    signal invariant_mass_i293 : std_logic;
    signal invariant_mass_i294 : std_logic;
    signal single_eg_i133 : std_logic;
    signal single_eg_i135 : std_logic;
    signal single_eg_i139 : std_logic;
    signal single_eg_i152 : std_logic;
    signal single_eg_i153 : std_logic;
    signal single_eg_i161 : std_logic;
    signal single_jet_i242 : std_logic;
    signal single_jet_i283 : std_logic;

-- Signal definition for algorithms names
    signal l1_mu12er2p3_jet40er2p1_d_r_max0p4_double_jet40er2p1_d_eta_max1p6 : std_logic;
    signal l1_single_eg28er1p5 : std_logic;
    signal l1_single_eg36er2p5 : std_logic;
    signal l1_single_eg45er2p5 : std_logic;
    signal l1_single_iso_eg24er1p5 : std_logic;
    signal l1_single_iso_eg26er2p5 : std_logic;
    signal l1_single_iso_eg30er2p5 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_double_jet_115_40_double_jet40_mass_min620_jet60_tt28 : std_logic;
    signal l1_double_jet_120_45_double_jet45_mass_min620_jet60_tt28 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_etmhf140 : std_logic;

-- ========================================================