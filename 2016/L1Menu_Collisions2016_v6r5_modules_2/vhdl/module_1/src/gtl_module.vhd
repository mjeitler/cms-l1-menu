-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:

-- Module ID: 1

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
    signal DoubleMU_16961154507842811908 : std_logic;
    signal SingleMU_17545683093852819909 : std_logic;
    signal DoubleMU_16961158905889323012 : std_logic;
    signal SingleEXT_7332905005558692114 : std_logic;
    signal SingleEXT_15455824636181887660 : std_logic;
    signal SingleMU_17545683128212558277 : std_logic;
    signal SingleEXT_17561531836164454848 : std_logic;
    signal DoubleJET_8281320350476519461 : std_logic;
    signal SingleEG_145873072 : std_logic;
    signal SingleEG_14262501742662192051 : std_logic;
    signal DoubleJET_8659513516097456851 : std_logic;
    signal DoubleMU_16961163853691648004 : std_logic;
    signal SingleMU_14769293105595978181 : std_logic;
    signal SingleEXT_17118203077108929635 : std_logic;
    signal SingleMU_17545685224156598725 : std_logic;
    signal SingleEXT_6912739140295604792 : std_logic;
    signal DoubleJET_8659228673866386131 : std_logic;
    signal SingleEXT_17561531836164454591 : std_logic;
    signal SingleJET_2561319671856 : std_logic;
    signal SingleMU_17545685258516337093 : std_logic;
    signal DoubleTAU_10196652277112847102 : std_logic;
    signal SingleJET_2561319656112 : std_logic;
    signal DoubleJET_8659301379072772819 : std_logic;
    signal SingleEXT_17561531836164454847 : std_logic;
    signal DoubleJET_8659370613945584339 : std_logic;
    signal SingleEXT_17561531836164454592 : std_logic;
    signal SingleEXT_7332905005558692115 : std_logic;
    signal SingleEG_145873200 : std_logic;
    signal SingleMU_17545687423179854277 : std_logic;
    signal DoubleJET_8659374977632357075 : std_logic;
    signal SingleEXT_17833638493488257651 : std_logic;
    signal SingleMU_7037562455545169312 : std_logic;
    signal SingleETM_18699475504 : std_logic;
    signal SingleJET_5967545327155853511 : std_logic;
    signal SingleEG_145873204 : std_logic;
    signal SingleMBT1HFM_43640317006685873 : std_logic;
    signal DoubleTAU_5584966257611717374 : std_logic;
    signal SingleEXT_14414193171404190569 : std_logic;
    signal SingleJET_2561319656496 : std_logic;
    signal SingleMU_7145648846602061216 : std_logic;
    signal SingleHTM_19504782256 : std_logic;
    signal DoubleJET_8659444315584383699 : std_logic;
    signal SingleEG_145873208 : std_logic;
    signal SingleMU_7181677643621025184 : std_logic;
    signal DoubleJET_8659439917537872595 : std_logic;
    signal SingleHTT_2496626710837 : std_logic;
    signal SingleETM_18699475637 : std_logic;
    signal SingleHTM_2496612030512 : std_logic;
    signal SingleMU_9343405464758863264 : std_logic;
    signal DoubleJET_8659448610551679699 : std_logic;
    signal SingleEXT_10104897634845317422 : std_logic;
    signal SingleEXT_6926915327998939228 : std_logic;
    signal SingleHTT_2496626711216 : std_logic;
    signal DoubleEG_14367290900143979231 : std_logic;
    signal MuonMuonCorrelation_6226381454046753505 : std_logic;
    signal SingleEG_145873332 : std_logic;
    signal SingleEXT_15455824636181887661 : std_logic;
    signal DoubleJET_8659515749480450771 : std_logic;
    signal SingleHTT_2496626711344 : std_logic;
    signal SingleTAU_16608830939767017288 : std_logic;
    signal SingleETT_18699590069 : std_logic;
    signal DoubleMU_14585777620730815295 : std_logic;
    signal SingleEG_145873336 : std_logic;
    signal SingleJET_5974216382062607868 : std_logic;
    signal SingleEXT_6873400283626490434 : std_logic;
    signal SingleTAU_16608831008486494024 : std_logic;
    signal MuonMuonCorrelation_8008405571232419574 : std_logic;
    signal SingleHTT_2496626726960 : std_logic;
    signal SingleETM_18699475893 : std_logic;
    signal SingleJET_5967545378427025607 : std_logic;
    signal DoubleJET_8659444281224645331 : std_logic;
    signal DoubleMU_14585796862184301375 : std_logic;
    signal SingleEG_145873461 : std_logic;
    signal SingleJET_5974006375341702652 : std_logic;
    signal SingleEXT_10371607390599051624 : std_logic;
    signal SingleEG_6872811427746276593 : std_logic;
    signal SingleTAU_22686292658 : std_logic;
    signal SingleEXT_6395198100430131034 : std_logic;
    signal QuadJET_2680186536839014580 : std_logic;
    signal SingleJET_5974144913806802428 : std_logic;
    signal QuadJET_2825463805626214580 : std_logic;
    signal SingleETM_18699475632 : std_logic;
    signal SingleJET_5974147112830057980 : std_logic;
    signal CaloCaloCorrelation_14501897532220062144 : std_logic;
    signal SingleTAU_3484215725702552004 : std_logic;
    signal SingleJET_5974214183039352316 : std_logic;
    signal SingleHTM_19504782128 : std_logic;
    signal CaloEsumCorrelation_16768129600233686289 : std_logic;
    signal SingleETM_18699476149 : std_logic;
    signal DoubleMU_18206240164090448142 : std_logic;
    signal TripleEG_4430569691209534124 : std_logic;
    signal SingleMU_17545683021081726533 : std_logic;
    signal SingleJET_5974285651295157756 : std_logic;
    signal SingleEG_12507428088042853440 : std_logic;
    signal TripleJET_7930354149017105525 : std_logic;
    signal SingleHTT_2496626727856 : std_logic;
    signal SingleHTM_2496612031152 : std_logic;
    signal CaloMuonCorrelation_10791898730651162912 : std_logic;
    signal TripleJET_7930493752634094709 : std_logic;
    signal CaloMuonCorrelation_15993852978349077723 : std_logic;
    signal SingleTAU_218368042610145022 : std_logic;
    signal SingleHTT_2496626727216 : std_logic;
    signal SingleEXT_15455824636181887405 : std_logic;
    signal TripleJET_7932644363018286197 : std_logic;
    signal SingleJET_5974287850318413308 : std_logic;
    signal TripleMU_3324682852515662879 : std_logic;
    signal SingleHTT_2496626743344 : std_logic;
    signal SingleEG_1139639 : std_logic;
    signal DoubleTAU_973280238110587646 : std_logic;
    signal CaloMuonCorrelation_16240389188362377217 : std_logic;
    signal SingleHTT_2496626727728 : std_logic;
    signal DoubleJET_15912440717418279010 : std_logic;
    signal DoubleJET_8659301241633819347 : std_logic;
    signal TripleMU_3324692885559266335 : std_logic;
    signal SingleMBT1HFP_43640317006686257 : std_logic;
    signal SingleEXT_14715923867298343304 : std_logic;
    signal SingleHTM_19504782384 : std_logic;
    signal SingleEG_145873328 : std_logic;
    signal DoubleEG_14367282104050956127 : std_logic;
    signal SingleJET_15014918520304220377 : std_logic;
    signal SingleHTM_2496612030896 : std_logic;
    signal DoubleEG_14367823063771822943 : std_logic;
    signal SingleJET_5974075644574252540 : std_logic;
    signal SingleEG_12507579852182361152 : std_logic;
    signal SingleMU_14769293018627052229 : std_logic;
    signal SingleJET_20010309810 : std_logic;
    signal SingleJET_5974354920527707644 : std_logic;
    signal SingleEG_12507579852184458304 : std_logic;
    signal SingleMU_14769293071236239813 : std_logic;
    signal SingleEG_12507579852186555456 : std_logic;
    signal SingleETT_18699590320 : std_logic;
    signal DoubleEG_14367845054004377695 : std_logic;
    signal SingleEG_12507579852188652608 : std_logic;
    signal SingleMU_14769293122775847365 : std_logic;
    signal SingleEXT_15455824636181887404 : std_logic;
    signal SingleEG_12507579852190749760 : std_logic;
    signal SingleMU_14769293139955716549 : std_logic;
    signal SingleJET_20010310832 : std_logic;
    signal SingleETM_2393532815664 : std_logic;
    signal SingleEG_12507579852316578880 : std_logic;
    signal SingleMU_14769293157135585733 : std_logic;
    signal SingleETM_18699476021 : std_logic;
    signal SingleEG_12507579852318676032 : std_logic;
    signal DoubleJET_15894421920862285922 : std_logic;
    signal DoubleEG_14367831859864844383 : std_logic;
    signal SingleMU_16260934492399787300 : std_logic;
    signal SingleEXT_2629888000553438421 : std_logic;
    signal DoubleEG_14367836257911355231 : std_logic;
    signal SingleEG_12507579852320773184 : std_logic;
    signal SingleJET_20010310448 : std_logic;
    signal SingleEG_12507579852322870336 : std_logic;
    signal SingleETM_18699475760 : std_logic;
    signal SingleMU_17545683059493081541 : std_logic;
    signal CaloCaloCorrelation_14433217633607694784 : std_logic;
    signal SingleJET_2561319656240 : std_logic;

