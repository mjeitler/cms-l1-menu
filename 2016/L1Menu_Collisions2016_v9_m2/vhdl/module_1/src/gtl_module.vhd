-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:

-- Module ID: 1

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v9

-- Unique ID of L1 Trigger Menu:
-- 03f50d03-cf60-45a1-822a-4d15788340c5

-- Unique ID of firmware implementation:
-- 3a565446-f39f-4249-9679-9aac1c894be2

-- Scale set:
-- 2016-04-27

-- VHDL producer version
-- v1.0.0

-- ========================================================

-- Version-history:
-- HB 2016-06-29: v0.0.11: Added BGo "test-enable" not synchronized (!) occures at bx=~3300 (used to suppress counting algos caused by calibration trigger at bx=3490).
--                         Inserted new esums quantities (ETTEM and ETMHF).
-- HB 2016-04-22: v0.0.10: Implemented min_bias_hf_conditions.vhd for minimum bias trigger conditions for low-pileup-run in May 2016.
--                         Updated gtl_fdl_wrapper.vhd and p_m_2_bx_pipeline.vhd for minimum bias trigger objects.
-- HB 2016-04-07: v0.0.9: Cleaned-up typing in muon_muon_correlation_condition.vhd (D_S_I_MUON_V2 instead of D_S_I_MUON in some lines).

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use work.gtl_pkg.all;

entity gtl_module is
    port(
        lhc_clk : in std_logic;
        eg_data : in calo_objects_array(0 to NR_EG_OBJECTS-1);
        jet_data : in calo_objects_array(0 to NR_JET_OBJECTS-1);
        tau_data : in calo_objects_array(0 to NR_TAU_OBJECTS-1);
        ett_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        ht_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        etm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        htm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
        mbt1hfp_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt1hfm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt0hfp_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        mbt0hfm_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
        muon_data : in muon_objects_array(0 to NR_MUON_OBJECTS-1);
        external_conditions : in std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
        algo_o : out std_logic_vector(NR_ALGOS-1 downto 0));
end gtl_module;

architecture rtl of gtl_module is
    constant external_conditions_pipeline_stages: natural := 2; -- pipeline stages for "External conditions" to get same pipeline to algos as conditions

-- HB 2016-03-08: "workaraound" for VHDL-Producer output
    constant NR_MU_OBJECTS: positive := NR_MUON_OBJECTS;

--     signal muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2 : muon_objects_array(0 to NR_MUON_OBJECTS-1);
    signal mu_bx_p2, mu_bx_p1, mu_bx_0, mu_bx_m1, mu_bx_m2 : muon_objects_array(0 to NR_MUON_OBJECTS-1);
    signal eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2 : calo_objects_array(0 to NR_EG_OBJECTS-1);
    signal jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2 : calo_objects_array(0 to NR_JET_OBJECTS-1);
    signal tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2 : calo_objects_array(0 to NR_TAU_OBJECTS-1);
    signal ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2015-04-28: changed for "htt" - object type from TME [string(1 to 3)] in esums_conditions.vhd
    signal htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
    signal mbt1hfp_bx_p2, mbt1hfp_bx_p1, mbt1hfp_bx_0, mbt1hfp_bx_m1, mbt1hfp_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt1hfm_bx_p2, mbt1hfm_bx_p1, mbt1hfm_bx_0, mbt1hfm_bx_m1, mbt1hfm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt0hfp_bx_p2, mbt0hfp_bx_p1, mbt0hfp_bx_0, mbt0hfp_bx_m1, mbt0hfp_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal mbt0hfm_bx_p2, mbt0hfm_bx_p1, mbt0hfm_bx_0, mbt0hfm_bx_m1, mbt0hfm_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
    signal ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

