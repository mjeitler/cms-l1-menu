-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Unique ID of L1 Trigger Menu:
-- f612c13bc6a554fbb789d1284ce3f2ca

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2016_v6r5

-- Scale set:
-- 2016-04-27

-- VHDL producer version
-- v0.0.1

-- ========================================================

-- Version-history:
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
    signal tau_pt_vector_bx_0: diff_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => (others => '0'));
    signal tau_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal tau_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_TAU_OBJECTS-1) := (others => 0);
    signal jet_pt_vector_bx_0: diff_inputs_array(0 to NR_JET_OBJECTS-1) := (others => (others => '0'));
    signal jet_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal jet_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_JET_OBJECTS-1) := (others => 0);
    signal eg_pt_vector_bx_0: diff_inputs_array(0 to NR_EG_OBJECTS-1) := (others => (others => '0'));
    signal eg_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_eta_conv_2_muon_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal eg_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_EG_OBJECTS-1) := (others => 0);
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal etm_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);
    signal etm_phi_conv_2_muon_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_ETM_OBJECTS-1) := (others => 0);


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
    signal diff_jet_etm_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_etm_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_etm_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_etm_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_ETM_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal jet_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_jet_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_jet_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_JET_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cosh_deta_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_tau_bx_0_bx_0_cos_dphi_vector : calo_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_tau_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_tau_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_TAU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_mu_bx_0_bx_0_eta_integer: dim2_max_eta_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_eta_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cosh_deta_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal eg_mu_bx_0_bx_0_cos_dphi_vector : calo_muon_cosh_cos_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
    signal diff_eg_mu_bx_0_bx_0_phi_integer: dim2_max_phi_range_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => 0));
    signal diff_eg_mu_bx_0_bx_0_phi_vector: deta_dphi_vector_array(0 to NR_EG_OBJECTS-1, 0 to NR_MU_OBJECTS-1) := (others => (others => (others => '0')));
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
    signal SingleEG_6872945568164865265 : std_logic;
    signal DoubleMU_16961157256621881348 : std_logic;
    signal DoubleJET_8281320341886584868 : std_logic;
    signal SingleEG_6872947767188120817 : std_logic;
    signal DoubleMU_16961160005400950788 : std_logic;
    signal SingleEG_145873072 : std_logic;
    signal SingleMU_17545683162572296645 : std_logic;
    signal DoubleJET_8659156106098952915 : std_logic;
    signal SingleMU_14769293105595978181 : std_logic;
    signal SingleEG_145873076 : std_logic;
    signal SingleMU_17545685224156598725 : std_logic;
    signal SingleEG_6873084106629965041 : std_logic;
    signal DoubleJET_5010010172296896555 : std_logic;
    signal SingleEG_145873079 : std_logic;
    signal SingleMU_17545685275696206277 : std_logic;
    signal DoubleTAU_14808338227894500078 : std_logic;
    signal SingleEG_145873080 : std_logic;
    signal SingleMU_17545685310055944645 : std_logic;
    signal DoubleTAU_14808338292319009533 : std_logic;
    signal SingleETM_18699475376 : std_logic;
    signal DoubleTAU_15233202657361500387 : std_logic;
    signal SingleEG_145873203 : std_logic;
    signal SingleEG_14262501742930627507 : std_logic;
    signal SingleJET_2561319656368 : std_logic;
    signal DoubleTAU_3279123247861152510 : std_logic;
    signal SingleJET_5967545327155853511 : std_logic;
    signal SingleMU_7109620049583097248 : std_logic;
    signal SingleMU_7037562455545169312 : std_logic;
    signal SingleEG_145873206 : std_logic;
    signal SingleMU_7145648846602061216 : std_logic;
    signal DoubleTAU_7890809267362282238 : std_logic;
    signal DoubleMU_14585777620730815295 : std_logic;
    signal SingleETM_18699476144 : std_logic;
    signal SingleMU_7181677643621025184 : std_logic;
    signal DoubleJET_8659446377168685779 : std_logic;
    signal SingleETM_18699475637 : std_logic;
    signal SingleJET_2561319655728 : std_logic;
    signal MuonMuonCorrelation_16040223250608453060 : std_logic;
    signal SingleEXT_10104897634845317422 : std_logic;
    signal SingleEG_145873330 : std_logic;
    signal SingleJET_5967545293332986055 : std_logic;
    signal SingleEG_6872949966211376369 : std_logic;
    signal SingleMU_9433477457306273184 : std_logic;
    signal SingleJET_5967545327692724423 : std_logic;
    signal SingleEG_145873334 : std_logic;
    signal SingleTAU_16608830939767017288 : std_logic;
    signal MuonMuonCorrelation_7972376774213455602 : std_logic;
    signal SingleHTM_19504782000 : std_logic;
    signal SingleTAU_16608831008486494024 : std_logic;
    signal SingleHTT_2496626726960 : std_logic;
    signal DoubleMU_14585778097856672575 : std_logic;
    signal SingleEG_145873456 : std_logic;
    signal SingleTAU_16608844133906550600 : std_logic;
    signal DoubleMU_14585796862184301375 : std_logic;
    signal SingleTAU_218368042610145022 : std_logic;
    signal SingleETM_18699475888 : std_logic;
    signal DoubleMU_16961145543694661636 : std_logic;
    signal SingleEXT_17561531836164454591 : std_logic;
    signal SingleEG_12507579852048143424 : std_logic;
    signal QuadJET_2751081844007168180 : std_logic;
    signal SingleEG_6872952165234631921 : std_logic;
    signal SingleTAU_3484211327656040900 : std_logic;
    signal SingleHTT_2496626727605 : std_logic;
    signal SingleJET_2561319655984 : std_logic;
    signal QuadJET_2899845767245260980 : std_logic;
    signal CaloCaloCorrelation_2085349615869404806 : std_logic;
    signal TripleEG_4430569450691365292 : std_logic;
    signal QuadMU_509409160461874775 : std_logic;
    signal CaloMuonCorrelation_10674670645420326056 : std_logic;
    signal SingleETT_18699590192 : std_logic;
    signal SingleEG_1139634 : std_logic;
    signal SingleETM_2393532815408 : std_logic;
    signal SingleEG_145873077 : std_logic;
    signal SingleETM_18699476016 : std_logic;
    signal SingleHTT_2496626727984 : std_logic;
    signal CaloMuonCorrelation_16240387826857744385 : std_logic;
    signal CaloMuonCorrelation_10791898730651162912 : std_logic;
    signal SingleETT_18699590448 : std_logic;
    signal SingleMBT0HFP_43640316738250801 : std_logic;
    signal MuonMuonCorrelation_8772456668275224612 : std_logic;
    signal SingleETT_18699589941 : std_logic;
    signal TripleMU_3324683539710430239 : std_logic;
    signal SingleEG_1139637 : std_logic;
    signal SingleHTT_2496626743600 : std_logic;
    signal DoubleEG_14367260113818400607 : std_logic;
    signal DoubleEG_14367295298190490335 : std_logic;
    signal SingleMU_11649248473972557216 : std_logic;
    signal SingleEG_6873086305653220593 : std_logic;
    signal SingleEG_12507579852056532032 : std_logic;
    signal SingleMU_1272496 : std_logic;
    signal SingleHTT_2496626710832 : std_logic;
    signal SingleJET_156330552 : std_logic;
    signal SingleMU_14769293018627052229 : std_logic;
    signal DoubleEG_14367831859864844127 : std_logic;
    signal SingleHTT_2496626727472 : std_logic;
    signal SingleMU_14769293071236239813 : std_logic;
    signal SingleHTM_2496612030768 : std_logic;
    signal DoubleEG_14367840655957867231 : std_logic;
    signal DoubleEG_14367831859864844767 : std_logic;
    signal SingleMU_14769293122775847365 : std_logic;
    signal SingleEXT_17561531836164454847 : std_logic;
    signal SingleEG_6872943369141609713 : std_logic;
    signal SingleJET_20010309936 : std_logic;
    signal DoubleEG_8902241742241126126 : std_logic;
    signal SingleEG_6873088504676476145 : std_logic;
    signal SingleEXT_10371607390599051624 : std_logic;
    signal CaloCaloCorrelation_14500771630165735872 : std_logic;
    signal SingleJET_20010310069 : std_logic;
    signal SingleJET_20010309814 : std_logic;
    signal SingleMU_9379434261777827232 : std_logic;
    signal DoubleJET_15903572090988376162 : std_logic;
    signal SingleMBT0HFM_43640316738250417 : std_logic;
    signal SingleJET_5967545309707548871 : std_logic;
    signal SingleHTM_2496612031024 : std_logic;

