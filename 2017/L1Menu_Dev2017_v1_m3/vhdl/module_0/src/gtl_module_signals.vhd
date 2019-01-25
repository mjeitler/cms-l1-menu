-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- d8b5a5b3-20c1-4fcc-954a-7fb47ae3edcf

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
    signal diff_eg_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_htm_2496612030768 : std_logic;
    signal single_htm_2496612031152 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626743600 : std_logic;
    signal calo_calo_correlation_14433217633607694784 : std_logic;
    signal calo_calo_correlation_2085349615869404806 : std_logic;
    signal calo_muon_correlation_10674670645420326056 : std_logic;
    signal calo_muon_correlation_10791898730651162912 : std_logic;
    signal calo_muon_correlation_16240389188362377217 : std_logic;
    signal muon_muon_correlation_6226381454046753505 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844767 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_jet_15903572090988376162 : std_logic;
    signal double_jet_8281320350476519461 : std_logic;
    signal double_jet_8659228673866386131 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_mu_18206240164090448142 : std_logic;
    signal double_tau_17539608616528615651 : std_logic;
    signal double_tau_7890809267362282238 : std_logic;
    signal double_tau_973280238110587646 : std_logic;
    signal single_eg_12507428088042853440 : std_logic;
    signal single_eg_12507579852048143424 : std_logic;
    signal single_eg_12507579852056532032 : std_logic;
    signal single_eg_12507579852182361152 : std_logic;
    signal single_eg_12507579852184458304 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852188652608 : std_logic;
    signal single_eg_12507579852318676032 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873079 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873200 : std_logic;
    signal single_eg_145873203 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_6872811427746276593 : std_logic;
    signal single_eg_6872952165234631921 : std_logic;
    signal single_eg_6873088504676476145 : std_logic;
    signal single_jet_156330548 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685275696206277 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_tau_3484211327656040900 : std_logic;
    signal triple_mu_3324683539710430239 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_double_mu_10_3p5 : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_iso_eg18 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg26 : std_logic;
    signal l1_single_iso_eg18er : std_logic;
    signal l1_single_iso_eg28er : std_logic;
    signal l1_single_iso_eg34er : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_double_jet_c50 : std_logic;
    signal l1_double_jet_c112 : std_logic;
    signal l1_single_tau100er : std_logic;
    signal l1_double_iso_tau32er : std_logic;
    signal l1_htt120 : std_logic;
    signal l1_htt270 : std_logic;
    signal l1_htt320 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_htm120 : std_logic;
    signal l1_htm150 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_mu5_eg15 : std_logic;
    signal l1_mu5_eg20 : std_logic;
    signal l1_mu5_eg23 : std_logic;
    signal l1_mu5_iso_eg18 : std_logic;
    signal l1_mu5_iso_eg20 : std_logic;
    signal l1_mu12_eg10 : std_logic;
    signal l1_mu20_eg10 : std_logic;
    signal l1_mu20_eg17 : std_logic;
    signal l1_mu23_iso_eg10 : std_logic;
    signal l1_mu23_eg10 : std_logic;
    signal l1_mu3_jet_c60_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 : std_logic;
    signal l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 : std_logic;
    signal l1_double_eg_22_15 : std_logic;
    signal l1_mu20_eg15 : std_logic;
    signal l1_iso_eg22er_tau20er_d_eta_min0p2 : std_logic;
    signal l1_double_jet16_forward_backward : std_logic;
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_double_iso_tau35er : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_iso_eg18er_iso_tau24er_d_eta_min0p2 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_mu20_iso_eg6 : std_logic;
    signal l1_triple_mu_5_0_0 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_etm115 : std_logic;
    signal l1_double_tau70er : std_logic;
    signal l1_single_jet4 : std_logic;

-- ========================================================