--     signal ext_cond_bx_p2_pipe, ext_cond_bx_p1_pipe, ext_cond_bx_0_pipe, ext_cond_bx_m1_pipe, ext_cond_bx_m2_pipe : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

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
    signal single_ext_13954212677346429137 : std_logic;
    signal single_ext_14414193171404190569 : std_logic;
    signal single_ext_14692508302784859112 : std_logic;
    signal single_ext_14715923867298343304 : std_logic;
    signal single_ext_15455824636181887404 : std_logic;
    signal single_ext_15455824636181887405 : std_logic;
    signal single_ext_15455824636181887660 : std_logic;
    signal single_ext_15455824636181887661 : std_logic;
    signal single_ext_17118203077108929635 : std_logic;
    signal single_ext_17561531836164454591 : std_logic;
    signal single_ext_17561531836164454592 : std_logic;
    signal single_ext_17561531836164454847 : std_logic;
    signal single_ext_17561531836164454848 : std_logic;
    signal single_ext_17696838439890921499 : std_logic;
    signal single_ext_17833638493488257651 : std_logic;
    signal single_ext_17882415701990092889 : std_logic;
    signal single_ext_2629888000553438421 : std_logic;
    signal single_ext_6395198100430131034 : std_logic;
    signal single_ext_6873400283626490434 : std_logic;
    signal single_ext_6912739140295604792 : std_logic;
    signal single_ext_6926915327998939228 : std_logic;
    signal single_ext_7332905005558692114 : std_logic;
    signal single_ext_7332905005558692115 : std_logic;
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
    signal single_etm_2393532815408 : std_logic;
    signal single_etm_2393532815413 : std_logic;
    signal single_etm_2393532815541 : std_logic;
    signal single_htm_19504782256 : std_logic;
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
    signal single_htt_2496626726960 : std_logic;
    signal single_htt_2496626727605 : std_logic;
    signal single_htt_2496626727856 : std_logic;
    signal single_htt_2496626743344 : std_logic;
    signal calo_calo_correlation_14500771630165735872 : std_logic;
    signal calo_calo_correlation_2085349615869404806 : std_logic;
    signal calo_muon_correlation_16240387826857744385 : std_logic;
    signal invariant_mass_14462129420734703062 : std_logic;
    signal muon_muon_correlation_16040223250608453060 : std_logic;
    signal muon_muon_correlation_7972376774213455602 : std_logic;
    signal muon_muon_correlation_8772456668275224612 : std_logic;
    signal double_eg_14367260113818400607 : std_logic;
    signal double_eg_14367282104050956127 : std_logic;
    signal double_eg_14367290900143979231 : std_logic;
    signal double_eg_14367295298190490335 : std_logic;
    signal double_eg_14367823063771822943 : std_logic;
    signal double_eg_14367831859864844383 : std_logic;
    signal double_eg_14367836257911355231 : std_logic;
    signal double_eg_14367845054004377695 : std_logic;
    signal double_eg_8902241742241126126 : std_logic;
    signal double_jet_15894421920862285922 : std_logic;
    signal double_jet_15912440717418279010 : std_logic;
    signal double_jet_8281320350476519461 : std_logic;
    signal double_jet_8659228673866386131 : std_logic;
    signal double_jet_8659301241633819347 : std_logic;
    signal double_jet_8659374977632357075 : std_logic;
    signal double_jet_8659513516097456851 : std_logic;
    signal double_jet_8659515749480450771 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585796862184301375 : std_logic;
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
    signal single_eg_1139634 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_1139639 : std_logic;
    signal single_eg_14262501742662192051 : std_logic;
    signal single_eg_14262501742930627507 : std_logic;
    signal single_eg_145873076 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873206 : std_logic;
    signal single_eg_6872943369141609713 : std_logic;
    signal single_eg_6872945568164865265 : std_logic;
    signal single_eg_6872947767188120817 : std_logic;
    signal single_eg_6872949966211376369 : std_logic;
    signal single_eg_6872952165234631921 : std_logic;
    signal single_eg_6873084106629965041 : std_logic;
    signal single_eg_6873086305653220593 : std_logic;
    signal single_eg_6873088504676476145 : std_logic;
    signal single_jet_15014918520304220377 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_2561319655728 : std_logic;
    signal single_jet_2561319656112 : std_logic;
    signal single_jet_2561319656240 : std_logic;
    signal single_jet_2561319656496 : std_logic;
    signal single_jet_2561319671856 : std_logic;
    signal single_jet_5967545293332986055 : std_logic;
    signal single_jet_5967545309707548871 : std_logic;
    signal single_jet_5967545344067287239 : std_logic;
    signal single_jet_5967545378427025607 : std_logic;
    signal single_jet_5974144913806802428 : std_logic;
    signal single_jet_5974216382062607868 : std_logic;
    signal single_jet_5974354920527707644 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293122775847365 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_14769293157135585733 : std_logic;
    signal single_mu_16260934492399787300 : std_logic;
    signal single_mu_17545683021081726533 : std_logic;
    signal single_mu_17545683025133343173 : std_logic;
    signal single_mu_17545683128212558277 : std_logic;
    signal single_mu_17545685258516337093 : std_logic;
    signal single_mu_17545687423179854277 : std_logic;
    signal single_tau_16608844133906550600 : std_logic;
    signal single_tau_22686292658 : std_logic;
    signal single_tau_3484211327656040900 : std_logic;
    signal triple_eg_4430569450691365292 : std_logic;
    signal triple_eg_4430569691209534124 : std_logic;
    signal triple_jet_7932644363018286197 : std_logic;
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
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg18 : std_logic;
    signal l1_single_eg26 : std_logic;
    signal l1_single_iso_eg20er : std_logic;
    signal l1_single_iso_eg22er : std_logic;
    signal l1_single_iso_eg24er : std_logic;
    signal l1_single_iso_eg26er : std_logic;
    signal l1_single_iso_eg28er : std_logic;
    signal l1_single_iso_eg30er : std_logic;
    signal l1_single_iso_eg34er : std_logic;
    signal l1_double_eg_15_10 : std_logic;
    signal l1_double_eg_18_17 : std_logic;
    signal l1_double_eg_20_18 : std_logic;
    signal l1_double_eg_23_10 : std_logic;
    signal l1_triple_eg_14_10_8 : std_logic;
    signal l1_triple_eg_18_17_8 : std_logic;
    signal l1_single_jet60 : std_logic;
    signal l1_single_jet120 : std_logic;
    signal l1_single_jet150 : std_logic;
    signal l1_single_jet160 : std_logic;
    signal l1_single_jet180 : std_logic;
    signal l1_single_jet200 : std_logic;
    signal l1_double_jet_c50 : std_logic;
    signal l1_double_jet_c60 : std_logic;
    signal l1_double_jet_c100 : std_logic;
    signal l1_double_jet_c120 : std_logic;
    signal l1_triple_jet_92_76_64_vbf : std_logic;
    signal l1_quad_jet_c40 : std_logic;
    signal l1_quad_jet_c60 : std_logic;
    signal l1_single_tau80er : std_logic;
    signal l1_single_tau100er : std_logic;
    signal l1_double_iso_tau28er : std_logic;
    signal l1_double_iso_tau32er : std_logic;
    signal l1_htt160 : std_logic;
    signal l1_htt200 : std_logic;
    signal l1_htt255 : std_logic;
    signal l1_htt270 : std_logic;
    signal l1_htt300 : std_logic;
    signal l1_htm70 : std_logic;
    signal l1_htm100 : std_logic;
    signal l1_htm130 : std_logic;
    signal l1_htm150 : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_etm40 : std_logic;
    signal l1_etm60 : std_logic;
    signal l1_etm70 : std_logic;
    signal l1_etm100 : std_logic;
    signal l1_double_mu7_eg14 : std_logic;
    signal l1_double_mu7_eg7 : std_logic;
    signal l1_mu6_double_eg17 : std_logic;
    signal l1_mu6_double_eg10 : std_logic;
    signal l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 : std_logic;
    signal l1_mu6_htt200 : std_logic;
    signal l1_mu8_htt150 : std_logic;
    signal l1_eg27er_htt200 : std_logic;
    signal l1_eg25er_htt125 : std_logic;
    signal l1_double_eg6_htt255 : std_logic;
    signal l1_quad_jet_c36_tau52 : std_logic;
    signal l1_double_jet_c60_etm60 : std_logic;
    signal l1_mu0er_etm40 : std_logic;
    signal l1_mu0er_etm55 : std_logic;
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
    signal l1_single_iso_eg32er : std_logic;
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
    signal l1_double_jet30_mj30j30_400_mu6 : std_logic;
    signal l1_double_jet30_mj30j30_400_mu10 : std_logic;
    signal l1_ett55_bptx_and : std_logic;
    signal l1_ett75_bptx_and : std_logic;
    signal l1_castor_gap_bptx_and : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_halo_muon_bptx_and : std_logic;
    signal l1_castor_halo_muon : std_logic;

-- ==== Inserted by TME - end ===============================================================================================================

begin

p_m_2_bx_pipeline_i: entity work.p_m_2_bx_pipeline
    port map(
        lhc_clk,
--         muon_data, muon_bx_p2, muon_bx_p1, muon_bx_0, muon_bx_m1, muon_bx_m2,
        muon_data, mu_bx_p2, mu_bx_p1, mu_bx_0, mu_bx_m1, mu_bx_m2,
        eg_data, eg_bx_p2, eg_bx_p1, eg_bx_0, eg_bx_m1, eg_bx_m2,
        jet_data, jet_bx_p2, jet_bx_p1, jet_bx_0, jet_bx_m1, jet_bx_m2,
        tau_data, tau_bx_p2, tau_bx_p1, tau_bx_0, tau_bx_m1, tau_bx_m2,
        ett_data, ett_bx_p2, ett_bx_p1, ett_bx_0, ett_bx_m1, ett_bx_m2,
        ht_data, htt_bx_p2, htt_bx_p1, htt_bx_0, htt_bx_m1, htt_bx_m2,
        etm_data, etm_bx_p2, etm_bx_p1, etm_bx_0, etm_bx_m1, etm_bx_m2,
        htm_data, htm_bx_p2, htm_bx_p1, htm_bx_0, htm_bx_m1, htm_bx_m2,
-- ****************************************************************************************
-- HB 2016-04-18: updates for "min bias trigger" objects (quantities) for Low-pileup-run May 2016
	mbt1hfp_data, mbt1hfp_bx_p2, mbt1hfp_bx_p1, mbt1hfp_bx_0, mbt1hfp_bx_m1, mbt1hfp_bx_m2,
	mbt1hfm_data, mbt1hfm_bx_p2, mbt1hfm_bx_p1, mbt1hfm_bx_0, mbt1hfm_bx_m1, mbt1hfm_bx_m2,
	mbt0hfp_data, mbt0hfp_bx_p2, mbt0hfp_bx_p1, mbt0hfp_bx_0, mbt0hfp_bx_m1, mbt0hfp_bx_m2,
	mbt0hfm_data, mbt0hfm_bx_p2, mbt0hfm_bx_p1, mbt0hfm_bx_0, mbt0hfm_bx_m1, mbt0hfm_bx_m2,
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
        external_conditions, ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int
    );