-- Signal definition for algorithms names
    signal L1_ZeroBias : std_logic;
    signal L1_SingleMu5 : std_logic;
    signal L1_SingleMu18 : std_logic;
    signal L1_SingleMu20 : std_logic;
    signal L1_SingleMu25 : std_logic;
    signal L1_SingleMu14er : std_logic;
    signal L1_SingleMu16er : std_logic;
    signal L1_SingleMu18er : std_logic;
    signal L1_SingleMu22er : std_logic;
    signal L1_SingleMu25er : std_logic;
    signal L1_SingleMu30er : std_logic;
    signal L1_DoubleMuOpen : std_logic;
    signal L1_DoubleMu_10_Open : std_logic;
    signal L1_DoubleMu_12_5 : std_logic;
    signal L1_DoubleMu_13_6 : std_logic;
    signal L1_DoubleMu0er1p6_dEta_Max1p8 : std_logic;
    signal L1_DoubleMu_10_0_dEta_Max1p8 : std_logic;
    signal L1_QuadMu0 : std_logic;
    signal L1_SingleEG5 : std_logic;
    signal L1_SingleEG15 : std_logic;
    signal L1_SingleEG18 : std_logic;
    signal L1_SingleEG26 : std_logic;
    signal L1_SingleEG40 : std_logic;
    signal L1_SingleIsoEG18 : std_logic;
    signal L1_SingleIsoEG20er : std_logic;
    signal L1_SingleIsoEG22er : std_logic;
    signal L1_SingleIsoEG24er : std_logic;
    signal L1_SingleIsoEG26er : std_logic;
    signal L1_SingleIsoEG28er : std_logic;
    signal L1_SingleIsoEG30er : std_logic;
    signal L1_SingleIsoEG34er : std_logic;
    signal L1_DoubleEG_18_17 : std_logic;
    signal L1_DoubleEG_22_10 : std_logic;
    signal L1_DoubleEG_24_17 : std_logic;
    signal L1_TripleEG_14_10_8 : std_logic;
    signal L1_SingleJet16 : std_logic;
    signal L1_SingleJet20 : std_logic;
    signal L1_SingleJet35 : std_logic;
    signal L1_SingleJet120 : std_logic;
    signal L1_SingleJet140 : std_logic;
    signal L1_SingleJet170 : std_logic;
    signal L1_DoubleJetC40 : std_logic;
    signal L1_DoubleJetC80 : std_logic;
    signal L1_DoubleJetC112 : std_logic;
    signal L1_QuadJetC40 : std_logic;
    signal L1_QuadJetC60 : std_logic;
    signal L1_SingleTau80er : std_logic;
    signal L1_SingleTau100er : std_logic;
    signal L1_DoubleIsoTau28er : std_logic;
    signal L1_DoubleIsoTau30er : std_logic;
    signal L1_DoubleTau50er : std_logic;
    signal L1_HTT120 : std_logic;
    signal L1_HTT200 : std_logic;
    signal L1_HTT240 : std_logic;
    signal L1_HTT255 : std_logic;
    signal L1_HTT280 : std_logic;
    signal L1_HTT320 : std_logic;
    signal L1_ETM80 : std_logic;
    signal L1_ETM90 : std_logic;
    signal L1_HTM50 : std_logic;
    signal L1_HTM120 : std_logic;
    signal L1_HTM140 : std_logic;
    signal L1_ETT25 : std_logic;
    signal L1_ETT40_BptxAND : std_logic;
    signal L1_ETM30 : std_logic;
    signal L1_ETM70 : std_logic;
    signal L1_ETM100 : std_logic;
    signal L1_Mu5_EG15 : std_logic;
    signal L1_Mu5_EG23 : std_logic;
    signal L1_Mu5_IsoEG18 : std_logic;
    signal L1_Mu20_EG10 : std_logic;
    signal L1_Mu20_EG17 : std_logic;
    signal L1_Mu23_IsoEG10 : std_logic;
    signal L1_Mu23_EG10 : std_logic;
    signal L1_Mu16er_Tau20er : std_logic;
    signal L1_Mu18er_Tau24er : std_logic;
    signal L1_Mu18er_IsoTau26er : std_logic;
    signal L1_DoubleMu7_EG14 : std_logic;
    signal L1_Mu6_DoubleEG10 : std_logic;
    signal L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_EG27er_HTT200 : std_logic;
    signal L1_DoubleEG6_HTT255 : std_logic;
    signal L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 : std_logic;
    signal L1_Mu10er_ETM30 : std_logic;
    signal L1_Mu14er_ETM30 : std_logic;
    signal L1_SingleJetC20_NotBptxOR : std_logic;
    signal L1_SingleEG2_BptxAND : std_logic;
    signal L1_SingleJet8_BptxAND : std_logic;
    signal L1_DoubleEG_22_15 : std_logic;
    signal L1_MU20_EG15 : std_logic;
    signal L1_IsoEG22er_Tau20er_dEta_Min0p2 : std_logic;
    signal L1_SingleMuOpen_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC20_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC32_NotBptxOR_3BX : std_logic;
    signal L1_SingleJetC36_NotBptxOR_3BX : std_logic;
    signal L1_AlwaysTrue : std_logic;
    signal L1_BptxOR : std_logic;
    signal L1_DoubleJet8_ForwardBackward : std_logic;
    signal L1_DoubleJet12_ForwardBackward : std_logic;
    signal L1_Mu3_JetC16 : std_logic;
    signal L1_SingleMuCosmics : std_logic;
    signal L1_ETT60_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_OR_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_AND_BptxAND : std_logic;
    signal L1_MinimumBiasHF0_OR : std_logic;
    signal L1_MinimumBiasHF0_AND : std_logic;
    signal L1_NotBptxOR : std_logic;
    signal L1_ZeroBias_copy : std_logic;
    signal L1_DoubleMu0_ETM55 : std_logic;
    signal L1_SingleEG32 : std_logic;
    signal L1_SingleEG36 : std_logic;
    signal L1_SingleIsoEG32er : std_logic;
    signal L1_DoubleIsoTau33er : std_logic;
    signal L1_DoubleIsoTau35er : std_logic;
    signal L1_DoubleMu0er1p4_dEta_Max1p8_OS : std_logic;
    signal L1_IsoEG20er_IsoTau25er_dEta_Min0p2 : std_logic;
    signal L1_TripleMu_5_0_0 : std_logic;
    signal L1_Mu22er_IsoTau26er : std_logic;
    signal L1_Mu25er_IsoTau26er : std_logic;

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
    SingleEXT_10104897634845317422 <= ext_cond_bx_0(35);
    SingleEXT_17561531836164454591 <= ext_cond_bx_p1(35);
    SingleEXT_17561531836164454847 <= ext_cond_bx_m1(35);
    SingleEXT_10371607390599051624 <= ext_cond_bx_0(32);

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
  port map(mu_bx_0, mu_bx_0,
    ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
    ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
    ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions
tau_data_bx_0_l: for i in 0 to NR_TAU_OBJECTS-1 generate
  tau_pt_vector_bx_0(i)(TAU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(TAU_PT_LUT(CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.et_high downto D_S_I_TAU_V2.et_low))), TAU_PT_VECTOR_WIDTH);
  tau_eta_integer_bx_0(i) <= CONV_INTEGER(signed(tau_bx_0(i)(D_S_I_TAU_V2.eta_high downto D_S_I_TAU_V2.eta_low)));
  tau_phi_integer_bx_0(i) <= CONV_INTEGER(tau_bx_0(i)(D_S_I_TAU_V2.phi_high downto D_S_I_TAU_V2.phi_low));