-- Signal definition for algorithms names
    signal L1_SingleMuOpen : std_logic;
    signal L1_SingleMu3 : std_logic;
    signal L1_SingleMu7 : std_logic;
    signal L1_SingleMu12 : std_logic;
    signal L1_SingleMu14 : std_logic;
    signal L1_SingleMu16 : std_logic;
    signal L1_SingleMu22 : std_logic;
    signal L1_SingleMu30 : std_logic;
    signal L1_SingleMu10_LowQ : std_logic;
    signal L1_SingleMu20er : std_logic;
    signal L1_DoubleMu0 : std_logic;
    signal L1_DoubleMu_10_3p5 : std_logic;
    signal L1_DoubleMu_11_4 : std_logic;
    signal L1_DoubleMu_15_5 : std_logic;
    signal L1_DoubleMu_12_8 : std_logic;
    signal L1_DoubleMu0er1p6_dEta_Max1p8_OS : std_logic;
    signal L1_TripleMu0 : std_logic;
    signal L1_TripleMu_5_5_3 : std_logic;
    signal L1_SingleEG10 : std_logic;
    signal L1_SingleEG24 : std_logic;
    signal L1_SingleEG28 : std_logic;
    signal L1_SingleEG30 : std_logic;
    signal L1_SingleEG34 : std_logic;
    signal L1_SingleEG45 : std_logic;
    signal L1_SingleIsoEG20 : std_logic;
    signal L1_SingleIsoEG22 : std_logic;
    signal L1_SingleIsoEG24 : std_logic;
    signal L1_SingleIsoEG26 : std_logic;
    signal L1_SingleIsoEG28 : std_logic;
    signal L1_SingleIsoEG30 : std_logic;
    signal L1_SingleIsoEG34 : std_logic;
    signal L1_SingleIsoEG18er : std_logic;
    signal L1_DoubleEG_15_10 : std_logic;
    signal L1_DoubleEG_20_18 : std_logic;
    signal L1_DoubleEG_23_10 : std_logic;
    signal L1_TripleEG_18_17_8 : std_logic;
    signal L1_SingleJet60 : std_logic;
    signal L1_SingleJet90 : std_logic;
    signal L1_SingleJet150 : std_logic;
    signal L1_SingleJet160 : std_logic;
    signal L1_SingleJet180 : std_logic;
    signal L1_SingleJet200 : std_logic;
    signal L1_DoubleJetC50 : std_logic;
    signal L1_DoubleJetC60 : std_logic;
    signal L1_DoubleJetC100 : std_logic;
    signal L1_DoubleJetC120 : std_logic;
    signal L1_TripleJet_84_68_48_VBF : std_logic;
    signal L1_TripleJet_88_72_56_VBF : std_logic;
    signal L1_TripleJet_92_76_64_VBF : std_logic;
    signal L1_QuadJetC50 : std_logic;
    signal L1_SingleTau120er : std_logic;
    signal L1_DoubleIsoTau32er : std_logic;
    signal L1_HTT160 : std_logic;
    signal L1_HTT220 : std_logic;
    signal L1_HTT270 : std_logic;
    signal L1_HTT300 : std_logic;
    signal L1_HTM70 : std_logic;
    signal L1_HTM80 : std_logic;
    signal L1_HTM100 : std_logic;
    signal L1_HTM130 : std_logic;
    signal L1_HTM150 : std_logic;
    signal L1_ETM40 : std_logic;
    signal L1_ETM50 : std_logic;
    signal L1_ETM60 : std_logic;
    signal L1_ETM120 : std_logic;
    signal L1_Mu5_EG20 : std_logic;
    signal L1_Mu5_IsoEG20 : std_logic;
    signal L1_Mu12_EG10 : std_logic;
    signal L1_Mu16er_Tau24er : std_logic;
    signal L1_Mu18er_Tau20er : std_logic;
    signal L1_Mu20er_IsoTau26er : std_logic;
    signal L1_DoubleMu7_EG7 : std_logic;
    signal L1_Mu6_DoubleEG17 : std_logic;
    signal L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_Mu6_HTT200 : std_logic;
    signal L1_Mu8_HTT150 : std_logic;
    signal L1_EG25er_HTT125 : std_logic;
    signal L1_QuadJetC36_Tau52 : std_logic;
    signal L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 : std_logic;
    signal L1_DoubleJetC60_ETM60 : std_logic;
    signal L1_Mu0er_ETM40 : std_logic;
    signal L1_Mu0er_ETM55 : std_logic;
    signal L1_Mu10er_ETM50 : std_logic;
    signal L1_HTM80_HTT220 : std_logic;
    signal L1_HTM60_HTT260 : std_logic;
    signal L1_SingleMuOpen_NotBptxOR : std_logic;
    signal L1_SingleJetC32_NotBptxOR : std_logic;
    signal L1_ETT35_BptxAND : std_logic;
    signal L1_SingleJet12_BptxAND : std_logic;
    signal L1_DoubleEG_22_12 : std_logic;
    signal L1_BptxPlus : std_logic;
    signal L1_BptxMinus : std_logic;
    signal L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : std_logic;
    signal L1_ZeroBias_FirstCollidingBunch : std_logic;
    signal L1_DoubleJet16_ForwardBackward : std_logic;
    signal L1_Mu3_JetC60 : std_logic;
    signal L1_Mu3_JetC120 : std_logic;
    signal L1_IsolatedBunch : std_logic;
    signal L1_BptxXOR : std_logic;
    signal L1_BeamGasPlus : std_logic;
    signal L1_BeamGasMinus : std_logic;
    signal L1_BeamGasB1 : std_logic;
    signal L1_BeamGasB2 : std_logic;
    signal L1_BRIL_TRIG0_AND : std_logic;
    signal L1_BRIL_TRIG0_delayedAND : std_logic;
    signal L1_BRIL_TRIG0_OR : std_logic;
    signal L1_BRIL_TRIG0_FstBunchInTrain : std_logic;
    signal L1_ETT50_BptxAND : std_logic;
    signal L1_MinimumBiasHF1_OR_BptxAND : std_logic;
    signal L1_MinimumBiasHF1_AND_BptxAND : std_logic;
    signal L1_MinimumBiasHF1_OR : std_logic;
    signal L1_MinimumBiasHF1_AND : std_logic;
    signal L1_DoubleMu0_ETM40 : std_logic;
    signal L1_SingleEG38 : std_logic;
    signal L1_SingleIsoEG32 : std_logic;
    signal L1_SingleIsoEG36 : std_logic;
    signal L1_DoubleIsoTau34er : std_logic;
    signal L1_IsoEG22er_IsoTau26er_dEta_Min0p2 : std_logic;
    signal L1_IsoEG18er_IsoTau24er_dEta_Min0p2 : std_logic;
    signal L1_ETM75_Jet60_dPhi_Min0p4 : std_logic;
    signal L1_ETM75 : std_logic;
    signal L1_ETM85 : std_logic;
    signal L1_ETM95 : std_logic;
    signal L1_Mu20_IsoEG6 : std_logic;
    signal L1_DoubleEG_25_12 : std_logic;
    signal L1_DoubleIsoTau36er : std_logic;
    signal L1_FirstBunchInTrain : std_logic;
    signal L1_FirstBunchAfterTrain : std_logic;

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
    SingleEXT_7332905005558692114 <= ext_cond_bx_0(0);
    SingleEXT_15455824636181887660 <= ext_cond_bx_m1(32);
    SingleEXT_17561531836164454848 <= ext_cond_bx_m2(35);
    SingleEXT_17118203077108929635 <= ext_cond_bx_0(2);
    SingleEXT_6912739140295604792 <= ext_cond_bx_0(22);
    SingleEXT_17561531836164454591 <= ext_cond_bx_p1(35);
    SingleEXT_17561531836164454847 <= ext_cond_bx_m1(35);
    SingleEXT_17561531836164454592 <= ext_cond_bx_p2(35);
    SingleEXT_7332905005558692115 <= ext_cond_bx_0(1);
    SingleEXT_17833638493488257651 <= ext_cond_bx_0(20);
    SingleEXT_14414193171404190569 <= ext_cond_bx_0(3);
    SingleEXT_10104897634845317422 <= ext_cond_bx_0(35);
    SingleEXT_6926915327998939228 <= ext_cond_bx_0(34);
    SingleEXT_15455824636181887661 <= ext_cond_bx_m2(32);
    SingleEXT_6873400283626490434 <= ext_cond_bx_0(23);
    SingleEXT_10371607390599051624 <= ext_cond_bx_0(32);
    SingleEXT_6395198100430131034 <= ext_cond_bx_0(33);
    SingleEXT_15455824636181887405 <= ext_cond_bx_p2(32);
    SingleEXT_14715923867298343304 <= ext_cond_bx_0(21);
    SingleEXT_15455824636181887404 <= ext_cond_bx_p1(32);
    SingleEXT_2629888000553438421 <= ext_cond_bx_0(19);

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