-- Parameterized pipeline stages for External conditions, actually 2 stages (fixed) in conditions, see "constant external_conditions_pipeline_stages ..."
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
ext_cond_pipe_p: process(lhc_clk, ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int)
    type ext_cond_pipe_array is array (0 to external_conditions_pipeline_stages+1) of std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    variable ext_cond_bx_p2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_p1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_0_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m1_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    variable ext_cond_bx_m2_pipe_temp : ext_cond_pipe_array := (others => (others => '0'));
    begin
        ext_cond_bx_p2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p2_int;
        ext_cond_bx_p1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_p1_int;
        ext_cond_bx_0_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_0_int;
        ext_cond_bx_m1_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m1_int;
        ext_cond_bx_m2_pipe_temp(external_conditions_pipeline_stages+1) := ext_cond_bx_m2_int;
        if (external_conditions_pipeline_stages > 0) then
            if (lhc_clk'event and (lhc_clk = '1') ) then
                ext_cond_bx_p2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p2_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_p1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_p1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_0_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_0_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m1_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m1_pipe_temp(1 to external_conditions_pipeline_stages+1);
                ext_cond_bx_m2_pipe_temp(0 to external_conditions_pipeline_stages) := ext_cond_bx_m2_pipe_temp(1 to external_conditions_pipeline_stages+1);
            end if;
        end if;
        ext_cond_bx_p2 <= ext_cond_bx_p2_pipe_temp(1); -- used pipe_temp(1) instead of pipe_temp(0), to prevent warnings in compilation
        ext_cond_bx_p1 <= ext_cond_bx_p1_pipe_temp(1);
        ext_cond_bx_0 <= ext_cond_bx_0_pipe_temp(1);
        ext_cond_bx_m1 <= ext_cond_bx_m1_pipe_temp(1);
        ext_cond_bx_m2 <= ext_cond_bx_m2_pipe_temp(1);
end process;

-- ==== Inserted by TME - begin =============================================================================================================

-- External condition assignment
    single_ext_10104897634845317422 <= ext_cond_bx_0(35); -- single_ext_10104897634845317422
    single_ext_10371607390599051624 <= ext_cond_bx_0(32); -- single_ext_10371607390599051624
    single_ext_13954212677346429137 <= ext_cond_bx_0(36); -- single_ext_13954212677346429137
    single_ext_14414193171404190569 <= ext_cond_bx_0(3); -- single_ext_14414193171404190569
    single_ext_14692508302784859112 <= ext_cond_bx_0(39); -- single_ext_14692508302784859112
    single_ext_14715923867298343304 <= ext_cond_bx_0(21); -- single_ext_14715923867298343304
    single_ext_15455824636181887404 <= ext_cond_bx_p1(32); -- single_ext_15455824636181887404
    single_ext_15455824636181887405 <= ext_cond_bx_p2(32); -- single_ext_15455824636181887405
    single_ext_15455824636181887660 <= ext_cond_bx_m1(32); -- single_ext_15455824636181887660
    single_ext_15455824636181887661 <= ext_cond_bx_m2(32); -- single_ext_15455824636181887661
    single_ext_17118203077108929635 <= ext_cond_bx_0(2); -- single_ext_17118203077108929635
    single_ext_17561531836164454591 <= ext_cond_bx_p1(35); -- single_ext_17561531836164454591
    single_ext_17561531836164454592 <= ext_cond_bx_p2(35); -- single_ext_17561531836164454592
    single_ext_17561531836164454847 <= ext_cond_bx_m1(35); -- single_ext_17561531836164454847
    single_ext_17561531836164454848 <= ext_cond_bx_m2(35); -- single_ext_17561531836164454848
    single_ext_17696838439890921499 <= ext_cond_bx_0(37); -- single_ext_17696838439890921499
    single_ext_17833638493488257651 <= ext_cond_bx_0(20); -- single_ext_17833638493488257651
    single_ext_17882415701990092889 <= ext_cond_bx_0(38); -- single_ext_17882415701990092889
    single_ext_2629888000553438421 <= ext_cond_bx_0(19); -- single_ext_2629888000553438421
    single_ext_6395198100430131034 <= ext_cond_bx_0(33); -- single_ext_6395198100430131034
    single_ext_6873400283626490434 <= ext_cond_bx_0(23); -- single_ext_6873400283626490434
    single_ext_6912739140295604792 <= ext_cond_bx_0(22); -- single_ext_6912739140295604792
    single_ext_6926915327998939228 <= ext_cond_bx_0(34); -- single_ext_6926915327998939228
    single_ext_7332905005558692114 <= ext_cond_bx_0(0); -- single_ext_7332905005558692114
    single_ext_7332905005558692115 <= ext_cond_bx_0(1); -- single_ext_7332905005558692115

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
    port map(mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions
mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
    mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
    mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
end generate;
jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
    jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
    jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
end generate;
tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
    tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
    tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
    tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
end generate;
eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
    eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
    eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
end generate;


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions
jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
    jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
end generate;


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
diff_jet_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_JET_OBJECTS, NR_JET_OBJECTS)
    port map(jet_eta_integer_bx_0, jet_eta_integer_bx_0, diff_jet_jet_bx_0_bx_0_eta_integer);
diff_jet_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_JET_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
    port map(jet_phi_integer_bx_0, jet_phi_integer_bx_0, diff_jet_jet_bx_0_bx_0_phi_integer);
jet_jet_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
        diff_jet_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_ETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_jet_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_DIFF_PHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate jet_jet_bx_0_bx_0_l2;
end generate jet_jet_bx_0_bx_0_l1;
diff_eg_tau_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS)
    port map(eg_eta_integer_bx_0, tau_eta_integer_bx_0, diff_eg_tau_bx_0_bx_0_eta_integer);
diff_eg_tau_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_EG_OBJECTS, NR_TAU_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
    port map(eg_phi_integer_bx_0, tau_phi_integer_bx_0, diff_eg_tau_bx_0_bx_0_phi_integer);
eg_tau_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_tau_bx_0_bx_0_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
        diff_eg_tau_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_ETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_eg_tau_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_DIFF_PHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate eg_tau_bx_0_bx_0_l2;
end generate eg_tau_bx_0_bx_0_l1;
diff_jet_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_JET_OBJECTS, NR_MU_OBJECTS)
    port map(jet_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_jet_mu_bx_0_bx_0_eta_integer);
diff_jet_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_JET_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
    port map(jet_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_jet_mu_bx_0_bx_0_phi_integer);
jet_mu_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        diff_jet_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_ETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_jet_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_DIFF_PHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate jet_mu_bx_0_bx_0_l2;
end generate jet_mu_bx_0_bx_0_l1;
diff_mu_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
    generic map(NR_MU_OBJECTS, NR_MU_OBJECTS)
    port map(mu_eta_integer_bx_0, mu_eta_integer_bx_0, diff_mu_mu_bx_0_bx_0_eta_integer);
diff_mu_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
    generic map(NR_MU_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
    port map(mu_phi_integer_bx_0, mu_phi_integer_bx_0, diff_mu_mu_bx_0_bx_0_phi_integer);
mu_mu_bx_0_bx_0_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        diff_mu_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_ETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        diff_mu_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_DIFF_PHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    end generate mu_mu_bx_0_bx_0_l2;
end generate mu_mu_bx_0_bx_0_l1;


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs
jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
    end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
    eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
        eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
        eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
    end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
        jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
    end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_14367260113818400607_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367260113818400607);


double_eg_14367282104050956127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367282104050956127);


double_eg_14367290900143979231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367290900143979231);


double_eg_14367295298190490335_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0024", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367295298190490335);


double_eg_14367823063771822943_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0028", X"0024", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367823063771822943);


double_eg_14367831859864844383_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0018", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367831859864844383);


double_eg_14367836257911355231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002E", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367836257911355231);


double_eg_14367845054004377695_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0032", X"0018", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_14367845054004377695);


double_eg_8902241742241126126_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, double_eg_8902241742241126126);


double_jet_15894421920862285922_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00C8", X"00C8", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_15894421920862285922);


double_jet_15912440717418279010_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00F0", X"00F0", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_15912440717418279010);


double_jet_8281320350476519461_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
        (false, false, true, true),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8281320350476519461);