end generate;
jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
  jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
  jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
end generate;
eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
  eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
  eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
end generate;
mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
  mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
  mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
  mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
end generate;
etm_data_bx_0_l: for i in 0 to NR_ETM_OBJECTS-1 generate
  etm_phi_integer_bx_0(i) <= CONV_INTEGER(etm_bx_0(D_S_I_ETM_V2.phi_high downto D_S_I_ETM_V2.phi_low));
end generate;


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions
jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
  jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
end generate;
eg_conv_2_muon_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_eta_conv_2_muon_eta_integer_bx_0(i) <= EG_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
  eg_phi_conv_2_muon_phi_integer_bx_0(i) <= EG_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
end generate;


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
diff_jet_etm_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_JET_OBJECTS, NR_ETM_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
  port map(jet_phi_integer_bx_0, etm_phi_integer_bx_0, diff_jet_etm_bx_0_bx_0_phi_integer);      
jet_etm_bx_0_bx_0_l1: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_etm_bx_0_bx_0_l2: for j in 0 to NR_ETM_OBJECTS-1 generate
    diff_jet_etm_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_ETM_DIFF_PHI_LUT(diff_jet_etm_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate jet_etm_bx_0_bx_0_l2;
end generate jet_etm_bx_0_bx_0_l1;
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
diff_eg_mu_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_MU_OBJECTS)
  port map(eg_eta_conv_2_muon_eta_integer_bx_0, mu_eta_integer_bx_0, diff_eg_mu_bx_0_bx_0_eta_integer);      
diff_eg_mu_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
  generic map(NR_EG_OBJECTS, NR_MU_OBJECTS, MUON_PHI_HALF_RANGE_BINS)
  port map(eg_phi_conv_2_muon_phi_integer_bx_0, mu_phi_integer_bx_0, diff_eg_mu_bx_0_bx_0_phi_integer);      
eg_mu_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_mu_bx_0_bx_0_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    diff_eg_mu_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_ETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
    diff_eg_mu_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_DIFF_PHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
  end generate eg_mu_bx_0_bx_0_l2;
end generate eg_mu_bx_0_bx_0_l1;
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
jet_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
  jet_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    jet_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COSH_DETA_LUT(diff_jet_mu_bx_0_bx_0_eta_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
    jet_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_MU_COS_DPHI_LUT(diff_jet_mu_bx_0_bx_0_phi_integer(i,j)), JET_MU_COSH_COS_VECTOR_WIDTH);
  end generate jet_mu_bx_0_bx_0_cosh_cos_l2;
end generate jet_mu_bx_0_bx_0_cosh_cos_l1;
eg_tau_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_tau_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_TAU_OBJECTS-1 generate
    eg_tau_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COSH_DETA_LUT(diff_eg_tau_bx_0_bx_0_eta_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
    eg_tau_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_TAU_COS_DPHI_LUT(diff_eg_tau_bx_0_bx_0_phi_integer(i,j)), EG_TAU_COSH_COS_VECTOR_WIDTH);
  end generate eg_tau_bx_0_bx_0_cosh_cos_l2;
end generate eg_tau_bx_0_bx_0_cosh_cos_l1;
eg_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
  eg_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    eg_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COSH_DETA_LUT(diff_eg_mu_bx_0_bx_0_eta_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
    eg_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_MU_COS_DPHI_LUT(diff_eg_mu_bx_0_bx_0_phi_integer(i,j)), EG_MU_COSH_COS_VECTOR_WIDTH);
  end generate eg_mu_bx_0_bx_0_cosh_cos_l2;
end generate eg_mu_bx_0_bx_0_cosh_cos_l1;
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
  mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
  end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions

singleeg_6872945568164865265_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872945568164865265);



doublejet_8281320341886584868_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0018", X"0018", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8281320341886584868);



singleeg_6872947767188120817_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872947767188120817);



singleeg_145873072_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873072);



doublejet_8659156106098952915_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0050", X"0050", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659156106098952915);



