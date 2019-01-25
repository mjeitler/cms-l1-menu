-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r3

-- Unique ID of L1 Trigger Menu:
-- 091bc7c1-adf4-41be-8dc2-8bc3797597d2

-- Unique ID of firmware implementation:
-- debf71c9-b13a-43c4-9e1b-df86e2425514

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

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
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_eg_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_ext_10333571492674155900 : std_logic;
    signal single_ext_1189548080491112364 : std_logic;
    signal single_ext_6102799243448260461 : std_logic;
    signal single_ext_6909925150529645277 : std_logic;
    signal single_ext_6909925150529645278 : std_logic;
    signal single_ext_6909925150529645533 : std_logic;
    signal single_ext_6909925150529645534 : std_logic;
    signal single_ext_866206786138065236 : std_logic;
    signal single_ext_9794008929098471889 : std_logic;
    signal single_ext_9794008929098471890 : std_logic;
    signal single_ext_9794008929098472145 : std_logic;
    signal single_ext_9794008929098472146 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_ett_18699590704 : std_logic;
    signal single_ett_18699590709 : std_logic;
    signal single_ett_18699590832 : std_logic;
    signal single_ett_18699590837 : std_logic;
    signal single_ett_2393547495472 : std_logic;
    signal single_ett_2393547495600 : std_logic;
    signal single_htt_2496626710837 : std_logic;
    signal calo_esum_correlation_13491612199618123042 : std_logic;
    signal calo_esum_correlation_16768129600233686289 : std_logic;
    signal calo_esum_correlation_16768129600365282577 : std_logic;
    signal invariant_mass_2940649386995017095 : std_logic;
    signal invariant_mass_3161027694297827830 : std_logic;
    signal muon_muon_correlation_12923126501326425857 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal muon_muon_correlation_9513481109949270451 : std_logic;
    signal transverse_mass_1757817201761093878 : std_logic;
    signal transverse_mass_3639674040417019753 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_eg_9170720688096593570 : std_logic;
    signal double_jet_15912422389070688354 : std_logic;
    signal double_jet_16307690244847013909 : std_logic;
    signal double_jet_16379747838884941845 : std_logic;
    signal double_jet_16382562588652048405 : std_logic;
    signal double_jet_8659446229539818195 : std_logic;
    signal double_mu_14617142003772573591 : std_logic;
    signal double_mu_16961163303935834116 : std_logic;
    signal double_mu_16961163853691648004 : std_logic;
    signal double_mu_17582786187978172426 : std_logic;
    signal double_mu_3274363720173353484 : std_logic;
    signal double_tau_10196652277112847102 : std_logic;
    signal double_tau_17539608616528615651 : std_logic;
    signal double_tau_973280238110587646 : std_logic;
    signal quad_jet_2750930524417894580 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_12507579852182360640 : std_logic;
    signal single_eg_12507579852188652096 : std_logic;
    signal single_eg_12507579852318675520 : std_logic;
    signal single_eg_12507579852320772672 : std_logic;
    signal single_eg_12507579852323918400 : std_logic;
    signal single_eg_12507579852450796096 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_145873458 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_6872945567627994353 : std_logic;
    signal single_eg_6872952164697761009 : std_logic;
    signal single_eg_6873089603651233009 : std_logic;
    signal single_jet_11235106006895834903 : std_logic;
    signal single_jet_13432253330327927178 : std_logic;
    signal single_jet_15873314052325834177 : std_logic;
    signal single_jet_15873314052330193857 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_jet_2561319656368 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_jet_5967545309672598855 : std_logic;
    signal single_jet_5967545344434990407 : std_logic;
    signal single_jet_5967545344837643591 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_16260934496621930532 : std_logic;
    signal single_mu_17545683038261595717 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_9379434261777827232 : std_logic;
    signal single_mu_9379434265999970464 : std_logic;
    signal single_tau_16608837536836783944 : std_logic;
    signal single_tau_16608841934883295048 : std_logic;
    signal single_tau_2416124660766947070 : std_logic;
    signal single_tau_2452153457785911038 : std_logic;
    signal single_tau_2470167856295393022 : std_logic;
    signal single_tau_2488182254804875006 : std_logic;
    signal single_tau_2506196653314356990 : std_logic;
    signal single_tau_2524211051823838974 : std_logic;
    signal single_tau_254396839629108990 : std_logic;
    signal single_tau_2560239848842802942 : std_logic;
    signal single_tau_3484217924725807556 : std_logic;
    signal triple_jet_1514927488963884831 : std_logic;
    signal triple_jet_1514927488965982623 : std_logic;
    signal triple_jet_4911751765569599162 : std_logic;
    signal triple_jet_4911751765602597050 : std_logic;
    signal triple_jet_4911751765603112890 : std_logic;
    signal triple_jet_655678244564243471 : std_logic;
    signal triple_jet_655678244564763279 : std_logic;
    signal triple_jet_655678244564915215 : std_logic;
    signal triple_jet_655678244565419151 : std_logic;
    signal triple_mu_3324683353497813023 : std_logic;
    signal triple_mu_3324691786047638559 : std_logic;
    signal triple_mu_3324694397387754527 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu0_bmtf : std_logic;
    signal l1_single_mu11_low_q : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu22_bmtf : std_logic;
    signal l1_single_mu22er2p1 : std_logic;
    signal l1_double_mu_12_8 : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_triple_mu_4_4_4 : std_logic;
    signal l1_triple_mu_5_3_3 : std_logic;
    signal l1_single_eg42 : std_logic;
    signal l1_single_eg50 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg26 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg34 : std_logic;
    signal l1_single_iso_eg37 : std_logic;
    signal l1_single_iso_eg40 : std_logic;
    signal l1_single_iso_eg22er2p1 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_iso_eg35er2p1 : std_logic;
    signal l1_iso_eg33_mt40 : std_logic;
    signal l1_iso_eg33_mt48 : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_single_tau130er2p1 : std_logic;
    signal l1_double_tau70er2p1 : std_logic;
    signal l1_double_iso_tau32er2p1 : std_logic;
    signal l1_double_iso_tau36er2p1 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_single_jet170 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_single_jet90_fwd : std_logic;
    signal l1_single_jet35_h_fp : std_logic;
    signal l1_double_jet80er2p7 : std_logic;
    signal l1_double_jet120er2p7 : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_triple_jet_105_85_76_vbf : std_logic;
    signal l1_triple_jet_100_85_72_vbf : std_logic;
    signal l1_quad_jet40er2p7 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_double_jet30_mass_min400_d_eta_max1p5 : std_logic;
    signal l1_etm90_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm100_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_eg_loose_iso23_10 : std_logic;
    signal l1_double_jet_100_35_double_jet35_mass_min620 : std_logic;
    signal l1_double_jet_110_35_double_jet35_mass_min620 : std_logic;
    signal l1_double_jet_115_35_double_jet35_mass_min620 : std_logic;
    signal l1_mu22er2p1_tau50er2p1 : std_logic;
    signal l1_mu22er2p1_tau70er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau28er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau30er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau32er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau33er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau34er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau35er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau36er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau38er2p1 : std_logic;
    signal l1_double_mu0er1p4_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4p5_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu6_sq_os : std_logic;
    signal l1_double_mu4p5_sq : std_logic;
    signal l1_double_mu0er1p5_sq_os : std_logic;
    signal l1_triple_mu0_oq : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_eg25er2p1_htt125er : std_logic;
    signal l1_etm75_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_mu_10_0_d_eta_max1p8 : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_ett50_bptx_and : std_logic;
    signal l1_ett60_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_ett80_bptx_and : std_logic;
    signal l1_ett85_bptx_and : std_logic;
    signal l1_ett90_bptx_and : std_logic;
    signal l1_ett95_bptx_and : std_logic;
    signal l1_ett100_bptx_and : std_logic;
    signal l1_ett110_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_single_jet8er_he : std_logic;

-- ========================================================