double_jet_8659228673866386131_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659228673866386131);


double_jet_8659301241633819347_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659301241633819347);


double_jet_8659374977632357075_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0098", X"0080", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659374977632357075);


double_jet_8659513516097456851_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0080", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659513516097456851);


double_jet_8659515749480450771_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0098", X"0000", X"0000"),
        (false, false, true, true),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, double_jet_8659515749480450771);


double_tau_10196652277112847102_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0048", X"0048", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_10196652277112847102);


double_tau_14808338227894500078_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0038", X"0038", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_14808338227894500078);


double_tau_17539608616528615651_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"008C", X"008C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_17539608616528615651);


double_tau_5584966257611717374_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0044", X"0044", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_5584966257611717374);


double_tau_973280238110587646_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0040", X"0040", X"0000", X"0000"),
        (false, false, true, true),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, double_tau_973280238110587646);


quad_jet_2680186536839014580_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0048", X"0048", X"0048", X"0048"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quad_jet_2680186536839014580);


quad_jet_2751081844007168180_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quad_jet_2751081844007168180);


quad_jet_2899845767245260980_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0078", X"0078", X"0078", X"0078"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quad_jet_2899845767245260980);


single_eg_1139634_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0004", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_1139634);


single_eg_1139637_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000A", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_1139637);


single_eg_1139639_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_1139639);


single_eg_14262501742662192051_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_14262501742662192051);


single_eg_14262501742930627507_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_14262501742930627507);


single_eg_145873076_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"001C", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_145873076);


single_eg_145873080_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_145873080);


single_eg_145873206_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_145873206);


single_eg_6872943369141609713_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872943369141609713);


single_eg_6872945568164865265_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872945568164865265);


single_eg_6872947767188120817_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872947767188120817);


single_eg_6872949966211376369_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872949966211376369);


single_eg_6872952165234631921_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6872952165234631921);


single_eg_6873084106629965041_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6873084106629965041);


single_eg_6873086305653220593_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6873086305653220593);


single_eg_6873088504676476145_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_6873088504676476145);


single_jet_15014918520304220377_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_15014918520304220377);


single_jet_156330552_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_156330552);


single_jet_20010309810_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_20010309810);


single_jet_20010310448_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_20010310448);


single_jet_2561319655728_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_2561319655728);


single_jet_2561319656112_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"012C", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_2561319656112);


single_jet_2561319656240_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_2561319656240);


single_jet_2561319656496_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0168", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_2561319656496);


single_jet_2561319671856_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0190", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_2561319671856);


single_jet_5967545293332986055_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5967545293332986055);


single_jet_5967545309707548871_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5967545309707548871);


single_jet_5967545344067287239_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5967545344067287239);


single_jet_5967545378427025607_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5967545378427025607);


single_jet_5974144913806802428_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974144913806802428);


single_jet_5974216382062607868_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0098", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974216382062607868);


single_jet_5974354920527707644_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B8", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_5974354920527707644);


single_tau_16608844133906550600_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00A0", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_16608844133906550600);


single_tau_22686292658_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0068", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_22686292658);


single_tau_3484211327656040900_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00C8", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, single_tau_3484211327656040900);


triple_eg_4430569450691365292_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"001C", X"0014", X"0010", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, triple_eg_4430569450691365292);


triple_eg_4430569691209534124_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"0024", X"0022", X"0010", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, triple_eg_4430569691209534124);


triple_jet_7932644363018286197_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B8", X"0098", X"0080", X"0000"),
        (false, false, false, true),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triple_jet_7932644363018286197);


double_mu_14585777620730815295_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585777620730815295);


double_mu_14585796862184301375_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"000F", X"000F", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585796862184301375);


double_mu_16961154507842811908_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0017", X"0009", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_16961154507842811908);


double_mu_16961158905889323012_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"001F", X"000B", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_16961158905889323012);


double_mu_16961163853691648004_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0019", X"0011", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_16961163853691648004);


double_mu_18206240164090448142_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0015", X"0008", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_18206240164090448142);


single_mu_14769293018627052229_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293018627052229);


single_mu_14769293071236239813_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0007", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293071236239813);


single_mu_14769293122775847365_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"000D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293122775847365);


single_mu_14769293139955716549_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"000F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293139955716549);


single_mu_14769293157135585733_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0011", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293157135585733);


single_mu_16260934492399787300_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0001", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_16260934492399787300);


single_mu_17545683021081726533_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0015", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683021081726533);


single_mu_17545683025133343173_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0015", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683025133343173);


single_mu_17545683128212558277_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0021", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683128212558277);


single_mu_17545685258516337093_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"002D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545685258516337093);


single_mu_17545687423179854277_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"003D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545687423179854277);


triple_mu_3324683539710430239_i: entity work.muon_conditions_v3
    generic map(3, true,
        (X"000B", X"0001", X"0001", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triple_mu_3324683539710430239);


single_etm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475504);


single_etm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475637);


single_etm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475760);


single_etm_18699475765_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0082",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475765);


single_etm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475888);


single_etm_18699475893_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475893);


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_18699476149_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476149);


single_etm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815408);


single_etm_2393532815413_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00D2",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815413);


single_etm_2393532815541_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815541);


single_htm_19504782256_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782256);


single_htm_2496612030512_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030512);


single_htm_2496612030896_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030896);


single_htm_2496612031152_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612031152);


single_ett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590192);


single_ett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590320);


single_ett_18699590325_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"006E",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590325);


single_ett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590448);


single_ett_18699590576_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590576);


single_ett_18699590581_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0096",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590581);


single_htt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710837);


single_htt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711216);


single_htt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711344);


single_htt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626726960);


single_htt_2496626727605_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727605);


single_htt_2496626727856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"021C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727856);


single_htt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743344);


calo_calo_correlation_14500771630165735872_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        true, false, false, false,
        NR_EG_OBJECTS, true, EG_TYPE,
        X"0028",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        NR_TAU_OBJECTS, true, TAU_TYPE,
        X"0032",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_INV_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        calo_calo_correlation_14500771630165735872);

calo_calo_correlation_2085349615869404806_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        true, false, false, false,
        NR_EG_OBJECTS, true, EG_TYPE,
        X"002C",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"E",
        NR_TAU_OBJECTS, true, TAU_TYPE,
        X"0028",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        10.0, 0.2,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_TAU_DETA_DPHI_PRECISION,
        0.0, 0.0, EG_TAU_INV_MASS_PRECISION,
        EG_PT_VECTOR_WIDTH, TAU_PT_VECTOR_WIDTH, EG_TAU_COSH_COS_PRECISION, EG_TAU_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, eg_bx_0, tau_bx_0,
        diff_eg_tau_bx_0_bx_0_eta_vector, diff_eg_tau_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, tau_pt_vector_bx_0,
        eg_tau_bx_0_bx_0_cosh_deta_vector, eg_tau_bx_0_bx_0_cos_dphi_vector,
        calo_calo_correlation_2085349615869404806);

invariant_mass_14462129420734703062_i: entity work.calo_calo_correlation_condition
    generic map(
        true,
        false, false, false, true,
        NR_JET_OBJECTS, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        NR_JET_OBJECTS, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_JET_DETA_DPHI_PRECISION,
        98000000.0, 80000.0, JET_JET_INV_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_14462129420734703062);

calo_muon_correlation_16240387826857744385_i: entity work.calo_muon_correlation_condition
    generic map(
        true, true, false, false,
        NR_JET_OBJECTS, true, JET_TYPE,
        X"0020",
        false, X"0044",X"00BB",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0.4, 0.0,
        0.4, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
        JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, jet_bx_0, mu_bx_0,
        diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
        calo_muon_correlation_16240387826857744385);

