-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6a6f4031-449d-4d69-9c1f-9c14b74fd137

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));


-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_etm_18699476016 : std_logic;
    signal single_htm_2496612031024 : std_logic;
    signal single_ett_18699589941 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal calo_calo_correlation_14500771630165735872 : std_logic;
    signal calo_calo_correlation_2085349615869404806 : std_logic;
    signal invariant_mass_14462129420738930134 : std_logic;
    signal muon_muon_correlation_16040223250608453060 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_15903572090988376162 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_jet_8281320341886584868 : std_logic;
    signal double_jet_8659370613945584339 : std_logic;
    signal double_jet_8659444281224645331 : std_logic;
    signal double_jet_8659446377168685779 : std_logic;
    signal double_jet_8659448610551679699 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal double_mu_18206240164090448142 : std_logic;
    signal double_tau_3279123247861152510 : std_logic;
    signal quad_jet_2680186536839014580 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_12507579852184458304 : std_logic;
    signal single_eg_12507579852190749760 : std_logic;
    signal single_eg_12507579852320773184 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_6872947767188120817 : std_logic;
    signal single_eg_6873084106629965041 : std_logic;
    signal single_jet_15014918520304220377 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_jet_5967545293332986055 : std_logic;
    signal single_jet_5967545378427025607 : std_logic;
    signal single_jet_5974075644574252540 : std_logic;
    signal single_jet_5974214183039352316 : std_logic;
    signal single_jet_5974287850318413308 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_17545683093852819909 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
    signal single_tau_22686292658 : std_logic;
    signal single_tau_3484211327656040900 : std_logic;
    signal triple_jet_7930493752634094709 : std_logic;
    signal triple_mu_3324682852515662879 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu14 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_double_mu_10_3p5 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_double_mu0er1p6_d_eta_max1p8 : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg24er : std_logic;
    signal l1_single_iso_eg30er : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_double_jet_c80 : std_logic;
    signal l1_double_jet_c112 : std_logic;
    signal l1_triple_jet_88_72_56_vbf : std_logic;
    signal l1_single_tau100er : std_logic;
    signal l1_htt120 : std_logic;
    signal l1_htt255 : std_logic;
    signal l1_htt280 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_htm140 : std_logic;
    signal l1_ett25 : std_logic;
    signal l1_mu8_htt150 : std_logic;
    signal l1_double_eg6_htt255 : std_logic;
    signal l1_quad_jet_c36_tau52 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_iso_eg22er_tau20er_d_eta_min0p2 : std_logic;
    signal l1_double_jet12_forward_backward : std_logic;
    signal l1_mu3_jet_c16 : std_logic;
    signal l1_mu3_jet_c60 : std_logic;
    signal l1_mu3_jet_c120 : std_logic;
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_double_iso_tau33er : std_logic;
    signal l1_iso_eg20er_iso_tau25er_d_eta_min0p2 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_jet_90_30_mj30j30_620 : std_logic;
    signal l1_double_jet_100_30_mj30j30_620 : std_logic;

-- ========================================================