doublejet_8281320350476519461_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0020", X"0020", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8281320350476519461);



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



singleeg_14262501742662192051_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_14262501742662192051);



doublejet_8659513516097456851_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0080", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659513516097456851);



doublejet_8659228673866386131_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0064", X"0064", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659228673866386131);



singlejet_2561319671856_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0190", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319671856);



doubletau_10196652277112847102_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0048", X"0048", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, doubletau_10196652277112847102);



singlejet_2561319656112_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"012C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319656112);



doublejet_8659301379072772819_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0088", X"0060", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659301379072772819);



doublejet_8659370613945584339_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0090", X"0070", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659370613945584339);



singleeg_145873200_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
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
    port map(lhc_clk, eg_bx_0, singleeg_145873200);



doublejet_8659374977632357075_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0098", X"0080", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659374977632357075);



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



singleeg_145873204_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873204);



doubletau_5584966257611717374_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0044", X"0044", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, doubletau_5584966257611717374);



singlejet_2561319656496_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0168", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319656496);



doublejet_8659444315584383699_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A8", X"0088", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659444315584383699);



singleeg_145873208_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873208);



doublejet_8659439917537872595_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A8", X"0060", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659439917537872595);



doublejet_8659448610551679699_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0090", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659448610551679699);



doubleeg_14367290900143979231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367290900143979231);



singleeg_145873332_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873332);



doublejet_8659515749480450771_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B8", X"0098", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659515749480450771);



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



singleeg_145873336_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"004C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873336);



singlejet_5974216382062607868_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0098", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974216382062607868);



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



singlejet_5967545378427025607_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_5967545378427025607);



doublejet_8659444281224645331_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00B0", X"0070", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659444281224645331);



singleeg_145873461_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"005A", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873461);



singlejet_5974006375341702652_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0060", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974006375341702652);



singleeg_6872811427746276593_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_6872811427746276593);



singletau_22686292658_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0068", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, singletau_22686292658);



quadjet_2680186536839014580_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0048", X"0048", X"0048", X"0048"),
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
    port map(lhc_clk, jet_bx_0, quadjet_2680186536839014580);



singlejet_5974144913806802428_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0080", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974144913806802428);



quadjet_2825463805626214580_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 4, true, JET_TYPE,
        (X"0064", X"0064", X"0064", X"0064"),
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
    port map(lhc_clk, jet_bx_0, quadjet_2825463805626214580);



singlejet_5974147112830057980_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0088", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974147112830057980);



singletau_3484215725702552004_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, singletau_3484215725702552004);



singlejet_5974214183039352316_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0090", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974214183039352316);



tripleeg_4430569691209534124_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 3, true, EG_TYPE,
        (X"0024", X"0022", X"0010", X"0000"),
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
    port map(lhc_clk, eg_bx_0, tripleeg_4430569691209534124);



singlejet_5974285651295157756_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00A8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974285651295157756);



singleeg_12507428088042853440_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507428088042853440);



triplejet_7930354149017105525_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00A8", X"0088", X"0060", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7930354149017105525);



triplejet_7930493752634094709_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B0", X"0090", X"0070", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7930493752634094709);



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



triplejet_7932644363018286197_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 3, true, JET_TYPE,
        (X"00B8", X"0098", X"0080", X"0000"),
        (false, false, false, false),
        (X"0044", X"0044", X"0044", X"0000"), (X"00BB", X"00BB", X"00BB", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, triplejet_7932644363018286197);



singlejet_5974287850318413308_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B0", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974287850318413308);



singleeg_1139639_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"000E", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_1139639);



doubletau_973280238110587646_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0040", X"0040", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, doubletau_973280238110587646);



doublejet_15912440717418279010_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00F0", X"00F0", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_15912440717418279010);



doublejet_8659301241633819347_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659301241633819347);



singleeg_145873328_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873328);



doubleeg_14367282104050956127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"001E", X"0014", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367282104050956127);



singlejet_15014918520304220377_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00F0", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_15014918520304220377);



doubleeg_14367823063771822943_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0028", X"0024", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367823063771822943);



singlejet_5974075644574252540_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0070", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974075644574252540);



singleeg_12507579852182361152_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852182361152);



singlejet_20010309810_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0018", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_20010309810);



singlejet_5974354920527707644_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B8", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0072", X"0000", X"0000", X"0000"), (X"0045", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00BA", X"0000", X"0000", X"0000"), (X"008D", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0, singlejet_5974354920527707644);



singleeg_12507579852184458304_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852184458304);



