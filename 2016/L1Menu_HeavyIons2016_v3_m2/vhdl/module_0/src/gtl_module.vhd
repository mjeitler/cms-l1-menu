-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:

-- Module ID: 0

-- Name of L1 Trigger Menu:
-- L1Menu_HeavyIons2016_v3

-- Unique ID of L1 Trigger Menu:
-- 0a8aa40d-582c-4418-86a2-c35603804afc

-- Unique ID of firmware implementation:
-- d657cb37-e079-4148-92d8-ec377e08677a

-- Scale set:
-- 2016-04-27

-- VHDL producer version
-- v1.0.0

-- ========================================================

-- Version-history:
-- HB 2016-09-16: v1.1.0: Implemented new esums with ETTEM, "TOWERCNT" (ECAL sum), ETMHF and HTMHF.
-- HB 2016-08-31: v1.0.0: Same version as v0.0.10
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
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
        ettem_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        etmhf_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
        htmhf_data : in std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
        towercount_data : in std_logic_vector(MAX_TOWERCOUNT_BITS-1 downto 0);
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
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
    signal ettem_bx_p2, ettem_bx_p1, ettem_bx_0, ettem_bx_m1, ettem_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal etmhf_bx_p2, etmhf_bx_p1, etmhf_bx_0, etmhf_bx_m1, etmhf_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
    signal htmhf_bx_p2, htmhf_bx_p1, htmhf_bx_0, htmhf_bx_m1, htmhf_bx_m2 : std_logic_vector(MAX_ESUMS_BITS-1 downto 0);
    signal towercount_bx_p2, towercount_bx_p1, towercount_bx_0, towercount_bx_m1, towercount_bx_m2 : std_logic_vector(MAX_TOWERCOUNT_BITS-1 downto 0);
-- ****************************************************************************************
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
    signal ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.
    signal mu_pt_vector_bx_0: diff_inputs_array(0 to NR_MU_OBJECTS-1) := (others => (others => '0'));
    signal mu_eta_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);
    signal mu_phi_integer_bx_0: diff_integer_inputs_array(0 to NR_MU_OBJECTS-1) := (others => 0);


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.
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
    signal single_ext_13411810255817494270 : std_logic;
    signal single_ext_14106346774065907231 : std_logic;
    signal single_ext_1543099582833751334 : std_logic;
    signal single_ext_17561531836164454591 : std_logic;
    signal single_ext_17561531836164454592 : std_logic;
    signal single_ext_17561531836164454847 : std_logic;
    signal single_ext_17561531836164454848 : std_logic;
    signal single_ext_8082506271259815918 : std_logic;
    signal single_mbt0_hfm_43640316738250417 : std_logic;
    signal single_mbt0_hfm_43640316738250418 : std_logic;
    signal single_mbt0_hfm_43640316738250419 : std_logic;
    signal single_mbt0_hfp_43640316738250801 : std_logic;
    signal single_mbt0_hfp_43640316738250802 : std_logic;
    signal single_mbt0_hfp_43640316738250803 : std_logic;
    signal single_ett_18699589941 : std_logic;
    signal single_ett_18699590064 : std_logic;
    signal single_ett_18699590069 : std_logic;
    signal single_ett_18699590192 : std_logic;
    signal single_ett_18699590197 : std_logic;
    signal single_ett_18699590320 : std_logic;
    signal single_ett_18699590448 : std_logic;
    signal single_ett_18699590704 : std_logic;
    signal single_ett_18699590832 : std_logic;
    signal single_ett_2393547495472 : std_logic;
    signal single_ett_2393547495600 : std_logic;
    signal single_ett_2393547495728 : std_logic;
    signal single_ett_2393547495856 : std_logic;
    signal single_ett_2393547495984 : std_logic;
    signal single_ett_2393547496112 : std_logic;
    signal single_towercount_14241805328170593819 : std_logic;
    signal single_towercount_14241805328170593824 : std_logic;
    signal single_towercount_14241805328170593947 : std_logic;
    signal single_towercount_14241805328170593951 : std_logic;
    signal single_towercount_14241805328170593955 : std_logic;
    signal single_towercount_14241805328170594077 : std_logic;
    signal single_towercount_14241805328170594081 : std_logic;
    signal single_towercount_14241805328170594203 : std_logic;
    signal single_towercount_14241805328170594207 : std_logic;
    signal single_towercount_14241805328170594331 : std_logic;
    signal single_towercount_14241805328170594336 : std_logic;
    signal single_towercount_14241805328170594459 : std_logic;
    signal single_towercount_14241805328170594464 : std_logic;
    signal single_towercount_15170162782299901458 : std_logic;
    signal single_towercount_15170162782299901463 : std_logic;
    signal single_towercount_15170162782299901586 : std_logic;
    signal single_towercount_15170162782299901591 : std_logic;
    signal single_towercount_15170162782299901714 : std_logic;
    signal single_towercount_15170162782299901719 : std_logic;
    signal single_towercount_15170162782299901842 : std_logic;
    signal single_towercount_15170162782299901847 : std_logic;
    signal single_towercount_15170162782299901970 : std_logic;
    signal single_towercount_15170162782299901975 : std_logic;
    signal single_towercount_15170162782299902098 : std_logic;
    signal single_towercount_15170162782299902103 : std_logic;
    signal single_towercount_15170162782299902226 : std_logic;
    signal single_towercount_15170162782299902231 : std_logic;
    signal single_towercount_15170162782299902354 : std_logic;
    signal single_towercount_15170162782299902359 : std_logic;
    signal single_towercount_15170162782299902482 : std_logic;
    signal single_towercount_15170162782299902487 : std_logic;
    signal single_towercount_15170162782299902610 : std_logic;
    signal single_towercount_15170162782299917842 : std_logic;
    signal invariant_mass_14448006258560744856 : std_logic;
    signal invariant_mass_14448006260424517736 : std_logic;
    signal invariant_mass_9095745556844200608 : std_logic;
    signal double_eg_8902241604802172142 : std_logic;
    signal double_mu_12394164411069199406 : std_logic;
    signal double_mu_14585777620730815295 : std_logic;
    signal double_mu_14585778097856672575 : std_logic;
    signal double_mu_3137853811412695564 : std_logic;
    signal double_mu_3137853811412761100 : std_logic;
    signal single_eg_1139634 : std_logic;
    signal single_eg_1139637 : std_logic;
    signal single_eg_12507428088041804864 : std_logic;
    signal single_eg_12507579852048143424 : std_logic;
    signal single_eg_12507579852052337728 : std_logic;
    signal single_eg_12507579852056532032 : std_logic;
    signal single_eg_12507579852186555456 : std_logic;
    signal single_eg_12507579852316578880 : std_logic;
    signal single_eg_145873072 : std_logic;
    signal single_eg_145873076 : std_logic;
    signal single_eg_145873080 : std_logic;
    signal single_eg_145873204 : std_logic;
    signal single_eg_145873328 : std_logic;
    signal single_jet_12390508092828276120 : std_logic;
    signal single_jet_12391633992735118744 : std_logic;
    signal single_jet_156330548 : std_logic;
    signal single_jet_156330552 : std_logic;
    signal single_jet_20010309810 : std_logic;
    signal single_jet_20010309814 : std_logic;
    signal single_jet_20010309936 : std_logic;
    signal single_jet_20010309940 : std_logic;
    signal single_jet_20010309944 : std_logic;
    signal single_jet_20010310066 : std_logic;
    signal single_jet_20010310070 : std_logic;
    signal single_jet_20010310192 : std_logic;
    signal single_jet_20010310196 : std_logic;
    signal single_jet_20010310200 : std_logic;
    signal single_jet_20010310322 : std_logic;
    signal single_jet_20010310326 : std_logic;
    signal single_jet_20010310448 : std_logic;
    signal single_jet_3813110137886304535 : std_logic;
    signal single_jet_3813110137886308695 : std_logic;
    signal single_jet_3813110137888401687 : std_logic;
    signal single_jet_3813110137888405847 : std_logic;
    signal single_jet_3813119280797935895 : std_logic;
    signal single_jet_3813119280797940055 : std_logic;
    signal single_jet_3813119280800033047 : std_logic;
    signal single_jet_3813119280800037207 : std_logic;
    signal single_jet_5967545344067287239 : std_logic;
    signal single_mu_14769293018627052229 : std_logic;
    signal single_mu_14769293019696632261 : std_logic;
    signal single_mu_14769293071236239813 : std_logic;
    signal single_mu_14769293105595978181 : std_logic;
    signal single_mu_14769293139955716549 : std_logic;
    signal single_mu_17545683059493081541 : std_logic;

