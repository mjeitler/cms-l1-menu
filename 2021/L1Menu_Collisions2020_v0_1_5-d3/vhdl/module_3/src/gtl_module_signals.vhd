-- ========================================================
-- from VHDL producer:

-- Module ID: 3

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2020_v0_1_5

-- Unique ID of L1 Trigger Menu:
-- bc1fa81a-3cbf-49e9-8c0a-9dd8c6637c06

-- Unique ID of firmware implementation:
-- 8c19d0da-9c13-43f4-8e24-584e3e9e17db

-- Scale set:
-- scales_2021_03_02

-- VHDL producer version
-- v2.11.0

-- tmEventSetup version
-- v0.8.1

-- Signal definition of pt, eta and phi for correlation conditions.
    signal jet_bx_0_pt_vector: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_bx_0_eta_integer: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_phi_integer: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_cos_phi: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_sin_phi: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_conv_cos_phi: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_conv_sin_phi: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_eta_conv_2_muon_eta_integer: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_bx_0_phi_conv_2_muon_phi_integer: integer_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal mu_bx_0_pt_vector: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_bx_0_upt_vector: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_bx_0_eta_integer: integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_bx_0_phi_integer: integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_bx_0_cos_phi: integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_bx_0_sin_phi: integer_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal eg_bx_0_pt_vector: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_bx_0_eta_integer: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_phi_integer: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_cos_phi: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_sin_phi: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_conv_cos_phi: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_conv_sin_phi: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_eta_conv_2_muon_eta_integer: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_bx_0_phi_conv_2_muon_phi_integer: integer_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal etm_bx_0_pt_vector: diff_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => (others => '0'));
    signal etm_bx_0_phi_integer: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_bx_0_cos_phi: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_bx_0_sin_phi: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_bx_0_conv_cos_phi: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_bx_0_conv_sin_phi: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_bx_0_phi_conv_2_muon_phi_integer: integer_array(0 to NR_ETM_OBJECTS-1) := (others => 0);

-- Signal definition for cuts of correlation conditions.
    signal jet_jet_bx_0_bx_0_deta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal jet_jet_bx_0_bx_0_deta: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_dphi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal jet_jet_bx_0_bx_0_dphi: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_deta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal jet_mu_bx_0_bx_0_deta: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_dphi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal jet_mu_bx_0_bx_0_dphi: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_deta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal mu_mu_bx_0_bx_0_deta: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_dphi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal mu_mu_bx_0_bx_0_dphi: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_deta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal eg_eg_bx_0_bx_0_deta: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_dphi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => 0));
    signal eg_eg_bx_0_bx_0_dphi: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_etm_bx_0_bx_0_dphi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal eg_etm_bx_0_bx_0_dphi: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_dr : dr_dim2_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_dr : dr_dim2_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_mass_inv_pt : mass_dim2_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_mass_inv_pt : mass_dim2_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_eg_bx_0_bx_0_mass_inv_pt : mass_dim2_array(0 to NR_EG_OBJECTS-1, 0 to NR_EG_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_mass_inv_upt : mass_dim2_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_etm_bx_0_bx_0_mass_trans : mass_dim2_array(0 to NR_EG_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));

-- Signal definition for muon charge correlations.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : std_logic_2dim_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1);
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : std_logic_3dim_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1);
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : std_logic_4dim_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1);