singleeg_145873076_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"001C", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873076);



singleeg_6873084106629965041_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873084106629965041);



doublejet_5010010172296896555_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0072", X"0000", X"0000"), (X"008D", X"0045", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_5010010172296896555);



singleeg_145873079_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0022", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873079);



doubletau_14808338227894500078_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0038", X"0038", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808338227894500078);



singleeg_145873080_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873080);



doubletau_14808338292319009533_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808338292319009533);



doubletau_15233202657361500387_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_15233202657361500387);



singleeg_145873203_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002E", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873203);



singleeg_14262501742930627507_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_14262501742930627507);



singlejet_2561319656368_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0154", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319656368);



doubletau_3279123247861152510_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0042", X"0042", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_3279123247861152510);



singlejet_5967545327155853511_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545327155853511);



singleeg_145873206_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873206);



doubletau_7890809267362282238_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0046", X"0046", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0030", X"0000", X"0000"), (X"00CF", X"00CF", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_7890809267362282238);



doublejet_8659446377168685779_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A0", X"00A0", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_8659446377168685779);



singlejet_2561319655728_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319655728);



singleeg_145873330_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873330);



singlejet_5967545293332986055_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545293332986055);



singleeg_6872949966211376369_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872949966211376369);



singlejet_5967545327692724423_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545327692724423);



singleeg_145873334_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873334);



singletau_16608830939767017288_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608830939767017288);



singletau_16608831008486494024_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608831008486494024);



singleeg_145873456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873456);



singletau_16608844133906550600_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00A0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608844133906550600);



singletau_218368042610145022_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_218368042610145022);



singleeg_12507579852048143424_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852048143424);



quadjet_2751081844007168180_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0050", X"0050", X"0050", X"0050"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2751081844007168180);



singleeg_6872952165234631921_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872952165234631921);



singletau_3484211327656040900_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00C8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_3484211327656040900);



singlejet_2561319655984_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0118", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_2561319655984);



quadjet_2899845767245260980_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0078", X"0078", X"0078", X"0078"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0044"), (X"00BB", X"00BB", X"00BB", X"00BB"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, quadjet_2899845767245260980);



tripleeg_4430569450691365292_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"001C", X"0014", X"0010", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, tripleeg_4430569450691365292);



singleeg_1139634_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0004", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139634);



singleeg_145873077_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"001E", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_145873077);



singleeg_1139637_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000A", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139637);



doubleeg_14367260113818400607_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367260113818400607);



doubleeg_14367295298190490335_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0024", X"0022", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367295298190490335);



singleeg_6873086305653220593_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873086305653220593);



singleeg_12507579852056532032_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852056532032);



singlejet_156330552_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_156330552);



doubleeg_14367831859864844127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844127);



doubleeg_14367840655957867231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0030", X"0022", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367840655957867231);



doubleeg_14367831859864844767_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"001E", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844767);



singleeg_6872943369141609713_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872943369141609713);



singlejet_20010309936_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309936);



doubleeg_8902241742241126126_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, doubleeg_8902241742241126126);



singleeg_6873088504676476145_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873088504676476145);



singlejet_20010310069_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0046", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010310069);



singlejet_20010309814_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_20010309814);



doublejet_15903572090988376162_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00E0", X"00E0", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0000", X"0000"), (X"00BB", X"00BB", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, doublejet_15903572090988376162);



singlejet_5967545309707548871_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0044", X"0000", X"0000", X"0000"), (X"00BB", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5967545309707548871);





doublemu_16961157256621881348_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0019", X"000B", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        doublemu_16961157256621881348);



doublemu_16961160005400950788_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"001B", X"000D", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        doublemu_16961160005400950788);



singlemu_17545683162572296645_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0025", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_17545683162572296645);



singlemu_14769293105595978181_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000B", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_14769293105595978181);



singlemu_17545685224156598725_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0029", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_17545685224156598725);



singlemu_17545685275696206277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_17545685275696206277);



singlemu_17545685310055944645_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0033", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_17545685310055944645);



singlemu_7109620049583097248_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_7109620049583097248);



singlemu_7037562455545169312_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0015", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_7037562455545169312);



singlemu_7145648846602061216_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0021", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_7145648846602061216);



doublemu_14585777620730815295_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        doublemu_14585777620730815295);



singlemu_7181677643621025184_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0025", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_7181677643621025184);



singlemu_9433477457306273184_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0033", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_9433477457306273184);



doublemu_14585778097856672575_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0001", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585778097856672575);



doublemu_14585796862184301375_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000F", X"000F", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        doublemu_14585796862184301375);



doublemu_16961145543694661636_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0015", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961145543694661636);



quadmu_509409160461874775_i: entity work.muon_conditions_v3
    generic map(4 , true,
        (X"0001", X"0001", X"0001", X"0001"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FF00", X"FF00", X"FF00", X"FF00"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        quadmu_509409160461874775);



triplemu_3324683539710430239_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"000B", X"0001", X"0001", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        triplemu_3324683539710430239);



singlemu_11649248473972557216_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_11649248473972557216);



singlemu_1272496_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_1272496);



singlemu_14769293018627052229_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_14769293018627052229);



singlemu_14769293071236239813_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0007", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_14769293071236239813);



singlemu_14769293122775847365_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_14769293122775847365);



singlemu_9379434261777827232_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_9379434261777827232);





singleetm_18699475376_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"003C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475376);



singleetm_18699476144_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476144);



singleetm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475637);



singlehtm_19504782000_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782000);



singlehtt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626726960);



singleetm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475888);



singlehtt_2496626727605_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01FE",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727605);



singleett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590192);



singleetm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532815408);



singleetm_18699476016_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476016);



singlehtt_2496626727984_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727984);



singleett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590448);



singleett_18699589941_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0032",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699589941);



singlehtt_2496626743600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0280",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626743600);



singlehtt_2496626710832_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710832);



singlehtt_2496626727472_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01E0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727472);



singlehtm_2496612030768_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030768);



singlehtm_2496612031024_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0118",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612031024);





calocalocorrelation_2085349615869404806_i: entity work.calo_calo_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  NR_EG_OBJECTS, true, EG_TYPE,
    X"002C",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"E",
	  NR_TAU_OBJECTS, true, TAU_TYPE,
    X"0028",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         calocalocorrelation_2085349615869404806);


calocalocorrelation_14500771630165735872_i: entity work.calo_calo_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  NR_EG_OBJECTS, true, EG_TYPE,
    X"0028",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"E",
	  NR_TAU_OBJECTS, true, TAU_TYPE,
    X"0032",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         calocalocorrelation_14500771630165735872);