singleeg_12507579852186555456_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852186555456);



doubleeg_14367845054004377695_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0032", X"0018", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367845054004377695);



singleeg_12507579852188652608_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852188652608);



singleeg_12507579852190749760_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852190749760);



singlejet_20010310832_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310832);



singleeg_12507579852316578880_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852316578880);



singleeg_12507579852318676032_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852318676032);



doublejet_15894421920862285922_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00C8", X"00C8", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_15894421920862285922);



doubleeg_14367831859864844383_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0018", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367831859864844383);



doubleeg_14367836257911355231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002E", X"0014", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_14367836257911355231);



singleeg_12507579852320773184_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0044", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852320773184);



singlejet_20010310448_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310448);



singleeg_12507579852322870336_i: entity work.calo_conditions_v3
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
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_12507579852322870336);



singlejet_2561319656240_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0140", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319656240);





doublemu_16961154507842811908_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0017", X"0009", X"0000", X"0000"),
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
        doublemu_16961154507842811908);



singlemu_17545683093852819909_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001D", X"0000", X"0000", X"0000"),
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
        singlemu_17545683093852819909);



doublemu_16961158905889323012_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"001F", X"000B", X"0000", X"0000"),
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
        doublemu_16961158905889323012);



singlemu_17545683128212558277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0021", X"0000", X"0000", X"0000"),
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
        singlemu_17545683128212558277);



doublemu_16961163853691648004_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0019", X"0011", X"0000", X"0000"),
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
        doublemu_16961163853691648004);



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



singlemu_17545685258516337093_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"002D", X"0000", X"0000", X"0000"),
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
        singlemu_17545685258516337093);



singlemu_17545687423179854277_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003D", X"0000", X"0000", X"0000"),
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
        singlemu_17545687423179854277);



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



singlemu_9343405464758863264_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0029", X"0000", X"0000", X"0000"),
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
        singlemu_9343405464758863264);



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



doublemu_18206240164090448142_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0015", X"0008", X"0000", X"0000"),
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
        doublemu_18206240164090448142);



singlemu_17545683021081726533_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0015", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
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
        singlemu_17545683021081726533);



triplemu_3324682852515662879_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"0001", X"0001", X"0001", X"0000"),
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
        triplemu_3324682852515662879);



triplemu_3324692885559266335_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"000B", X"000B", X"0007", X"0000"),
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
        triplemu_3324692885559266335);



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



singlemu_14769293139955716549_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000F", X"0000", X"0000", X"0000"),
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
        singlemu_14769293139955716549);



singlemu_14769293157135585733_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0011", X"0000", X"0000", X"0000"),
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
        singlemu_14769293157135585733);



singlemu_16260934492399787300_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0001", X"0000", X"0000", X"0000"),
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
        singlemu_16260934492399787300);



singlemu_17545683059493081541_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0019", X"0000", X"0000", X"0000"),
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
        singlemu_17545683059493081541);





singleetm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475504);



singlehtm_19504782256_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782256);



singlehtt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710837);



singleetm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475637);



singlehtm_2496612030512_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030512);



singlehtt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711216);



singlehtt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711344);



singleett_18699590069_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0046",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590069);



singlehtt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626726960);



singleetm_18699475893_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0096",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475893);



singleetm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475632);



singlehtm_19504782128_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782128);



singleetm_18699476149_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00BE",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476149);



singlehtt_2496626727856_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"021C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727856);



singlehtm_2496612031152_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"012C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612031152);



singlehtt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727216);



singlehtt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626743344);



singlehtt_2496626727728_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0208",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727728);



singlehtm_19504782384_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_19504782384);



singlehtm_2496612030896_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0104",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_2496612030896);



singleett_18699590320_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590320);



singleetm_2393532815664_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532815664);



singleetm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699476021);



singleetm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475760);





calocalocorrelation_14501897532220062144_i: entity work.calo_calo_correlation_condition
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
    X"0034",
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
	         calocalocorrelation_14501897532220062144);


calocalocorrelation_14433217633607694784_i: entity work.calo_calo_correlation_condition
  generic map(
    true,
	  true, false, false, false,
	  NR_EG_OBJECTS, true, EG_TYPE,
    X"0024",
    false, X"0030", X"00CF",
    true, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"E",
	  NR_TAU_OBJECTS, true, TAU_TYPE,
    X"0030",
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
	         calocalocorrelation_14433217633607694784);




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


calomuoncorrelation_15993852978349077723_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"00F0",
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
	         calomuoncorrelation_15993852978349077723);


calomuoncorrelation_16240389188362377217_i: entity work.calo_muon_correlation_condition
  generic map(
    true, true, false, false,
    NR_JET_OBJECTS, true, JET_TYPE,
	  X"0078",
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
	         calomuoncorrelation_16240389188362377217);




muonmuoncorrelation_6226381454046753505_i: entity work.muon_muon_correlation_condition
  generic map(
    true,
	  false, true, false, false,
	  true,
    X"0001",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
	  true,
    X"0015",
    true, X"0000",X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  "ign", X"FF00", X"F",
	  "ig",
    0.0, 0.0,
    3.15, 1.0,
    0.0, 0.0, DETA_DPHI_VECTOR_WIDTH_ALL, MUON_MUON_DETA_DPHI_PRECISION,
    0.0, 0.0, MUON_MUON_INV_MASS_PRECISION, MUON_PT_VECTOR_WIDTH, MUON_MUON_COSH_COS_PRECISION, MUON_MUON_COSH_COS_VECTOR_WIDTH
  )
  port map(lhc_clk, mu_bx_0, mu_bx_0,
           ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
	         diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
           mu_pt_vector_bx_0, mu_pt_vector_bx_0,
           mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
	         muonmuoncorrelation_6226381454046753505);


muonmuoncorrelation_8008405571232419574_i: entity work.muon_muon_correlation_condition
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
	         muonmuoncorrelation_8008405571232419574);




caloesumcorrelation_16768129600233686289_i: entity work.calo_esums_correlation_condition
  generic map(
	  NR_JET_OBJECTS, true, JET_TYPE,
    X"0078",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
	  X"F",
    true, ETM_TYPE,
    X"0096",
    true, X"0000", X"0000",
    false, X"0000", X"0000",
    3.15, 0.4, DETA_DPHI_VECTOR_WIDTH_ALL, JET_ETM_DPHI_PRECISION
  )
  port map(lhc_clk, jet_bx_0, etm_bx_0,
	         diff_jet_etm_bx_0_bx_0_phi_vector,
	         caloesumcorrelation_16768129600233686289);





singlembt1hfm_43640317006685873_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFM_TYPE, X"1")
    port map(lhc_clk, mbt1hfm_bx_0, singlembt1hfm_43640317006685873);



singlembt1hfp_43640317006686257_i: entity work.min_bias_hf_conditions
    generic map(true, MBT1HFP_TYPE, X"1")
    port map(lhc_clk, mbt1hfp_bx_0, singlembt1hfp_43640317006686257);




-- Instantiations of algorithms

-- 179 L1_Jet32_DoubleMu_10_0_dPhi_Jet_Mu0_Max0p4_dPhi_Mu_Mu_Min1p0 : dist{JET32,MU0[MU-QLTY_DBLE]}[DPHI_MAX_0p4] AND dist{MU0[MU-QLTY_DBLE],MU10[MU-QLTY_DBLE]}[DPHI_MIN_1p0]
l1_jet32_doublemu_10_0_dphi_jet_mu0_max0p4_dphi_mu_mu_min1p0 <= calomuoncorrelation_10791898730651162912 and muonmuoncorrelation_6226381454046753505;
algo(0) <= l1_jet32_doublemu_10_0_dphi_jet_mu0_max0p4_dphi_mu_mu_min1p0;