-- Signal definition for conditions names
    signal single_ext_i329 : std_logic;
    signal single_ext_i332 : std_logic;
    signal single_ext_i333 : std_logic;
    signal single_ext_i334 : std_logic;
    signal single_ext_i336 : std_logic;
    signal single_ext_i354 : std_logic;
    signal single_ext_i362 : std_logic;
    signal single_ext_i366 : std_logic;
    signal single_ext_i368 : std_logic;
    signal single_etmhf_i105 : std_logic;
    signal single_etmhf_i106 : std_logic;
    signal single_etmhf_i224 : std_logic;
    signal single_etmhf_i226 : std_logic;
    signal single_etmhf_i227 : std_logic;
    signal single_etmhf_i326 : std_logic;
    signal single_etmhf_i328 : std_logic;
    signal single_htt_i120 : std_logic;
    signal single_htt_i124 : std_logic;
    signal single_htt_i190 : std_logic;
    signal single_htt_i194 : std_logic;
    signal single_htt_i197 : std_logic;
    signal single_htt_i313 : std_logic;
    signal single_htt_i318 : std_logic;
    signal calo_calo_correlation_i114 : std_logic;
    signal calo_calo_correlation_i266 : std_logic;
    signal calo_muon_correlation_i100 : std_logic;
    signal calo_muon_correlation_i102 : std_logic;
    signal calo_muon_correlation_i113 : std_logic;
    signal calo_muon_correlation_i116 : std_logic;
    signal calo_muon_correlation_i97 : std_logic;
    signal invariant_mass_i268 : std_logic;
    signal invariant_mass_i278 : std_logic;
    signal invariant_mass_i280 : std_logic;
    signal invariant_mass_i282 : std_logic;
    signal invariant_mass_i37 : std_logic;
    signal invariant_mass_i59 : std_logic;
    signal invariant_mass_i71 : std_logic;
    signal invariant_mass_i94 : std_logic;
    signal invariant_mass_i95 : std_logic;
    signal invariant_mass_upt_i379 : std_logic;
    signal invariant_mass_upt_i380 : std_logic;
    signal muon_muon_correlation_i115 : std_logic;
    signal muon_muon_correlation_i50 : std_logic;
    signal muon_muon_correlation_i52 : std_logic;
    signal muon_muon_correlation_i54 : std_logic;
    signal transverse_mass_i166 : std_logic;
    signal double_eg_i173 : std_logic;
    signal double_eg_i178 : std_logic;
    signal double_eg_i193 : std_logic;
    signal double_jet_i122 : std_logic;
    signal double_jet_i277 : std_logic;
    signal double_jet_i279 : std_logic;
    signal double_jet_i281 : std_logic;
    signal double_jet_i300 : std_logic;
    signal double_mu_i119 : std_logic;
    signal double_mu_i38 : std_logic;
    signal double_mu_i42 : std_logic;
    signal double_mu_i53 : std_logic;
    signal double_tau_i205 : std_logic;
    signal quad_jet_i308 : std_logic;
    signal quad_jet_i309 : std_logic;
    signal single_eg_i127 : std_logic;
    signal single_eg_i131 : std_logic;
    signal single_eg_i138 : std_logic;
    signal single_eg_i141 : std_logic;
    signal single_eg_i142 : std_logic;
    signal single_eg_i149 : std_logic;
    signal single_eg_i152 : std_logic;
    signal single_eg_i155 : std_logic;
    signal single_eg_i156 : std_logic;
    signal single_eg_i157 : std_logic;
    signal single_eg_i159 : std_logic;
    signal single_eg_i164 : std_logic;
    signal single_eg_i191 : std_logic;
    signal single_eg_i82 : std_logic;
    signal single_jet_i104 : std_logic;
    signal single_jet_i240 : std_logic;
    signal single_jet_i248 : std_logic;
    signal single_jet_i250 : std_logic;
    signal single_jet_i253 : std_logic;
    signal single_jet_i254 : std_logic;
    signal single_jet_i260 : std_logic;
    signal single_jet_i96 : std_logic;
    signal single_mu_i103 : std_logic;
    signal single_mu_i12 : std_logic;
    signal single_mu_i13 : std_logic;
    signal single_mu_i14 : std_logic;
    signal single_mu_i19 : std_logic;
    signal single_mu_i216 : std_logic;
    signal single_mu_i231 : std_logic;
    signal single_mu_i236 : std_logic;
    signal single_mu_i26 : std_logic;
    signal single_mu_i3 : std_logic;
    signal single_mu_i32 : std_logic;
    signal single_mu_i373 : std_logic;
    signal single_mu_i9 : std_logic;
    signal single_tau_i219 : std_logic;
    signal single_tau_i222 : std_logic;
    signal triple_eg_i184 : std_logic;
    signal triple_jet_i299 : std_logic;
    signal triple_mu_i61 : std_logic;
    signal triple_mu_i63 : std_logic;
    signal triple_mu_i68 : std_logic;
    signal triple_mu_i70 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics_emtf : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu12_dq_bmtf : std_logic;
    signal l1_single_mu12_dq_omtf : std_logic;
    signal l1_single_mu22 : std_logic;
    signal l1_single_mu8er1p5 : std_logic;
    signal l1_single_mu18er1p5 : std_logic;
    signal l1_massupt_5_5_20 : std_logic;
    signal l1_massupt_0_0_10_open : std_logic;
    signal l1_double_mu0_mass_min1 : std_logic;
    signal l1_double_mu8_sq : std_logic;
    signal l1_double_mu_15_7 : std_logic;
    signal l1_double_mu0er1p5_sq_d_r_max1p4 : std_logic;
    signal l1_double_mu0er1p4_sq_os_d_r_max1p4 : std_logic;
    signal l1_double_mu4_sq_os : std_logic;
    signal l1_double_mu4_sq_os_d_r_max1p2 : std_logic;
    signal l1_double_mu4p5er2p0_sq_os_mass7to18 : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_triple_mu3 : std_logic;
    signal l1_triple_mu_5_3_3_sq : std_logic;
    signal l1_triple_mu_5_3p5_2p5_oq_double_mu_5_2p5_oq_os_mass_5to17 : std_logic;
    signal l1_mu7_loose_iso_eg20er2p5 : std_logic;
    signal l1_double_mu5_upsilon_os_double_eg3 : std_logic;
    signal l1_mu3_jet30er2p5 : std_logic;
    signal l1_mu3_jet16er2p5_d_r_max0p4 : std_logic;
    signal l1_mu3_jet80er2p5_d_r_max0p4 : std_logic;
    signal l1_mu3_jet120er2p5_d_r_max0p4 : std_logic;
    signal l1_mu3er1p5_jet100er2p5_etmhf40 : std_logic;
    signal l1_mu3er1p5_jet100er2p5_etmhf50 : std_logic;
    signal l1_mu12er2p3_jet40er2p1_d_r_max0p4_double_jet40er2p1_d_eta_max1p6 : std_logic;
    signal l1_double_mu0_d_r_max1p6_jet90er2p5_d_r_max0p8 : std_logic;
    signal l1_double_mu3_sq_htt220er : std_logic;
    signal l1_mu0upt20ip2 : std_logic;
    signal l1_single_eg15er2p5 : std_logic;
    signal l1_single_eg28er2p5 : std_logic;
    signal l1_single_eg42er2p5 : std_logic;
    signal l1_single_eg60 : std_logic;
    signal l1_single_loose_iso_eg26er2p5 : std_logic;
    signal l1_single_loose_iso_eg30er2p5 : std_logic;
    signal l1_single_iso_eg24er1p5 : std_logic;
    signal l1_single_iso_eg26er1p5 : std_logic;
    signal l1_single_iso_eg28_fwd2p5 : std_logic;
    signal l1_single_iso_eg28er2p1 : std_logic;
    signal l1_single_iso_eg32er2p1 : std_logic;
    signal l1_iso_eg32er2p5_mt40 : std_logic;
    signal l1_double_eg_25_14_er2p5 : std_logic;
    signal l1_double_eg_loose_iso25_12_er2p5 : std_logic;
    signal l1_triple_eg_18_18_12_er2p5 : std_logic;
    signal l1_loose_iso_eg26er2p1_htt100er : std_logic;
    signal l1_double_eg8er2p5_htt340er : std_logic;
    signal l1_double_iso_tau30er2p1 : std_logic;
    signal l1_mu22er2p1_iso_tau32er2p1 : std_logic;
    signal l1_iso_tau40er2p1_etmhf110 : std_logic;
    signal l1_mu0upt5 : std_logic;
    signal l1_single_mu_openupt5 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet180er2p5 : std_logic;
    signal l1_single_jet60_fwd3p0 : std_logic;
    signal l1_single_jet10er_he : std_logic;
    signal l1_single_jet140er2p5_etmhf80 : std_logic;
    signal l1_double_jet40er2p5 : std_logic;
    signal l1_double_jet100er2p3_d_eta_max1p6 : std_logic;
    signal l1_double_jet30er2p5_mass_min150_d_eta_max1p5 : std_logic;
    signal l1_double_jet_110_35_double_jet35_mass_min620 : std_logic;
    signal l1_double_jet_115_40_double_jet40_mass_min620 : std_logic;
    signal l1_double_jet_120_45_double_jet45_mass_min620 : std_logic;
    signal l1_triple_jet_95_75_65_double_jet_75_65_er2p5 : std_logic;
    signal l1_quad_jet60er2p5 : std_logic;
    signal l1_htt280er_quad_jet_70_55_40_35_er2p4 : std_logic;
    signal l1_htt120er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt400er : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf130 : std_logic;
    signal l1_etmhf150 : std_logic;
    signal l1_etmhf100_htt60er : std_logic;
    signal l1_etmhf130_htt60er : std_logic;
    signal l1_first_bunch_before_train : std_logic;
    signal l1_bptx_or_ref3_vme : std_logic;
    signal l1_bptx_beam_gas_b1_vme : std_logic;
    signal l1_hcal_laser_mon_veto : std_logic;
    signal l1_totem_2 : std_logic;

-- ========================================================