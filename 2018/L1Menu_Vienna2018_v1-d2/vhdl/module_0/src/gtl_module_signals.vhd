-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_Vienna2018_v1

-- Unique ID of L1 Trigger Menu:
-- e8963a1b-c6a7-4540-8841-b2c9b4d3d8ff

-- Unique ID of firmware implementation:
-- 777f3f0f-f01a-461a-a9b8-6973897307ab

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
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);

-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
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
    signal single_ext_10333571493479462268 : std_logic;
    signal single_ext_1189548080491112364 : std_logic;
    signal single_ext_15141600570663550655 : std_logic;
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
    signal single_ext_9945386644737729380 : std_logic;
    signal single_ext_9960888781443116569 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_etm_18699475376 : std_logic;
    signal single_etm_18699475632 : std_logic;
    signal single_etm_18699475893 : std_logic;
    signal single_etm_2393532816048 : std_logic;
    signal single_etmhf_39215647867820720 : std_logic;
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
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626743600 : std_logic;
    signal single_htt_2496626743856 : std_logic;
    signal calo_calo_correlation_7041035331710545453 : std_logic;
    signal calo_esum_correlation_13491612199685231906 : std_logic;
    signal calo_esum_correlation_16768129600298173713 : std_logic;
    signal muon_muon_correlation_12923126501326425857 : std_logic;
    signal muon_muon_correlation_15199048929593776303 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal muon_muon_correlation_9513481109957663155 : std_logic;
    signal double_mu_14585796862184301375 : std_logic;
    signal double_mu_14585797510442963775 : std_logic;
    signal double_mu_14585800259222033215 : std_logic;
    signal double_mu_16323903523977050720 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_mu_16961159554147985412 : std_logic;
    signal double_mu_16961160005400950788 : std_logic;
    signal double_mu_16961163952194496516 : std_logic;
    signal double_mu_2011765979326275391 : std_logic;
    signal double_mu_3139255731352238604 : std_logic;
    signal double_mu_3229327723899648524 : std_logic;
    signal double_mu_3251845722036501004 : std_logic;
    signal quad_jet_17665570788471843975 : std_logic;
    signal quad_jet_17666978163355397295 : std_logic;
    signal quad_jet_2750930524417894580 : std_logic;
    signal quad_jet_2899694447655987380 : std_logic;
    signal quad_jet_2969443065613019316 : std_logic;
    signal quad_mu_509409160461874775 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_1139639 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_5967545309672598855 : std_logic;
    signal single_jet_5967545344434990407 : std_logic;
    signal single_jet_5967545344837643591 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_5290897791608380091 : std_logic;
    signal single_mu_7037562455545169312 : std_logic;
    signal single_mu_7109620049583097248 : std_logic;
    signal single_mu_9379434261777827232 : std_logic;
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
    signal triple_jet_1514927488965982623 : std_logic;
    signal triple_jet_4911751765568543162 : std_logic;
    signal triple_jet_4911751765586089658 : std_logic;
    signal triple_jet_4911751765586495930 : std_logic;
    signal triple_jet_4911751765587089594 : std_logic;
    signal triple_jet_4911751765603911482 : std_logic;
    signal triple_jet_4911751765604427322 : std_logic;
    signal triple_jet_655678244564915215 : std_logic;
    signal triple_jet_655678244565419151 : std_logic;
    signal triple_mu_3324683353497813023 : std_logic;
    signal triple_mu_3324690130789734431 : std_logic;
    signal triple_mu_3324691786047638559 : std_logic;
    signal triple_mu_3324692191841327135 : std_logic;
    signal triple_mu_3324692885559266335 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu14er2p1 : std_logic;
    signal l1_single_mu22er2p1 : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_double_mu_13_6 : std_logic;
    signal l1_double_mu18er2p1 : std_logic;
    signal l1_triple_mu_5_3_3 : std_logic;
    signal l1_triple_mu_5_5_3 : std_logic;
    signal l1_quad_mu0 : std_logic;
    signal l1_always_true2 : std_logic;
    signal l1_always_true3 : std_logic;
    signal l1_always_true4 : std_logic;
    signal l1_always_true6 : std_logic;
    signal l1_always_true7 : std_logic;
    signal l1_always_true8 : std_logic;
    signal l1_always_true9 : std_logic;
    signal l1_triple_jet_88_72_56_vbf : std_logic;
    signal l1_triple_jet_98_83_71_vbf : std_logic;
    signal l1_triple_jet_105_85_76_vbf : std_logic;
    signal l1_quad_jet40er2p7 : std_logic;
    signal l1_quad_jet60er2p7 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt160er : std_logic;
    signal l1_htt320er : std_logic;
    signal l1_htt340er : std_logic;
    signal l1_etm30 : std_logic;
    signal l1_etm50 : std_logic;
    signal l1_etm75 : std_logic;
    signal l1_etm150 : std_logic;
    signal l1_etmhf150 : std_logic;
    signal l1_always_true10 : std_logic;
    signal l1_always_true11 : std_logic;
    signal l1_always_true12 : std_logic;
    signal l1_always_true13 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or : std_logic;
    signal l1_single_jet20er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er2p7_not_bptx_or_3_bx : std_logic;
    signal l1_always_true14 : std_logic;
    signal l1_always_true15 : std_logic;
    signal l1_always_true16 : std_logic;
    signal l1_double_mu0er2_sq_d_r_max1p4 : std_logic;
    signal l1_htt320er_quad_jet_70_55_40_40_er2p4 : std_logic;
    signal l1_htt320er_quad_jet_70_55_40_40_er2p5 : std_logic;
    signal l1_htt340er_quad_jet_70_55_40_40_er2p5 : std_logic;
    signal l1_htt320er_quad_jet_70_55_45_45_er2p5 : std_logic;
    signal l1_htt340er_quad_jet_70_55_45_45_er2p5 : std_logic;
    signal l1_double_jet112er2p3_d_eta_max1p6 : std_logic;
    signal l1_etm80_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm110_jet60_d_phi_min0p4 : std_logic;
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
    signal l1_double_mu_15_5_sq : std_logic;
    signal l1_double_mu_15_7_sq : std_logic;
    signal l1_triple_mu3_sq : std_logic;
    signal l1_double_mu7_sq_eg7 : std_logic;
    signal l1_double_mu0er1p5_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4p5_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu8_sq : std_logic;
    signal l1_double_mu0_sq_os : std_logic;
    signal l1_double_mu4p5_sq_os : std_logic;
    signal l1_double_mu4_sq_os : std_logic;
    signal l1_double_mu5_sq_os : std_logic;
    signal l1_triple_mu0_oq : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_oq : std_logic;
    signal l1_double_mu7_eg7 : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_mu8_htt150er : std_logic;
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
    signal l1_mu10er2p1_etm30 : std_logic;
    signal l1_mu14er2p1_etm30 : std_logic;
    signal l1_always_true : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_bptx_beam_gas_ref2_vme : std_logic;
    signal l1_bptx_beam_gas_b2_vme : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_bptx_and_ref1_vme : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_ref_and_vme : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_always_true5 : std_logic;

-- ========================================================