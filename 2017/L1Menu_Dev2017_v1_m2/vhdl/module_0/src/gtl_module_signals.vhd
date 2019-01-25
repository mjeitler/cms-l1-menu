-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v1

-- Unique ID of L1 Trigger Menu:
-- cfa163b7-9a3e-4241-b966-f246e6c0e0b8

-- Unique ID of firmware implementation:
-- 6b83496c-2214-4454-8496-79e9e453d9d0

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v2.0.0

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
    signal diff_eg_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_ext_10104897634845317422 : std_logic;
    signal single_ext_10371607390599051624 : std_logic;
    signal single_ext_10668942820174528044 : std_logic;
    signal single_ext_13411810255817494270 : std_logic;
    signal single_ext_14106346774065907231 : std_logic;
    signal single_ext_1543099582833751334 : std_logic;
    signal single_ext_15455824636181887404 : std_logic;
    signal single_ext_15455824636181887405 : std_logic;
    signal single_ext_15455824636181887660 : std_logic;
    signal single_ext_15455824636181887661 : std_logic;
    signal single_ext_17118203077108929635 : std_logic;
    signal single_ext_17561531836164454591 : std_logic;
    signal single_ext_17561531836164454592 : std_logic;
    signal single_ext_17561531836164454847 : std_logic;
    signal single_ext_17561531836164454848 : std_logic;
    signal single_ext_17833638493488257651 : std_logic;
    signal single_ext_17833638494023122291 : std_logic;
    signal single_ext_17833638494293564019 : std_logic;
    signal single_ext_17833638494294369813 : std_logic;
    signal single_ext_6395038971485762908 : std_logic;
    signal single_ext_6908249106957368432 : std_logic;
    signal single_ext_6908249107225803888 : std_logic;
    signal single_ext_6912739140295604792 : std_logic;
    signal single_ext_7098142399846355376 : std_logic;
    signal single_ext_7332905005558692115 : std_logic;
    signal single_ext_8082506271259815918 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt1_hfm_43640317006685873 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_mbt1_hfp_43640317006686257 : std_logic;
    signal single_etm_18699475893 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476021 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_htm_19504782000 : std_logic;
    signal single_htm_19504782256 : std_logic;
    signal single_htm_19504782384 : std_logic;
    signal single_htm_2496612030512 : std_logic;
    signal single_htm_2496612030768 : std_logic;
    signal single_htm_2496612030896 : std_logic;
    signal single_htm_2496612031024 : std_logic;
    signal single_htm_2496612031152 : std_logic;
    signal single_ett_18699589941 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590325 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal calo_calo_correlation_14500771630165735872 : std_logic;
    signal calo_calo_correlation_2085349615869404806 : std_logic;
    signal calo_muon_correlation_10674670645420326056 : std_logic;
    signal calo_muon_correlation_10791898730651162912 : std_logic;
    signal calo_muon_correlation_16240387826857744385 : std_logic;
    signal invariant_mass_14462129420734703062 : std_logic;
    signal invariant_mass_14462129420738930134 : std_logic;
    signal muon_muon_correlation_6226381454046753505 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8008405571232419574 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_jet_8659301379072772819 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659439917537872595 : std_logic;
    signal double_jet_8659444315584383699 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal double_mu_18206240164090448142 : std_logic;
    signal quad_jet_2751081844007168180 : std_logic;
    signal quad_jet_2899845767245260980 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_5967545309707548871 : std_logic;
    signal single_jet_5967545344067287239 : std_logic;
    signal single_jet_5974006375341702652 : std_logic;
    signal single_jet_5974144913806802428 : std_logic;
    signal single_jet_5974147112830057980 : std_logic;
    signal single_jet_5974216382062607868 : std_logic;
    signal single_jet_5974285651295157756 : std_logic;
    signal single_jet_5974354920527707644 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal triple_jet_7930354149017105525 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
    signal triple_mu_3324682852515662879 : std_logic;
    signal triple_mu_3324692885559266335 : std_logic;

-- Signal definition for algorithms names
    signal l1_zero_bias : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_double_mu_10_3p5 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_double_mu0er1p6_d_eta_max1p8_os : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_triple_mu_5_5_3 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_quad_jet_c40 : std_logic;
    signal l1_quad_jet_c60 : std_logic;
    signal l1_htt120 : std_logic;
    signal l1_htt160 : std_logic;
    signal l1_htt200 : std_logic;
    signal l1_htt220 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_htm50 : std_logic;
    signal l1_htm70 : std_logic;
    signal l1_htm80 : std_logic;
    signal l1_htm100 : std_logic;
    signal l1_htm120 : std_logic;
    signal l1_htm130 : std_logic;
    signal l1_htm140 : std_logic;
    signal l1_htm150 : std_logic;
    signal l1_ett25 : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_mu6_htt200 : std_logic;
    signal l1_mu8_htt150 : std_logic;
    signal l1_eg27er_htt200 : std_logic;
    signal l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 : std_logic;
    signal l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 : std_logic;
    signal l1_htm80_htt220 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_jet_c20_not_bptx_or : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_iso_eg22er_tau20er_d_eta_min0p2 : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c20_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_5_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_3_bx : std_logic;
    signal l1_always_true : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_beam_gas_plus : std_logic;
    signal l1_beam_gas_b2 : std_logic;
    signal l1_bptx_lut1_and : std_logic;
    signal l1_bptx_lut1_b2 : std_logic;
    signal l1_bptx_lut2_and : std_logic;
    signal l1_bptx_lut2_b2_not_b1 : std_logic;
    signal l1_bptx_trig2_and : std_logic;
    signal l1_bptx_trig2_b2_not_b1 : std_logic;
    signal l1_bril_trig3_and : std_logic;
    signal l1_bril_trig3_ref : std_logic;
    signal l1_bril_trig0_and : std_logic;
    signal l1_bril_trig0_or : std_logic;
    signal l1_ett50_bptx_and : std_logic;
    signal l1_ett60_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf1_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or : std_logic;
    signal l1_minimum_bias_hf0_and : std_logic;
    signal l1_minimum_bias_hf1_or : std_logic;
    signal l1_minimum_bias_hf1_and : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_iso_eg20er_iso_tau25er_d_eta_min0p2 : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_double_jet_90_30_mj30j30_620 : std_logic;
    signal l1_double_jet_100_30_mj30j30_620 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu6 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu10 : std_logic;
    signal l1_ett55_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_castor_gap_bptx_and : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_halo_muon_bptx_and : std_logic;
    signal l1_castor_halo_muon : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_jet12 : std_logic;

-- ========================================================