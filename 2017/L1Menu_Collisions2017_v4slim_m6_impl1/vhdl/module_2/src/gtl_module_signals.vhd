-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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
    signal diff_eg_eg_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_eg_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_eg_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_eg_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal single_ext_10333571493479462268 : std_logic;
    signal single_ext_16249626042834147010 : std_logic;
    signal single_ext_9945386644737729380 : std_logic;
    signal single_etm_18699475504 : std_logic;
    signal single_etm_18699475637 : std_logic;
    signal single_etm_18699475760 : std_logic;
    signal single_etm_18699475765 : std_logic;
    signal single_etm_18699475888 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476021 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815413 : std_logic;
    signal single_etm_2393532815536 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_etm_2393532815664 : std_logic;
    signal single_etmhf_306372248967728 : std_logic;
    signal single_etmhf_306372248967856 : std_logic;
    signal single_etmhf_306372248967984 : std_logic;
    signal single_etmhf_306372248968112 : std_logic;
    signal single_etmhf_306372248968240 : std_logic;
    signal single_etmhf_306372248968368 : std_logic;
    signal single_etmhf_39215647867820080 : std_logic;
    signal single_etmhf_39215647867820208 : std_logic;
    signal single_etmhf_39215647867820336 : std_logic;
    signal single_htt_19504896816 : std_logic;
    signal single_htt_2496626710576 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626727472 : std_logic;
    signal single_htt_2496626727600 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal calo_calo_correlation_12094985861278103608 : std_logic;
    signal invariant_mass_13689376201502793133 : std_logic;
    signal invariant_mass_2443380592745462540 : std_logic;
    signal invariant_mass_2940638391871890823 : std_logic;
    signal invariant_mass_2940919866919937415 : std_logic;
    signal invariant_mass_3063833799189854821 : std_logic;
    signal invariant_mass_3161027694297827830 : std_logic;
    signal muon_muon_correlation_16784489743460462578 : std_logic;
    signal double_eg_13299746526186732683 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_10840719965249128790 : std_logic;
    signal double_jet_16379747838884957589 : std_logic;
    signal double_jet_16382562588652064149 : std_logic;
    signal double_jet_17504692923644168291 : std_logic;
    signal double_jet_3730266969229109735 : std_logic;
    signal double_jet_3805139313034161255 : std_logic;
    signal double_jet_3851467703317088356 : std_logic;
    signal double_jet_3851467703875127396 : std_logic;
    signal double_jet_7821119012726214247 : std_logic;
    signal double_jet_7821119013284253287 : std_logic;
    signal double_jet_8659301094004951763 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585786515326686015 : std_logic;
    signal quad_jet_17630949366336433287 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_9244738805910375422 : std_logic;
    signal single_eg_9244741004933630974 : std_logic;
    signal single_eg_9244743203956886526 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_5967545310209469767 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_17494117756195063635 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683111032689093 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_tau_12210388642533153582 : std_logic;
    signal triple_jet_10368473821548883594 : std_logic;
    signal triple_jet_1776207310752122438 : std_logic;
    signal triple_mu_3324685351042537503 : std_logic;
    signal triple_mu_3324685732743223327 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu18 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_double_jet60er2p7 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt220er : std_logic;
    signal l1_htt240er : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt270er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt300er : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_etm105 : std_logic;
    signal l1_etm110 : std_logic;
    signal l1_etm115 : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_etmhf70 : std_logic;
    signal l1_etmhf80 : std_logic;
    signal l1_etmhf90 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_double_jet30_mass_min400_d_eta_max1p5 : std_logic;
    signal l1_loose_iso_eg30er2p1_jet34er2p7_d_r_min0p3 : std_logic;
    signal l1_loose_iso_eg24er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg26er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg28er2p1_htt100er : std_logic;
    signal l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7 : std_logic;
    signal l1_mu18_htt100er : std_logic;
    signal l1_mu18_jet24er2p7 : std_logic;
    signal l1_htt250er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt280er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt300er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_iso_tau40er_etm80 : std_logic;
    signal l1_iso_tau40er_etm85 : std_logic;
    signal l1_iso_tau40er_etm90 : std_logic;
    signal l1_iso_tau40er_etm95 : std_logic;
    signal l1_iso_tau40er_etm100 : std_logic;
    signal l1_iso_tau40er_etm105 : std_logic;
    signal l1_iso_tau40er_etm110 : std_logic;
    signal l1_iso_tau40er_etm115 : std_logic;
    signal l1_iso_tau40er_etm120 : std_logic;
    signal l1_iso_tau40er_etmhf80 : std_logic;
    signal l1_iso_tau40er_etmhf90 : std_logic;
    signal l1_iso_tau40er_etmhf100 : std_logic;
    signal l1_iso_tau40er_etmhf110 : std_logic;
    signal l1_iso_tau40er_etmhf120 : std_logic;
    signal l1_mu22er2p1_iso_tau40er2p1 : std_logic;
    signal l1_double_jet60er2p7_etm70 : std_logic;
    signal l1_double_jet60er2p7_etm80 : std_logic;
    signal l1_double_jet60er2p7_etm90 : std_logic;
    signal l1_double_jet60er2p7_etm100 : std_logic;
    signal l1_double_jet_110_40_double_jet40_mass_min620 : std_logic;
    signal l1_double_jet_115_40_double_jet40_mass_min620 : std_logic;
    signal l1_double_jet30_mass_min400_mu6 : std_logic;
    signal l1_double_jet30_mass_min400_mu10 : std_logic;
    signal l1_mu6_htt240er : std_logic;
    signal l1_mu6_htt250er : std_logic;
    signal l1_mu15_htt100er : std_logic;
    signal l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu3_sq_htt100er : std_logic;
    signal l1_double_mu3_sq_htt200er : std_logic;
    signal l1_double_mu3_sq_htt220er : std_logic;
    signal l1_double_mu3_sq_htt240er : std_logic;
    signal l1_double_eg6_htt240er : std_logic;
    signal l1_double_eg6_htt250er : std_logic;
    signal l1_double_eg6_htt270er : std_logic;
    signal l1_double_eg6_htt300er : std_logic;
    signal l1_double_eg8er2p6_htt255er : std_logic;
    signal l1_double_eg8er2p6_htt270er : std_logic;
    signal l1_double_eg8er2p6_htt300er : std_logic;
    signal l1_etmhf100_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf100_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf110_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf120_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf80_htt60er : std_logic;
    signal l1_etmhf90_htt60er : std_logic;
    signal l1_etmhf100_htt60er : std_logic;
    signal l1_etmhf110_htt60er : std_logic;
    signal l1_etmhf120_htt60er : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9 : std_logic;
    signal l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9 : std_logic;
    signal l1_double_mu5_upsilon_os_double_eg3 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu6_htt200er : std_logic;
    signal l1_eg27er2p1_htt200er : std_logic;
    signal l1_double_jet60er2p7_etm60 : std_logic;
    signal l1_double_mu0_etm40 : std_logic;
    signal l1_double_mu0_etm55 : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_double_eg6_htt255er : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_and_ref4_vme : std_logic;
    signal l1_first_collision_in_train : std_logic;

-- ========================================================