-- Signal definition for algorithms names
    signal l1_zero_bias : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_minimum_bias_hf0_or : std_logic;
    signal l1_minimum_bias_hf0_and : std_logic;
    signal l1_minimum_bias_hf0_or_bptx_and_copy : std_logic;
    signal l1_zero_bias_copy : std_logic;
    signal l1_not_bptx_or : std_logic;
    signal l1_single_jet_c40_not_bptx_or_5_bx : std_logic;
    signal l1_single_mu0 : std_logic;
    signal l1_single_mu0_bptx_and : std_logic;
    signal l1_single_mu3_single_jet20_bptx_and : std_logic;
    signal l1_single_mu_open : std_logic;
    signal l1_single_mu_open_bptx_and : std_logic;
    signal l1_single_mu3 : std_logic;
    signal l1_single_mu3_bptx_and : std_logic;
    signal l1_single_mu5 : std_logic;
    signal l1_single_mu5_bptx_and : std_logic;
    signal l1_single_mu7 : std_logic;
    signal l1_single_mu7_bptx_and : std_logic;
    signal l1_single_mu12_bptx_and : std_logic;
    signal l1_double_mu_open : std_logic;
    signal l1_double_mu_open_bptx_and : std_logic;
    signal l1_double_mu0 : std_logic;
    signal l1_double_mu0_bptx_and : std_logic;
    signal l1_double_mu_open_mass_gt1_bptx_and : std_logic;
    signal l1_double_mu0_mass_gt1_bptx_and : std_logic;
    signal l1_double_mu_open_os_bptx_and : std_logic;
    signal l1_double_mu_open_ss_bptx_and : std_logic;
    signal l1_double_mu10_bptx_and : std_logic;
    signal l1_double_mu10_mass60to150_bptx_and : std_logic;
    signal l1_single_eg2 : std_logic;
    signal l1_single_eg2_bptx_and : std_logic;
    signal l1_single_eg5 : std_logic;
    signal l1_single_eg5_bptx_and : std_logic;
    signal l1_single_eg10_bptx_and : std_logic;
    signal l1_single_eg14_bptx_and : std_logic;
    signal l1_single_eg18_bptx_and : std_logic;
    signal l1_single_eg24_bptx_and : std_logic;
    signal l1_single_eg30_bptx_and : std_logic;
    signal l1_single_iso_eg5 : std_logic;
    signal l1_single_iso_eg5_bptx_and : std_logic;
    signal l1_single_iso_eg10_bptx_and : std_logic;
    signal l1_single_iso_eg14_bptx_and : std_logic;
    signal l1_single_iso_eg18_bptx_and : std_logic;
    signal l1_single_iso_eg24_bptx_and : std_logic;
    signal l1_single_iso_eg30_bptx_and : std_logic;
    signal l1_single_mu_open_not_bptx_or : std_logic;
    signal l1_single_jet4 : std_logic;
    signal l1_single_jet4_bptx_and : std_logic;
    signal l1_single_jet4_mid_eta2p5 : std_logic;
    signal l1_single_jet4_mid_eta2p5_bptx_and : std_logic;
    signal l1_single_jet8 : std_logic;
    signal l1_single_jet8_bptx_and : std_logic;
    signal l1_single_jet8_mid_eta2p5 : std_logic;
    signal l1_single_jet8_mid_eta2p5_bptx_and : std_logic;
    signal l1_single_jet12 : std_logic;
    signal l1_single_jet12_bptx_and : std_logic;
    signal l1_single_jet12_for_eta2p5 : std_logic;
    signal l1_single_jet12_for_eta1p5 : std_logic;
    signal l1_single_jet12_for_eta2p5_bptx_and : std_logic;
    signal l1_single_jet12_for_eta1p5_bptx_and : std_logic;
    signal l1_single_jet16 : std_logic;
    signal l1_single_jet16_bptx_and : std_logic;
    signal l1_single_jet20 : std_logic;
    signal l1_single_jet20_bptx_and : std_logic;
    signal l1_single_jet24 : std_logic;
    signal l1_single_jet24_bptx_and : std_logic;
    signal l1_single_jet24_for_eta2p5 : std_logic;
    signal l1_single_jet24_for_eta2p5_bptx_and : std_logic;
    signal l1_single_jet24_for_eta1p5_bptx_and : std_logic;
    signal l1_single_jet24_for_eta1p5 : std_logic;
    signal l1_single_jet28_bptx_and : std_logic;
    signal l1_single_jet32_bptx_and : std_logic;
    signal l1_single_jet36_bptx_and : std_logic;
    signal l1_single_jet40_bptx_and : std_logic;
    signal l1_single_jet44_bptx_and : std_logic;
    signal l1_single_jet48_bptx_and : std_logic;
    signal l1_single_jet52_bptx_and : std_logic;
    signal l1_single_jet56_bptx_and : std_logic;
    signal l1_single_jet60_bptx_and : std_logic;
    signal l1_single_mu3_single_jet8_bptx_and : std_logic;
    signal l1_ett25 : std_logic;
    signal l1_ett25_bptx_and : std_logic;
    signal l1_ett30 : std_logic;
    signal l1_ett30_bptx_and : std_logic;
    signal l1_ett35 : std_logic;
    signal l1_ett35_bptx_and : std_logic;
    signal l1_ett40 : std_logic;
    signal l1_ett40_bptx_and : std_logic;
    signal l1_ett45 : std_logic;
    signal l1_ett45_bptx_and : std_logic;
    signal l1_ett50 : std_logic;
    signal l1_ett50_bptx_and : std_logic;
    signal l1_ett60 : std_logic;
    signal l1_ett60_bptx_and : std_logic;
    signal l1_ett80 : std_logic;
    signal l1_ett80_bptx_and : std_logic;
    signal l1_ett100 : std_logic;
    signal l1_tower_count40 : std_logic;
    signal l1_tower_count40_bptx_and : std_logic;
    signal l1_tower_count45 : std_logic;
    signal l1_tower_count45_bptx_and : std_logic;
    signal l1_tower_count50 : std_logic;
    signal l1_tower_count50_bptx_and : std_logic;
    signal l1_tower_count54_bptx_and : std_logic;
    signal l1_tower_count58_bptx_and : std_logic;
    signal l1_tower_count62_bptx_and : std_logic;
    signal l1_tower_count66_bptx_and : std_logic;
    signal l1_tower_count70_bptx_and : std_logic;
    signal l1_tower_count74_bptx_and : std_logic;
    signal l1_tower_count80_bptx_and : std_logic;
    signal l1_tower_count85_bptx_and : std_logic;
    signal l1_tower_count90_bptx_and : std_logic;
    signal l1_tower_count100_bptx_and : std_logic;
    signal l1_tower_count120_bptx_and : std_logic;
    signal l1_double_mu_open_two_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_mu_open_two_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_mu_open_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_single_eg5_two_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf0_and : std_logic;
    signal l1_double_eg2_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf0_and : std_logic;
    signal l1_single_eg5_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf0_and : std_logic;
    signal l1_double_mu_open_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_mu_open_not_minimum_bias_hf0_and : std_logic;
    signal l1_double_eg2_two_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_not_minimum_bias_hf0_and : std_logic;
    signal l1_not_minimum_bias_hf0_and_bptx_and : std_logic;
    signal l1_always_true : std_logic;
    signal l1_bptx_or : std_logic;
    signal l1_mu_open_three_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_double_mu_open_three_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_single_eg5_three_tower_hf_veto_or_bptx_and : std_logic;
    signal l1_isolated_bunch : std_logic;
    signal l1_castor_gap_bptx_and : std_logic;
    signal l1_castor_high_jet_bptx_and : std_logic;
    signal l1_castor_medium_jet_bptx_and : std_logic;
    signal l1_castor_halo_muon_bptx_and : std_logic;
    signal l1_castor_halo_muon : std_logic;
    signal l1_castor_medium_jet : std_logic;
    signal l1_single_jet_c40_not_bptx_or_3_bx : std_logic;
    signal l1_tower_count95_bptx_and : std_logic;
    signal l1_tower_count105_bptx_and : std_logic;
    signal l1_tower_count110_bptx_and : std_logic;
    signal l1_tower_count115_bptx_and : std_logic;
    signal l1_tower_count125_bptx_and : std_logic;
    signal l1_tower_count130_bptx_and : std_logic;
    signal l1_tower_count135_bptx_and : std_logic;
    signal l1_tower_count140_bptx_and : std_logic;
    signal l1_tower_count145_bptx_and : std_logic;
    signal l1_tower_count150_bptx_and : std_logic;
    signal l1_tower_count155_bptx_and : std_logic;
    signal l1_tower_count160_bptx_and : std_logic;
    signal l1_tower_count165_bptx_and : std_logic;
    signal l1_tower_count170_bptx_and : std_logic;
    signal l1_tower_count175_bptx_and : std_logic;
    signal l1_tower_count180_bptx_and : std_logic;
    signal l1_tower_count185_bptx_and : std_logic;
    signal l1_tower_count190_bptx_and : std_logic;
    signal l1_tower_count200_bptx_and : std_logic;
    signal l1_tower_count100 : std_logic;
    signal l1_tower_count140 : std_logic;
    signal l1_tower_count180 : std_logic;
    signal l1_ett90_bptx_and : std_logic;
    signal l1_ett100_bptx_and : std_logic;
    signal l1_ett110_bptx_and : std_logic;
    signal l1_ett120_bptx_and : std_logic;
    signal l1_ett130_bptx_and : std_logic;
    signal l1_ett140_bptx_and : std_logic;
    signal l1_ett150_bptx_and : std_logic;

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
-- HB 2016-06-07: inserted new esums quantities (ETTEM and ETMHF).
        ettem_data, ettem_bx_p2, ettem_bx_p1, ettem_bx_0, ettem_bx_m1, ettem_bx_m2,
        etmhf_data, etmhf_bx_p2, etmhf_bx_p1, etmhf_bx_0, etmhf_bx_m1, etmhf_bx_m2,