calomuoncorrelation_10674670645420326056_i: entity work.calo_muon_correlation_condition
  generic map(
    false, true, false, false,
    NR_EG_OBJECTS, true, EG_TYPE,
	  X"0014",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
    0.0, 0.0,
    3.15, 1.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, EG_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, EG_MUON_INV_MASS_PRECISION,
    EG_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, EG_MUON_COSH_COS_PRECISION, EG_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, eg_bx_0, mu_bx_0,
	         diff_eg_mu_bx_0_bx_0_eta_vector, diff_eg_mu_bx_0_bx_0_phi_vector,
           eg_pt_vector_bx_0, mu_pt_vector_bx_0, eg_mu_bx_0_bx_0_cosh_deta_vector, eg_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_10674670645420326056);


calomuoncorrelation_16240387826857744385_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0020",
    false, X"0044",X"00BB",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",
	  true,
    X"0007",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         calomuoncorrelation_16240387826857744385);


calomuoncorrelation_10791898730651162912_i: entity work.calo_muon_correlation_condition
  generic map(
    false, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0040",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    X"F",
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
    0.0, 0.0,
    0.4, 0.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, JET_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, JET_MUON_INV_MASS_PRECISION,
    JET_PT_VECTOR_WIDTH, MUON_PT_VECTOR_WIDTH, JET_MUON_COSH_COS_PRECISION, JET_MUON_COSH_COS_VECTOR_WIDTH
    )
  port map(lhc_clk, jet_bx_0, mu_bx_0,
	         diff_jet_mu_bx_0_bx_0_eta_vector, diff_jet_mu_bx_0_bx_0_phi_vector,
           jet_pt_vector_bx_0, mu_pt_vector_bx_0, jet_mu_bx_0_bx_0_cosh_deta_vector, jet_mu_bx_0_bx_0_cos_dphi_vector,
	         calomuoncorrelation_10791898730651162912);




muonmuoncorrelation_16040223250608453060_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0001",
    false, X"0093", X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
	  true,
    X"0001",
    false, X"0093",X"016D",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         muonmuoncorrelation_16040223250608453060);


muonmuoncorrelation_7972376774213455602_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0001",
    false, X"0081", X"017F",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
	  true,
    X"0001",
    false, X"0081",X"017F",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         muonmuoncorrelation_7972376774213455602);


muonmuoncorrelation_8772456668275224612_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  true,
    X"0015",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
	  true,
    X"0001",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
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
	         muonmuoncorrelation_8772456668275224612);








singlembt0hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, singlembt0hfp_43640316738250801);



singlembt0hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, singlembt0hfm_43640316738250417);




-- Instantiations of algorithms

