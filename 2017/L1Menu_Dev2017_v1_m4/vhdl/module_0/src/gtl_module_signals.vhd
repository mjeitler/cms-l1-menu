-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_eg_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_ext_10104897634845317422 : std_logic;
    signal single_ext_10371607390599051624 : std_logic;
    signal single_ext_10668942785814789677 : std_logic;
    signal single_ext_10668942820174528044 : std_logic;
    signal single_ext_13411810255817494270 : std_logic;
    signal single_ext_13978480583031406537 : std_logic;
    signal single_ext_14106346774065907231 : std_logic;
    signal single_ext_14414193171404190569 : std_logic;
    signal single_ext_14715923867298343304 : std_logic;
    signal single_ext_14715923867298367880 : std_logic;
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
    signal single_ext_2629888000553438421 : std_logic;
    signal single_ext_6395038971485762907 : std_logic;
    signal single_ext_6395038971485762908 : std_logic;
    signal single_ext_6395038971485764604 : std_logic;
    signal single_ext_6395198100430131034 : std_logic;
    signal single_ext_6873400283626490434 : std_logic;
    signal single_ext_6908249106957368432 : std_logic;
    signal single_ext_6908249107225803888 : std_logic;
    signal single_ext_6912739140295604792 : std_logic;
    signal single_ext_6926915327998939228 : std_logic;
    signal single_ext_7098142365486617009 : std_logic;
    signal single_ext_7098142399846355376 : std_logic;
    signal single_ext_7332905005558692114 : std_logic;
    signal single_ext_7332905005558692115 : std_logic;
    signal single_ext_8082506271259815918 : std_logic;
    signal single_ext_8353702592807249329 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt1_hfm_43640317006685873 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_mbt1_hfp_43640317006686257 : std_logic;
    signal single_etm_18699475504 : std_logic;
    signal single_etm_18699475637 : std_logic;
    signal single_etm_18699475760 : std_logic;
    signal single_etm_18699475765 : std_logic;
    signal single_etm_18699475888 : std_logic;
    signal single_etm_18699475893 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815536 : std_logic;
    signal single_htm_19504782128 : std_logic;
    signal single_htm_19504782256 : std_logic;
    signal single_htm_2496612030896 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590325 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727728 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal calo_esum_correlation_16768129600233686289 : std_logic;
    signal calo_muon_correlation_10674670645420326056 : std_logic;
    signal calo_muon_correlation_10791898730651162912 : std_logic;
    signal calo_muon_correlation_15993852978349077723 : std_logic;
    signal invariant_mass_14462129420734703062 : std_logic;
    signal muon_muon_correlation_6226381454046753505 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_jet_5010010172296896555 : std_logic;
    signal double_jet_8659156106098952915 : std_logic;
    signal double_jet_8659301241633819347 : std_logic;
    signal double_jet_8659301379072772819 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659439917537872595 : std_logic;
    signal double_jet_8659444315584383699 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_tau_14808338292319009533 : std_logic;
    signal double_tau_17539608616528615651 : std_logic;
    signal double_tau_7890809267362282238 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_6873088504676476145 : std_logic;
    signal single_jet_156330548 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_jet_2561319656496 : std_logic;
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
    signal single_mu_16260934492399787300 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_tau_3484215725702552004 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_eg_4430569691209534124 : std_logic;
    signal triple_jet_7930354149017105525 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
    signal triple_mu_3324692885559266335 : std_logic;

-- Signal definition for algorithms names
    signal l1_zero_bias : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_triple_mu_5_5_3 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_iso_eg34er : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_triple_eg_18_17_8 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_double_jet_c40 : std_logic;
    signal l1_double_jet_c60 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_single_tau120er : std_logic;
    signal l1_double_iso_tau30er : std_logic;
    signal l1_htt200 : std_logic;
    signal l1_htt270 : std_logic;
    signal l1_htm70 : std_logic;
    signal l1_htm130 : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_mu6_htt200 : std_logic;
    signal l1_eg27er_htt200 : std_logic;
    signal l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 : std_logic;
    signal l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 : std_logic;
    signal l1_double_jet_c60_etm60 : std_logic;
    signal l1_mu0er_etm40 : std_logic;
    signal l1_mu0er_etm55 : std_logic;
    signal l1_htm60_htt260 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_jet_c20_not_bptx_or : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c20_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_5_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_3_bx : std_logic;
    signal l1_always_true : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_zero_bias_first_colliding_bunch : std_logic;
    signal l1_double_jet8_forward_backward : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_beam_gas_plus : std_logic;
    signal l1_beam_gas_minus : std_logic;
    signal l1_beam_gas_b1 : std_logic;
    signal l1_beam_gas_b2 : std_logic;
    signal l1_bptx_lut1_and : std_logic;
    signal l1_bptx_lut1_b1 : std_logic;
    signal l1_bptx_lut1_b2 : std_logic;
    signal l1_bptx_lut1_or : std_logic;
    signal l1_bptx_lut2_and : std_logic;
    signal l1_bptx_lut2_b1_not_b2 : std_logic;
    signal l1_bptx_lut2_b2_not_b1 : std_logic;
    signal l1_bptx_lut2_not_or : std_logic;
    signal l1_bptx_trig2_and : std_logic;
    signal l1_bptx_trig2_b1_not_b2 : std_logic;
    signal l1_bptx_trig2_b2_not_b1 : std_logic;
    signal l1_bptx_trig2_not_or : std_logic;
    signal l1_bril_trig3_and : std_logic;
    signal l1_bril_trig3_delayed_and : std_logic;
    signal l1_bril_trig3_ref : std_logic;
    signal l1_bril_trig0_and : std_logic;
    signal l1_bril_trig0_delayed_and : std_logic;
    signal l1_bril_trig0_or : std_logic;
    signal l1_bril_trig0_fst_bunch_in_train : std_logic;
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
    signal l1_double_mu0_etm40 : std_logic;
    signal l1_double_mu0_etm55 : std_logic;
    signal l1_double_iso_tau35er : std_logic;
    signal l1_etm75_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_etm110 : std_logic;
    signal l1_double_tau70er : std_logic;
    signal l1_double_jet30_mj30j30_400_mu6 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu10 : std_logic;
    signal l1_ett55_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_castor_gap_bptx_and : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_halo_muon_bptx_and : std_logic;
    signal l1_castor_halo_muon : std_logic;
    signal l1_single_jet4 : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_jet12 : std_logic;

-- ========================================================