muon_muon_correlation_16040223250608453060_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        true, false, false, false,
        true,
        X"0001",
        false, X"0093", X"016D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        false, X"0093",X"016D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_16040223250608453060);

muon_muon_correlation_7972376774213455602_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        true, false, false, false,
        true,
        X"0001",
        false, X"0081", X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        false, X"0081",X"017F",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_7972376774213455602);

muon_muon_correlation_8772456668275224612_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        true, false, false, false,
        true,
        X"0015",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        1.8, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        muon_muon_correlation_8772456668275224612);

single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt1_hfm_43640317006685873_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, single_mbt1_hfm_43640317006685873);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);


single_mbt1_hfp_43640317006686257_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, single_mbt1_hfp_43640317006686257);



-- Instantiations of algorithms

-- 0 L1_ZeroBias : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias <= single_ext_10371607390599051624;
algo(67) <= l1_zero_bias;

-- 2 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(95) <= l1_single_mu_open;

-- 3 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_14769293071236239813;
algo(20) <= l1_single_mu3;

-- 5 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_14769293139955716549;
algo(120) <= l1_single_mu7;

-- 8 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_single_mu16 <= single_mu_17545683128212558277;
algo(117) <= l1_single_mu16;

-- 11 L1_SingleMu22 : MU22[MU-QLTY_SNGL]
l1_single_mu22 <= single_mu_17545685258516337093;
algo(118) <= l1_single_mu22;

-- 13 L1_SingleMu30 : MU30[MU-QLTY_SNGL]
l1_single_mu30 <= single_mu_17545687423179854277;
algo(119) <= l1_single_mu30;

-- 14 L1_SingleMu10_LowQ : MU10[MU-QLTY_DBLE]
l1_single_mu10_low_q <= single_mu_17545683021081726533;
algo(116) <= l1_single_mu10_low_q;

-- 24 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(32) <= l1_double_mu0;

-- 26 L1_DoubleMu_10_3p5 : comb{MU10[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE]}
l1_double_mu_10_3p5 <= double_mu_18206240164090448142;
algo(56) <= l1_double_mu_10_3p5;