-- 177 L1_QuadJetC36_Tau52 : comb{JET36[JET-ETA_CEN],JET36[JET-ETA_CEN],JET36[JET-ETA_CEN],JET36[JET-ETA_CEN]} AND TAU52
l1_quadjetc36_tau52 <= quadjet_2680186536839014580 and singletau_22686292658;
algo(1) <= l1_quadjetc36_tau52;

-- 103 L1_QuadJetC50 : comb{JET50[JET-ETA_CEN],JET50[JET-ETA_CEN],JET50[JET-ETA_CEN],JET50[JET-ETA_CEN]}
l1_quadjetc50 <= quadjet_2825463805626214580;
algo(2) <= l1_quadjetc50;

-- 269 L1_IsoEG18er_IsoTau24er_dEta_Min0p2 : dist{EG18[EG-ISO_0xE,EG-ETA_2p13],TAU24[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_isoeg18er_isotau24er_deta_min0p2 <= calocalocorrelation_14433217633607694784;
algo(3) <= l1_isoeg18er_isotau24er_deta_min0p2;

-- 268 L1_IsoEG22er_IsoTau26er_dEta_Min0p2 : dist{EG22[EG-ISO_0xE,EG-ETA_2p13],TAU26[TAU-ISO_0xE,TAU-ETA_2p13]}[DETA_MIN_0p2]
l1_isoeg22er_isotau26er_deta_min0p2 <= calocalocorrelation_14501897532220062144;
algo(4) <= l1_isoeg22er_isotau26er_deta_min0p2;

-- 210 L1_Mu3_JetC120_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET120[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jetc120_deta_max0p4_dphi_max0p4 <= calomuoncorrelation_15993852978349077723;
algo(5) <= l1_mu3_jetc120_deta_max0p4_dphi_max0p4;

-- 171 L1_Mu3_JetC60_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET60[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jetc60_deta_max0p4_dphi_max0p4 <= calomuoncorrelation_16240389188362377217;
algo(6) <= l1_mu3_jetc60_deta_max0p4_dphi_max0p4;

-- 33 L1_DoubleMu0er1p6_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p6],MU0[MU-QLTY_DBLE,MU-ETA_1p6]}[DETA_MAX_1p8,CHGCOR_OS]
l1_doublemu0er1p6_deta_max1p8_os <= muonmuoncorrelation_8008405571232419574;
algo(7) <= l1_doublemu0er1p6_deta_max1p8_os;

-- 271 L1_ETM75_Jet60_dPhi_Min0p4 : dist{ETM75,JET60}[DPHI_MIN_0p4]
l1_etm75_jet60_dphi_min0p4 <= caloesumcorrelation_16768129600233686289;
algo(8) <= l1_etm75_jet60_dphi_min0p4;

-- 99 L1_TripleJet_84_68_48_VBF : comb{JET84[JET-ETA_CEN],JET68[JET-ETA_CEN],JET48[JET-ETA_CEN]} OR (comb{JET84[JET-ETA_CEN],JET68[JET-ETA_CEN]} AND JET48[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET84[JET-ETA_CEN],JET48[JET-ETA_CEN]} AND JET68[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET68[JET-ETA_CEN],JET48[JET-ETA_CEN]} AND JET84[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triplejet_84_68_48_vbf <= triplejet_7930354149017105525 or (doublejet_8659444315584383699 and singlejet_5974006375341702652) or (doublejet_8659439917537872595 and singlejet_5974147112830057980) or (doublejet_8659301379072772819 and singlejet_5974285651295157756);
algo(9) <= l1_triplejet_84_68_48_vbf;

-- 100 L1_TripleJet_88_72_56_VBF : comb{JET88[JET-ETA_CEN],JET72[JET-ETA_CEN],JET56[JET-ETA_CEN]} OR (comb{JET88[JET-ETA_CEN],JET72[JET-ETA_CEN]} AND JET56[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET88[JET-ETA_CEN],JET56[JET-ETA_CEN]} AND JET72[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET72[JET-ETA_CEN],JET56[JET-ETA_CEN]} AND JET88[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triplejet_88_72_56_vbf <= triplejet_7930493752634094709 or (doublejet_8659448610551679699 and singlejet_5974075644574252540) or (doublejet_8659444281224645331 and singlejet_5974214183039352316) or (doublejet_8659370613945584339 and singlejet_5974287850318413308);
algo(10) <= l1_triplejet_88_72_56_vbf;

-- 101 L1_TripleJet_92_76_64_VBF : comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} OR (comb{JET92[JET-ETA_CEN],JET76[JET-ETA_CEN]} AND JET64[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET92[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET76[JET-ETA_FWD_NEG,JET-ETA_FWD_POS]) OR (comb{JET76[JET-ETA_CEN],JET64[JET-ETA_CEN]} AND JET92[JET-ETA_FWD_NEG,JET-ETA_FWD_POS])
l1_triplejet_92_76_64_vbf <= triplejet_7932644363018286197 or (doublejet_8659515749480450771 and singlejet_5974144913806802428) or (doublejet_8659513516097456851 and singlejet_5974216382062607868) or (doublejet_8659374977632357075 and singlejet_5974354920527707644);
algo(11) <= l1_triplejet_92_76_64_vbf;

-- 168 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_doubleeg17 <= singlemu_14769293122775847365 and doubleeg_14367290900143979231;
algo(12) <= l1_mu6_doubleeg17;

-- 167 L1_DoubleMu7_EG7 : comb{MU7[MU-QLTY_DBLE],MU7[MU-QLTY_DBLE]} AND EG7
l1_doublemu7_eg7 <= doublemu_14585796862184301375 and singleeg_1139639;
algo(13) <= l1_doublemu7_eg7;

-- 149 L1_Mu12_EG10 : MU12[MU-QLTY_SNGL] AND EG10
l1_mu12_eg10 <= singlemu_17545683059493081541 and singleeg_145873072;
algo(14) <= l1_mu12_eg10;

-- 40 L1_SingleEG10 : EG10
l1_singleeg10 <= singleeg_145873072;
algo(15) <= l1_singleeg10;

-- 6 L1_SingleMu12 : MU12[MU-QLTY_SNGL]
l1_singlemu12 <= singlemu_17545683059493081541;
algo(16) <= l1_singlemu12;

-- 275 L1_Mu20_IsoEG6 : MU20[MU-QLTY_SNGL] AND EG6[EG-ISO_0xE]
l1_mu20_isoeg6 <= singlemu_17545685224156598725 and singleeg_12507428088042853440;
algo(17) <= l1_mu20_isoeg6;

-- 217 L1_Mu3_JetC120 : MU3[MU-QLTY_SNGL] AND JET120[JET-ETA_CEN]
l1_mu3_jetc120 <= singlemu_14769293071236239813 and singlejet_15014918520304220377;
algo(18) <= l1_mu3_jetc120;

-- 3 L1_SingleMu3 : MU3[MU-QLTY_SNGL]
l1_singlemu3 <= singlemu_14769293071236239813;
algo(19) <= l1_singlemu3;

-- 216 L1_Mu3_JetC60 : MU3[MU-QLTY_SNGL] AND JET60[JET-ETA_CEN]
l1_mu3_jetc60 <= singlemu_14769293071236239813 and singlejet_5967545378427025607;
algo(20) <= l1_mu3_jetc60;

-- 145 L1_Mu5_EG20 : MU5[MU-QLTY_SNGL] AND EG20
l1_mu5_eg20 <= singlemu_14769293105595978181 and singleeg_145873200;
algo(21) <= l1_mu5_eg20;

-- 148 L1_Mu5_IsoEG20 : MU5[MU-QLTY_SNGL] AND EG20[EG-ISO_0xE]
l1_mu5_isoeg20 <= singlemu_14769293105595978181 and singleeg_12507579852182361152;
algo(22) <= l1_mu5_isoeg20;

-- 54 L1_SingleIsoEG20 : EG20[EG-ISO_0xE]
l1_singleisoeg20 <= singleeg_12507579852182361152;
algo(23) <= l1_singleisoeg20;

-- 79 L1_TripleEG_18_17_8 : comb{EG18,EG17,EG8}
l1_tripleeg_18_17_8 <= tripleeg_4430569691209534124;
algo(24) <= l1_tripleeg_18_17_8;

-- 181 L1_DoubleJetC60_ETM60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]} AND ETM60
l1_doublejetc60_etm60 <= doublejet_8659301241633819347 and singleetm_18699475760;
algo(25) <= l1_doublejetc60_etm60;

-- 94 L1_DoubleJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_doublejetc60 <= doublejet_8659301241633819347;
algo(26) <= l1_doublejetc60;

-- 140 L1_ETM60 : ETM60
l1_etm60 <= singleetm_18699475760;
algo(27) <= l1_etm60;

-- 155 L1_Mu16er_Tau24er : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu16er_tau24er <= singlemu_7145648846602061216 and singletau_16608831008486494024;
algo(28) <= l1_mu16er_tau24er;

-- 156 L1_Mu18er_Tau20er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu18er_tau20er <= singlemu_7181677643621025184 and singletau_16608830939767017288;
algo(29) <= l1_mu18er_tau20er;

-- 159 L1_Mu20er_IsoTau26er : MU20[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu20er_isotau26er <= singlemu_9343405464758863264 and singletau_218368042610145022;
algo(30) <= l1_mu20er_isotau26er;

-- 19 L1_SingleMu20er : MU20[MU-QLTY_SNGL,MU-ETA_2p10]
l1_singlemu20er <= singlemu_9343405464758863264;
algo(31) <= l1_singlemu20er;

-- 71 L1_DoubleEG_15_10 : comb{EG15,EG10}
l1_doubleeg_15_10 <= doubleeg_14367282104050956127;
algo(32) <= l1_doubleeg_15_10;

-- 73 L1_DoubleEG_20_18 : comb{EG20,EG18}
l1_doubleeg_20_18 <= doubleeg_14367823063771822943;
algo(33) <= l1_doubleeg_20_18;

-- 196 L1_DoubleEG_22_12 : comb{EG22,EG12}
l1_doubleeg_22_12 <= doubleeg_14367831859864844383;
algo(34) <= l1_doubleeg_22_12;

-- 76 L1_DoubleEG_23_10 : comb{EG23,EG10}
l1_doubleeg_23_10 <= doubleeg_14367836257911355231;
algo(35) <= l1_doubleeg_23_10;

-- 277 L1_DoubleEG_25_12 : comb{EG25,EG12}
l1_doubleeg_25_12 <= doubleeg_14367845054004377695;
algo(36) <= l1_doubleeg_25_12;

-- 214 L1_DoubleJet16_ForwardBackward : comb{JET16[JET-ETA_FWD_NEG],JET16[JET-ETA_FWD_POS]}
l1_doublejet16_forwardbackward <= doublejet_8281320350476519461;
algo(37) <= l1_doublejet16_forwardbackward;

-- 96 L1_DoubleJetC100 : comb{JET100[JET-ETA_CEN],JET100[JET-ETA_CEN]}
l1_doublejetc100 <= doublejet_15894421920862285922;
algo(38) <= l1_doublejetc100;

-- 98 L1_DoubleJetC120 : comb{JET120[JET-ETA_CEN],JET120[JET-ETA_CEN]}
l1_doublejetc120 <= doublejet_15912440717418279010;
algo(39) <= l1_doublejetc120;

-- 93 L1_DoubleJetC50 : comb{JET50[JET-ETA_CEN],JET50[JET-ETA_CEN]}
l1_doublejetc50 <= doublejet_8659228673866386131;
algo(40) <= l1_doublejetc50;

-- 256 L1_DoubleMu0_ETM40 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_doublemu0_etm40 <= doublemu_14585777620730815295 and singleetm_18699475504;
algo(41) <= l1_doublemu0_etm40;

-- 24 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_doublemu0 <= doublemu_14585777620730815295;
algo(42) <= l1_doublemu0;

-- 138 L1_ETM40 : ETM40
l1_etm40 <= singleetm_18699475504;
algo(43) <= l1_etm40;

-- 175 L1_EG25er_HTT125 : EG25[EG-ETA_2p13] AND HTT125
l1_eg25er_htt125 <= singleeg_14262501742662192051 and singlehtt_2496626710837;
algo(44) <= l1_eg25er_htt125;

-- 36 L1_TripleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_triplemu0 <= triplemu_3324682852515662879;
algo(45) <= l1_triplemu0;

-- 37 L1_TripleMu_5_5_3 : comb{MU5[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE],MU3[MU-QLTY_DBLE]}
l1_triplemu_5_5_3 <= triplemu_3324692885559266335;
algo(46) <= l1_triplemu_5_5_3;

-- 111 L1_DoubleIsoTau32er : comb{TAU32[TAU-ISO_0xE,TAU-ETA_2p13],TAU32[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau32er <= doubletau_973280238110587646;
algo(47) <= l1_doubleisotau32er;

-- 265 L1_DoubleIsoTau34er : comb{TAU34[TAU-ISO_0xE,TAU-ETA_2p13],TAU34[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau34er <= doubletau_5584966257611717374;
algo(48) <= l1_doubleisotau34er;

-- 278 L1_DoubleIsoTau36er : comb{TAU36[TAU-ISO_0xE,TAU-ETA_2p13],TAU36[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_doubleisotau36er <= doubletau_10196652277112847102;
algo(49) <= l1_doubleisotau36er;

-- 26 L1_DoubleMu_10_3p5 : comb{MU10[MU-QLTY_DBLE],MU3p5[MU-QLTY_DBLE]}
l1_doublemu_10_3p5 <= doublemu_18206240164090448142;
algo(50) <= l1_doublemu_10_3p5;

-- 27 L1_DoubleMu_11_4 : comb{MU11[MU-QLTY_DBLE],MU4[MU-QLTY_DBLE]}
l1_doublemu_11_4 <= doublemu_16961154507842811908;
algo(51) <= l1_doublemu_11_4;

-- 31 L1_DoubleMu_12_8 : comb{MU12[MU-QLTY_DBLE],MU8[MU-QLTY_DBLE]}
l1_doublemu_12_8 <= doublemu_16961163853691648004;
algo(52) <= l1_doublemu_12_8;

-- 30 L1_DoubleMu_15_5 : comb{MU15[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_doublemu_15_5 <= doublemu_16961158905889323012;
algo(53) <= l1_doublemu_15_5;

-- 182 L1_Mu0er_ETM40 : MU0[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM40
l1_mu0er_etm40 <= singlemu_16260934492399787300 and singleetm_18699475504;
algo(54) <= l1_mu0er_etm40;

-- 183 L1_Mu0er_ETM55 : MU0[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM55
l1_mu0er_etm55 <= singlemu_16260934492399787300 and singleetm_18699475637;
algo(55) <= l1_mu0er_etm55;

-- 185 L1_Mu10er_ETM50 : MU10[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM50
l1_mu10er_etm50 <= singlemu_7037562455545169312 and singleetm_18699475632;
algo(56) <= l1_mu10er_etm50;

-- 139 L1_ETM50 : ETM50
l1_etm50 <= singleetm_18699475632;
algo(57) <= l1_etm50;

-- 172 L1_Mu6_HTT200 : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200 <= singlemu_14769293122775847365 and singlehtt_2496626726960;
algo(58) <= l1_mu6_htt200;

-- 173 L1_Mu8_HTT150 : MU8[MU-QLTY_SNGL] AND HTT150
l1_mu8_htt150 <= singlemu_14769293157135585733 and singlehtt_2496626711216;
algo(59) <= l1_mu8_htt150;

-- 43 L1_SingleEG24 : EG24
l1_singleeg24 <= singleeg_145873204;
algo(60) <= l1_singleeg24;

-- 45 L1_SingleEG28 : EG28
l1_singleeg28 <= singleeg_145873208;
algo(61) <= l1_singleeg28;

-- 46 L1_SingleEG30 : EG30
l1_singleeg30 <= singleeg_145873328;
algo(62) <= l1_singleeg30;

-- 48 L1_SingleEG34 : EG34
l1_singleeg34 <= singleeg_145873332;
algo(63) <= l1_singleeg34;

-- 260 L1_SingleEG38 : EG38
l1_singleeg38 <= singleeg_145873336;
algo(64) <= l1_singleeg38;

-- 52 L1_SingleEG45 : EG45
l1_singleeg45 <= singleeg_145873461;
algo(65) <= l1_singleeg45;

-- 62 L1_SingleIsoEG18er : EG18[EG-ISO_0xE,EG-ETA_2p13]
l1_singleisoeg18er <= singleeg_6872811427746276593;
algo(66) <= l1_singleisoeg18er;

-- 55 L1_SingleIsoEG22 : EG22[EG-ISO_0xE]
l1_singleisoeg22 <= singleeg_12507579852184458304;
algo(67) <= l1_singleisoeg22;

-- 56 L1_SingleIsoEG24 : EG24[EG-ISO_0xE]
l1_singleisoeg24 <= singleeg_12507579852186555456;
algo(68) <= l1_singleisoeg24;

-- 57 L1_SingleIsoEG26 : EG26[EG-ISO_0xE]
l1_singleisoeg26 <= singleeg_12507579852188652608;
algo(69) <= l1_singleisoeg26;

-- 59 L1_SingleIsoEG28 : EG28[EG-ISO_0xE]
l1_singleisoeg28 <= singleeg_12507579852190749760;
algo(70) <= l1_singleisoeg28;

-- 60 L1_SingleIsoEG30 : EG30[EG-ISO_0xE]
l1_singleisoeg30 <= singleeg_12507579852316578880;
algo(71) <= l1_singleisoeg30;

-- 261 L1_SingleIsoEG32 : EG32[EG-ISO_0xE]
l1_singleisoeg32 <= singleeg_12507579852318676032;
algo(72) <= l1_singleisoeg32;

-- 61 L1_SingleIsoEG34 : EG34[EG-ISO_0xE]
l1_singleisoeg34 <= singleeg_12507579852320773184;
algo(73) <= l1_singleisoeg34;

-- 262 L1_SingleIsoEG36 : EG36[EG-ISO_0xE]
l1_singleisoeg36 <= singleeg_12507579852322870336;
algo(74) <= l1_singleisoeg36;

-- 195 L1_SingleJet12_BptxAND : JET12 AND EXT_BPTX_plus_AND_minus.v0
l1_singlejet12_bptxand <= singlejet_20010309810 and singleext_10371607390599051624;
algo(75) <= l1_singlejet12_bptxand;

-- 87 L1_SingleJet150 : JET150
l1_singlejet150 <= singlejet_2561319656112;
algo(76) <= l1_singlejet150;

-- 88 L1_SingleJet160 : JET160
l1_singlejet160 <= singlejet_2561319656240;
algo(77) <= l1_singlejet160;

-- 90 L1_SingleJet180 : JET180
l1_singlejet180 <= singlejet_2561319656496;
algo(78) <= l1_singlejet180;

-- 91 L1_SingleJet200 : JET200
l1_singlejet200 <= singlejet_2561319671856;
algo(79) <= l1_singlejet200;

-- 83 L1_SingleJet60 : JET60
l1_singlejet60 <= singlejet_20010310448;
algo(80) <= l1_singlejet60;

-- 84 L1_SingleJet90 : JET90
l1_singlejet90 <= singlejet_20010310832;
algo(81) <= l1_singlejet90;

-- 190 L1_SingleJetC32_NotBptxOR : JET32[JET-ETA_CEN] AND (NOT EXT_BPTX_plus_OR_minus.v0)
l1_singlejetc32_notbptxor <= singlejet_5967545327155853511 and (not singleext_10104897634845317422);
algo(82) <= l1_singlejetc32_notbptxor;

-- 14 L1_SingleMu10_LowQ : MU10[MU-QLTY_DBLE]
l1_singlemu10_lowq <= singlemu_17545683021081726533;
algo(83) <= l1_singlemu10_lowq;

-- 7 L1_SingleMu14 : MU14[MU-QLTY_SNGL]
l1_singlemu14 <= singlemu_17545683093852819909;
algo(84) <= l1_singlemu14;

-- 8 L1_SingleMu16 : MU16[MU-QLTY_SNGL]
l1_singlemu16 <= singlemu_17545683128212558277;
algo(85) <= l1_singlemu16;

-- 11 L1_SingleMu22 : MU22[MU-QLTY_SNGL]
l1_singlemu22 <= singlemu_17545685258516337093;
algo(86) <= l1_singlemu22;

-- 13 L1_SingleMu30 : MU30[MU-QLTY_SNGL]
l1_singlemu30 <= singlemu_17545687423179854277;
algo(87) <= l1_singlemu30;

-- 5 L1_SingleMu7 : MU7[MU-QLTY_SNGL]
l1_singlemu7 <= singlemu_14769293139955716549;
algo(88) <= l1_singlemu7;

-- 2 L1_SingleMuOpen : MU0[MU-QLTY_OPEN]
l1_singlemuopen <= singlemu_14769293018627052229;
algo(89) <= l1_singlemuopen;

-- 189 L1_SingleMuOpen_NotBptxOR : MU0[MU-QLTY_OPEN] AND (NOT EXT_BPTX_plus_OR_minus.v0)
l1_singlemuopen_notbptxor <= singlemu_14769293018627052229 and (not singleext_10104897634845317422);
algo(90) <= l1_singlemuopen_notbptxor;

-- 107 L1_SingleTau120er : TAU120[TAU-ETA_2p13]
l1_singletau120er <= singletau_3484215725702552004;
algo(91) <= l1_singletau120er;

-- 188 L1_HTM60_HTT260 : HTM60 AND HTT260
l1_htm60_htt260 <= singlehtm_19504782128 and singlehtt_2496626727728;
algo(92) <= l1_htm60_htt260;

-- 187 L1_HTM80_HTT220 : HTM80 AND HTT220
l1_htm80_htt220 <= singlehtm_19504782384 and singlehtt_2496626727216;
algo(93) <= l1_htm80_htt220;

-- 129 L1_HTM80 : HTM80
l1_htm80 <= singlehtm_19504782384;
algo(94) <= l1_htm80;

-- 118 L1_HTT220 : HTT220
l1_htt220 <= singlehtt_2496626727216;
algo(95) <= l1_htt220;

-- 253 L1_MinimumBiasHF1_AND : MBT1HFP1 AND MBT1HFM1
l1_minimumbiashf1_and <= singlembt1hfp_43640317006686257 and singlembt1hfm_43640317006685873;
algo(96) <= l1_minimumbiashf1_and;

-- 252 L1_MinimumBiasHF1_OR : MBT1HFP1 OR MBT1HFM1
l1_minimumbiashf1_or <= singlembt1hfp_43640317006686257 or singlembt1hfm_43640317006685873;
algo(97) <= l1_minimumbiashf1_or;

-- 249 L1_MinimumBiasHF1_AND_BptxAND : (MBT1HFP1 AND MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimumbiashf1_and_bptxand <= (singlembt1hfp_43640317006686257 and singlembt1hfm_43640317006685873) and singleext_10371607390599051624;
algo(98) <= l1_minimumbiashf1_and_bptxand;

-- 248 L1_MinimumBiasHF1_OR_BptxAND : (MBT1HFP1 OR MBT1HFM1) AND EXT_BPTX_plus_AND_minus.v0
l1_minimumbiashf1_or_bptxand <= (singlembt1hfp_43640317006686257 or singlembt1hfm_43640317006685873) and singleext_10371607390599051624;
algo(99) <= l1_minimumbiashf1_or_bptxand;

-- 143 L1_ETM120 : ETM120
l1_etm120 <= singleetm_2393532815664;
algo(100) <= l1_etm120;

-- 272 L1_ETM75 : ETM75
l1_etm75 <= singleetm_18699475893;
algo(101) <= l1_etm75;

-- 273 L1_ETM85 : ETM85
l1_etm85 <= singleetm_18699476021;
algo(102) <= l1_etm85;

-- 274 L1_ETM95 : ETM95
l1_etm95 <= singleetm_18699476149;
algo(103) <= l1_etm95;

-- 193 L1_ETT35_BptxAND : ETT35 AND EXT_BPTX_plus_AND_minus.v0
l1_ett35_bptxand <= singleett_18699590069 and singleext_10371607390599051624;
algo(104) <= l1_ett35_bptxand;

-- 244 L1_ETT50_BptxAND : ETT50 AND EXT_BPTX_plus_AND_minus.v0
l1_ett50_bptxand <= singleett_18699590320 and singleext_10371607390599051624;
algo(105) <= l1_ett50_bptxand;

-- 130 L1_HTM100 : HTM100
l1_htm100 <= singlehtm_2496612030512;
algo(106) <= l1_htm100;

-- 132 L1_HTM130 : HTM130
l1_htm130 <= singlehtm_2496612030896;
algo(107) <= l1_htm130;

-- 134 L1_HTM150 : HTM150
l1_htm150 <= singlehtm_2496612031152;
algo(108) <= l1_htm150;

-- 128 L1_HTM70 : HTM70
l1_htm70 <= singlehtm_19504782256;
algo(109) <= l1_htm70;

-- 116 L1_HTT160 : HTT160
l1_htt160 <= singlehtt_2496626711344;
algo(110) <= l1_htt160;

-- 121 L1_HTT270 : HTT270
l1_htt270 <= singlehtt_2496626727856;
algo(111) <= l1_htt270;

-- 123 L1_HTT300 : HTT300
l1_htt300 <= singlehtt_2496626743344;
algo(112) <= l1_htt300;

-- 240 L1_BRIL_TRIG0_AND : EXT_BRIL_TRIG0_AND
l1_bril_trig0_and <= singleext_17833638493488257651;
algo(113) <= l1_bril_trig0_and;

-- 243 L1_BRIL_TRIG0_FstBunchInTrain : EXT_BRIL_TRIG0_FstBunchInTrain
l1_bril_trig0_fstbunchintrain <= singleext_6873400283626490434;
algo(114) <= l1_bril_trig0_fstbunchintrain;

-- 242 L1_BRIL_TRIG0_OR : EXT_BRIL_TRIG0_OR
l1_bril_trig0_or <= singleext_6912739140295604792;
algo(115) <= l1_bril_trig0_or;

-- 241 L1_BRIL_TRIG0_delayedAND : EXT_BRIL_TRIG0_delayedAND
l1_bril_trig0_delayedand <= singleext_14715923867298343304;
algo(116) <= l1_bril_trig0_delayedand;

-- 223 L1_BeamGasB1 : EXT_BeamGas_B1
l1_beamgasb1 <= singleext_7332905005558692114;
algo(117) <= l1_beamgasb1;

-- 224 L1_BeamGasB2 : EXT_BeamGas_B2
l1_beamgasb2 <= singleext_7332905005558692115;
algo(118) <= l1_beamgasb2;

-- 222 L1_BeamGasMinus : EXT_BeamGas_minus
l1_beamgasminus <= singleext_14414193171404190569;
algo(119) <= l1_beamgasminus;

-- 221 L1_BeamGasPlus : EXT_BeamGas_plus
l1_beamgasplus <= singleext_17118203077108929635;
algo(120) <= l1_beamgasplus;

-- 208 L1_BptxMinus : EXT_BPTX_minus.v0
l1_bptxminus <= singleext_6926915327998939228;
algo(121) <= l1_bptxminus;

-- 220 L1_BptxXOR : (EXT_BPTX_plus.v0 AND (NOT EXT_BPTX_minus.v0)) OR (EXT_BPTX_minus.v0 AND (NOT EXT_BPTX_plus.v0))
l1_bptxxor <= (singleext_6395198100430131034 and (not singleext_6926915327998939228)) or (singleext_6926915327998939228 and (not singleext_6395198100430131034));
algo(122) <= l1_bptxxor;

-- 207 L1_BptxPlus : EXT_BPTX_plus.v0
l1_bptxplus <= singleext_6395198100430131034;
algo(123) <= l1_bptxplus;

-- 282 L1_FirstBunchAfterTrain : EXT_BPTX_plus_AND_minus.v0-2 AND EXT_BPTX_plus_AND_minus.v0-1 AND (NOT EXT_BPTX_plus_OR_minus.v0) AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_firstbunchaftertrain <= singleext_15455824636181887661 and singleext_15455824636181887660 and (not singleext_10104897634845317422) and (not singleext_17561531836164454591) and (not singleext_17561531836164454592);
algo(124) <= l1_firstbunchaftertrain;

-- 281 L1_FirstBunchInTrain : (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND EXT_BPTX_plus_AND_minus.v0+1 AND EXT_BPTX_plus_AND_minus.v0+2
l1_firstbunchintrain <= (not singleext_17561531836164454848) and (not singleext_17561531836164454847) and singleext_10371607390599051624 and singleext_15455824636181887404 and singleext_15455824636181887405;
algo(125) <= l1_firstbunchintrain;

-- 219 L1_IsolatedBunch : (NOT EXT_BPTX_plus_OR_minus.v0-2) AND (NOT EXT_BPTX_plus_OR_minus.v0-1) AND EXT_BPTX_plus_AND_minus.v0 AND (NOT EXT_BPTX_plus_OR_minus.v0+1) AND (NOT EXT_BPTX_plus_OR_minus.v0+2)
l1_isolatedbunch <= (not singleext_17561531836164454848) and (not singleext_17561531836164454847) and singleext_10371607390599051624 and (not singleext_17561531836164454591) and (not singleext_17561531836164454592);
algo(126) <= l1_isolatedbunch;

-- 211 L1_ZeroBias_FirstCollidingBunch : EXT_BRIL_TRIG3_FstColBunch
l1_zerobias_firstcollidingbunch <= singleext_2629888000553438421;
algo(127) <= l1_zerobias_firstcollidingbunch;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;