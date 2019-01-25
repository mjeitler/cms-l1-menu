-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4

-- Unique ID of L1 Trigger Menu:
-- 77c4c1a3-8e88-4e16-b904-f67e69239cf6

-- Unique ID of firmware implementation:
-- bee17521-369e-46ad-94a1-68752fcac3bc

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
    signal diff_jet_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_htt_2496626711216 : std_logic;
    signal calo_calo_correlation_7041035331702023693 : std_logic;
    signal calo_calo_correlation_9825171649083341880 : std_logic;
    signal calo_muon_correlation_16240389187803176961 : std_logic;
    signal invariant_mass_15577908206133012537 : std_logic;
    signal invariant_mass_3136996817261618632 : std_logic;
    signal invariant_mass_3160755015414139382 : std_logic;
    signal muon_muon_correlation_15199048927445899759 : std_logic;
    signal invariant_mass_ov_rm_10967205787862279205 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377951 : std_logic;
    signal double_jet_15903553762640785506 : std_logic;
    signal double_jet_8659228526237518547 : std_logic;
    signal double_mu_14585800259222033215 : std_logic;
    signal double_mu_16323903523977050720 : std_logic;
    signal double_mu_16961160005400950788 : std_logic;
    signal double_mu_16961163952194496516 : std_logic;
    signal double_mu_2011765979326275391 : std_logic;
    signal double_tau_14808338292319009533 : std_logic;
    signal double_tau_15233202657361500387 : std_logic;
    signal double_tau_7890809267362282238 : std_logic;
    signal quad_jet_2680035217249740980 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_12507579852182360640 : std_logic;
    signal single_eg_12507579852188652096 : std_logic;
    signal single_eg_12507579852318675520 : std_logic;
    signal single_eg_12507579852320772672 : std_logic;
    signal single_eg_12507579852323918400 : std_logic;
    signal single_eg_12507579852450796096 : std_logic;
    signal single_eg_145873458 : std_logic;
    signal single_eg_145873584 : std_logic;
    signal single_eg_6872945567627994353 : std_logic;
    signal single_eg_6872952164697761009 : std_logic;
    signal single_eg_6873089603651233009 : std_logic;
    signal single_jet_13432253330323567498 : std_logic;
    signal single_jet_15873314026556030401 : std_logic;
    signal single_jet_15873314026560390081 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_2561319655984 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_5967545309672598855 : std_logic;
    signal single_jet_5967545344434990407 : std_logic;
    signal single_jet_5967545344837643591 : std_logic;
    signal single_jet_7529294815024254598 : std_logic;
    signal single_jet_8640423326805719435 : std_logic;
    signal single_mu_14243093768255232179 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_6945763095867696771 : std_logic;
    signal single_mu_7990946204847842434 : std_logic;
    signal single_tau_14552260448765811502 : std_logic;
    signal single_tau_16608844133906550600 : std_logic;
    signal single_tau_22686292658 : std_logic;
    signal single_tau_3484217924725807556 : std_logic;
    signal triple_eg_667988932384139803 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_cosmics_bmtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_single_mu12_low_q_omtf : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_mu22_omtf : std_logic;
    signal l1_double_mu_13_6 : std_logic;
    signal l1_double_mu18er2p1 : std_logic;
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
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_double_eg_25_14 : std_logic;
    signal l1_single_tau80er2p1 : std_logic;
    signal l1_single_tau130er2p1 : std_logic;
    signal l1_double_tau50er2p1 : std_logic;
    signal l1_double_iso_tau30er2p1 : std_logic;
    signal l1_double_iso_tau35er2p1 : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet140 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet60_fwd : std_logic;
    signal l1_single_jet35_h_fm : std_logic;
    signal l1_single_jet60_h_fp : std_logic;
    signal l1_double_jet50er2p7 : std_logic;
    signal l1_double_jet112er2p7 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_double_jet30_mass_min340_d_eta_max1p5 : std_logic;
    signal l1_double_mu0er1p5_sq_d_r_max1p4 : std_logic;
    signal l1_loose_iso_eg24er2p1_jet26er2p7_d_r_min0p3 : std_logic;
    signal l1_double_jet100er2p3_d_eta_max1p6 : std_logic;
    signal l1_quad_jet36er2p7_iso_tau52er2p1 : std_logic;
    signal l1_triple_eg_loose_iso20_10_5 : std_logic;
    signal l1_double_jet35_rmovlp_iso_tau45_mass_min450 : std_logic;
    signal l1_double_mu_15_7_sq : std_logic;
    signal l1_double_mu_15_7_sq_mass_min4 : std_logic;
    signal l1_mu3_jet30er2p5 : std_logic;
    signal l1_double_mu_20_2_sq_mass_max20 : std_logic;
    signal l1_double_mu8_sq : std_logic;
    signal l1_double_mu4p5_sq_os : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_mu8_htt150er : std_logic;
    signal l1_quad_jet36er2p7_tau52 : std_logic;
    signal l1_mu3_jet60er2p7_d_eta_max0p4_d_phi_max0p4 : std_logic;
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

-- ========================================================