-- HB 2016-09-16: inserted HTMHF and TOWERCNT
        htmhf_data, htmhf_bx_p2, htmhf_bx_p1, htmhf_bx_0, htmhf_bx_m1, htmhf_bx_m2,
        towercount_data, towercount_bx_p2, towercount_bx_p1, towercount_bx_0, towercount_bx_m1, towercount_bx_m2,
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
    single_ext_13411810255817494270 <= ext_cond_bx_0(38); -- single_ext_13411810255817494270
    single_ext_14106346774065907231 <= ext_cond_bx_0(36); -- single_ext_14106346774065907231
    single_ext_1543099582833751334 <= ext_cond_bx_0(39); -- single_ext_1543099582833751334
    single_ext_17561531836164454591 <= ext_cond_bx_p1(35); -- single_ext_17561531836164454591
    single_ext_17561531836164454592 <= ext_cond_bx_p2(35); -- single_ext_17561531836164454592
    single_ext_17561531836164454847 <= ext_cond_bx_m1(35); -- single_ext_17561531836164454847
    single_ext_17561531836164454848 <= ext_cond_bx_m2(35); -- single_ext_17561531836164454848
    single_ext_8082506271259815918 <= ext_cond_bx_0(37); -- single_ext_8082506271259815918

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


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
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
mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
    mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
    end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
end generate mu_mu_bx_0_bx_0_cosh_cos_l1;


-- Instantiations of conditions
double_eg_8902241604802172142_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0004", X"0004", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_8902241604802172142);


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


single_eg_12507428088041804864_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507428088041804864);


single_eg_12507579852048143424_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852048143424);


single_eg_12507579852052337728_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852052337728);


single_eg_12507579852056532032_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852056532032);


single_eg_12507579852186555456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852186555456);


single_eg_12507579852316578880_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, single_eg_12507579852316578880);


single_eg_145873072_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0014", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873072);


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


single_eg_145873204_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873204);


single_eg_145873328_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873328);


single_jet_12390508092828276120_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0008", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0038", X"0000", X"0000", X"0000"), (X"00C7", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_12390508092828276120);


single_jet_12391633992735118744_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0010", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0038", X"0000", X"0000", X"0000"), (X"00C7", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_12391633992735118744);


single_jet_156330548_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0008", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_156330548);


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


single_jet_20010309814_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0020", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309814);


single_jet_20010309936_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309936);


single_jet_20010309940_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309940);


single_jet_20010309944_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010309944);


single_jet_20010310066_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310066);


single_jet_20010310070_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0048", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310070);


single_jet_20010310192_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310192);


single_jet_20010310196_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0058", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310196);


single_jet_20010310200_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310200);


single_jet_20010310322_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310322);


single_jet_20010310326_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310326);


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


single_jet_3813110137886304535_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00DD", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813110137886304535);


single_jet_3813110137886308695_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00DD", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813110137886308695);


single_jet_3813110137888401687_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C6", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813110137888401687);


single_jet_3813110137888405847_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"00C6", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813110137888405847);


single_jet_3813119280797935895_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0022", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813119280797935895);


single_jet_3813119280797940055_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0022", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813119280797940055);


single_jet_3813119280800033047_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0039", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813119280800033047);


single_jet_3813119280800037207_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0072", X"0000", X"0000", X"0000"), (X"0039", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, single_jet_3813119280800037207);


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


double_mu_12394164411069199406_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0015", X"0015", X"0000", X"0000"),
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
        double_mu_12394164411069199406);


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


double_mu_14585778097856672575_i: entity work.muon_conditions_v3
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
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_14585778097856672575);


double_mu_3137853811412695564_i: entity work.muon_conditions_v3
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
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "os"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_3137853811412695564);


double_mu_3137853811412761100_i: entity work.muon_conditions_v3
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
        (X"FFF0", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ls"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        double_mu_3137853811412761100);


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


single_mu_14769293019696632261_i: entity work.muon_conditions_v3
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
        (X"F000", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_14769293019696632261);


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


single_mu_14769293105595978181_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"000B", X"0000", X"0000", X"0000"),
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
        single_mu_14769293105595978181);


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


single_mu_17545683059493081541_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0019", X"0000", X"0000", X"0000"),
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
        single_mu_17545683059493081541);


single_ett_18699589941_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0032",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699589941);


single_ett_18699590064_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590064);


single_ett_18699590069_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0046",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590069);


single_ett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590192);


single_ett_18699590197_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"005A",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590197);


single_ett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590320);


single_ett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590448);


single_ett_18699590704_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590704);


single_ett_18699590832_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_18699590832);


single_ett_2393547495472_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495472);


single_ett_2393547495600_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495600);


single_ett_2393547495728_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495728);


single_ett_2393547495856_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0104",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495856);


single_ett_2393547495984_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0118",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547495984);


single_ett_2393547496112_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, single_ett_2393547496112);


invariant_mass_14448006258560744856_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true,
        true,
        X"0001",
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
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        500000.0, 0.5, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_14448006258560744856);

invariant_mass_14448006260424517736_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true,
        true,
        X"0001",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        true,
        X"0001",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FFF0", X"F",
        "ig",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        500000.0, 0.5, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_14448006260424517736);

invariant_mass_9095745556844200608_i: entity work.muon_muon_correlation_condition
    generic map(
        true,
        false, false, false, true,
        true,
        X"0015",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        true,
        X"0015",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "ig",
        0.0, 0.0,
        0.0, 0.0,
        0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
        11250.0, 1800.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        invariant_mass_9095745556844200608);

single_mbt0_hfm_43640316738250417_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"1")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250417);


single_mbt0_hfm_43640316738250418_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"2")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250418);


single_mbt0_hfm_43640316738250419_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFM_TYPE, X"3")
    port map(lhc_clk, mbt0hfm_bx_0, single_mbt0_hfm_43640316738250419);


single_mbt0_hfp_43640316738250801_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"1")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250801);


single_mbt0_hfp_43640316738250802_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"2")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250802);


single_mbt0_hfp_43640316738250803_i: entity work.min_bias_hf_conditions
    generic map(true, MBT0HFP_TYPE, X"3")
    port map(lhc_clk, mbt0hfp_bx_0, single_mbt0_hfp_43640316738250803);


single_towercount_14241805328170593819_i: entity work.towercount_condition
    generic map(true, X"0028")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170593819);


single_towercount_14241805328170593824_i: entity work.towercount_condition
    generic map(true, X"002D")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170593824);


single_towercount_14241805328170593947_i: entity work.towercount_condition
    generic map(true, X"0032")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170593947);


single_towercount_14241805328170593951_i: entity work.towercount_condition
    generic map(true, X"0036")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170593951);


single_towercount_14241805328170593955_i: entity work.towercount_condition
    generic map(true, X"003A")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170593955);


single_towercount_14241805328170594077_i: entity work.towercount_condition
    generic map(true, X"003E")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594077);


single_towercount_14241805328170594081_i: entity work.towercount_condition
    generic map(true, X"0042")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594081);


single_towercount_14241805328170594203_i: entity work.towercount_condition
    generic map(true, X"0046")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594203);


single_towercount_14241805328170594207_i: entity work.towercount_condition
    generic map(true, X"004A")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594207);


single_towercount_14241805328170594331_i: entity work.towercount_condition
    generic map(true, X"0050")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594331);


single_towercount_14241805328170594336_i: entity work.towercount_condition
    generic map(true, X"0055")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594336);


single_towercount_14241805328170594459_i: entity work.towercount_condition
    generic map(true, X"005A")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594459);


single_towercount_14241805328170594464_i: entity work.towercount_condition
    generic map(true, X"005F")
    port map(lhc_clk, towercount_bx_0, single_towercount_14241805328170594464);


single_towercount_15170162782299901458_i: entity work.towercount_condition
    generic map(true, X"0064")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901458);


single_towercount_15170162782299901463_i: entity work.towercount_condition
    generic map(true, X"0069")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901463);


single_towercount_15170162782299901586_i: entity work.towercount_condition
    generic map(true, X"006E")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901586);


single_towercount_15170162782299901591_i: entity work.towercount_condition
    generic map(true, X"0073")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901591);


single_towercount_15170162782299901714_i: entity work.towercount_condition
    generic map(true, X"0078")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901714);


single_towercount_15170162782299901719_i: entity work.towercount_condition
    generic map(true, X"007D")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901719);


