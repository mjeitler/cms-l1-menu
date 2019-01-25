-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev

-- Unique ID of L1 Trigger Menu:
-- ff279b6e-899e-468b-9704-5fa64b5c005d

-- Unique ID of firmware implementation:
-- 8a4c21f6-5307-4a58-800b-1a1b4e9802a7

-- Scale set:
-- scales_2017_01_12

-- VHDL producer version
-- v1.0.0

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi_cos_sin_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal conv_eg_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal conv_tau_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal etm_pt_vector_bx_0: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal conv_etm_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal mu_pt_vector_bx_m1: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_m1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_m1: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_cos_phi_bx_m1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_sin_phi_bx_m1: muon_sin_cos_integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_cos_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_sin_phi_bx_0: calo_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_cos_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal conv_jet_sin_phi_bx_0: muon_sin_cos_integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);

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
    signal diff_mu_mu_bx_m1_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_m1_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_m1_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_m1_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_m1_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_m1_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_m1_bx_0, os_charcorr_double_bx_m1_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_m1_bx_0, os_charcorr_triple_bx_m1_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_m1_bx_0, os_charcorr_quad_bx_m1_bx_0 : muon_charcorr_quad_array;
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_etm_18699475504 : std_logic;
    signal single_etm_18699475632 : std_logic;
    signal single_etm_18699475637 : std_logic;
    signal single_etm_18699475760 : std_logic;
    signal single_etm_18699475765 : std_logic;
    signal single_etm_18699475888 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476021 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_18699476149 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815536 : std_logic;
    signal single_etmhf_306372248967728 : std_logic;
    signal single_etmhf_306372248967856 : std_logic;
    signal single_etmhf_306372248967984 : std_logic;
    signal single_etmhf_306372248968112 : std_logic;
    signal single_etmhf_306372248968117 : std_logic;
    signal single_etmhf_306372248968240 : std_logic;
    signal single_etmhf_306372248968245 : std_logic;
    signal single_etmhf_306372248968368 : std_logic;
    signal single_etmhf_306372248968373 : std_logic;
    signal single_etmhf_39215647867820080 : std_logic;
    signal single_etmhf_39215647867820085 : std_logic;
    signal single_etmhf_39215647867820208 : std_logic;
    signal single_etmhf_39215647867820213 : std_logic;
    signal single_etmhf_39215647867820336 : std_logic;
    signal single_htt_2496626710576 : std_logic;
    signal single_htt_2496626710837 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626727472 : std_logic;
    signal single_htt_2496626727600 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal single_htt_2496626743600 : std_logic;
    signal single_htt_2496626776112 : std_logic;
    signal calo_calo_correlation_12099677872530783800 : std_logic;
    signal calo_esum_correlation_13491612199685231906 : std_logic;
    signal calo_esum_correlation_16768129600365282577 : std_logic;
    signal invariant_mass_14086729214973067823 : std_logic;
    signal invariant_mass_2940638391871890823 : std_logic;
    signal invariant_mass_2940638391876117895 : std_logic;
    signal muon_muon_correlation_12544780457759423175 : std_logic;
    signal muon_muon_correlation_5953623724640739379 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_801551355683712319 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367845054004377823 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_10840719965249128790 : std_logic;
    signal double_jet_16307690244847013269 : std_logic;
    signal double_jet_16350512121229658012 : std_logic;
    signal double_jet_17504692923644168291 : std_logic;
    signal double_jet_3730266969229109735 : std_logic;
    signal double_jet_3805139313034161255 : std_logic;
    signal double_jet_3851467703317088356 : std_logic;
    signal double_jet_3851467703875127396 : std_logic;
    signal double_jet_4162612533456677351 : std_logic;
    signal double_jet_7821119012726214247 : std_logic;
    signal double_jet_7821119013284253287 : std_logic;
    signal double_jet_8659156106098952915 : std_logic;
    signal double_jet_8659301241633819347 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585786515326686015 : std_logic;
    signal double_mu_14585796862184301375 : std_logic;
    signal double_mu_14585797510442963775 : std_logic;
    signal double_mu_16961158905889323012 : std_logic;
    signal double_tau_10196652277112847102 : std_logic;
    signal double_tau_14808338292319009533 : std_logic;
    signal quad_jet_17630949366336433287 : std_logic;
    signal single_eg_1139639 : std_logic;
    signal single_eg_12507579852184458304 : std_logic;
    signal single_eg_12507579852318676032 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_14262501759707843507 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_6872949966211376369 : std_logic;
    signal single_eg_9244738805910375678 : std_logic;
    signal single_eg_9244741004933631230 : std_logic;
    signal single_eg_9244743203956886782 : std_logic;
    signal single_eg_9244881742421986558 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010310069 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_5967545310244419783 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_17494117756195063635 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683038261595717 : std_logic;
    signal single_mu_17545683111032689093 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_tau_12210388642533153582 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_jet_10368473969177751178 : std_logic;
    signal triple_jet_1776207310752122438 : std_logic;
    signal triple_mu_3324685188977871903 : std_logic;
    signal triple_mu_3324691786047638559 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu11_low_q : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_15_5 : std_logic;
    signal l1_triple_mu_5_3_3 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_eg34er2p1 : std_logic;
    signal l1_single_iso_eg22 : std_logic;
    signal l1_single_iso_eg32 : std_logic;
    signal l1_single_iso_eg26er2p1 : std_logic;
    signal l1_single_iso_eg36er2p1 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_22_12 : std_logic;
    signal l1_double_eg_25_13 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_double_iso_tau30er2p1 : std_logic;
    signal l1_double_iso_tau36er2p1 : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet35 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_double_jet40er3p0 : std_logic;
    signal l1_double_jet60er3p0 : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt220er : std_logic;
    signal l1_htt240er : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt270er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt300er : std_logic;
    signal l1_htt320er : std_logic;
    signal l1_htt500er : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm50 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_etm110 : std_logic;
    signal l1_etmhf70 : std_logic;
    signal l1_etmhf80 : std_logic;
    signal l1_etmhf90 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_cdc_single_mu_3_er2p1_top120_dphi2p618_3p665 : std_logic;
    signal l1_cdc_3_er2p1_top120_dphi1p570_4p711 : std_logic;
    signal l1_cdc_3_er1p2_top120_dphi1p570_4p711 : std_logic;
    signal l1_iso_eg26er2p1_jet34er3p0_d_r_min0p3 : std_logic;
    signal l1_iso_eg24er2p1_htt100er : std_logic;
    signal l1_iso_eg26er2p1_htt100er : std_logic;
    signal l1_iso_eg28er2p1_htt100er : std_logic;
    signal l1_iso_eg24er2p1_triple_jet_26er3p0_26_26er3p0 : std_logic;
    signal l1_mu18_htt100er : std_logic;
    signal l1_mu18_jet24er3p0 : std_logic;
    signal l1_htt250er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt280er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_htt300er_quad_jet_70_55_40_35_er2p5 : std_logic;
    signal l1_iso_tau40er_etm80 : std_logic;
    signal l1_iso_tau40er_etm85 : std_logic;
    signal l1_iso_tau40er_etm90 : std_logic;
    signal l1_iso_tau40er_etm95 : std_logic;
    signal l1_iso_tau40er_etm100 : std_logic;
    signal l1_iso_tau40er_etmhf80 : std_logic;
    signal l1_iso_tau40er_etmhf90 : std_logic;
    signal l1_mu22er2p1_iso_tau40er2p1 : std_logic;
    signal l1_etm90_jet60_d_phi_min0p4 : std_logic;
    signal l1_etm110_jet60_d_phi_min0p4 : std_logic;
    signal l1_double_jet60er3p0_etm70 : std_logic;
    signal l1_double_jet60er3p0_etm80 : std_logic;
    signal l1_double_jet60er3p0_etm90 : std_logic;
    signal l1_double_jet60er3p0_etm100 : std_logic;
    signal l1_double_jet_90_30_double_jet30_mass_min620 : std_logic;
    signal l1_double_jet_100_30_double_jet30_mass_min620 : std_logic;
    signal l1_double_jet30_mass_min400_mu6 : std_logic;
    signal l1_double_jet30_mass_min400_mu10 : std_logic;
    signal l1_mu6_htt240er : std_logic;
    signal l1_mu6_htt250er : std_logic;
    signal l1_mu15_htt100er : std_logic;
    signal l1_double_mu0_etmhf40_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu0_etmhf50_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu0_etmhf60_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu0_etmhf70_jet60_or_double_jet30 : std_logic;
    signal l1_double_mu0_etmhf80_jet60_or_double_jet30 : std_logic;
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
    signal l1_etmhf70_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf75_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf80_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf85_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf90_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf95_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf100_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf105_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf110_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf115_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf120_jet60_or_double_jet30 : std_logic;
    signal l1_etmhf70_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf80_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf90_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf100_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf110_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf120_jet60_or_di_jet30wo_tt28 : std_logic;
    signal l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 : std_logic;
    signal l1_double_mu7_sq_eg7 : std_logic;
    signal l1_triple_mu_5_3_0_double_mu_5_3_os_mass_max17 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_double_mu7_eg7 : std_logic;
    signal l1_mu6_htt200er : std_logic;
    signal l1_eg25er2p1_htt125er : std_logic;
    signal l1_eg27er2p1_htt200er : std_logic;
    signal l1_double_jet60er3p0_etm60 : std_logic;
    signal l1_double_mu0_etm40 : std_logic;
    signal l1_double_mu0_etm55 : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_double_eg6_htt255er : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_mu6_double_eg10 : std_logic;

-- ========================================================