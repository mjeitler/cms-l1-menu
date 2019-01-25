-- ========================================================
-- from VHDL producer:

-- Module ID: 0

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
    signal diff_jet_jet_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_jet_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_jet_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_jet_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_JET_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cosh_deta_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal mu_mu_bx_0_bx_0_cos_dphi_vector : muon_cosh_cos_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_mu_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_mu_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_MU_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));


-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
    signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
    signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
    signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;

-- Signal definition for conditions names
    signal single_etm_18699475376 : std_logic;
    signal single_etm_18699475632 : std_logic;
    signal single_etm_18699476016 : std_logic;
    signal single_etm_18699476144 : std_logic;
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815536 : std_logic;
    signal single_etm_2393532815664 : std_logic;
    signal single_htm_19504782000 : std_logic;
    signal single_htm_19504782128 : std_logic;
    signal single_htm_2496612030768 : std_logic;
    signal single_htm_2496612031024 : std_logic;
    signal single_ett_18699589941 : std_logic;
    signal single_htt_2496626710832 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727472 : std_logic;
    signal single_htt_2496626727728 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626743600 : std_logic;
    signal calo_calo_correlation_14433217633607694784 : std_logic;
    signal calo_calo_correlation_14501897532220062144 : std_logic;
    signal calo_esum_correlation_16768129600233686289 : std_logic;
    signal calo_muon_correlation_10674670645420326056 : std_logic;
    signal calo_muon_correlation_10791898730651162912 : std_logic;
    signal calo_muon_correlation_15993852978349077723 : std_logic;
    signal calo_muon_correlation_16240389188362377217 : std_logic;
    signal invariant_mass_14462129420734703062 : std_logic;
    signal muon_muon_correlation_6226381454046753505 : std_logic;
    signal muon_muon_correlation_8008405571232419574 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367831859864844767 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_jet_15903572090988376162 : std_logic;
    signal double_jet_5010010172296896555 : std_logic;
    signal double_jet_8281320341886584868 : std_logic;
    signal double_jet_8659156106098952915 : std_logic;
    signal double_jet_8659301379072772819 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659439917537872595 : std_logic;
    signal double_jet_8659444315584383699 : std_logic;
    signal double_jet_8659446377168685779 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_14585778097856672575 : std_logic;
    signal double_mu_14585796862184301375 : std_logic;
    signal double_mu_16961145543694661636 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_mu_16961160005400950788 : std_logic;
    signal double_tau_14808338292319009533 : std_logic;
    signal double_tau_15233202657361500387 : std_logic;
    signal double_tau_3279123247861152510 : std_logic;
    signal double_tau_7890809267362282238 : std_logic;
    signal quad_jet_2825463805626214580 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_1139639 : std_logic;
    signal single_eg_12507428088042853440 : std_logic;
    signal single_eg_12507579852048143424 : std_logic;
    signal single_eg_12507579852056532032 : std_logic;
    signal single_eg_12507579852182361152 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873076 : std_logic;
    signal single_eg_145873077 : std_logic;
    signal single_eg_145873079 : std_logic;
    signal single_eg_145873200 : std_logic;
    signal single_eg_145873203 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873208 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_eg_145873330 : std_logic;
    signal single_eg_145873332 : std_logic;
    signal single_eg_145873334 : std_logic;
    signal single_eg_145873336 : std_logic;
    signal single_eg_145873456 : std_logic;
    signal single_eg_145873461 : std_logic;
    signal single_eg_6872943369141609713 : std_logic;
    signal single_eg_6872945568164865265 : std_logic;
    signal single_eg_6872947767188120817 : std_logic;
    signal single_eg_6872949966211376369 : std_logic;
    signal single_eg_6872952165234631921 : std_logic;
    signal single_eg_6873084106629965041 : std_logic;
    signal single_eg_6873086305653220593 : std_logic;
    signal single_eg_6873088504676476145 : std_logic;
    signal single_jet_156330548 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_jet_5974006375341702652 : std_logic;
    signal single_jet_5974144913806802428 : std_logic;
    signal single_jet_5974147112830057980 : std_logic;
    signal single_jet_5974216382062607868 : std_logic;
    signal single_jet_5974285651295157756 : std_logic;
    signal single_jet_5974354920527707644 : std_logic;
    signal single_mu_11649248473972557216 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;
    signal single_mu_17545683093852819909 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_mu_17545685224156598725 : std_logic;
    signal single_mu_17545685275696206277 : std_logic;
    signal single_mu_17545685310055944645 : std_logic;
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
    signal single_tau_3484215725702552004 : std_logic;
    signal triple_jet_7930354149017105525 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
    signal triple_mu_3324682852515662879 : std_logic;
    signal triple_mu_3324692885559266335 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu12 : std_logic;
    signal l1_single_mu14 : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_single_mu20 : std_logic;
    signal l1_single_mu25 : std_logic;
    signal l1_single_mu14er : std_logic;
    signal l1_single_mu16er : std_logic;
    signal l1_single_mu18er : std_logic;
    signal l1_single_mu20er : std_logic;
    signal l1_single_mu22er : std_logic;
    signal l1_single_mu25er : std_logic;
    signal l1_single_mu30er : std_logic;
    signal l1_double_mu_open : std_logic;
    signal l1_double_mu_10_open : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_double_mu_13_6 : std_logic;
    signal l1_double_mu0er1p6_d_eta_max1p8_os : std_logic;
    signal l1_triple_mu0 : std_logic;
    signal l1_triple_mu_5_5_3 : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg10 : std_logic;
    signal l1_single_eg15 : std_logic;
    signal l1_single_eg24 : std_logic;
    signal l1_single_eg28 : std_logic;
    signal l1_single_eg30 : std_logic;
    signal l1_single_eg34 : std_logic;
    signal l1_single_eg40 : std_logic;
    signal l1_single_eg45 : std_logic;
    signal l1_single_iso_eg18 : std_logic;
    signal l1_single_iso_eg20 : std_logic;
    signal l1_single_iso_eg20er : std_logic;
    signal l1_single_iso_eg22er : std_logic;
    signal l1_single_iso_eg24er : std_logic;
    signal l1_single_iso_eg26er : std_logic;
    signal l1_single_iso_eg28er : std_logic;
    signal l1_single_iso_eg30er : std_logic;
    signal l1_single_iso_eg34er : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_double_jet_c40 : std_logic;
    signal l1_double_jet_c80 : std_logic;
    signal l1_double_jet_c112 : std_logic;
    signal l1_triple_jet_84_68_48_vbf : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_quad_jet_c50 : std_logic;
    signal l1_single_tau120er : std_logic;
    signal l1_double_iso_tau30er : std_logic;
    signal l1_double_tau50er : std_logic;
    signal l1_htt120 : std_logic;
    signal l1_htt200 : std_logic;
    signal l1_htt240 : std_logic;
    signal l1_htt280 : std_logic;
    signal l1_htt320 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_htm50 : std_logic;
    signal l1_htm120 : std_logic;
    signal l1_htm140 : std_logic;
    signal l1_ett25 : std_logic;
    signal l1_etm30 : std_logic;
    signal l1_etm50 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_etm120 : std_logic;
    signal l1_mu5_eg15 : std_logic;
    signal l1_mu5_eg20 : std_logic;
    signal l1_mu5_eg23 : std_logic;
    signal l1_mu5_iso_eg18 : std_logic;
    signal l1_mu5_iso_eg20 : std_logic;
    signal l1_mu12_eg10 : std_logic;
    signal l1_mu20_eg10 : std_logic;
    signal l1_mu20_eg17 : std_logic;
    signal l1_mu23_iso_eg10 : std_logic;
    signal l1_mu23_eg10 : std_logic;
    signal l1_mu16er_tau20er : std_logic;
    signal l1_mu16er_tau24er : std_logic;
    signal l1_mu18er_tau20er : std_logic;
    signal l1_mu18er_tau24er : std_logic;
    signal l1_mu18er_iso_tau26er : std_logic;
    signal l1_mu20er_iso_tau26er : std_logic;
    signal l1_double_mu7_eg14 : std_logic;
    signal l1_double_mu7_eg7 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_mu3_jet_c60_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_mu6_htt200 : std_logic;
    signal l1_eg27er_htt200 : std_logic;
    signal l1_jet32_double_mu_10_0_d_phi_jet_mu0_max0p4_d_phi_mu_mu_min1p0 : std_logic;
    signal l1_jet32_mu0_eg10_d_phi_jet_mu_max0p4_d_phi_mu_eg_min1p0 : std_logic;
    signal l1_mu10er_etm30 : std_logic;
    signal l1_mu10er_etm50 : std_logic;
    signal l1_mu14er_etm30 : std_logic;
    signal l1_htm60_htt260 : std_logic;
    signal l1_double_eg_22_15 : std_logic;
    signal l1_mu20_eg15 : std_logic;
    signal l1_mu3_jet_c120_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_double_jet8_forward_backward : std_logic;
    signal l1_double_jet12_forward_backward : std_logic;
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_eg32 : std_logic;
    signal l1_single_eg36 : std_logic;
    signal l1_single_eg38 : std_logic;
    signal l1_single_iso_eg32er : std_logic;
    signal l1_double_iso_tau33er : std_logic;
    signal l1_double_iso_tau35er : std_logic;
    signal l1_iso_eg22er_iso_tau26er_d_eta_min0p2 : std_logic;
    signal l1_iso_eg18er_iso_tau24er_d_eta_min0p2 : std_logic;
    signal l1_etm75_jet60_d_phi_min0p4 : std_logic;
    signal l1_mu20_iso_eg6 : std_logic;
    signal l1_mu22er_iso_tau26er : std_logic;
    signal l1_mu25er_iso_tau26er : std_logic;
    signal l1_etm110 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu6 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu10 : std_logic;
    signal l1_single_jet4 : std_logic;

-- ========================================================