single_towercount_15170162782299901842_i: entity work.towercount_condition
    generic map(true, X"0082")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901842);


single_towercount_15170162782299901847_i: entity work.towercount_condition
    generic map(true, X"0087")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901847);


single_towercount_15170162782299901970_i: entity work.towercount_condition
    generic map(true, X"008C")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901970);


single_towercount_15170162782299901975_i: entity work.towercount_condition
    generic map(true, X"0091")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299901975);


single_towercount_15170162782299902098_i: entity work.towercount_condition
    generic map(true, X"0096")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902098);


single_towercount_15170162782299902103_i: entity work.towercount_condition
    generic map(true, X"009B")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902103);


single_towercount_15170162782299902226_i: entity work.towercount_condition
    generic map(true, X"00A0")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902226);


single_towercount_15170162782299902231_i: entity work.towercount_condition
    generic map(true, X"00A5")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902231);


single_towercount_15170162782299902354_i: entity work.towercount_condition
    generic map(true, X"00AA")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902354);


single_towercount_15170162782299902359_i: entity work.towercount_condition
    generic map(true, X"00AF")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902359);


single_towercount_15170162782299902482_i: entity work.towercount_condition
    generic map(true, X"00B4")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902482);


single_towercount_15170162782299902487_i: entity work.towercount_condition
    generic map(true, X"00B9")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902487);


single_towercount_15170162782299902610_i: entity work.towercount_condition
    generic map(true, X"00BE")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299902610);


single_towercount_15170162782299917842_i: entity work.towercount_condition
    generic map(true, X"00C8")
    port map(lhc_clk, towercount_bx_0, single_towercount_15170162782299917842);



-- Instantiations of algorithms

-- 0 L1_ZeroBias : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias <= single_ext_10371607390599051624;
algo(44) <= l1_zero_bias;

