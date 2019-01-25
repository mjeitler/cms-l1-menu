-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Dev2017_v0

-- Unique ID of L1 Trigger Menu:
-- 0e16ab0b-2d83-4ca2-9b19-ab1d40251338

-- Unique ID of firmware implementation:
-- 8ac77806-3251-4571-beab-b81a1147df41

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
    signal single_ext_10104897634845317422 : std_logic;
    signal single_ext_10371607390599051624 : std_logic;
    signal single_ext_13411810255817494270 : std_logic;
    signal single_ext_14106346774065907231 : std_logic;
    signal single_ext_14414193171404190569 : std_logic;
    signal single_ext_14715923867298343304 : std_logic;
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
    signal single_ext_2629888000553438421 : std_logic;
    signal single_ext_6395198100430131034 : std_logic;
    signal single_ext_6873400283626490434 : std_logic;
    signal single_ext_6912739140295604792 : std_logic;
    signal single_ext_6926915327998939228 : std_logic;
    signal single_ext_7332905005558692114 : std_logic;
    signal single_ext_7332905005558692115 : std_logic;
    signal single_ext_8082506271259815918 : std_logic;
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
    signal single_etm_18699476021 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815413 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_htm_19504782256 : std_logic;
    signal single_htm_19504782384 : std_logic;
    signal single_htm_2496612030512 : std_logic;
    signal single_htm_2496612030896 : std_logic;
    signal single_htm_2496612031152 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590325 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_htt_2496626710837 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal calo_calo_correlation_14500771630165735872 : std_logic;
    signal calo_calo_correlation_2085349615869404806 : std_logic;
    signal calo_muon_correlation_16240387826857744385 : std_logic;
    signal invariant_mass_14462129420738930134 : std_logic;
    signal muon_muon_correlation_16040223250608453060 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_15894421920862285922 : std_logic;
    signal double_jet_15912440717418279010 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_jet_8281320350476519461 : std_logic;
    signal double_jet_8659228673866386131 : std_logic;
    signal double_jet_8659301241633819347 : std_logic;
    signal double_jet_8659370613945584339 : std_logic;
    signal double_jet_8659444281224645331 : std_logic;
    signal double_jet_8659448610551679699 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_16961154507842811908 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal double_mu_18206240164090448142 : std_logic;
    signal double_tau_10196652277112847102 : std_logic;
    signal double_tau_14808338227894500078 : std_logic;
    signal double_tau_17539608616528615651 : std_logic;
    signal double_tau_5584966257611717374 : std_logic;
    signal double_tau_973280238110587646 : std_logic;
    signal quad_jet_2680186536839014580 : std_logic;
    signal quad_jet_2751081844007168180 : std_logic;
    signal quad_jet_2899845767245260980 : std_logic;
    signal quad_mu_509409160461874775 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_12507579852184458304 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852188652608 : std_logic;
    signal single_eg_12507579852190749760 : std_logic;
    signal single_eg_12507579852316578880 : std_logic;
    signal single_eg_12507579852318676032 : std_logic;
    signal single_eg_12507579852320773184 : std_logic;
    signal single_eg_12507579852322870336 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_6872811427746276593 : std_logic;
    signal single_jet_15014918520304220377 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_jet_5967545293332986055 : std_logic;
    signal single_jet_5967545309707548871 : std_logic;
    signal single_jet_5967545344067287239 : std_logic;
    signal single_jet_5967545378427025607 : std_logic;
    signal single_jet_5974075644574252540 : std_logic;
    signal single_jet_5974214183039352316 : std_logic;
    signal single_jet_5974287850318413308 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_16260934492399787300 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_tau_16608844133906550600 : std_logic;
    signal single_tau_22686292658 : std_logic;
    signal single_tau_3484211327656040900 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_eg_4430569691209534124 : std_logic;
    signal triple_jet_7930493752634094709 : std_logic;
    signal triple_mu_3324683539710430239 : std_logic;

-- Signal definition for algorithms names
    signal l1_zero_bias : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_mu30 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_10_3p5 : std_logic;
    signal l1_double_mu_11_4 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_double_mu0er1p6_d_eta_max1p8 : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_quad_mu0 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg26 : std_logic;
    signal l1_single_iso_eg28 : std_logic;
    signal l1_single_iso_eg30 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg18er : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_triple_eg_18_17_8 : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_double_jet_c50 : std_logic;
    signal l1_double_jet_c60 : std_logic;
    signal l1_double_jet_c100 : std_logic;
    signal l1_double_jet_c120 : std_logic;
    signal l1_triple_jet_88_72_56_vbf : std_logic;
    signal l1_quad_jet_c40 : std_logic;
    signal l1_quad_jet_c60 : std_logic;
    signal l1_single_tau80er : std_logic;
    signal l1_single_tau100er : std_logic;
    signal l1_double_iso_tau28er : std_logic;
    signal l1_double_iso_tau32er : std_logic;
    signal l1_htt160 : std_logic;
    signal l1_htt220 : std_logic;
    signal l1_htt255 : std_logic;
    signal l1_htt270 : std_logic;
    signal l1_htt300 : std_logic;
    signal l1_htm70 : std_logic;
    signal l1_htm80 : std_logic;
    signal l1_htm100 : std_logic;
    signal l1_htm130 : std_logic;
    signal l1_htm150 : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_mu8_htt150 : std_logic;
    signal l1_eg25er_htt125 : std_logic;
    signal l1_double_eg6_htt255 : std_logic;
    signal l1_quad_jet_c36_tau52 : std_logic;
    signal l1_double_jet_c60_etm60 : std_logic;
    signal l1_mu0er_etm40 : std_logic;
    signal l1_mu0er_etm55 : std_logic;
    signal l1_htm80_htt220 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_jet_c20_not_bptx_or : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_iso_eg22er_tau20er_d_eta_min0p2 : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c20_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_5_bx : std_logic;
    signal l1_single_jet_c40_not_bptx_or_3_bx : std_logic;
    signal l1_always_true : std_logic;
    signal l1_bptx_plus : std_logic;
    signal l1_bptx_minus : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_zero_bias_first_colliding_bunch : std_logic;
    signal l1_double_jet16_forward_backward : std_logic;
    signal l1_mu3_jet_c16 : std_logic;
    signal l1_mu3_jet_c60 : std_logic;
    signal l1_mu3_jet_c120 : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_bptx_xor : std_logic;
    signal l1_beam_gas_plus : std_logic;
    signal l1_beam_gas_minus : std_logic;
    signal l1_beam_gas_b1 : std_logic;
    signal l1_beam_gas_b2 : std_logic;
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
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg36 : std_logic;
    signal l1_double_iso_tau34er : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_iso_eg20er_iso_tau25er_d_eta_min0p2 : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_triple_mu_5_0_0 : std_logic;
    signal l1_double_eg_25_12 : std_logic;
    signal l1_double_iso_tau36er : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_etm105 : std_logic;
    signal l1_etm115 : std_logic;
    signal l1_double_tau70er : std_logic;
    signal l1_double_jet_90_30_mj30j30_620 : std_logic;
    signal l1_double_jet_100_30_mj30j30_620 : std_logic;
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