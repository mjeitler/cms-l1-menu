-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_dev_r5

-- Unique ID of L1 Trigger Menu:
-- a9c22674-c07e-4484-be32-d1f0726031c7

-- Unique ID of firmware implementation:
-- 38c2787b-f3a1-48e6-b3f8-b7625293f15a

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
    signal single_ext_1189548080491112364 : std_logic;
    signal single_ext_6102799243448260461 : std_logic;
    signal single_ext_6909925150529645277 : std_logic;
    signal single_ext_6909925150529645278 : std_logic;
    signal single_ext_6909925150529645533 : std_logic;
    signal single_ext_6909925150529645534 : std_logic;
    signal single_ext_9794008929098471889 : std_logic;
    signal single_ext_9794008929098471890 : std_logic;
    signal single_ext_9794008929098472145 : std_logic;
    signal single_ext_9794008929098472146 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
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
    signal single_ett_18699590325 : std_logic;
    signal single_ett_18699590576 : std_logic;
    signal single_ett_18699590581 : std_logic;
    signal single_htt_2496626710576 : std_logic;
    signal single_htt_2496626711216 : std_logic;
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727216 : std_logic;
    signal single_htt_2496626727472 : std_logic;
    signal single_htt_2496626727600 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626727984 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal single_htt_2496626743856 : std_logic;
    signal calo_calo_correlation_12099677872530783800 : std_logic;
    signal invariant_mass_14024937077327807660 : std_logic;
    signal invariant_mass_14462129420734703062 : std_logic;
    signal invariant_mass_14462129420738930134 : std_logic;
    signal muon_muon_correlation_12923126501326425857 : std_logic;
    signal double_eg_13783532606430824098 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367831859864844127 : std_logic;
    signal double_eg_14367840655957867231 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_10840719965249128790 : std_logic;
    signal double_jet_15903572090988376162 : std_logic;
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
    signal double_jet_8659301241633819347 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585786515326686015 : std_logic;
    signal double_mu_16961157256621881348 : std_logic;
    signal double_tau_15233202657361500387 : std_logic;
    signal double_tau_5584966257611717374 : std_logic;
    signal quad_jet_17630949366336433287 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_9244738805910375678 : std_logic;
    signal single_eg_9244741004933631230 : std_logic;
    signal single_eg_9244743203956886782 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_20010310832 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_5967545309707548871 : std_logic;
    signal single_jet_5967545310244419783 : std_logic;
    signal single_jet_5967545344469940423 : std_logic;
    signal single_jet_5967545344872593607 : std_logic;
    signal single_jet_5974144913806802428 : std_logic;
    signal single_jet_5974216382062607868 : std_logic;
    signal single_jet_5974354920527707644 : std_logic;
    signal single_mu_1272496 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_17494117756195063635 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683111032689093 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_17545683162572296645 : std_logic;
    signal single_tau_12210388642533153582 : std_logic;
    signal single_tau_3484211327656040900 : std_logic;
    signal triple_jet_10368473969177751178 : std_logic;
    signal triple_jet_1776207310752122438 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
    signal triple_mu_3324685188977871903 : std_logic;
    signal triple_mu_3324694397387754527 : std_logic;

-- Signal definition for algorithms names
    signal l1_single_mu_cosmics : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu16 : std_logic;
    signal l1_single_mu18 : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu_12_5 : std_logic;
    signal l1_triple_mu_4_4_4 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_22_10 : std_logic;
    signal l1_double_eg_24_17 : std_logic;
    signal l1_single_tau100er2p1 : std_logic;
    signal l1_double_tau50er2p1 : std_logic;
    signal l1_double_iso_tau34er2p1 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet90 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_double_jet60er3p0 : std_logic;
    signal l1_double_jet112er3p0 : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_htt200er : std_logic;
    signal l1_htt220er : std_logic;
    signal l1_htt240er : std_logic;
    signal l1_htt255er : std_logic;
    signal l1_htt270er : std_logic;
    signal l1_htt280er : std_logic;
    signal l1_htt300er : std_logic;
    signal l1_htt340er : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm80 : std_logic;
    signal l1_etm85 : std_logic;
    signal l1_etm90 : std_logic;
    signal l1_etm95 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_etmhf70 : std_logic;
    signal l1_etmhf80 : std_logic;
    signal l1_etmhf90 : std_logic;
    signal l1_etmhf100 : std_logic;
    signal l1_etmhf110 : std_logic;
    signal l1_etmhf120 : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_mu_open_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet20er3p0_not_bptx_or : std_logic;
    signal l1_single_jet20er3p0_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet43er3p0_not_bptx_or_3_bx : std_logic;
    signal l1_single_jet46er3p0_not_bptx_or_3_bx : std_logic;
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
    signal l1_double_jet60er3p0_etm70 : std_logic;
    signal l1_double_jet60er3p0_etm80 : std_logic;
    signal l1_double_jet60er3p0_etm90 : std_logic;
    signal l1_double_jet60er3p0_etm100 : std_logic;
    signal l1_double_eg_iso24_10 : std_logic;
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
    signal l1_double_mu4p5_sq_os_d_r_max1p2 : std_logic;
    signal l1_triple_mu_5_3_0_double_mu_5_3_os_mass_max17 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_first_bunch_in_train : std_logic;
    signal l1_first_bunch_after_train : std_logic;
    signal l1_mu6_htt200er : std_logic;
    signal l1_mu8_htt150er : std_logic;
    signal l1_eg27er2p1_htt200er : std_logic;
    signal l1_double_jet60er3p0_etm60 : std_logic;
    signal l1_double_mu0_etm40 : std_logic;
    signal l1_double_mu0_etm55 : std_logic;
    signal l1_double_mu0_etm60 : std_logic;
    signal l1_double_mu0_etm65 : std_logic;
    signal l1_double_mu0_etm70 : std_logic;
    signal l1_double_eg6_htt255er : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_ett55_bptx_and : std_logic;
    signal l1_ett70_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_zero_bias : std_logic;
    signal l1_bptx_or : std_logic;

-- ========================================================