-- 3 L1_MinimumBiasHF0_OR_BptxAND : (MBT0HFP1 OR MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_or_bptx_and <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(159) <= l1_minimum_bias_hf0_or_bptx_and;

-- 4 L1_MinimumBiasHF0_AND_BptxAND : (MBT0HFP1 AND MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_and_bptx_and <= ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(150) <= l1_minimum_bias_hf0_and_bptx_and;

-- 5 L1_MinimumBiasHF0_OR : MBT0HFP1 OR MBT0HFM1
l1_minimum_bias_hf0_or <= single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417;
algo(170) <= l1_minimum_bias_hf0_or;

-- 6 L1_MinimumBiasHF0_AND : MBT0HFP1 AND MBT0HFM1
l1_minimum_bias_hf0_and <= single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417;
algo(161) <= l1_minimum_bias_hf0_and;

-- 7 L1_MinimumBiasHF0_OR_BptxAND_Copy : (MBT0HFP1 OR MBT0HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimum_bias_hf0_or_bptx_and_copy <= ( single_mbt0_hfp_43640316738250801 or single_mbt0_hfm_43640316738250417 ) and single_ext_10371607390599051624;
algo(7) <= l1_minimum_bias_hf0_or_bptx_and_copy;

-- 8 L1_ZeroBias_copy : EXT_BPTX_plus_AND_minus.v0
l1_zero_bias_copy <= single_ext_10371607390599051624;
algo(74) <= l1_zero_bias_copy;

-- 9 L1_NotBptxOR :  NOT EXT_BPTX_plus_OR_minus.v0
l1_not_bptx_or <= not single_ext_10104897634845317422;
algo(18) <= l1_not_bptx_or;

-- 12 L1_SingleJetC40_NotBptxOR_5BX : JET40[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-2) AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1) AND ( NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_single_jet_c40_not_bptx_or_5_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(166) <= l1_single_jet_c40_not_bptx_or_5_bx;

-- 13 L1_SingleMu0 : MU0[MU-QLTY_SNGL]
l1_single_mu0 <= single_mu_14769293019696632261;
algo(28) <= l1_single_mu0;

-- 14 L1_SingleMu0_BptxAND : MU0[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu0_bptx_and <= single_mu_14769293019696632261 and single_ext_10371607390599051624;
algo(147) <= l1_single_mu0_bptx_and;

-- 15 L1_SingleMu3_SingleJet20_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0 AND JET20
l1_single_mu3_single_jet20_bptx_and <= single_mu_14769293071236239813 and single_ext_10371607390599051624 and single_jet_20010309936;
algo(115) <= l1_single_mu3_single_jet20_bptx_and;

-- 16 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_single_mu_open <= single_mu_14769293018627052229;
algo(93) <= l1_single_mu_open;

-- 17 L1_SingleMuOpen_BptxAND : MU0[MU-QLTY_OPEN] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu_open_bptx_and <= single_mu_14769293018627052229 and single_ext_10371607390599051624;
algo(95) <= l1_single_mu_open_bptx_and;

-- 18 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_single_mu3 <= single_mu_14769293071236239813;
algo(157) <= l1_single_mu3;

-- 19 L1_SingleMu3_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu3_bptx_and <= single_mu_14769293071236239813 and single_ext_10371607390599051624;
algo(108) <= l1_single_mu3_bptx_and;

-- 20 L1_SingleMu5 : MU5[MU-QLTY_SNGL]
l1_single_mu5 <= single_mu_14769293105595978181;
algo(165) <= l1_single_mu5;

-- 21 L1_SingleMu5_BptxAND : MU5[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu5_bptx_and <= single_mu_14769293105595978181 and single_ext_10371607390599051624;
algo(84) <= l1_single_mu5_bptx_and;

-- 22 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_single_mu7 <= single_mu_14769293139955716549;
algo(9) <= l1_single_mu7;

-- 23 L1_SingleMu7_BptxAND : MU7[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu7_bptx_and <= single_mu_14769293139955716549 and single_ext_10371607390599051624;
algo(87) <= l1_single_mu7_bptx_and;

-- 24 L1_SingleMu12_BptxAND : MU12[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0
l1_single_mu12_bptx_and <= single_mu_17545683059493081541 and single_ext_10371607390599051624;
algo(148) <= l1_single_mu12_bptx_and;

-- 25 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu_open <= double_mu_14585778097856672575;
algo(121) <= l1_double_mu_open;

-- 26 L1_DoubleMuOpen_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_bptx_and <= double_mu_14585778097856672575 and single_ext_10371607390599051624;
algo(123) <= l1_double_mu_open_bptx_and;

-- 27 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(152) <= l1_double_mu0;

-- 28 L1_DoubleMu0_BptxAND : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu0_bptx_and <= double_mu_14585777620730815295 and single_ext_10371607390599051624;
algo(104) <= l1_double_mu0_bptx_and;

-- 29 L1_DoubleMuOpen_MassGT1_BptxAND : mass{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[MASS_1] AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_mass_gt1_bptx_and <= invariant_mass_14448006260424517736 and single_ext_10371607390599051624;
algo(109) <= l1_double_mu_open_mass_gt1_bptx_and;

-- 30 L1_DoubleMu0_MassGT1_BptxAND : mass{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}[MASS_1] AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu0_mass_gt1_bptx_and <= invariant_mass_14448006258560744856 and single_ext_10371607390599051624;
algo(0) <= l1_double_mu0_mass_gt1_bptx_and;

-- 31 L1_DoubleMuOpen_OS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_OS] AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_os_bptx_and <= double_mu_3137853811412695564 and single_ext_10371607390599051624;
algo(139) <= l1_double_mu_open_os_bptx_and;

-- 32 L1_DoubleMuOpen_SS_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}[CHGCOR_SS] AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_ss_bptx_and <= double_mu_3137853811412761100 and single_ext_10371607390599051624;
algo(143) <= l1_double_mu_open_ss_bptx_and;

-- 33 L1_DoubleMu10_BptxAND : comb{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]} AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu10_bptx_and <= double_mu_12394164411069199406 and single_ext_10371607390599051624;
algo(113) <= l1_double_mu10_bptx_and;

-- 34 L1_DoubleMu10_Mass60to150_BptxAND : mass{MU10[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]}[MASS_60to150] AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu10_mass60to150_bptx_and <= invariant_mass_9095745556844200608 and single_ext_10371607390599051624;
algo(53) <= l1_double_mu10_mass60to150_bptx_and;

-- 37 L1_SingleEG2 : EG2
l1_single_eg2 <= single_eg_1139634;
algo(39) <= l1_single_eg2;

-- 38 L1_SingleEG2_BptxAND : EG2 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg2_bptx_and <= single_eg_1139634 and single_ext_10371607390599051624;
algo(70) <= l1_single_eg2_bptx_and;

-- 39 L1_SingleEG5 : EG5
l1_single_eg5 <= single_eg_1139637;
algo(48) <= l1_single_eg5;

-- 40 L1_SingleEG5_BptxAND : EG5 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg5_bptx_and <= single_eg_1139637 and single_ext_10371607390599051624;
algo(50) <= l1_single_eg5_bptx_and;

-- 41 L1_SingleEG10_BptxAND : EG10 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg10_bptx_and <= single_eg_145873072 and single_ext_10371607390599051624;
algo(30) <= l1_single_eg10_bptx_and;

-- 42 L1_SingleEG14_BptxAND : EG14 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg14_bptx_and <= single_eg_145873076 and single_ext_10371607390599051624;
algo(24) <= l1_single_eg14_bptx_and;

-- 43 L1_SingleEG18_BptxAND : EG18 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg18_bptx_and <= single_eg_145873080 and single_ext_10371607390599051624;
algo(36) <= l1_single_eg18_bptx_and;

-- 44 L1_SingleEG24_BptxAND : EG24 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg24_bptx_and <= single_eg_145873204 and single_ext_10371607390599051624;
algo(42) <= l1_single_eg24_bptx_and;

-- 45 L1_SingleEG30_BptxAND : EG30 AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg30_bptx_and <= single_eg_145873328 and single_ext_10371607390599051624;
algo(46) <= l1_single_eg30_bptx_and;

-- 49 L1_SingleIsoEG5 : EG5[EG-ISO_0xE]
l1_single_iso_eg5 <= single_eg_12507428088041804864;
algo(10) <= l1_single_iso_eg5;

-- 50 L1_SingleIsoEG5_BptxAND : EG5[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg5_bptx_and <= single_eg_12507428088041804864 and single_ext_10371607390599051624;
algo(118) <= l1_single_iso_eg5_bptx_and;

-- 51 L1_SingleIsoEG10_BptxAND : EG10[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg10_bptx_and <= single_eg_12507579852048143424 and single_ext_10371607390599051624;
algo(65) <= l1_single_iso_eg10_bptx_and;

-- 52 L1_SingleIsoEG14_BptxAND : EG14[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg14_bptx_and <= single_eg_12507579852052337728 and single_ext_10371607390599051624;
algo(117) <= l1_single_iso_eg14_bptx_and;

-- 53 L1_SingleIsoEG18_BptxAND : EG18[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg18_bptx_and <= single_eg_12507579852056532032 and single_ext_10371607390599051624;
algo(155) <= l1_single_iso_eg18_bptx_and;

-- 54 L1_SingleIsoEG24_BptxAND : EG24[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg24_bptx_and <= single_eg_12507579852186555456 and single_ext_10371607390599051624;
algo(1) <= l1_single_iso_eg24_bptx_and;

-- 55 L1_SingleIsoEG30_BptxAND : EG30[EG-ISO_0xE] AND EXT_BPTX_plus_AND_minus.v0
l1_single_iso_eg30_bptx_and <= single_eg_12507579852316578880 and single_ext_10371607390599051624;
algo(5) <= l1_single_iso_eg30_bptx_and;

-- 56 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0)
l1_single_mu_open_not_bptx_or <= single_mu_14769293018627052229 and ( not single_ext_10104897634845317422 );
algo(88) <= l1_single_mu_open_not_bptx_or;

-- 88 L1_SingleJet4 : JET4
l1_single_jet4 <= single_jet_156330548;
algo(81) <= l1_single_jet4;

-- 89 L1_SingleJet4_BptxAND : JET4 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet4_bptx_and <= single_jet_156330548 and single_ext_10371607390599051624;
algo(134) <= l1_single_jet4_bptx_and;

-- 90 L1_SingleJet4_MidEta2p5 : JET4[JET-ETA_MID2p5]
l1_single_jet4_mid_eta2p5 <= single_jet_12390508092828276120;
algo(101) <= l1_single_jet4_mid_eta2p5;

-- 91 L1_SingleJet4_MidEta2p5_BptxAND : JET4[JET-ETA_MID2p5] AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet4_mid_eta2p5_bptx_and <= single_jet_12390508092828276120 and single_ext_10371607390599051624;
algo(103) <= l1_single_jet4_mid_eta2p5_bptx_and;

-- 92 L1_SingleJet8 : JET8
l1_single_jet8 <= single_jet_156330552;
algo(98) <= l1_single_jet8;

-- 93 L1_SingleJet8_BptxAND : JET8 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet8_bptx_and <= single_jet_156330552 and single_ext_10371607390599051624;
algo(125) <= l1_single_jet8_bptx_and;

-- 94 L1_SingleJet8_MidEta2p5 : JET8[JET-ETA_MID2p5]
l1_single_jet8_mid_eta2p5 <= single_jet_12391633992735118744;
algo(122) <= l1_single_jet8_mid_eta2p5;

-- 95 L1_SingleJet8_MidEta2p5_BptxAND : JET8[JET-ETA_MID2p5] AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet8_mid_eta2p5_bptx_and <= single_jet_12391633992735118744 and single_ext_10371607390599051624;
algo(133) <= l1_single_jet8_mid_eta2p5_bptx_and;

-- 96 L1_SingleJet12 : JET12
l1_single_jet12 <= single_jet_20010309810;
algo(14) <= l1_single_jet12;

-- 97 L1_SingleJet12_BptxAND : JET12 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet12_bptx_and <= single_jet_20010309810 and single_ext_10371607390599051624;
algo(25) <= l1_single_jet12_bptx_and;

-- 98 L1_SingleJet12_ForEta2p5 : JET12[JET-ETA_FORNEG2p5] OR JET12[JET-ETA_FORPOS2p5]
l1_single_jet12_for_eta2p5 <= single_jet_3813110137888401687 or single_jet_3813119280800033047;
algo(31) <= l1_single_jet12_for_eta2p5;

-- 99 L1_SingleJet12_ForEta1p5 : JET12[JET-ETA_FORNEG1p5] OR JET12[JET-ETA_FORPOS1p5]
l1_single_jet12_for_eta1p5 <= single_jet_3813110137886304535 or single_jet_3813119280797935895;
algo(20) <= l1_single_jet12_for_eta1p5;

-- 100 L1_SingleJet12_ForEta2p5_BptxAND : (JET12[JET-ETA_FORNEG2p5] OR JET12[JET-ETA_FORPOS2p5]) AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet12_for_eta2p5_bptx_and <= ( single_jet_3813110137888401687 or single_jet_3813119280800033047 ) and single_ext_10371607390599051624;
algo(26) <= l1_single_jet12_for_eta2p5_bptx_and;

-- 101 L1_SingleJet12_ForEta1p5_BptxAND : (JET12[JET-ETA_FORNEG1p5] OR JET12[JET-ETA_FORPOS1p5]) AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet12_for_eta1p5_bptx_and <= ( single_jet_3813110137886304535 or single_jet_3813119280797935895 ) and single_ext_10371607390599051624;
algo(29) <= l1_single_jet12_for_eta1p5_bptx_and;

-- 102 L1_SingleJet16 : JET16
l1_single_jet16 <= single_jet_20010309814;
algo(32) <= l1_single_jet16;

-- 103 L1_SingleJet16_BptxAND : JET16 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet16_bptx_and <= single_jet_20010309814 and single_ext_10371607390599051624;
algo(111) <= l1_single_jet16_bptx_and;

-- 104 L1_SingleJet20 : JET20
l1_single_jet20 <= single_jet_20010309936;
algo(94) <= l1_single_jet20;

-- 105 L1_SingleJet20_BptxAND : JET20 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet20_bptx_and <= single_jet_20010309936 and single_ext_10371607390599051624;
algo(47) <= l1_single_jet20_bptx_and;

-- 107 L1_SingleJet24 : JET24
l1_single_jet24 <= single_jet_20010309940;
algo(97) <= l1_single_jet24;

-- 108 L1_SingleJet24_BptxAND : JET24 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet24_bptx_and <= single_jet_20010309940 and single_ext_10371607390599051624;
algo(54) <= l1_single_jet24_bptx_and;

-- 109 L1_SingleJet24_ForEta2p5 : JET24[JET-ETA_FORNEG2p5] OR JET24[JET-ETA_FORPOS2p5]
l1_single_jet24_for_eta2p5 <= single_jet_3813110137888405847 or single_jet_3813119280800037207;
algo(62) <= l1_single_jet24_for_eta2p5;

-- 110 L1_SingleJet24_ForEta2p5_BptxAND : (JET24[JET-ETA_FORNEG2p5] OR JET24[JET-ETA_FORPOS2p5]) AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet24_for_eta2p5_bptx_and <= ( single_jet_3813110137888405847 or single_jet_3813119280800037207 ) and single_ext_10371607390599051624;
algo(56) <= l1_single_jet24_for_eta2p5_bptx_and;

-- 111 L1_SingleJet24_ForEta1p5_BptxAND : (JET24[JET-ETA_FORNEG1p5] OR JET24[JET-ETA_FORPOS1p5]) AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet24_for_eta1p5_bptx_and <= ( single_jet_3813110137886308695 or single_jet_3813119280797940055 ) and single_ext_10371607390599051624;
algo(58) <= l1_single_jet24_for_eta1p5_bptx_and;

-- 112 L1_SingleJet24_ForEta1p5 : JET24[JET-ETA_FORNEG1p5] OR JET24[JET-ETA_FORPOS1p5]
l1_single_jet24_for_eta1p5 <= single_jet_3813110137886308695 or single_jet_3813119280797940055;
algo(92) <= l1_single_jet24_for_eta1p5;

-- 117 L1_SingleJet28_BptxAND : JET28 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet28_bptx_and <= single_jet_20010309944 and single_ext_10371607390599051624;
algo(71) <= l1_single_jet28_bptx_and;

-- 118 L1_SingleJet32_BptxAND : JET32 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet32_bptx_and <= single_jet_20010310066 and single_ext_10371607390599051624;
algo(68) <= l1_single_jet32_bptx_and;

-- 119 L1_SingleJet36_BptxAND : JET36 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet36_bptx_and <= single_jet_20010310070 and single_ext_10371607390599051624;
algo(75) <= l1_single_jet36_bptx_and;

-- 120 L1_SingleJet40_BptxAND : JET40 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet40_bptx_and <= single_jet_20010310192 and single_ext_10371607390599051624;
algo(57) <= l1_single_jet40_bptx_and;

-- 121 L1_SingleJet44_BptxAND : JET44 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet44_bptx_and <= single_jet_20010310196 and single_ext_10371607390599051624;
algo(80) <= l1_single_jet44_bptx_and;

-- 122 L1_SingleJet48_BptxAND : JET48 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet48_bptx_and <= single_jet_20010310200 and single_ext_10371607390599051624;
algo(89) <= l1_single_jet48_bptx_and;

-- 123 L1_SingleJet52_BptxAND : JET52 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet52_bptx_and <= single_jet_20010310322 and single_ext_10371607390599051624;
algo(112) <= l1_single_jet52_bptx_and;

-- 124 L1_SingleJet56_BptxAND : JET56 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet56_bptx_and <= single_jet_20010310326 and single_ext_10371607390599051624;
algo(106) <= l1_single_jet56_bptx_and;

-- 125 L1_SingleJet60_BptxAND : JET60 AND EXT_BPTX_plus_AND_minus.v0
l1_single_jet60_bptx_and <= single_jet_20010310448 and single_ext_10371607390599051624;
algo(114) <= l1_single_jet60_bptx_and;

-- 126 L1_SingleMu3_SingleJet8_BptxAND : MU3[MU-QLTY_SNGL] AND EXT_BPTX_plus_AND_minus.v0 AND JET8
l1_single_mu3_single_jet8_bptx_and <= single_mu_14769293071236239813 and single_ext_10371607390599051624 and single_jet_156330552;
algo(169) <= l1_single_mu3_single_jet8_bptx_and;

-- 135 L1_ETT25 : ETT25
l1_ett25 <= single_ett_18699589941;
algo(66) <= l1_ett25;

-- 136 L1_ETT25_BptxAND : ETT25 AND EXT_BPTX_plus_AND_minus.v0
l1_ett25_bptx_and <= single_ett_18699589941 and single_ext_10371607390599051624;
algo(90) <= l1_ett25_bptx_and;

-- 137 L1_ETT30 : ETT30
l1_ett30 <= single_ett_18699590064;
algo(105) <= l1_ett30;

-- 138 L1_ETT30_BptxAND : ETT30 AND EXT_BPTX_plus_AND_minus.v0
l1_ett30_bptx_and <= single_ett_18699590064 and single_ext_10371607390599051624;
algo(99) <= l1_ett30_bptx_and;

-- 139 L1_ETT35 : ETT35
l1_ett35 <= single_ett_18699590069;
algo(102) <= l1_ett35;

-- 140 L1_ETT35_BptxAND : ETT35 AND EXT_BPTX_plus_AND_minus.v0
l1_ett35_bptx_and <= single_ett_18699590069 and single_ext_10371607390599051624;
algo(124) <= l1_ett35_bptx_and;

-- 141 L1_ETT40 : ETT40
l1_ett40 <= single_ett_18699590192;
algo(110) <= l1_ett40;

-- 142 L1_ETT40_BptxAND : ETT40 AND EXT_BPTX_plus_AND_minus.v0
l1_ett40_bptx_and <= single_ett_18699590192 and single_ext_10371607390599051624;
algo(37) <= l1_ett40_bptx_and;

-- 143 L1_ETT45 : ETT45
l1_ett45 <= single_ett_18699590197;
algo(116) <= l1_ett45;

-- 144 L1_ETT45_BptxAND : ETT45 AND EXT_BPTX_plus_AND_minus.v0
l1_ett45_bptx_and <= single_ett_18699590197 and single_ext_10371607390599051624;
algo(120) <= l1_ett45_bptx_and;

-- 145 L1_ETT50 : ETT50
l1_ett50 <= single_ett_18699590320;
algo(132) <= l1_ett50;

-- 146 L1_ETT50_BptxAND : ETT50 AND EXT_BPTX_plus_AND_minus.v0
l1_ett50_bptx_and <= single_ett_18699590320 and single_ext_10371607390599051624;
algo(128) <= l1_ett50_bptx_and;

-- 147 L1_ETT60 : ETT60
l1_ett60 <= single_ett_18699590448;
algo(141) <= l1_ett60;

-- 148 L1_ETT60_BptxAND : ETT60 AND EXT_BPTX_plus_AND_minus.v0
l1_ett60_bptx_and <= single_ett_18699590448 and single_ext_10371607390599051624;
algo(158) <= l1_ett60_bptx_and;

-- 149 L1_ETT80 : ETT80
l1_ett80 <= single_ett_18699590704;
algo(12) <= l1_ett80;

-- 150 L1_ETT80_BptxAND : ETT80 AND EXT_BPTX_plus_AND_minus.v0
l1_ett80_bptx_and <= single_ett_18699590704 and single_ext_10371607390599051624;
algo(160) <= l1_ett80_bptx_and;

-- 151 L1_ETT100 : ETT100
l1_ett100 <= single_ett_2393547495472;
algo(91) <= l1_ett100;

-- 175 L1_TowerCount40 : TOWERCOUNT40
l1_tower_count40 <= single_towercount_14241805328170593819;
algo(21) <= l1_tower_count40;

-- 176 L1_TowerCount40_BptxAND : TOWERCOUNT40 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count40_bptx_and <= single_towercount_14241805328170593819 and single_ext_10371607390599051624;
algo(33) <= l1_tower_count40_bptx_and;

-- 177 L1_TowerCount45 : TOWERCOUNT45
l1_tower_count45 <= single_towercount_14241805328170593824;
algo(15) <= l1_tower_count45;

-- 178 L1_TowerCount45_BptxAND : TOWERCOUNT45 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count45_bptx_and <= single_towercount_14241805328170593824 and single_ext_10371607390599051624;
algo(38) <= l1_tower_count45_bptx_and;

-- 179 L1_TowerCount50 : TOWERCOUNT50
l1_tower_count50 <= single_towercount_14241805328170593947;
algo(35) <= l1_tower_count50;

-- 180 L1_TowerCount50_BptxAND : TOWERCOUNT50 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count50_bptx_and <= single_towercount_14241805328170593947 and single_ext_10371607390599051624;
algo(43) <= l1_tower_count50_bptx_and;

-- 181 L1_TowerCount54_BptxAND : TOWERCOUNT54 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count54_bptx_and <= single_towercount_14241805328170593951 and single_ext_10371607390599051624;
algo(138) <= l1_tower_count54_bptx_and;

-- 182 L1_TowerCount58_BptxAND : TOWERCOUNT58 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count58_bptx_and <= single_towercount_14241805328170593955 and single_ext_10371607390599051624;
algo(100) <= l1_tower_count58_bptx_and;

-- 183 L1_TowerCount62_BptxAND : TOWERCOUNT62 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count62_bptx_and <= single_towercount_14241805328170594077 and single_ext_10371607390599051624;
algo(19) <= l1_tower_count62_bptx_and;

-- 184 L1_TowerCount66_BptxAND : TOWERCOUNT66 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count66_bptx_and <= single_towercount_14241805328170594081 and single_ext_10371607390599051624;
algo(41) <= l1_tower_count66_bptx_and;

-- 185 L1_TowerCount70_BptxAND : TOWERCOUNT70 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count70_bptx_and <= single_towercount_14241805328170594203 and single_ext_10371607390599051624;
algo(61) <= l1_tower_count70_bptx_and;

-- 186 L1_TowerCount74_BptxAND : TOWERCOUNT74 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count74_bptx_and <= single_towercount_14241805328170594207 and single_ext_10371607390599051624;
algo(64) <= l1_tower_count74_bptx_and;

-- 187 L1_TowerCount80_BptxAND : TOWERCOUNT80 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count80_bptx_and <= single_towercount_14241805328170594331 and single_ext_10371607390599051624;
algo(67) <= l1_tower_count80_bptx_and;

-- 188 L1_TowerCount85_BptxAND : TOWERCOUNT85 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count85_bptx_and <= single_towercount_14241805328170594336 and single_ext_10371607390599051624;
algo(59) <= l1_tower_count85_bptx_and;

-- 189 L1_TowerCount90_BptxAND : TOWERCOUNT90 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count90_bptx_and <= single_towercount_14241805328170594459 and single_ext_10371607390599051624;
algo(77) <= l1_tower_count90_bptx_and;

-- 190 L1_TowerCount100_BptxAND : TOWERCOUNT100 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count100_bptx_and <= single_towercount_15170162782299901458 and single_ext_10371607390599051624;
algo(107) <= l1_tower_count100_bptx_and;

-- 191 L1_TowerCount120_BptxAND : TOWERCOUNT120 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count120_bptx_and <= single_towercount_15170162782299901714 and single_ext_10371607390599051624;
algo(127) <= l1_tower_count120_bptx_and;

-- 192 L1_DoubleMuOpen_TwoTowerHFVeto_OR_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND ( NOT (MBT0HFP2 AND MBT0HFM2)) AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_two_tower_hf_veto_or_bptx_and <= double_mu_14585778097856672575 and ( not ( single_mbt0_hfp_43640316738250802 and single_mbt0_hfm_43640316738250418 ) ) and single_ext_10371607390599051624;
algo(151) <= l1_double_mu_open_two_tower_hf_veto_or_bptx_and;

-- 193 L1_MuOpen_TwoTowerHFVeto_OR_BptxAND : MU0[MU-QLTY_OPEN] AND ( NOT (MBT0HFP2 AND MBT0HFM2)) AND EXT_BPTX_plus_AND_minus.v0
l1_mu_open_two_tower_hf_veto_or_bptx_and <= single_mu_14769293018627052229 and ( not ( single_mbt0_hfp_43640316738250802 and single_mbt0_hfm_43640316738250418 ) ) and single_ext_10371607390599051624;
algo(17) <= l1_mu_open_two_tower_hf_veto_or_bptx_and;

-- 194 L1_MuOpen_NotMinimumBiasHF0_AND_BptxAND : MU0[MU-QLTY_OPEN] AND ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_BPTX_plus_AND_minus.v0
l1_mu_open_not_minimum_bias_hf0_and_bptx_and <= single_mu_14769293018627052229 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) ) and single_ext_10371607390599051624;
algo(11) <= l1_mu_open_not_minimum_bias_hf0_and_bptx_and;

-- 195 L1_SingleEG5_TwoTowerHFVeto_OR_BptxAND : EG5 AND ( NOT (MBT0HFP2 AND MBT0HFM2)) AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg5_two_tower_hf_veto_or_bptx_and <= single_eg_1139637 and ( not ( single_mbt0_hfp_43640316738250802 and single_mbt0_hfm_43640316738250418 ) ) and single_ext_10371607390599051624;
algo(63) <= l1_single_eg5_two_tower_hf_veto_or_bptx_and;

-- 196 L1_DoubleEG2_NotMinimumBiasHF0_AND : comb{EG2,EG2} AND ( NOT (MBT0HFP1 AND MBT0HFM1))
l1_double_eg2_not_minimum_bias_hf0_and <= double_eg_8902241604802172142 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) );
algo(85) <= l1_double_eg2_not_minimum_bias_hf0_and;

-- 197 L1_DoubleEG2_NotMinimumBiasHF0_AND_BptxAND : comb{EG2,EG2} AND ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_BPTX_plus_AND_minus.v0
l1_double_eg2_not_minimum_bias_hf0_and_bptx_and <= double_eg_8902241604802172142 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) ) and single_ext_10371607390599051624;
algo(126) <= l1_double_eg2_not_minimum_bias_hf0_and_bptx_and;

-- 198 L1_SingleEG5_NotMinimumBiasHF0_AND : EG5 AND ( NOT (MBT0HFP1 AND MBT0HFM1))
l1_single_eg5_not_minimum_bias_hf0_and <= single_eg_1139637 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) );
algo(168) <= l1_single_eg5_not_minimum_bias_hf0_and;

-- 199 L1_SingleEG5_NotMinimumBiasHF0_AND_BptxAND : EG5 AND ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_BPTX_plus_AND_minus.v0
l1_single_eg5_not_minimum_bias_hf0_and_bptx_and <= single_eg_1139637 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) ) and single_ext_10371607390599051624;
algo(51) <= l1_single_eg5_not_minimum_bias_hf0_and_bptx_and;