-- 27 L1_DoubleMu_11_4 : comb{MU11[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_double_mu_11_4 <= double_mu_16961154507842811908;
algo(57) <= l1_double_mu_11_4;

-- 30 L1_DoubleMu_15_5 : comb{MU15[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_15_5 <= double_mu_16961158905889323012;
algo(59) <= l1_double_mu_15_5;

-- 31 L1_DoubleMu_12_8 : comb{MU12[MU-QLTY_DBLE],MU8[MU-QLTY_DBLE]}
l1_double_mu_12_8 <= double_mu_16961163853691648004;
algo(58) <= l1_double_mu_12_8;

-- 32 L1_DoubleMu0er1p6_dEta_Max1p8 : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p6],MU0[MU-QLTY_DBLE,MU-ETA_1p6]}[DETA_MAX_1p8]
l1_double_mu0er1p6_d_eta_max1p8 <= muon_muon_correlation_16040223250608453060;
algo(7) <= l1_double_mu0er1p6_d_eta_max1p8;

-- 35 L1_DoubleMu_10_0_dEta_Max1p8 : dist{MU10[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[DETA_MAX_1p8]
l1_double_mu_10_0_d_eta_max1p8 <= muon_muon_correlation_8772456668275224612;
algo(8) <= l1_double_mu_10_0_d_eta_max1p8;

-- 39 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_1139637;
algo(101) <= l1_single_eg5;

-- 42 L1_SingleEG18 : EG18
l1_single_eg18 <= single_eg_145873080;
algo(62) <= l1_single_eg18;

-- 44 L1_SingleEG26 : EG26
l1_single_eg26 <= single_eg_145873206;
algo(63) <= l1_single_eg26;

-- 63 L1_SingleIsoEG20er : EG20[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg20er <= single_eg_6872943369141609713;
algo(102) <= l1_single_iso_eg20er;

-- 64 L1_SingleIsoEG22er : EG22[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg22er <= single_eg_6872945568164865265;
algo(103) <= l1_single_iso_eg22er;

-- 65 L1_SingleIsoEG24er : EG24[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg24er <= single_eg_6872947767188120817;
algo(104) <= l1_single_iso_eg24er;

-- 66 L1_SingleIsoEG26er : EG26[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg26er <= single_eg_6872949966211376369;
algo(105) <= l1_single_iso_eg26er;

-- 68 L1_SingleIsoEG28er : EG28[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg28er <= single_eg_6872952165234631921;
algo(106) <= l1_single_iso_eg28er;

-- 69 L1_SingleIsoEG30er : EG30[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg30er <= single_eg_6873084106629965041;
algo(107) <= l1_single_iso_eg30er;

-- 70 L1_SingleIsoEG34er : EG34[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg34er <= single_eg_6873088504676476145;
algo(109) <= l1_single_iso_eg34er;

-- 71 L1_DoubleEG_15_10 : comb{EG15,EG10}
l1_double_eg_15_10 <= double_eg_14367282104050956127;
algo(40) <= l1_double_eg_15_10;

-- 72 L1_DoubleEG_18_17 : comb{EG18,EG17}
l1_double_eg_18_17 <= double_eg_14367295298190490335;
algo(41) <= l1_double_eg_18_17;

-- 73 L1_DoubleEG_20_18 : comb{EG20,EG18}
l1_double_eg_20_18 <= double_eg_14367823063771822943;
algo(42) <= l1_double_eg_20_18;

-- 76 L1_DoubleEG_23_10 : comb{EG23,EG10}
l1_double_eg_23_10 <= double_eg_14367836257911355231;
algo(44) <= l1_double_eg_23_10;

-- 78 L1_TripleEG_14_10_8 : comb{EG14,EG10,EG8}
l1_triple_eg_14_10_8 <= triple_eg_4430569450691365292;
algo(23) <= l1_triple_eg_14_10_8;

-- 79 L1_TripleEG_18_17_8 : comb{EG18,EG17,EG8}
l1_triple_eg_18_17_8 <= triple_eg_4430569691209534124;
algo(24) <= l1_triple_eg_18_17_8;

-- 83 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(115) <= l1_single_jet60;

-- 85 L1_SingleJet120 : JET120
l1_single_jet120 <= single_jet_2561319655728;
algo(110) <= l1_single_jet120;

-- 87 L1_SingleJet150 : JET150
l1_single_jet150 <= single_jet_2561319656112;
algo(111) <= l1_single_jet150;

-- 88 L1_SingleJet160 : JET160
l1_single_jet160 <= single_jet_2561319656240;
algo(112) <= l1_single_jet160;

-- 90 L1_SingleJet180 : JET180
l1_single_jet180 <= single_jet_2561319656496;
algo(113) <= l1_single_jet180;

-- 91 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_2561319671856;
algo(114) <= l1_single_jet200;

-- 93 L1_DoubleJetC50 : comb{JET50[JET-ETA_CEN],JET50[JET-ETA_CEN]}
l1_double_jet_c50 <= double_jet_8659228673866386131;
algo(49) <= l1_double_jet_c50;

-- 94 L1_DoubleJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_double_jet_c60 <= double_jet_8659301241633819347;
algo(28) <= l1_double_jet_c60;

-- 96 L1_DoubleJetC100 : comb{JET100[JET-ETA_CEN],JET100[JET-ETA_CEN]}
l1_double_jet_c100 <= double_jet_15894421920862285922;
algo(47) <= l1_double_jet_c100;

-- 98 L1_DoubleJetC120 : comb{JET120[JET-ETA_CEN],JET120[JET-ETA_CEN]}
l1_double_jet_c120 <= double_jet_15912440717418279010;
algo(48) <= l1_double_jet_c120;

-- 101 L1_TripleJet_92_76_64_VBF : comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} OR (comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN]} AND JET64[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET92[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET76[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET92[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triple_jet_92_76_64_vbf <= triple_jet_7932644363018286197 or ( double_jet_8659515749480450771 and single_jet_5974144913806802428 ) or ( double_jet_8659513516097456851 and single_jet_5974216382062607868 ) or ( double_jet_8659374977632357075 and single_jet_5974354920527707644 );
algo(16) <= l1_triple_jet_92_76_64_vbf;

-- 102 L1_QuadJetC40 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_quad_jet_c40 <= quad_jet_2751081844007168180;
algo(1) <= l1_quad_jet_c40;

-- 104 L1_QuadJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quad_jet_c60 <= quad_jet_2899845767245260980;
algo(2) <= l1_quad_jet_c60;

-- 105 L1_SingleTau80er : TAU80[TAU-ETA_2p13]
l1_single_tau80er <= single_tau_16608844133906550600;
algo(122) <= l1_single_tau80er;

-- 106 L1_SingleTau100er : TAU100[TAU-ETA_2p13]
l1_single_tau100er <= single_tau_3484211327656040900;
algo(121) <= l1_single_tau100er;

-- 109 L1_DoubleIsoTau28er : comb{TAU28[TAU-ISO_0xE,TAU-ETA_2p13],TAU28[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau28er <= double_tau_14808338227894500078;
algo(52) <= l1_double_iso_tau28er;

-- 111 L1_DoubleIsoTau32er : comb{TAU32[TAU-ISO_0xE,TAU-ETA_2p13],TAU32[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau32er <= double_tau_973280238110587646;
algo(53) <= l1_double_iso_tau32er;

-- 116 L1_HTT160 : HTT160
l1_htt160 <= single_htt_2496626711344;
algo(133) <= l1_htt160;

-- 117 L1_HTT200 : HTT200
l1_htt200 <= single_htt_2496626726960;
algo(14) <= l1_htt200;

-- 120 L1_HTT255 : HTT255
l1_htt255 <= single_htt_2496626727605;
algo(26) <= l1_htt255;

-- 121 L1_HTT270 : HTT270
l1_htt270 <= single_htt_2496626727856;
algo(134) <= l1_htt270;

-- 123 L1_HTT300 : HTT300
l1_htt300 <= single_htt_2496626743344;
algo(135) <= l1_htt300;

-- 128 L1_HTM70 : HTM70
l1_htm70 <= single_htm_19504782256;
algo(132) <= l1_htm70;

-- 130 L1_HTM100 : HTM100
l1_htm100 <= single_htm_2496612030512;
algo(129) <= l1_htm100;

-- 132 L1_HTM130 : HTM130
l1_htm130 <= single_htm_2496612030896;
algo(130) <= l1_htm130;

-- 134 L1_HTM150 : HTM150
l1_htm150 <= single_htm_2496612031152;
algo(131) <= l1_htm150;

-- 136 L1_ETT40_BptxAND : ETT40 AND EXT_BPTX_plus_AND_minus.v0
l1_ett40_bptx_and <= single_ett_18699590192 and single_ext_10371607390599051624;
algo(71) <= l1_ett40_bptx_and;

-- 138 L1_ETM40 : ETM40
l1_etm40 <= single_etm_18699475504;
algo(31) <= l1_etm40;

-- 140 L1_ETM60 : ETM60
l1_etm60 <= single_etm_18699475760;
algo(36) <= l1_etm60;

-- 141 L1_ETM70 : ETM70
l1_etm70 <= single_etm_18699475888;
algo(39) <= l1_etm70;

-- 142 L1_ETM100 : ETM100
l1_etm100 <= single_etm_2393532815408;
algo(123) <= l1_etm100;

-- 166 L1_DoubleMu7_EG14 : comb{MU7[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]} AND EG14
l1_double_mu7_eg14 <= double_mu_14585796862184301375 and single_eg_145873076;
algo(17) <= l1_double_mu7_eg14;

-- 167 L1_DoubleMu7_EG7 : comb{MU7[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]} AND EG7
l1_double_mu7_eg7 <= double_mu_14585796862184301375 and single_eg_1139639;
algo(18) <= l1_double_mu7_eg7;

-- 168 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(10) <= l1_mu6_double_eg17;

-- 169 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(15) <= l1_mu6_double_eg10;

-- 170 L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET16[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_16240387826857744385;
algo(5) <= l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4;

-- 172 L1_Mu6_HTT200 : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200 <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(12) <= l1_mu6_htt200;

-- 173 L1_Mu8_HTT150 : MU8[MU-QLTY_SNGL] AND HTT150
l1_mu8_htt150 <= single_mu_14769293157135585733 and single_htt_2496626711216;
algo(61) <= l1_mu8_htt150;

-- 174 L1_EG27er_HTT200 : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er_htt200 <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(13) <= l1_eg27er_htt200;

-- 175 L1_EG25er_HTT125 : EG25[EG-ETA_2p13] AND HTT125
l1_eg25er_htt125 <= single_eg_14262501742662192051 and single_htt_2496626710837;
algo(50) <= l1_eg25er_htt125;

-- 176 L1_DoubleEG6_HTT255 : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255 <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(25) <= l1_double_eg6_htt255;

-- 177 L1_QuadJetC36_Tau52 : comb{JET36[JET-ETA_CEN],JET36[JET-ETA_CEN],JET36[JET-ETA_CEN],JET36[JET-ETA_CEN]} AND TAU52
l1_quad_jet_c36_tau52 <= quad_jet_2680186536839014580 and single_tau_22686292658;
algo(0) <= l1_quad_jet_c36_tau52;

-- 181 L1_DoubleJetC60_ETM60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]} AND ETM60
l1_double_jet_c60_etm60 <= double_jet_8659301241633819347 and single_etm_18699475760;
algo(27) <= l1_double_jet_c60_etm60;

-- 182 L1_Mu0er_ETM40 : MU0[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM40
l1_mu0er_etm40 <= single_mu_16260934492399787300 and single_etm_18699475504;
algo(29) <= l1_mu0er_etm40;

-- 183 L1_Mu0er_ETM55 : MU0[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM55
l1_mu0er_etm55 <= single_mu_16260934492399787300 and single_etm_18699475637;
algo(38) <= l1_mu0er_etm55;

-- 189 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND (NOT EXT_BPTX_plus_OR_minus.v0)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_10104897634845317422 );
algo(72) <= l1_single_mu_open_not_bptx_or;

-- 191 L1_SingleJetC20_NotBptxOR : JET20[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0)
l1_single_jet_c20_not_bptx_or <= single_jet_5967545309707548871 and ( not single_ext_10104897634845317422 );
algo(80) <= l1_single_jet_c20_not_bptx_or;

-- 192 L1_SingleEG2_BptxAND : EG2 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_10371607390599051624;
algo(64) <= l1_single_eg2_bptx_and;

-- 193 L1_ETT70_BptxAND : ETT70 AND EXT_BPTX_plus_AND_minus.v0
l1_ett70_bptx_and <= single_ett_18699590576 and single_ext_10371607390599051624;
algo(83) <= l1_ett70_bptx_and;

-- 194 L1_SingleJet8_BptxAND : JET8 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet8_bptx_and <= single_jet_156330552 and single_ext_10371607390599051624;
algo(98) <= l1_single_jet8_bptx_and;

-- 195 L1_SingleJet12_BptxAND : JET12 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_10371607390599051624;
algo(99) <= l1_single_jet12_bptx_and;

-- 196 L1_DoubleEG_22_12 : comb{EG22,EG12}
l1_double_eg_22_12 <= double_eg_14367831859864844383;
algo(43) <= l1_double_eg_22_12;

-- 199 L1_IsoEG22er_Tau20er_dEta_Min0p2 : dist{EG22[EG-ISO_0xE,EG-ETA_2p13],TAU20[TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg22er_tau20er_d_eta_min0p2 <= calo_calo_correlation_2085349615869404806;
algo(4) <= l1_iso_eg22er_tau20er_d_eta_min0p2;

-- 200 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_mu_open_not_bptx_or_3_bx <= single_mu_14769293018627052229 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(66) <= l1_single_mu_open_not_bptx_or_3_bx;

-- 201 L1_SingleJetC20_NotBptxOR_3BX : JET20[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_jet_c20_not_bptx_or_3_bx <= single_jet_5967545309707548871 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(82) <= l1_single_jet_c20_not_bptx_or_3_bx;

-- 202 L1_SingleJetC40_NotBptxOR_5BX : JET40[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_single_jet_c40_not_bptx_or_5_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(74) <= l1_single_jet_c40_not_bptx_or_5_bx;

-- 203 L1_SingleJetC40_NotBptxOR_3BX : JET40[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_jet_c40_not_bptx_or_3_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(88) <= l1_single_jet_c40_not_bptx_or_3_bx;

-- 206 L1_AlwaysTrue : EXT_BPTX_plus_AND_minus.v0 OR (NOT EXT_BPTX_plus_AND_minus.v0)
l1_always_true <= single_ext_10371607390599051624 or ( not single_ext_10371607390599051624 );
algo(100) <= l1_always_true;

-- 207 L1_BptxPlus : EXT_BPTX_plus.v0
l1_bptx_plus <= single_ext_6395198100430131034;
algo(146) <= l1_bptx_plus;

-- 208 L1_BptxMinus : EXT_BPTX_minus.v0
l1_bptx_minus <= single_ext_6926915327998939228;
algo(144) <= l1_bptx_minus;

-- 209 L1_BptxOR : EXT_BPTX_plus_OR_minus.v0
l1_bptx_or <= single_ext_10104897634845317422;
algo(73) <= l1_bptx_or;

-- 211 L1_ZeroBias_FirstCollidingBunch : EXT_BRIL_TRIG3_FstColBunch
l1_zero_bias_first_colliding_bunch <= single_ext_2629888000553438421;
algo(147) <= l1_zero_bias_first_colliding_bunch;

-- 214 L1_DoubleJet16_ForwardBackward : comb{JET16[JET-ETA_FWD_NEG],JET16[JET-ETA_FWD_POS]}
l1_double_jet16_forward_backward <= double_jet_8281320350476519461;
algo(46) <= l1_double_jet16_forward_backward;

-- 215 L1_Mu3_JetC16 : MU3[MU-QLTY_SNGL] AND JET16[JET-ETA_CEN]
l1_mu3_jet_c16 <= single_mu_14769293071236239813 and single_jet_5967545293332986055;
algo(21) <= l1_mu3_jet_c16;

-- 216 L1_Mu3_JetC60 : MU3[MU-QLTY_SNGL] AND JET60[JET-ETA_CEN]
l1_mu3_jet_c60 <= single_mu_14769293071236239813 and single_jet_5967545378427025607;
algo(22) <= l1_mu3_jet_c60;

-- 217 L1_Mu3_JetC120 : MU3[MU-QLTY_SNGL] AND JET120[JET-ETA_CEN]
l1_mu3_jet_c120 <= single_mu_14769293071236239813 and single_jet_15014918520304220377;
algo(19) <= l1_mu3_jet_c120;

-- 219 L1_IsolatedBunch : (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_isolated_bunch <= ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and single_ext_10371607390599051624 and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(96) <= l1_isolated_bunch;

-- 220 L1_BptxXOR : (EXT_BPTX_plus.v0 AND (NOT EXT_BPTX_minus.v0)) OR (EXT_BPTX_minus.v0 AND (NOT EXT_BPTX_plus.v0))
l1_bptx_xor <= ( single_ext_6395198100430131034 and ( not single_ext_6926915327998939228 ) ) or ( single_ext_6926915327998939228 and ( not single_ext_6395198100430131034 ) );
algo(145) <= l1_bptx_xor;

-- 221 L1_BeamGasPlus : EXT_BeamGas_plus
l1_beam_gas_plus <= single_ext_17118203077108929635;
algo(143) <= l1_beam_gas_plus;

-- 222 L1_BeamGasMinus : EXT_BeamGas_minus
l1_beam_gas_minus <= single_ext_14414193171404190569;
algo(142) <= l1_beam_gas_minus;

-- 223 L1_BeamGasB1 : EXT_BeamGas_B1
l1_beam_gas_b1 <= single_ext_7332905005558692114;
algo(140) <= l1_beam_gas_b1;

-- 224 L1_BeamGasB2 : EXT_BeamGas_B2
l1_beam_gas_b2 <= single_ext_7332905005558692115;
algo(141) <= l1_beam_gas_b2;

-- 240 L1_BRIL_TRIG0_AND : EXT_BRIL_TRIG0_AND
l1_bril_trig0_and <= single_ext_17833638493488257651;
algo(136) <= l1_bril_trig0_and;

-- 241 L1_BRIL_TRIG0_delayedAND : EXT_BRIL_TRIG0_delayedAND
l1_bril_trig0_delayed_and <= single_ext_14715923867298343304;
algo(139) <= l1_bril_trig0_delayed_and;

-- 242 L1_BRIL_TRIG0_OR : EXT_BRIL_TRIG0_OR
l1_bril_trig0_or <= single_ext_6912739140295604792;
algo(138) <= l1_bril_trig0_or;

-- 243 L1_BRIL_TRIG0_FstBunchInTrain : EXT_BRIL_TRIG0_FstBunchInTrain
l1_bril_trig0_fst_bunch_in_train <= single_ext_6873400283626490434;
algo(137) <= l1_bril_trig0_fst_bunch_in_train;

-- 244 L1_ETT50_BptxAND : ETT50 AND EXT_BPTX_plus_AND_minus.v0
l1_ett50_bptx_and <= single_ett_18699590320 and single_ext_10371607390599051624;
algo(75) <= l1_ett50_bptx_and;

-- 245 L1_ETT60_BptxAND : ETT60 AND EXT_BPTX_plus_AND_minus.v0
l1_ett60_bptx_and <= single_ett_18699590448 and single_ext_10371607390599051624;
algo(81) <= l1_ett60_bptx_and;

-- 246 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(69) <= l1_minimum_bias_hf0_or_bptx_and;

-- 247 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(70) <= l1_minimum_bias_hf0_and_bptx_and;

-- 248 L1_MinimumBiasHF1_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf1_or_bptx_and <= ( single_mbt1_hfp_43640317006686257 or single_mbt1_hfm_43640317006685873 ) and single_ext_10371607390599051624;
algo(93) <= l1_minimum_bias_hf1_or_bptx_and;

-- 249 L1_MinimumBiasHF1_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf1_and_bptx_and <= ( single_mbt1_hfp_43640317006686257 and single_mbt1_hfm_43640317006685873 ) and single_ext_10371607390599051624;
algo(77) <= l1_minimum_bias_hf1_and_bptx_and;

-- 250 L1_MinimumBiasHF0_OR : MBT0HFP1 OR MBT0HFM1
l1_minimum_bias_hf0_or <= single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417;
algo(79) <= l1_minimum_bias_hf0_or;

-- 251 L1_MinimumBiasHF0_AND : MBT0HFP1 AND MBT0HFM1
l1_minimum_bias_hf0_and <= single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417;
algo(68) <= l1_minimum_bias_hf0_and;

-- 252 L1_MinimumBiasHF1_OR : MBT1HFP1 OR MBT1HFM1
l1_minimum_bias_hf1_or <= single_mbt1_hfp_43640317006686257 or single_mbt1_hfm_43640317006685873;
algo(92) <= l1_minimum_bias_hf1_or;

-- 253 L1_MinimumBiasHF1_AND : MBT1HFP1 AND MBT1HFM1
l1_minimum_bias_hf1_and <= single_mbt1_hfp_43640317006686257 and single_mbt1_hfm_43640317006685873;
algo(84) <= l1_minimum_bias_hf1_and;

-- 254 L1_NotBptxOR : NOT EXT_BPTX_plus_OR_minus.v0
l1_not_bptx_or <= not single_ext_10104897634845317422;
algo(65) <= l1_not_bptx_or;

-- 255 L1_ZeroBias_copy : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias_copy <= single_ext_10371607390599051624;
algo(90) <= l1_zero_bias_copy;

-- 256 L1_DoubleMu0_ETM40 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_double_mu0_etm40 <= double_mu_14585777620730815295 and single_etm_18699475504;
algo(37) <= l1_double_mu0_etm40;

-- 257 L1_DoubleMu0_ETM55 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_double_mu0_etm55 <= double_mu_14585777620730815295 and single_etm_18699475637;
algo(33) <= l1_double_mu0_etm55;

-- 263 L1_SingleIsoEG32er : EG32[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg32er <= single_eg_6873086305653220593;
algo(108) <= l1_single_iso_eg32er;

-- 265 L1_DoubleIsoTau34er : comb{TAU34[TAU-ISO_0xE,TAU-ETA_2p13],TAU34[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau34er <= double_tau_5584966257611717374;
algo(54) <= l1_double_iso_tau34er;

-- 267 L1_DoubleMu0er1p4_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p4],MU0[MU-QLTY_DBLE,MU-ETA_1p4]}[DETA_MAX_1p8,CHGCOR_OS]
l1_double_mu0er1p4_d_eta_max1p8_os <= muon_muon_correlation_7972376774213455602;
algo(6) <= l1_double_mu0er1p4_d_eta_max1p8_os;

-- 270 L1_IsoEG20er_IsoTau25er_dEta_Min0p2 : dist{EG20[EG-ISO_0xE,EG-ETA_2p13],TAU25[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_iso_eg20er_iso_tau25er_d_eta_min0p2 <= calo_calo_correlation_14500771630165735872;
algo(3) <= l1_iso_eg20er_iso_tau25er_d_eta_min0p2;

-- 272 L1_ETM75 : ETM75
l1_etm75 <= single_etm_18699475893;
algo(126) <= l1_etm75;

-- 273 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(127) <= l1_etm85;

-- 274 L1_ETM95 : ETM95
l1_etm95 <= single_etm_18699476149;
algo(128) <= l1_etm95;

-- 276 L1_TripleMu_5_0_0 : comb{MU5[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_triple_mu_5_0_0 <= triple_mu_3324683539710430239;
algo(51) <= l1_triple_mu_5_0_0;

-- 277 L1_DoubleEG_25_12 : comb{EG25,EG12}
l1_double_eg_25_12 <= double_eg_14367845054004377695;
algo(45) <= l1_double_eg_25_12;

-- 278 L1_DoubleIsoTau36er : comb{TAU36[TAU-ISO_0xE,TAU-ETA_2p13],TAU36[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau36er <= double_tau_10196652277112847102;
algo(55) <= l1_double_iso_tau36er;

-- 281 L1_FirstBunchInTrain : (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND EXT_BPTX_plus_AND_minus.v0+1 AND EXT_BPTX_plus_AND_minus.v0+2
l1_first_bunch_in_train <= ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and single_ext_10371607390599051624 and single_ext_15455824636181887404 and single_ext_15455824636181887405;
algo(89) <= l1_first_bunch_in_train;

-- 282 L1_FirstBunchAfterTrain : EXT_BPTX_plus_AND_minus.v0-2 AND EXT_BPTX_plus_AND_minus.v0-1 AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_first_bunch_after_train <= single_ext_15455824636181887661 and single_ext_15455824636181887660 and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(97) <= l1_first_bunch_after_train;

-- 283 L1_DoubleMu0_ETM60 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM60
l1_double_mu0_etm60 <= double_mu_14585777620730815295 and single_etm_18699475760;
algo(34) <= l1_double_mu0_etm60;

-- 284 L1_DoubleMu0_ETM65 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM65
l1_double_mu0_etm65 <= double_mu_14585777620730815295 and single_etm_18699475765;
algo(35) <= l1_double_mu0_etm65;

-- 285 L1_DoubleMu0_ETM70 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM70
l1_double_mu0_etm70 <= double_mu_14585777620730815295 and single_etm_18699475888;
algo(30) <= l1_double_mu0_etm70;

-- 286 L1_ETM105 : ETM105
l1_etm105 <= single_etm_2393532815413;
algo(124) <= l1_etm105;

-- 288 L1_ETM115 : ETM115
l1_etm115 <= single_etm_2393532815541;
algo(125) <= l1_etm115;

-- 289 L1_DoubleTau70er : comb{TAU70[TAU-ETA_2p13],TAU70[TAU-ETA_2p13]}
l1_double_tau70er <= double_tau_17539608616528615651;
algo(60) <= l1_double_tau70er;

-- 292 L1_DoubleJet30_Mj30j30_400_Mu6 : MU6[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mj30j30_400_mu6 <= single_mu_14769293122775847365 and invariant_mass_14462129420734703062;
algo(11) <= l1_double_jet30_mj30j30_400_mu6;

-- 293 L1_DoubleJet30_Mj30j30_400_Mu10 : MU10[MU-QLTY_SNGL] AND mass{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mj30j30_400_mu10 <= single_mu_17545683025133343173 and invariant_mass_14462129420734703062;
algo(9) <= l1_double_jet30_mj30j30_400_mu10;

-- 294 L1_ETT55_BptxAND : ETT55 AND EXT_BPTX_plus_AND_minus.v0
l1_ett55_bptx_and <= single_ett_18699590325 and single_ext_10371607390599051624;
algo(78) <= l1_ett55_bptx_and;

-- 295 L1_ETT75_BptxAND : ETT75 AND EXT_BPTX_plus_AND_minus.v0
l1_ett75_bptx_and <= single_ett_18699590581 and single_ext_10371607390599051624;
algo(94) <= l1_ett75_bptx_and;

-- 296 L1_CastorGap_BptxAND : EXT_CastorGap AND EXT_BPTX_plus_AND_minus.v0
l1_castor_gap_bptx_and <= single_ext_13954212677346429137 and single_ext_10371607390599051624;
algo(76) <= l1_castor_gap_bptx_and;

-- 297 L1_CastorHighJet_BptxAND : EXT_CastorHighJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_high_jet_bptx_and <= single_ext_17696838439890921499 and single_ext_10371607390599051624;
algo(85) <= l1_castor_high_jet_bptx_and;

-- 298 L1_CastorMediumJet_BptxAND : EXT_CastorMediumJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_medium_jet_bptx_and <= single_ext_17882415701990092889 and single_ext_10371607390599051624;
algo(87) <= l1_castor_medium_jet_bptx_and;

-- 299 L1_CastorHaloMuon_BptxAND : EXT_CastorHaloMuon AND EXT_BPTX_plus_AND_minus.v0
l1_castor_halo_muon_bptx_and <= single_ext_14692508302784859112 and single_ext_10371607390599051624;
algo(91) <= l1_castor_halo_muon_bptx_and;

-- 300 L1_CastorHaloMuon : EXT_CastorHaloMuon
l1_castor_halo_muon <= single_ext_14692508302784859112;
algo(86) <= l1_castor_halo_muon;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;