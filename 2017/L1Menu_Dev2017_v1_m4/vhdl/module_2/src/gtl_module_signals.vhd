-- ========================================================
-- from VHDL producer:

-- Module ID: 2

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


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
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
    signal single_etm_18699475376 : std_logic;
    signal single_etm_18699475632 : std_logic;
    signal single_etm_18699476021 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_htm_19504782384 : std_logic;
    signal single_htm_2496612030512 : std_logic;
    signal single_htm_2496612031152 : std_logic;
    signal single_htt_2496626710837 : std_logic;
    signal single_htt_2496626711344 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal calo_muon_correlation_16240387826857744385 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8008405571232419574 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_jet_15894421920862285922 : std_logic;
    signal double_jet_8659228673866386131 : std_logic;
    signal double_mu_14585778097856672575 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_tau_10196652277112847102 : std_logic;
    signal double_tau_973280238110587646 : std_logic;
    signal quad_jet_2751081844007168180 : std_logic;
    signal quad_jet_2899845767245260980 : std_logic;
    signal quad_mu_509409160461874775 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852316578880 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_6872943369141609713 : std_logic;
    signal single_eg_6872949966211376369 : std_logic;
    signal single_eg_6873086305653220593 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_mu_11649248473972557216 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_7037562455545169312 : std_logic;
    signal single_mu_7109620049583097248 : std_logic;
    signal single_mu_7145648846602061216 : std_logic;
    signal single_mu_7181677643621025184 : std_logic;
    signal single_mu_9343405464758863264 : std_logic;
    signal single_mu_9379434261777827232 : std_logic;
    signal single_mu_9433477457306273184 : std_logic;
    signal single_tau_16608830939767017288 : std_logic;
    signal single_tau_16608831008486494024 : std_logic;
    signal single_tau_218368042610145022 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu10_low_q : std_logic;
    signal l1_single_mu14er : std_logic;
    signal l1_single_mu16er : std_logic;
    signal l1_single_mu18er : std_logic;
    signal l1_single_mu20er : std_logic;
    signal l1_single_mu22er : std_logic;
    signal l1_single_mu25er : std_logic;
    signal l1_single_mu30er : std_logic;
    signal l1_double_mu_open : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_double_mu0er1p6_d_eta_max1p8_os : std_logic;
    signal l1_quad_mu0 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_iso_eg24 : std_logic;
    signal l1_single_iso_eg30 : std_logic;
    signal l1_single_iso_eg20er : std_logic;
    signal l1_single_iso_eg26er : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_double_jet_c50 : std_logic;
    signal l1_double_jet_c100 : std_logic;
    signal l1_quad_jet_c40 : std_logic;
    signal l1_quad_jet_c60 : std_logic;
    signal l1_double_iso_tau32er : std_logic;
    signal l1_htt160 : std_logic;
    signal l1_htt220 : std_logic;
    signal l1_htt300 : std_logic;
    signal l1_htm80 : std_logic;
    signal l1_htm100 : std_logic;
    signal l1_htm150 : std_logic;
    signal l1_etm30 : std_logic;
    signal l1_etm50 : std_logic;
    signal l1_mu16er_tau20er : std_logic;
    signal l1_mu16er_tau24er : std_logic;
    signal l1_mu18er_tau20er : std_logic;
    signal l1_mu18er_tau24er : std_logic;
    signal l1_mu18er_iso_tau26er : std_logic;
    signal l1_mu20er_iso_tau26er : std_logic;
    signal l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_eg25er_htt125 : std_logic;
    signal l1_mu10er_etm30 : std_logic;
    signal l1_mu10er_etm50 : std_logic;
    signal l1_mu14er_etm30 : std_logic;
    signal l1_htm80_htt220 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_iso_eg32er : std_logic;
    signal l1_double_mu0er1p4_d_eta_max1p8_os : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_double_iso_tau36er : std_logic;
    signal l1_mu22er_iso_tau26er : std_logic;
    signal l1_mu25er_iso_tau26er : std_logic;
    signal l1_etm115 : std_logic;

-- ========================================================