-- 200 L1_DoubleMuOpen_NotMinimumBiasHF0_AND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND ( NOT (MBT0HFP1 AND MBT0HFM1))
l1_double_mu_open_not_minimum_bias_hf0_and <= double_mu_14585778097856672575 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) );
algo(130) <= l1_double_mu_open_not_minimum_bias_hf0_and;

-- 201 L1_DoubleMuOpen_NotMinimumBiasHF0_AND_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_BPTX_plus_AND_minus.v0
l1_double_mu_open_not_minimum_bias_hf0_and_bptx_and <= double_mu_14585778097856672575 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) ) and single_ext_10371607390599051624;
algo(149) <= l1_double_mu_open_not_minimum_bias_hf0_and_bptx_and;

-- 202 L1_MuOpen_NotMinimumBiasHF0_AND : MU0[MU-QLTY_OPEN] AND ( NOT (MBT0HFP1 AND MBT0HFM1))
l1_mu_open_not_minimum_bias_hf0_and <= single_mu_14769293018627052229 and ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) );
algo(8) <= l1_mu_open_not_minimum_bias_hf0_and;

-- 203 L1_DoubleEG2_TwoTowerHFVeto_OR_BptxAND : comb{EG2,EG2} AND ( NOT (MBT0HFP2 AND MBT0HFM2)) AND EXT_BPTX_plus_AND_minus.v0
l1_double_eg2_two_tower_hf_veto_or_bptx_and <= double_eg_8902241604802172142 and ( not ( single_mbt0_hfp_43640316738250802 and single_mbt0_hfm_43640316738250418 ) ) and single_ext_10371607390599051624;
algo(96) <= l1_double_eg2_two_tower_hf_veto_or_bptx_and;