-- 180 L1_Jet32_Mu0_EG10_dPhi_Jet_Mu_Max0p4_dPhi_Mu_EG_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{EG10,MU0[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_mu0_eg10_dphi_jet_mu_max0p4_dphi_mu_eg_min1p0 <= calomuoncorrelation_10791898730651162912 and calomuoncorrelation_10674670645420326056;
algo(0) <= l1_jet32_mu0_eg10_dphi_jet_mu_max0p4_dphi_mu_eg_min1p0;

-- 102 L1_QuadJetC40 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_quadjetc40 <= quadjet_2751081844007168180;
algo(1) <= l1_quadjetc40;

-- 104 L1_QuadJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quadjetc60 <= quadjet_2899845767245260980;
algo(2) <= l1_quadjetc60;

-- 270 L1_IsoEG20er_IsoTau25er_dEta_Min0p2 : dist{EG20[EG-ISO_0xE,EG-ETA_2p13],TAU25[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_isoeg20er_isotau25er_deta_min0p2 <= calocalocorrelation_14500771630165735872;
algo(3) <= l1_isoeg20er_isotau25er_deta_min0p2;

-- 199 L1_IsoEG22er_Tau20er_dEta_Min0p2 : dist{EG22[EG-ISO_0xE,EG-ETA_2p13],TAU20[TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_isoeg22er_tau20er_deta_min0p2 <= calocalocorrelation_2085349615869404806;
algo(4) <= l1_isoeg22er_tau20er_deta_min0p2;

-- 170 L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET16[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jetc16_deta_max0p4_dphi_max0p4 <= calomuoncorrelation_16240387826857744385;
algo(5) <= l1_mu3_jetc16_deta_max0p4_dphi_max0p4;

-- 267 L1_DoubleMu0er1p4_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p4],MU0[MU-QLTY_DBLE,MU-ETA_1p4]}[DETA_MAX_1p8,CHGCOR_OS]
l1_doublemu0er1p4_deta_max1p8_os <= muonmuoncorrelation_7972376774213455602;
algo(6) <= l1_doublemu0er1p4_deta_max1p8_os;

-- 32 L1_DoubleMu0er1p6_dEta_Max1p8 : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p6],MU0[MU-QLTY_DBLE,MU-ETA_1p6]}[DETA_MAX_1p8]
l1_doublemu0er1p6_deta_max1p8 <= muonmuoncorrelation_16040223250608453060;
algo(7) <= l1_doublemu0er1p6_deta_max1p8;

-- 35 L1_DoubleMu_10_0_dEta_Max1p8 : dist{MU10[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[DETA_MAX_1p8]
l1_doublemu_10_0_deta_max1p8 <= muonmuoncorrelation_8772456668275224612;
algo(8) <= l1_doublemu_10_0_deta_max1p8;

-- 38 L1_QuadMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_quadmu0 <= quadmu_509409160461874775;
algo(9) <= l1_quadmu0;

-- 169 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_doubleeg10 <= singlemu_14769293122775847365 and doubleeg_14367260113818400607;
algo(10) <= l1_mu6_doubleeg10;

-- 166 L1_DoubleMu7_EG14 : comb{MU7[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]} AND EG14
l1_doublemu7_eg14 <= doublemu_14585796862184301375 and singleeg_145873076;
algo(11) <= l1_doublemu7_eg14;

-- 198 L1_MU20_EG15 : MU20[MU-QLTY_SNGL] AND EG15
l1_mu20_eg15 <= singlemu_17545685224156598725 and singleeg_145873077;
algo(12) <= l1_mu20_eg15;

-- 41 L1_SingleEG15 : EG15
l1_singleeg15 <= singleeg_145873077;
algo(13) <= l1_singleeg15;

-- 10 L1_SingleMu20 : MU20[MU-QLTY_SNGL]
l1_singlemu20 <= singlemu_17545685224156598725;
algo(14) <= l1_singlemu20;

-- 150 L1_Mu20_EG10 : MU20[MU-QLTY_SNGL] AND EG10
l1_mu20_eg10 <= singlemu_17545685224156598725 and singleeg_145873072;
algo(15) <= l1_mu20_eg10;

-- 151 L1_Mu20_EG17 : MU20[MU-QLTY_SNGL] AND EG17
l1_mu20_eg17 <= singlemu_17545685224156598725 and singleeg_145873079;
algo(16) <= l1_mu20_eg17;

-- 153 L1_Mu23_EG10 : MU23[MU-QLTY_SNGL] AND EG10
l1_mu23_eg10 <= singlemu_17545685275696206277 and singleeg_145873072;
algo(17) <= l1_mu23_eg10;

-- 152 L1_Mu23_IsoEG10 : MU23[MU-QLTY_SNGL] AND EG10[EG-ISO_0xE]
l1_mu23_isoeg10 <= singlemu_17545685275696206277 and singleeg_12507579852048143424;
algo(18) <= l1_mu23_isoeg10;

-- 215 L1_Mu3_JetC16 : MU3[MU-QLTY_SNGL] AND JET16[JET-ETA_CEN]
l1_mu3_jetc16 <= singlemu_14769293071236239813 and singlejet_5967545293332986055;
algo(19) <= l1_mu3_jetc16;

-- 144 L1_Mu5_EG15 : MU5[MU-QLTY_SNGL] AND EG15
l1_mu5_eg15 <= singlemu_14769293105595978181 and singleeg_145873077;
algo(20) <= l1_mu5_eg15;

-- 4 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_singlemu5 <= singlemu_14769293105595978181;
algo(21) <= l1_singlemu5;

-- 146 L1_Mu5_EG23 : MU5[MU-QLTY_SNGL] AND EG23
l1_mu5_eg23 <= singlemu_14769293105595978181 and singleeg_145873203;
algo(22) <= l1_mu5_eg23;

-- 147 L1_Mu5_IsoEG18 : MU5[MU-QLTY_SNGL] AND EG18[EG-ISO_0xE]
l1_mu5_isoeg18 <= singlemu_14769293105595978181 and singleeg_12507579852056532032;
algo(23) <= l1_mu5_isoeg18;

-- 53 L1_SingleIsoEG18 : EG18[EG-ISO_0xE]
l1_singleisoeg18 <= singleeg_12507579852056532032;
algo(24) <= l1_singleisoeg18;

-- 78 L1_TripleEG_14_10_8 : comb{EG14,EG10,EG8}
l1_tripleeg_14_10_8 <= tripleeg_4430569450691365292;
algo(25) <= l1_tripleeg_14_10_8;

-- 176 L1_DoubleEG6_HTT255 : comb{EG6,EG6} AND HTT255
l1_doubleeg6_htt255 <= doubleeg_8902241742241126126 and singlehtt_2496626727605;
algo(26) <= l1_doubleeg6_htt255;

-- 120 L1_HTT255 : HTT255
l1_htt255 <= singlehtt_2496626727605;
algo(27) <= l1_htt255;

-- 154 L1_Mu16er_Tau20er : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu16er_tau20er <= singlemu_7145648846602061216 and singletau_16608830939767017288;
algo(28) <= l1_mu16er_tau20er;

-- 17 L1_SingleMu16er : MU16[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu16er <= singlemu_7145648846602061216;
algo(29) <= l1_singlemu16er;

-- 158 L1_Mu18er_IsoTau26er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu18er_isotau26er <= singlemu_7181677643621025184 and singletau_218368042610145022;
algo(30) <= l1_mu18er_isotau26er;

-- 18 L1_SingleMu18er : MU18[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu18er <= singlemu_7181677643621025184;
algo(31) <= l1_singlemu18er;

-- 157 L1_Mu18er_Tau24er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu18er_tau24er <= singlemu_7181677643621025184 and singletau_16608831008486494024;
algo(32) <= l1_mu18er_tau24er;

-- 279 L1_Mu22er_IsoTau26er : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er_isotau26er <= singlemu_9379434261777827232 and singletau_218368042610145022;
algo(33) <= l1_mu22er_isotau26er;

-- 20 L1_SingleMu22er : MU22[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu22er <= singlemu_9379434261777827232;
algo(34) <= l1_singlemu22er;

-- 280 L1_Mu25er_IsoTau26er : MU25[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu25er_isotau26er <= singlemu_9433477457306273184 and singletau_218368042610145022;
algo(35) <= l1_mu25er_isotau26er;

-- 21 L1_SingleMu25er : MU25[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu25er <= singlemu_9433477457306273184;
algo(36) <= l1_singlemu25er;

-- 72 L1_DoubleEG_18_17 : comb{EG18,EG17}
l1_doubleeg_18_17 <= doubleeg_14367295298190490335;
algo(37) <= l1_doubleeg_18_17;

-- 75 L1_DoubleEG_22_10 : comb{EG22,EG10}
l1_doubleeg_22_10 <= doubleeg_14367831859864844127;
algo(38) <= l1_doubleeg_22_10;

-- 197 L1_DoubleEG_22_15 : comb{EG22,EG15}
l1_doubleeg_22_15 <= doubleeg_14367831859864844767;
algo(39) <= l1_doubleeg_22_15;

-- 77 L1_DoubleEG_24_17 : comb{EG24,EG17}
l1_doubleeg_24_17 <= doubleeg_14367840655957867231;
algo(40) <= l1_doubleeg_24_17;

-- 213 L1_DoubleJet12_ForwardBackward : comb{JET12[JET-ETA_FWD_NEG],JET12[JET-ETA_FWD_POS]}
l1_doublejet12_forwardbackward <= doublejet_8281320341886584868;
algo(41) <= l1_doublejet12_forwardbackward;

-- 212 L1_DoubleJet8_ForwardBackward : comb{JET8[JET-ETA_FWD_NEG],JET8[JET-ETA_FWD_POS]}
l1_doublejet8_forwardbackward <= doublejet_5010010172296896555;
algo(42) <= l1_doublejet8_forwardbackward;

-- 97 L1_DoubleJetC112 : comb{JET112[JET-ETA_CEN],JET112[JET-ETA_CEN]}
l1_doublejetc112 <= doublejet_15903572090988376162;
algo(43) <= l1_doublejetc112;

-- 92 L1_DoubleJetC40 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_doublejetc40 <= doublejet_8659156106098952915;
algo(44) <= l1_doublejetc40;

-- 95 L1_DoubleJetC80 : comb{JET80[JET-ETA_CEN],JET80[JET-ETA_CEN]}
l1_doublejetc80 <= doublejet_8659446377168685779;
algo(45) <= l1_doublejetc80;

-- 257 L1_DoubleMu0_ETM55 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_doublemu0_etm55 <= doublemu_14585777620730815295 and singleetm_18699475637;
algo(46) <= l1_doublemu0_etm55;

-- 174 L1_EG27er_HTT200 : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er_htt200 <= singleeg_14262501742930627507 and singlehtt_2496626726960;
algo(47) <= l1_eg27er_htt200;

-- 117 L1_HTT200 : HTT200
l1_htt200 <= singlehtt_2496626726960;
algo(48) <= l1_htt200;

-- 276 L1_TripleMu_5_0_0 : comb{MU5[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_triplemu_5_0_0 <= triplemu_3324683539710430239;
algo(49) <= l1_triplemu_5_0_0;

-- 109 L1_DoubleIsoTau28er : comb{TAU28[TAU-ISO_0xE,TAU-ETA_2p13],TAU28[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau28er <= doubletau_14808338227894500078;
algo(50) <= l1_doubleisotau28er;

-- 110 L1_DoubleIsoTau30er : comb{TAU30[TAU-ISO_0xE,TAU-ETA_2p13],TAU30[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau30er <= doubletau_14808338292319009533;
algo(51) <= l1_doubleisotau30er;

-- 264 L1_DoubleIsoTau33er : comb{TAU33[TAU-ISO_0xE,TAU-ETA_2p13],TAU33[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau33er <= doubletau_3279123247861152510;
algo(52) <= l1_doubleisotau33er;

-- 266 L1_DoubleIsoTau35er : comb{TAU35[TAU-ISO_0xE,TAU-ETA_2p13],TAU35[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau35er <= doubletau_7890809267362282238;
algo(53) <= l1_doubleisotau35er;

-- 23 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_doublemuopen <= doublemu_14585778097856672575;
algo(54) <= l1_doublemuopen;

-- 25 L1_DoubleMu_10_Open : comb{MU10[MU-QLTY_DBLE],MU0[MU-QLTY_OPEN]}
l1_doublemu_10_open <= doublemu_16961145543694661636;
algo(55) <= l1_doublemu_10_open;

-- 28 L1_DoubleMu_12_5 : comb{MU12[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_doublemu_12_5 <= doublemu_16961157256621881348;
algo(56) <= l1_doublemu_12_5;

-- 29 L1_DoubleMu_13_6 : comb{MU13[MU-QLTY_DBLE],MU6[MU-QLTY_DBLE]}
l1_doublemu_13_6 <= doublemu_16961160005400950788;
algo(57) <= l1_doublemu_13_6;

-- 114 L1_DoubleTau50er : comb{TAU50[TAU-ETA_2p13],TAU50[TAU-ETA_2p13]}
l1_doubletau50er <= doubletau_15233202657361500387;
algo(58) <= l1_doubletau50er;

-- 184 L1_Mu10er_ETM30 : MU10[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu10er_etm30 <= singlemu_7037562455545169312 and singleetm_18699475376;
algo(59) <= l1_mu10er_etm30;

-- 137 L1_ETM30 : ETM30
l1_etm30 <= singleetm_18699475376;
algo(60) <= l1_etm30;

-- 186 L1_Mu14er_ETM30 : MU14[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu14er_etm30 <= singlemu_7109620049583097248 and singleetm_18699475376;
algo(61) <= l1_mu14er_etm30;

-- 16 L1_SingleMu14er : MU14[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu14er <= singlemu_7109620049583097248;
algo(62) <= l1_singlemu14er;

-- 42 L1_SingleEG18 : EG18
l1_singleeg18 <= singleeg_145873080;
algo(63) <= l1_singleeg18;

-- 44 L1_SingleEG26 : EG26
l1_singleeg26 <= singleeg_145873206;
algo(64) <= l1_singleeg26;

-- 192 L1_SingleEG2_BptxAND : EG2 AND EXT_BPTX_plus_AND_minus.v0
l1_singleeg2_bptxand <= singleeg_1139634 and singleext_10371607390599051624;
algo(65) <= l1_singleeg2_bptxand;

-- 206 L1_AlwaysTrue : EXT_BPTX_plus_AND_minus.v0 OR (NOT EXT_BPTX_plus_AND_minus.v0)
l1_alwaystrue <= singleext_10371607390599051624 or (not singleext_10371607390599051624);
algo(66) <= l1_alwaystrue;

-- 255 L1_ZeroBias_copy : EXT_BPTX_plus_AND_minus.v0
l1_zerobias_copy <= singleext_10371607390599051624;
algo(67) <= l1_zerobias_copy;

-- 0 L1_ZeroBias : EXT_BPTX_plus_AND_minus.v0
l1_zerobias <= singleext_10371607390599051624;
algo(68) <= l1_zerobias;

-- 258 L1_SingleEG32 : EG32
l1_singleeg32 <= singleeg_145873330;
algo(69) <= l1_singleeg32;

-- 259 L1_SingleEG36 : EG36
l1_singleeg36 <= singleeg_145873334;
algo(70) <= l1_singleeg36;

-- 50 L1_SingleEG40 : EG40
l1_singleeg40 <= singleeg_145873456;
algo(71) <= l1_singleeg40;

-- 39 L1_SingleEG5 : EG5
l1_singleeg5 <= singleeg_1139637;
algo(72) <= l1_singleeg5;

-- 63 L1_SingleIsoEG20er : EG20[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg20er <= singleeg_6872943369141609713;
algo(73) <= l1_singleisoeg20er;

-- 64 L1_SingleIsoEG22er : EG22[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg22er <= singleeg_6872945568164865265;
algo(74) <= l1_singleisoeg22er;

-- 65 L1_SingleIsoEG24er : EG24[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg24er <= singleeg_6872947767188120817;
algo(75) <= l1_singleisoeg24er;

-- 66 L1_SingleIsoEG26er : EG26[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg26er <= singleeg_6872949966211376369;
algo(76) <= l1_singleisoeg26er;

-- 68 L1_SingleIsoEG28er : EG28[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg28er <= singleeg_6872952165234631921;
algo(77) <= l1_singleisoeg28er;

-- 69 L1_SingleIsoEG30er : EG30[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg30er <= singleeg_6873084106629965041;
algo(78) <= l1_singleisoeg30er;

-- 263 L1_SingleIsoEG32er : EG32[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg32er <= singleeg_6873086305653220593;
algo(79) <= l1_singleisoeg32er;

-- 70 L1_SingleIsoEG34er : EG34[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg34er <= singleeg_6873088504676476145;
algo(80) <= l1_singleisoeg34er;

-- 85 L1_SingleJet120 : JET120
l1_singlejet120 <= singlejet_2561319655728;
algo(81) <= l1_singlejet120;

-- 86 L1_SingleJet140 : JET140
l1_singlejet140 <= singlejet_2561319655984;
algo(82) <= l1_singlejet140;

-- 80 L1_SingleJet16 : JET16
l1_singlejet16 <= singlejet_20010309814;
algo(83) <= l1_singlejet16;

-- 89 L1_SingleJet170 : JET170
l1_singlejet170 <= singlejet_2561319656368;
algo(84) <= l1_singlejet170;

-- 81 L1_SingleJet20 : JET20
l1_singlejet20 <= singlejet_20010309936;
algo(85) <= l1_singlejet20;

-- 82 L1_SingleJet35 : JET35
l1_singlejet35 <= singlejet_20010310069;
algo(86) <= l1_singlejet35;

-- 194 L1_SingleJet8_BptxAND : JET8 AND EXT_BPTX_plus_AND_minus.v0
l1_singlejet8_bptxand <= singlejet_156330552 and singleext_10371607390599051624;
algo(87) <= l1_singlejet8_bptxand;

-- 191 L1_SingleJetC20_NotBptxOR : JET20[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0)
l1_singlejetc20_notbptxor <= singlejet_5967545309707548871 and (not singleext_10104897634845317422);
algo(88) <= l1_singlejetc20_notbptxor;

-- 202 L1_SingleJetC32_NotBptxOR_3BX : JET32[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_singlejetc32_notbptxor_3bx <= singlejet_5967545327155853511 and (not singleext_17561531836164454847) and (not singleext_10104897634845317422) and (not singleext_17561531836164454591);
algo(89) <= l1_singlejetc32_notbptxor_3bx;

-- 200 L1_SingleMuOpen_NotBptxOR_3BX : MU0[MU-QLTY_OPEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_singlemuopen_notbptxor_3bx <= singlemu_14769293018627052229 and (not singleext_17561531836164454847) and (not singleext_10104897634845317422) and (not singleext_17561531836164454591);
algo(90) <= l1_singlemuopen_notbptxor_3bx;

-- 201 L1_SingleJetC20_NotBptxOR_3BX : JET20[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_singlejetc20_notbptxor_3bx <= singlejet_5967545309707548871 and (not singleext_17561531836164454847) and (not singleext_10104897634845317422) and (not singleext_17561531836164454591);
algo(91) <= l1_singlejetc20_notbptxor_3bx;

-- 203 L1_SingleJetC36_NotBptxOR_3BX : JET36[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_singlejetc36_notbptxor_3bx <= singlejet_5967545327692724423 and (not singleext_17561531836164454847) and (not singleext_10104897634845317422) and (not singleext_17561531836164454591);
algo(92) <= l1_singlejetc36_notbptxor_3bx;

-- 209 L1_BptxOR : EXT_BPTX_plus_OR_minus.v0
l1_bptxor <= singleext_10104897634845317422;
algo(93) <= l1_bptxor;

-- 254 L1_NotBptxOR : NOT EXT_BPTX_plus_OR_minus.v0
l1_notbptxor <= not singleext_10104897634845317422;
algo(94) <= l1_notbptxor;

-- 9 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_singlemu18 <= singlemu_17545683162572296645;
algo(95) <= l1_singlemu18;

-- 12 L1_SingleMu25 : MU25[MU-QLTY_SNGL]
l1_singlemu25 <= singlemu_17545685310055944645;
algo(96) <= l1_singlemu25;

-- 22 L1_SingleMu30er : MU30[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu30er <= singlemu_11649248473972557216;
algo(97) <= l1_singlemu30er;

-- 218 L1_SingleMuCosmics : MU0
l1_singlemucosmics <= singlemu_1272496;
algo(98) <= l1_singlemucosmics;

-- 106 L1_SingleTau100er : TAU100[TAU-ETA_2p13]
l1_singletau100er <= singletau_3484211327656040900;
algo(99) <= l1_singletau100er;

-- 105 L1_SingleTau80er : TAU80[TAU-ETA_2p13]
l1_singletau80er <= singletau_16608844133906550600;
algo(100) <= l1_singletau80er;

-- 251 L1_MinimumBiasHF0_AND : MBT0HFP1 AND MBT0HFM1
l1_minimumbiashf0_and <= singlembt0hfp_43640316738250801 and singlembt0hfm_43640316738250417;
algo(101) <= l1_minimumbiashf0_and;

-- 247 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimumbiashf0_and_bptxand <= (singlembt0hfp_43640316738250801 and singlembt0hfm_43640316738250417) and singleext_10371607390599051624;
algo(102) <= l1_minimumbiashf0_and_bptxand;

-- 246 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimumbiashf0_or_bptxand <= (singlembt0hfp_43640316738250801 or singlembt0hfm_43640316738250417) and singleext_10371607390599051624;
algo(103) <= l1_minimumbiashf0_or_bptxand;

-- 250 L1_MinimumBiasHF0_OR : MBT0HFP1 OR MBT0HFM1
l1_minimumbiashf0_or <= singlembt0hfp_43640316738250801 or singlembt0hfm_43640316738250417;
algo(104) <= l1_minimumbiashf0_or;

-- 142 L1_ETM100 : ETM100
l1_etm100 <= singleetm_2393532815408;
algo(105) <= l1_etm100;

-- 141 L1_ETM70 : ETM70
l1_etm70 <= singleetm_18699475888;
algo(106) <= l1_etm70;

-- 125 L1_ETM80 : ETM80
l1_etm80 <= singleetm_18699476016;
algo(107) <= l1_etm80;

-- 126 L1_ETM90 : ETM90
l1_etm90 <= singleetm_18699476144;
algo(108) <= l1_etm90;

-- 135 L1_ETT25 : ETT25
l1_ett25 <= singleett_18699589941;
algo(109) <= l1_ett25;

-- 136 L1_ETT40_BptxAND : ETT40 AND EXT_BPTX_plus_AND_minus.v0
l1_ett40_bptxand <= singleett_18699590192 and singleext_10371607390599051624;
algo(110) <= l1_ett40_bptxand;

-- 245 L1_ETT60_BptxAND : ETT60 AND EXT_BPTX_plus_AND_minus.v0
l1_ett60_bptxand <= singleett_18699590448 and singleext_10371607390599051624;
algo(111) <= l1_ett60_bptxand;

-- 131 L1_HTM120 : HTM120
l1_htm120 <= singlehtm_2496612030768;
algo(112) <= l1_htm120;

-- 133 L1_HTM140 : HTM140
l1_htm140 <= singlehtm_2496612031024;
algo(113) <= l1_htm140;

-- 127 L1_HTM50 : HTM50
l1_htm50 <= singlehtm_19504782000;
algo(114) <= l1_htm50;

-- 115 L1_HTT120 : HTT120
l1_htt120 <= singlehtt_2496626710832;
algo(115) <= l1_htt120;

-- 119 L1_HTT240 : HTT240
l1_htt240 <= singlehtt_2496626727472;
algo(116) <= l1_htt240;

-- 122 L1_HTT280 : HTT280
l1_htt280 <= singlehtt_2496626727984;
algo(117) <= l1_htt280;

-- 124 L1_HTT320 : HTT320
l1_htt320 <= singlehtt_2496626743600;
algo(118) <= l1_htt320;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;