-- 204 L1_NotMinimumBiasHF0_AND :  NOT (MBT0HFP1 AND MBT0HFM1)
l1_not_minimum_bias_hf0_and <= not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 );
algo(131) <= l1_not_minimum_bias_hf0_and;

-- 205 L1_NotMinimumBiasHF0_AND_BptxAND : ( NOT (MBT0HFP1 AND MBT0HFM1)) AND EXT_BPTX_plus_AND_minus.v0
l1_not_minimum_bias_hf0_and_bptx_and <= ( not ( single_mbt0_hfp_43640316738250801 and single_mbt0_hfm_43640316738250417 ) ) and single_ext_10371607390599051624;
algo(144) <= l1_not_minimum_bias_hf0_and_bptx_and;

-- 206 L1_AlwaysTrue : EXT_BPTX_plus_AND_minus.v0 OR (NOT EXT_BPTX_plus_AND_minus.v0)
l1_always_true <= single_ext_10371607390599051624 or ( not single_ext_10371607390599051624 );
algo(52) <= l1_always_true;

-- 209 L1_BptxOR : EXT_BPTX_plus_OR_minus.v0
l1_bptx_or <= single_ext_10104897634845317422;
algo(135) <= l1_bptx_or;

-- 210 L1_MuOpen_ThreeTowerHFVeto_OR_BptxAND : MU0[MU-QLTY_OPEN] AND  NOT (MBT0HFP3 AND MBT0HFM3)
l1_mu_open_three_tower_hf_veto_or_bptx_and <= single_mu_14769293018627052229 and not ( single_mbt0_hfp_43640316738250803 and single_mbt0_hfm_43640316738250419 );
algo(82) <= l1_mu_open_three_tower_hf_veto_or_bptx_and;

-- 211 L1_DoubleMuOpen_ThreeTowerHFVeto_OR_BptxAND : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]} AND  NOT (MBT0HFP3 AND MBT0HFM3)
l1_double_mu_open_three_tower_hf_veto_or_bptx_and <= double_mu_14585778097856672575 and not ( single_mbt0_hfp_43640316738250803 and single_mbt0_hfm_43640316738250419 );
algo(34) <= l1_double_mu_open_three_tower_hf_veto_or_bptx_and;

-- 212 L1_SingleEG5_ThreeTowerHFVeto_OR_BptxAND : EG5 AND  NOT (MBT0HFP3 AND MBT0HFM3)
l1_single_eg5_three_tower_hf_veto_or_bptx_and <= single_eg_1139637 and not ( single_mbt0_hfp_43640316738250803 and single_mbt0_hfm_43640316738250419 );
algo(60) <= l1_single_eg5_three_tower_hf_veto_or_bptx_and;

-- 219 L1_IsolatedBunch : (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_isolated_bunch <= ( not single_ext_17561531836164454848 ) and ( not single_ext_17561531836164454847 ) and single_ext_10371607390599051624 and ( not single_ext_17561531836164454591 ) and ( not single_ext_17561531836164454592 );
algo(156) <= l1_isolated_bunch;

-- 257 L1_CastorGap_BptxAND : EXT_CastorGap AND EXT_BPTX_plus_AND_minus.v0
l1_castor_gap_bptx_and <= single_ext_14106346774065907231 and single_ext_10371607390599051624;
algo(69) <= l1_castor_gap_bptx_and;

-- 258 L1_CastorHighJet_BptxAND : EXT_CastorHighJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_high_jet_bptx_and <= single_ext_8082506271259815918 and single_ext_10371607390599051624;
algo(137) <= l1_castor_high_jet_bptx_and;

-- 259 L1_CastorMediumJet_BptxAND : EXT_CastorMediumJet AND EXT_BPTX_plus_AND_minus.v0
l1_castor_medium_jet_bptx_and <= single_ext_13411810255817494270 and single_ext_10371607390599051624;
algo(153) <= l1_castor_medium_jet_bptx_and;

-- 260 L1_CastorHaloMuon_BptxAND : EXT_CastorHaloMuon AND EXT_BPTX_plus_AND_minus.v0
l1_castor_halo_muon_bptx_and <= single_ext_1543099582833751334 and single_ext_10371607390599051624;
algo(78) <= l1_castor_halo_muon_bptx_and;

-- 261 L1_CastorHaloMuon : EXT_CastorHaloMuon
l1_castor_halo_muon <= single_ext_1543099582833751334;
algo(73) <= l1_castor_halo_muon;

-- 262 L1_CastorMediumJet : EXT_CastorMediumJet
l1_castor_medium_jet <= single_ext_13411810255817494270;
algo(86) <= l1_castor_medium_jet;

-- 263 L1_SingleJetC40_NotBptxOR_3BX : JET40[JET-ETA_CEN] AND ( NOT EXT_BPTX_plus_OR_minus.v0-1) AND ( NOT EXT_BPTX_plus_OR_minus.v0) AND ( NOT EXT_BPTX_plus_OR_minus.v0+1)
l1_single_jet_c40_not_bptx_or_3_bx <= single_jet_5967545344067287239 and ( not single_ext_17561531836164454847 ) and ( not single_ext_10104897634845317422 ) and ( not single_ext_17561531836164454591 );
algo(140) <= l1_single_jet_c40_not_bptx_or_3_bx;

-- 300 L1_TowerCount95_BptxAND : TOWERCOUNT95 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count95_bptx_and <= single_towercount_14241805328170594464 and single_ext_10371607390599051624;
algo(3) <= l1_tower_count95_bptx_and;

-- 301 L1_TowerCount105_BptxAND : TOWERCOUNT105 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count105_bptx_and <= single_towercount_15170162782299901463 and single_ext_10371607390599051624;
algo(162) <= l1_tower_count105_bptx_and;

-- 302 L1_TowerCount110_BptxAND : TOWERCOUNT110 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count110_bptx_and <= single_towercount_15170162782299901586 and single_ext_10371607390599051624;
algo(6) <= l1_tower_count110_bptx_and;

-- 303 L1_TowerCount115_BptxAND : TOWERCOUNT115 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count115_bptx_and <= single_towercount_15170162782299901591 and single_ext_10371607390599051624;
algo(79) <= l1_tower_count115_bptx_and;

-- 304 L1_TowerCount125_BptxAND : TOWERCOUNT125 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count125_bptx_and <= single_towercount_15170162782299901719 and single_ext_10371607390599051624;
algo(129) <= l1_tower_count125_bptx_and;

-- 305 L1_TowerCount130_BptxAND : TOWERCOUNT130 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count130_bptx_and <= single_towercount_15170162782299901842 and single_ext_10371607390599051624;
algo(136) <= l1_tower_count130_bptx_and;

-- 306 L1_TowerCount135_BptxAND : TOWERCOUNT135 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count135_bptx_and <= single_towercount_15170162782299901847 and single_ext_10371607390599051624;
algo(142) <= l1_tower_count135_bptx_and;

-- 307 L1_TowerCount140_BptxAND : TOWERCOUNT140 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count140_bptx_and <= single_towercount_15170162782299901970 and single_ext_10371607390599051624;
algo(119) <= l1_tower_count140_bptx_and;

-- 308 L1_TowerCount145_BptxAND : TOWERCOUNT145 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count145_bptx_and <= single_towercount_15170162782299901975 and single_ext_10371607390599051624;
algo(145) <= l1_tower_count145_bptx_and;

-- 309 L1_TowerCount150_BptxAND : TOWERCOUNT150 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count150_bptx_and <= single_towercount_15170162782299902098 and single_ext_10371607390599051624;
algo(23) <= l1_tower_count150_bptx_and;

-- 310 L1_TowerCount155_BptxAND : TOWERCOUNT155 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count155_bptx_and <= single_towercount_15170162782299902103 and single_ext_10371607390599051624;
algo(163) <= l1_tower_count155_bptx_and;

-- 311 L1_TowerCount160_BptxAND : TOWERCOUNT160 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count160_bptx_and <= single_towercount_15170162782299902226 and single_ext_10371607390599051624;
algo(167) <= l1_tower_count160_bptx_and;

-- 312 L1_TowerCount165_BptxAND : TOWERCOUNT165 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count165_bptx_and <= single_towercount_15170162782299902231 and single_ext_10371607390599051624;
algo(2) <= l1_tower_count165_bptx_and;

-- 313 L1_TowerCount170_BptxAND : TOWERCOUNT170 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count170_bptx_and <= single_towercount_15170162782299902354 and single_ext_10371607390599051624;
algo(4) <= l1_tower_count170_bptx_and;

-- 314 L1_TowerCount175_BptxAND : TOWERCOUNT175 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count175_bptx_and <= single_towercount_15170162782299902359 and single_ext_10371607390599051624;
algo(49) <= l1_tower_count175_bptx_and;

-- 315 L1_TowerCount180_BptxAND : TOWERCOUNT180 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count180_bptx_and <= single_towercount_15170162782299902482 and single_ext_10371607390599051624;
algo(16) <= l1_tower_count180_bptx_and;

-- 316 L1_TowerCount185_BptxAND : TOWERCOUNT185 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count185_bptx_and <= single_towercount_15170162782299902487 and single_ext_10371607390599051624;
algo(154) <= l1_tower_count185_bptx_and;

-- 317 L1_TowerCount190_BptxAND : TOWERCOUNT190 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count190_bptx_and <= single_towercount_15170162782299902610 and single_ext_10371607390599051624;
algo(22) <= l1_tower_count190_bptx_and;

-- 318 L1_TowerCount200_BptxAND : TOWERCOUNT200 AND EXT_BPTX_plus_AND_minus.v0
l1_tower_count200_bptx_and <= single_towercount_15170162782299917842 and single_ext_10371607390599051624;
algo(171) <= l1_tower_count200_bptx_and;

-- 319 L1_TowerCount100 : TOWERCOUNT100
l1_tower_count100 <= single_towercount_15170162782299901458;
algo(27) <= l1_tower_count100;

-- 320 L1_TowerCount140 : TOWERCOUNT140
l1_tower_count140 <= single_towercount_15170162782299901970;
algo(146) <= l1_tower_count140;

-- 321 L1_TowerCount180 : TOWERCOUNT180
l1_tower_count180 <= single_towercount_15170162782299902482;
algo(13) <= l1_tower_count180;

-- 322 L1_ETT90_BptxAND : ETT90 AND EXT_BPTX_plus_AND_minus.v0
l1_ett90_bptx_and <= single_ett_18699590832 and single_ext_10371607390599051624;
algo(45) <= l1_ett90_bptx_and;

-- 323 L1_ETT100_BptxAND : ETT100 AND EXT_BPTX_plus_AND_minus.v0
l1_ett100_bptx_and <= single_ett_2393547495472 and single_ext_10371607390599051624;
algo(164) <= l1_ett100_bptx_and;

-- 324 L1_ETT110_BptxAND : ETT110 AND EXT_BPTX_plus_AND_minus.v0
l1_ett110_bptx_and <= single_ett_2393547495600 and single_ext_10371607390599051624;
algo(40) <= l1_ett110_bptx_and;

-- 325 L1_ETT120_BptxAND : ETT120 AND EXT_BPTX_plus_AND_minus.v0
l1_ett120_bptx_and <= single_ett_2393547495728 and single_ext_10371607390599051624;
algo(55) <= l1_ett120_bptx_and;

-- 326 L1_ETT130_BptxAND : ETT130 AND EXT_BPTX_plus_AND_minus.v0
l1_ett130_bptx_and <= single_ett_2393547495856 and single_ext_10371607390599051624;
algo(76) <= l1_ett130_bptx_and;

-- 327 L1_ETT140_BptxAND : ETT140 AND EXT_BPTX_plus_AND_minus.v0
l1_ett140_bptx_and <= single_ett_2393547495984 and single_ext_10371607390599051624;
algo(83) <= l1_ett140_bptx_and;

-- 328 L1_ETT150_BptxAND : ETT150 AND EXT_BPTX_plus_AND_minus.v0
l1_ett150_bptx_and <= single_ett_2393547496112 and single_ext_10371607390599051624;
algo(72) <= l1_ett150_bptx_and;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;