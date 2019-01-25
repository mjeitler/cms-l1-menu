-- Description:
-- Global Trigger Logic module.

-- ========================================================
-- from VHDL producer:
      
-- Unique ID of L1 Trigger Menu:
-- X"21c592a9a7df52119d50cea337dcc5a9"
    
-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2015_25nsStage1_v7_uGT_v7
    
-- Scale set:
-- CMS-IN-2013/XXX
    
-- VHDL producer version
-- v0.0.1

-- ========================================================

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
-- HB 2016-01-08: renamed ext_cond after +/-2bx to ext_cond_bx_p2_int, etc., because ext_cond_bx_p2, etc. used in algos (names coming from TME grammar).
    signal ext_cond_bx_p2_int, ext_cond_bx_p1_int, ext_cond_bx_0_int, ext_cond_bx_m1_int, ext_cond_bx_m2_int : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);
    signal ext_cond_bx_p2, ext_cond_bx_p1, ext_cond_bx_0, ext_cond_bx_m1, ext_cond_bx_m2 : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

--     signal ext_cond_bx_p2_pipe, ext_cond_bx_p1_pipe, ext_cond_bx_0_pipe, ext_cond_bx_m1_pipe, ext_cond_bx_m2_pipe : std_logic_vector(NR_EXTERNAL_CONDITIONS-1 downto 0);

    signal algo : std_logic_vector(NR_ALGOS-1 downto 0) := (others => '0');

-- ==== Inserted by TME - begin =============================================================================================================

-- Signal definition of pt, eta and phi for correlation conditions.
-- Insert "signal_correlation_conditions_pt_eta_phi.vhd.j2" as often as an ObjectType at a certain Bx is used in a correlation condition.


-- Signal definition of differences for correlation conditions.
-- Insert "signal_correlation_conditions_differences.vhd.j2" once for correlation conditions of different ObjectTypes and Bx combinations.


-- Signal definition for muon charge correlations.
-- Insert "signal_muon_charge_correlations.vhd.j2" only once for a certain Bx combination,
-- if there is at least one muon condition or one muon-muon correlation condition.
  signal ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0 : muon_charcorr_double_array;
  signal ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0 : muon_charcorr_triple_array;
  signal ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0 : muon_charcorr_quad_array;


-- Signal definition for conditions names
    signal singlemu_14769293136992440261 : std_logic;
    signal singleeg_145873077 : std_logic;
    signal singleett_18699589813 : std_logic;
    signal singleett_18699590192 : std_logic;
    signal singleett_18699590448 : std_logic;
    signal singlehtt_19504896949 : std_logic;
    signal singlemu_17545683056529805253 : std_logic;
    signal doubletau_14079999678046443747 : std_logic;
    signal singleeg_12507579852182361152 : std_logic;
    signal singlejet_20010310322 : std_logic;
    signal singlejet_20010310456 : std_logic;
    signal singlejet_2561319655736 : std_logic;
    signal doubletau_973561713087363838 : std_logic;
    signal doublemu_17437117010404468714 : std_logic;
    signal singleeg_14262501742662192563 : std_logic;
    signal singlehtt_2496626710576 : std_logic;
    signal doublemu_17438110095020255210 : std_logic;
    signal singleeg_6872948866699749105 : std_logic;
    signal singleeg_12507579852187604032 : std_logic;
    signal singleeg_6873084106629965553 : std_logic;
    signal singleeg_6872945568164865777 : std_logic;
    signal doublejet_8659229807737752275 : std_logic;
    signal doublejet_8659448644911418067 : std_logic;
    signal singlemu_9711237232560360119 : std_logic;
    signal doublemu_18098724758520711438 : std_logic;
    signal doublemu_18206810907184482574 : std_logic;
    signal quadjet_2751081844007168180 : std_logic;
    signal singleeg_1139637 : std_logic;
    signal singleeg_145873205 : std_logic;
    signal singleeg_145873456 : std_logic;
    signal singleeg_14262501725884976563 : std_logic;
    signal singleeg_6872943369141610225 : std_logic;
    signal singleeg_145873328 : std_logic;
    signal singleeg_145873333 : std_logic;
    signal singlemu_20848588853 : std_logic;
    signal singlemu_17545683125249281989 : std_logic;
    signal singlemu_9728688681116420791 : std_logic;
    signal singlemu_17545685221193322437 : std_logic;
    signal singlemu_14769293154172309445 : std_logic;
    signal singlehtt_19504896688 : std_logic;
    signal singlemu_17545685307092668357 : std_logic;
    signal singlemu_17545687420216577989 : std_logic;
    signal singleetm_18699475632 : std_logic;
    signal singleetm_18699475888 : std_logic;
    signal singleetm_2393532815408 : std_logic;
    signal singlehtt_2496626710837 : std_logic;
    signal singlehtt_2496626711477 : std_logic;
    signal singlehtt_2496626726960 : std_logic;
    signal singlejet_5967545327155853511 : std_logic;
    signal singleetm_18699475504 : std_logic;
    signal singlehtt_2496626727600 : std_logic;
    signal singlemu_9710674282606938807 : std_logic;
    signal doublemu_14585797036318757695 : std_logic;
    signal singlemu_9711518707537070775 : std_logic;
    signal singlemu_14769293119812571077 : std_logic;
    signal singlemu_14769293085452832709 : std_logic;
    signal singlemu_3988579395159462617 : std_logic;
    signal doublemu_14585794287539688255 : std_logic;
    signal doubleeg_8902241707881387630 : std_logic;
    signal singlemu_14769293102632701893 : std_logic;
    signal doubleeg_8902241742241126126 : std_logic;
    signal singlehtt_2496626711216 : std_logic;
    signal quadjet_2680186536839014580 : std_logic;
    signal singletau_22686292658 : std_logic;
    signal singlemu_17763814103787320114 : std_logic;
    signal triplemu_9114293561179868216 : std_logic;
    signal triplemu_3324693068400445471 : std_logic;
    signal tripleeg_4430569450691365292 : std_logic;
    signal doubleeg_14367282104050956127 : std_logic;
    signal doubleeg_14367831859864844127 : std_logic;
    signal singleetm_18699475637 : std_logic;
    signal singlemu_12527040340151471175 : std_logic;
    signal doublejet_15894421920862285922 : std_logic;
    signal quadjet_2899845767245260980 : std_logic;
    signal singlejet_5967545309707548871 : std_logic;
    signal doublejet_8659232075480484563 : std_logic;
    signal singleetm_18699475760 : std_logic;
    signal doubletau_14808619702871276270 : std_logic;
    signal doubletau_10196933752089623294 : std_logic;
    signal doubletau_14808619836015262477 : std_logic;
    signal singlejet_5974216382062607868 : std_logic;
    signal singlejet_5974354920527707644 : std_logic;
    signal singlejet_5974144913806802428 : std_logic;
    signal triplejet_7932644363018286197 : std_logic;
    signal doublejet_8659374977632357075 : std_logic;
    signal doublejet_8659513516097456851 : std_logic;
    signal doublejet_8659515749480450771 : std_logic;
    signal doublejet_8659439917537872595 : std_logic;
    signal singlejet_5974147112830057980 : std_logic;
    signal triplejet_7930354149017105525 : std_logic;
    signal doublejet_8659301379072772819 : std_logic;
    signal doublejet_8659444315584383699 : std_logic;
    signal singlejet_5974006375341702652 : std_logic;
    signal singlejet_5974285651295157756 : std_logic;
    signal quadmu_8412493752467612928 : std_logic;
    signal doublemu_16961157430756337668 : std_logic;
    signal singlemu_3988579393249071961 : std_logic;
    signal singlemu_1272503 : std_logic;
    signal singleeg_145873072 : std_logic;
    signal singlemu_162879666 : std_logic;
    signal singletau_16608830939767017800 : std_logic;
    signal singlemu_12505349801959197767 : std_logic;
    signal singletau_2452153457785911550 : std_logic;
    signal doublemu_8128595062609530965 : std_logic;
    signal doublemu_12781631550144613991 : std_logic;
    signal doublemu_12781631550150905447 : std_logic;
    signal singlemu_162879670 : std_logic;
    signal singlemu_12505349802087124039 : std_logic;
    signal singlemu_162879792 : std_logic;
    signal singlemu_1272504 : std_logic;
    signal singlemu_162879797 : std_logic;
    signal singlemu_162879920 : std_logic;
    signal singlemu_1272501 : std_logic;
    signal singleeg_145873200 : std_logic;
    signal singleeg_12507579852056532032 : std_logic;
    signal singlemu_1272502 : std_logic;
    signal doubleeg_14367260113818400607 : std_logic;
    signal singleetm_18699475376 : std_logic;
    signal singlemu_12505349801952906311 : std_logic;
    signal singlemu_12505349801957100615 : std_logic;
    signal doublemu_8906806948896397166 : std_logic;
    signal singleeg_1139639 : std_logic;
    signal singlemu_1272500 : std_logic;
    signal singleeg_145873080 : std_logic;
    signal singleeg_1139638 : std_logic;
    signal doublemu_8906806914536658670 : std_logic;
    signal singletau_254396839629109502 : std_logic;
    signal triplemu_6287047278622715060 : std_logic;
    signal triplemu_12465740988095074135 : std_logic;
    signal quadmu_10570387899611405630 : std_logic;
    signal doublemu_14819874771460887482 : std_logic;
    signal singlejet_20010310834 : std_logic;
    signal singlejet_2561319656374 : std_logic;
    signal singlejet_2561319671856 : std_logic;
    signal singlejet_20010310070 : std_logic;
    signal doublejet_15903572090988376162 : std_logic;
    signal singlehtm_5235774947381327925 : std_logic;
    signal singleeg_1139634 : std_logic;
    signal singleeg_1139635 : std_logic;
    signal singlejet_156330552 : std_logic;
    signal singlejet_20010309810 : std_logic;
    signal singlejet_20010309814 : std_logic;
    signal singleetm_18699475248 : std_logic;
    signal singleett_18699589936 : std_logic;
    signal singleett_18699590064 : std_logic;
    signal singlehtt_19504896432 : std_logic;
    signal singlemu_1272499 : std_logic;


-- Signal definition for algorithms names
    signal L1_ZeroBias : std_logic;
    signal L1_SingleEG2_BptxAND : std_logic;
    signal L1_SingleMu7 : std_logic;
    signal L1_SingleEG15 : std_logic;
    signal L1_ETT15_BptxAND : std_logic;
    signal L1_ETT40 : std_logic;
    signal L1_ETT60 : std_logic;
    signal L1_HTT75 : std_logic;
    signal L1_Mu12_EG10 : std_logic;
    signal L1_Mu5_EG15 : std_logic;
    signal L1_DoubleTauJet40er : std_logic;
    signal L1_Mu16er_TauJet20er : std_logic;
    signal L1_HTT100 : std_logic;
    signal L1_SingleIsoEG20 : std_logic;
    signal L1_SingleJet52 : std_logic;
    signal L1_SingleJet68 : std_logic;
    signal L1_SingleJet128 : std_logic;
    signal L1_DoubleIsoTau32er : std_logic;
    signal L1_Mu16er_IsoTau32er : std_logic;
    signal L1_DoubleMu0 : std_logic;
    signal L1_EG25er_HTT100 : std_logic;
    signal L1_DoubleMuOpen : std_logic;
    signal L1_SingleIsoEG25er : std_logic;
    signal L1_SingleIsoEG25 : std_logic;
    signal L1_SingleIsoEG30er : std_logic;
    signal L1_SingleEG10 : std_logic;
    signal L1_SingleIsoEG22er : std_logic;
    signal L1_DoubleJetC52 : std_logic;
    signal L1_DoubleJetC84 : std_logic;
    signal L1_SingleMu14er : std_logic;
    signal L1_DoubleMu_10_Open : std_logic;
    signal L1_DoubleMu_10_3p5 : std_logic;
    signal L1_QuadJetC40 : std_logic;
    signal L1_SingleEG5 : std_logic;
    signal L1_SingleEG25 : std_logic;
    signal L1_SingleEG40 : std_logic;
    signal L1_SingleIsoEG18er : std_logic;
    signal L1_SingleIsoEG20er : std_logic;
    signal L1_SingleEG20 : std_logic;
    signal L1_SingleEG30 : std_logic;
    signal L1_SingleEG35 : std_logic;
    signal L1_SingleMuOpen : std_logic;
    signal L1_SingleMu16 : std_logic;
    signal L1_SingleMu5 : std_logic;
    signal L1_SingleMu20er : std_logic;
    signal L1_SingleMu12 : std_logic;
    signal L1_SingleMu20 : std_logic;
    signal L1_Mu8_HTT50 : std_logic;
    signal L1_SingleMu25 : std_logic;
    signal L1_SingleMu30 : std_logic;
    signal L1_ETM30 : std_logic;
    signal L1_ETM50 : std_logic;
    signal L1_ETM70 : std_logic;
    signal L1_ETM100 : std_logic;
    signal L1_HTT125 : std_logic;
    signal L1_HTT150 : std_logic;
    signal L1_HTT175 : std_logic;
    signal L1_HTT200 : std_logic;
    signal L1_Mu20_EG10 : std_logic;
    signal L1_Mu5_EG20 : std_logic;
    signal L1_Mu5_IsoEG18 : std_logic;
    signal L1_Mu6_DoubleEG10 : std_logic;
    signal L1_SingleJetC32_NotBptxOR : std_logic;
    signal L1_ETM40 : std_logic;
    signal L1_HTT250 : std_logic;
    signal L1_Mu10er_ETM30 : std_logic;
    signal L1_Mu10er_ETM50 : std_logic;
    signal L1_Mu14er_ETM30 : std_logic;
    signal L1_DoubleMu7_EG7 : std_logic;
    signal L1_SingleMu16er : std_logic;
    signal L1_Mu6_HTT100 : std_logic;
    signal L1_Mu4_EG18 : std_logic;
    signal L1_SingleMuOpen_NotBptxOR : std_logic;
    signal L1_DoubleMu6_EG6 : std_logic;
    signal L1_Mu5_DoubleEG5 : std_logic;
    signal L1_DoubleEG6_HTT150 : std_logic;
    signal L1_QuadJetC36_TauJet52 : std_logic;
    signal L1_Mu0er_ETM40 : std_logic;
    signal L1_Mu16er_IsoTau28er : std_logic;
    signal L1_TripleMu0 : std_logic;
    signal L1_TripleMu_5_5_3 : std_logic;
    signal L1_TripleEG_14_10_8 : std_logic;
    signal L1_DoubleEG_15_10 : std_logic;
    signal L1_DoubleEG_22_10 : std_logic;
    signal L1_Mu0er_ETM55 : std_logic;
    signal L1_ETM60 : std_logic;
    signal L1_DoubleJetC100 : std_logic;
    signal L1_QuadJetC60 : std_logic;
    signal L1_SingleJetC20_NotBptxOR : std_logic;
    signal L1_DoubleJetC56_ETM60 : std_logic;
    signal L1_DoubleIsoTau28er : std_logic;
    signal L1_DoubleIsoTau36er : std_logic;
    signal L1_DoubleIsoTau40er : std_logic;
    signal L1_TripleJet_92_76_64_VBF : std_logic;
    signal L1_TripleJet_84_68_48_VBF : std_logic;
    signal L1_QuadMu0 : std_logic;
    signal L1_DoubleMu_12_5 : std_logic;
    signal L1_SingleMuBeamHalo : std_logic;
    signal L1_AlwaysTrue : std_logic;
    signal L1_SingleMu7woQcut : std_logic;
    signal L1_Mu12woQcut_EG10 : std_logic;
    signal L1_Mu5woQcut_EG15 : std_logic;
    signal L1_Mu16erwoQcut_TauJet20er : std_logic;
    signal L1_Mu16erwoQcut_IsoTau32er : std_logic;
    signal L1_DoubleMu0woQcut : std_logic;
    signal L1_SingleMu14woQcut_Eta2p1 : std_logic;
    signal L1_DoubleMu_10_Open_woQcut : std_logic;
    signal L1_DoubleMu_10_3p5_woQcut : std_logic;
    signal L1_SingleMuOpenwoQcut : std_logic;
    signal L1_SingleMu16woQcut : std_logic;
    signal L1_SingleMu5woQcut : std_logic;
    signal L1_SingleMu20erwoQcut : std_logic;
    signal L1_SingleMu12woQcut : std_logic;
    signal L1_SingleMu20woQcut : std_logic;
    signal L1_Mu8woQcut_HTT50 : std_logic;
    signal L1_SingleMu25woQcut : std_logic;
    signal L1_SingleMu30woQcut : std_logic;
    signal L1_Mu20woQcut_EG10 : std_logic;
    signal L1_Mu5woQcut_EG20 : std_logic;
    signal L1_Mu5woQcut_IsoEG18 : std_logic;
    signal L1_Mu6woQcut_DoubleEG10 : std_logic;
    signal L1_Mu10erwoQcut_ETM30 : std_logic;
    signal L1_Mu10erwoQcut_ETM50 : std_logic;
    signal L1_Mu14erwoQcut_ETM30 : std_logic;
    signal L1_DoubleMu7woQcut_EG7 : std_logic;
    signal L1_SingleMu16woQcut_Eta2p1 : std_logic;
    signal L1_Mu6woQcut_HTT100 : std_logic;
    signal L1_Mu4woQcut_EG18 : std_logic;
    signal L1_DoubleMu6woQcut_EG6 : std_logic;
    signal L1_Mu5woQcut_DoubleEG5 : std_logic;
    signal L1_Mu0erwoQcut_ETM40 : std_logic;
    signal L1_Mu16erwoQcut_IsoTau28er : std_logic;
    signal L1_TripleMu0woQcut : std_logic;
    signal L1_TripleMu_5_5_3woQcut : std_logic;
    signal L1_QuadMu0woQcut : std_logic;
    signal L1_DoubleMu_12_5woQcut : std_logic;
    signal L1_Mu0p5_SingleEG5 : std_logic;
    signal L1_SingleJet92 : std_logic;
    signal L1_SingleJet176 : std_logic;
    signal L1_SingleJet200 : std_logic;
    signal L1_SingleJet36 : std_logic;
    signal L1_DoubleJetC112 : std_logic;
    signal L1_DoubleMu0_Eta1p6_WdEta18 : std_logic;
    signal L1_DoubleMu0_Eta1p6_WdEta18_OS : std_logic;
    signal L1_DoubleMu_10_0_WdEta18 : std_logic;
    signal L1_IsoEG20er_TauJet20er_NotWdEta0 : std_logic;
    signal L1_Jet32_DoubleMu_Open_10_MuMuNotWdPhi23_JetMuWdPhi1 : std_logic;
    signal L1_Jet32_MuOpen_EG10_MuEGNotWdPhi3_JetMuWdPhi1 : std_logic;
    signal L1_Mu3_JetC16_WdEtaPhi2 : std_logic;
    signal L1_Mu3_JetC52_WdEtaPhi2 : std_logic;
    signal L1_SingleEG2 : std_logic;
    signal L1_SingleEG3 : std_logic;
    signal L1_SingleJet8 : std_logic;
    signal L1_SingleJet12 : std_logic;
    signal L1_SingleJet16 : std_logic;
    signal L1_ETM20 : std_logic;
    signal L1_ETT20 : std_logic;
    signal L1_ETT30 : std_logic;
    signal L1_HTT30 : std_logic;
    signal L1_HTT50 : std_logic;
    signal L1_SingleMu3woQcut : std_logic;
    signal L1_BptxAND : std_logic;
    signal L1_BptxPlus : std_logic;
    signal L1_BptxMinus : std_logic;
    signal L1_BptxOR : std_logic;
    signal L1_ExtCond_032 : std_logic;
    signal L1_ExtCond_033 : std_logic;
    signal L1_ExtCond_034 : std_logic;
    signal L1_ExtCond_035 : std_logic;


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

-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
  port map(mu_bx_0, mu_bx_0,
    ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
    ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
    ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


-- Instantiations of pt, eta and phi for correlation conditions (used for DETA, DPHI and DR) - once for every ObjectType in certain Bx used in correlation conditions


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs


-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for invariant mass) - once for correlation conditions with two ObjectTypes in certain Bxs


-- Instantiations of conditions
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

doubletau_14079999678046443747_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0050", X"0050", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0031", X"0000", X"0000"), (X"00CE", X"00CE", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14079999678046443747);

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

singlejet_20010310322_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310322);

singlejet_20010310456_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0088", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310456);

singlejet_2561319655736_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0100", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319655736);

doubletau_973561713087363838_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0040", X"0040", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0031", X"0000", X"0000"), (X"00CE", X"00CE", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_973561713087363838);

singleeg_14262501742662192563_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_14262501742662192563);

singleeg_6872948866699749105_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872948866699749105);

singleeg_12507579852187604032_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_12507579852187604032);

singleeg_6873084106629965553_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"003C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6873084106629965553);

singleeg_6872945568164865777_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"002C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872945568164865777);

doublejet_8659229807737752275_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0068", X"0068", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659229807737752275);

doublejet_8659448644911418067_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"00A8", X"00A8", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659448644911418067);

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

singleeg_145873205_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0032", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_145873205);

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

singleeg_14262501725884976563_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0024", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_14262501725884976563);

singleeg_6872943369141610225_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_6872943369141610225);

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

singleeg_145873333_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
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
    port map(lhc_clk, eg_bx_0, singleeg_145873333);

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

doubleeg_8902241707881387630_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"000A", X"000A", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, doubleeg_8902241707881387630);

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

doublejet_8659232075480484563_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 2, true, JET_TYPE,
        (X"0070", X"0070", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, doublejet_8659232075480484563);

doubletau_14808619702871276270_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0038", X"0038", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0031", X"0000", X"0000"), (X"00CE", X"00CE", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808619702871276270);

doubletau_10196933752089623294_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0048", X"0048", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0031", X"0000", X"0000"), (X"00CE", X"00CE", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_10196933752089623294);

doubletau_14808619836015262477_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 2, true, TAU_TYPE,
        (X"0050", X"0050", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0031", X"0000", X"0000"), (X"00CE", X"00CE", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"E", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, doubletau_14808619836015262477);

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

singletau_16608830939767017800_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_16608830939767017800);

singletau_2452153457785911550_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0040", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_2452153457785911550);

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

singleeg_1139638_i: entity work.calo_conditions_v3
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
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, eg_bx_0, singleeg_1139638);

singletau_254396839629109502_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0031", X"0000", X"0000", X"0000"), (X"00CE", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),   
        (X"E", X"F", X"F", X"F")
    )
    port map(lhc_clk, tau_bx_0, singletau_254396839629109502);

singlejet_20010310834_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B8", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310834);

singlejet_2561319656374_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"0160", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, singlejet_2561319656374);

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

singlejet_20010310070_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
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
    port map(lhc_clk, jet_bx_0, singlejet_20010310070);

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

singleeg_1139635_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"0006", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, singleeg_1139635);

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


singlemu_14769293136992440261_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000E", X"0000", X"0000", X"0000"),
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
        singlemu_14769293136992440261);

singlemu_17545683056529805253_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0018", X"0000", X"0000", X"0000"),
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
        singlemu_17545683056529805253);

doublemu_17437117010404468714_i: entity work.muon_conditions_v3
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
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_17437117010404468714);

doublemu_17438110095020255210_i: entity work.muon_conditions_v3
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
        doublemu_17438110095020255210);

singlemu_9711237232560360119_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001C", X"0000", X"0000", X"0000"),
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
        singlemu_9711237232560360119);

doublemu_18098724758520711438_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0014", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"FFF0", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_18098724758520711438);

doublemu_18206810907184482574_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0014", X"0007", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_18206810907184482574);

singlemu_20848588853_i: entity work.muon_conditions_v3
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
        singlemu_20848588853);

singlemu_17545683125249281989_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0020", X"0000", X"0000", X"0000"),
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
        singlemu_17545683125249281989);

singlemu_9728688681116420791_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0028", X"0000", X"0000", X"0000"),
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
        singlemu_9728688681116420791);

singlemu_17545685221193322437_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0028", X"0000", X"0000", X"0000"),
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
        singlemu_17545685221193322437);

singlemu_14769293154172309445_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0010", X"0000", X"0000", X"0000"),
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
        singlemu_14769293154172309445);

singlemu_17545685307092668357_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0032", X"0000", X"0000", X"0000"),
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
        singlemu_17545685307092668357);

singlemu_17545687420216577989_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003C", X"0000", X"0000", X"0000"),
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
        singlemu_17545687420216577989);

singlemu_9710674282606938807_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
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
        singlemu_9710674282606938807);

doublemu_14585797036318757695_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000E", X"000E", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585797036318757695);

singlemu_9711518707537070775_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0020", X"0000", X"0000", X"0000"),
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
        singlemu_9711518707537070775);

singlemu_14769293119812571077_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000C", X"0000", X"0000", X"0000"),
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
        singlemu_14769293119812571077);

singlemu_14769293085452832709_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0008", X"0000", X"0000", X"0000"),
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
        singlemu_14769293085452832709);

singlemu_3988579395159462617_i: entity work.muon_conditions_v3
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
        singlemu_3988579395159462617);

doublemu_14585794287539688255_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_14585794287539688255);

singlemu_14769293102632701893_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000A", X"0000", X"0000", X"0000"),
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
        singlemu_14769293102632701893);

singlemu_17763814103787320114_i: entity work.muon_conditions_v3
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
        singlemu_17763814103787320114);

triplemu_9114293561179868216_i: entity work.muon_conditions_v3
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
        (X"F000", X"F000", X"F000", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triplemu_9114293561179868216);

triplemu_3324693068400445471_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"000A", X"000A", X"0006", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"F000", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triplemu_3324693068400445471);

singlemu_12527040340151471175_i: entity work.muon_conditions_v3
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_12527040340151471175);

quadmu_8412493752467612928_i: entity work.muon_conditions_v3
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
        (X"F000", X"F000", X"F000", X"F000"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        quadmu_8412493752467612928);

doublemu_16961157430756337668_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0018", X"000A", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_16961157430756337668);

singlemu_3988579393249071961_i: entity work.muon_conditions_v3
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
        (X"000F", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        singlemu_3988579393249071961);

singlemu_1272503_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000E", X"0000", X"0000", X"0000"),
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
        singlemu_1272503);

singlemu_162879666_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0018", X"0000", X"0000", X"0000"),
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
        singlemu_162879666);

singlemu_12505349801959197767_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0020", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
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
        singlemu_12505349801959197767);

doublemu_8128595062609530965_i: entity work.muon_conditions_v3
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        doublemu_8128595062609530965);

doublemu_12781631550144613991_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0014", X"0001", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
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
        doublemu_12781631550144613991);

doublemu_12781631550150905447_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0014", X"0007", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
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
        doublemu_12781631550150905447);

singlemu_162879670_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0020", X"0000", X"0000", X"0000"),
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
        singlemu_162879670);

singlemu_12505349802087124039_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0028", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
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
        singlemu_12505349802087124039);

singlemu_162879792_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0028", X"0000", X"0000", X"0000"),
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
        singlemu_162879792);

singlemu_1272504_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0010", X"0000", X"0000", X"0000"),
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
        singlemu_1272504);

singlemu_162879797_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0032", X"0000", X"0000", X"0000"),
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
        singlemu_162879797);

singlemu_162879920_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"003C", X"0000", X"0000", X"0000"),
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
        singlemu_162879920);

singlemu_1272501_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000A", X"0000", X"0000", X"0000"),
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
        singlemu_1272501);

singlemu_1272502_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"000C", X"0000", X"0000", X"0000"),
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
        singlemu_1272502);

singlemu_12505349801952906311_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0014", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
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
        singlemu_12505349801952906311);

singlemu_12505349801957100615_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"001C", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"00C1", X"0000", X"0000", X"0000"), (X"013F", X"0000", X"0000", X"0000"),
        (true, false, false, false),
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
        singlemu_12505349801957100615);

doublemu_8906806948896397166_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000E", X"000E", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
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
        doublemu_8906806948896397166);

singlemu_1272500_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0008", X"0000", X"0000", X"0000"),
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
        singlemu_1272500);

doublemu_8906806914536658670_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
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
        doublemu_8906806914536658670);

triplemu_6287047278622715060_i: entity work.muon_conditions_v3
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        triplemu_6287047278622715060);

triplemu_12465740988095074135_i: entity work.muon_conditions_v3
    generic map(3 , true,
        (X"000A", X"000A", X"0006", X"0000"),
        (true, true, true, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, false),
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
        triplemu_12465740988095074135);

quadmu_10570387899611405630_i: entity work.muon_conditions_v3
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
        (X"FFFF", X"FFFF", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        quadmu_10570387899611405630);

doublemu_14819874771460887482_i: entity work.muon_conditions_v3
    generic map(2 , true,
        (X"0018", X"000A", X"0000", X"0000"),
        (true, true, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (false, false, false, false),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, false, false),
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
        doublemu_14819874771460887482);

singlemu_1272499_i: entity work.muon_conditions_v3
    generic map(1 , true,
        (X"0006", X"0000", X"0000", X"0000"),
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
        singlemu_1272499);


singleett_18699589813_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"001E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699589813);

singleett_18699590192_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0050",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590192);

singleett_18699590448_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590448);

singlehtt_19504896949_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0096",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_19504896949);

singlehtt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710576);

singlehtt_19504896688_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_19504896688);

singleetm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475632);

singleetm_18699475888_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"008C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475888);

singleetm_2393532815408_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_2393532815408);

singlehtt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626710837);

singlehtt_2496626711477_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"015E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711477);

singlehtt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626726960);

singleetm_18699475504_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0050",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475504);

singlehtt_2496626727600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01F4",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626727600);

singlehtt_2496626711216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"012C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_2496626711216);

singleetm_18699475637_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"006E",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475637);

singleetm_18699475760_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0078",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475760);

singleetm_18699475376_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"003C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475376);

singlehtm_5235774947381327925_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"0FFD",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, singlehtm_5235774947381327925);

singleetm_18699475248_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0028",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, singleetm_18699475248);

singleett_18699589936_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"0028",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699589936);

singleett_18699590064_i: entity work.esums_conditions
    generic map(true, ETT_TYPE,
        X"003C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, ett_bx_0, singleett_18699590064);

singlehtt_19504896432_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"003C",
        true, X"0000", X"0000",
        false, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, singlehtt_19504896432);








-- Instantiations of algorithms
L1_ZeroBias <= ext_cond_bx_0(32);
algo(0) <= L1_ZeroBias;
L1_SingleEG2_BptxAND <= singleeg_1139634 and ext_cond_bx_0(32);
algo(1) <= L1_SingleEG2_BptxAND;
L1_SingleMu7 <= singlemu_14769293136992440261;
algo(2) <= L1_SingleMu7;
L1_SingleEG15 <= singleeg_145873077;
algo(3) <= L1_SingleEG15;
L1_ETT15_BptxAND <= singleett_18699589813 and ext_cond_bx_0(32);
algo(4) <= L1_ETT15_BptxAND;
L1_ETT40 <= singleett_18699590192;
algo(5) <= L1_ETT40;
L1_ETT60 <= singleett_18699590448;
algo(6) <= L1_ETT60;
L1_HTT75 <= singlehtt_19504896949;
algo(7) <= L1_HTT75;
L1_Mu12_EG10 <= singlemu_17545683056529805253 and singleeg_145873072;
algo(8) <= L1_Mu12_EG10;
L1_Mu5_EG15 <= singlemu_14769293102632701893 and singleeg_145873077;
algo(9) <= L1_Mu5_EG15;
L1_DoubleTauJet40er <= doubletau_14079999678046443747;
algo(10) <= L1_DoubleTauJet40er;
L1_Mu16er_TauJet20er <= singlemu_9711518707537070775 and singletau_16608830939767017800;
algo(11) <= L1_Mu16er_TauJet20er;
L1_HTT100 <= singlehtt_2496626710576;
algo(12) <= L1_HTT100;
L1_SingleIsoEG20 <= singleeg_12507579852182361152;
algo(13) <= L1_SingleIsoEG20;
L1_SingleJet52 <= singlejet_20010310322;
algo(14) <= L1_SingleJet52;
L1_SingleJet68 <= singlejet_20010310456;
algo(15) <= L1_SingleJet68;
L1_SingleJet128 <= singlejet_2561319655736;
algo(16) <= L1_SingleJet128;
L1_DoubleIsoTau32er <= doubletau_973561713087363838;
algo(17) <= L1_DoubleIsoTau32er;
L1_Mu16er_IsoTau32er <= singlemu_9711518707537070775 and singletau_2452153457785911550;
algo(18) <= L1_Mu16er_IsoTau32er;
L1_DoubleMu0 <= doublemu_17437117010404468714;
algo(19) <= L1_DoubleMu0;
L1_EG25er_HTT100 <= singleeg_14262501742662192563 and singlehtt_2496626710576;
algo(20) <= L1_EG25er_HTT100;
L1_DoubleMuOpen <= doublemu_17438110095020255210;
algo(21) <= L1_DoubleMuOpen;
L1_SingleIsoEG25er <= singleeg_6872948866699749105;
algo(22) <= L1_SingleIsoEG25er;
L1_SingleIsoEG25 <= singleeg_12507579852187604032;
algo(23) <= L1_SingleIsoEG25;
L1_SingleIsoEG30er <= singleeg_6873084106629965553;
algo(24) <= L1_SingleIsoEG30er;
L1_SingleEG10 <= singleeg_145873072;
algo(25) <= L1_SingleEG10;
L1_SingleIsoEG22er <= singleeg_6872945568164865777;
algo(26) <= L1_SingleIsoEG22er;
L1_DoubleJetC52 <= doublejet_8659229807737752275;
algo(27) <= L1_DoubleJetC52;
L1_DoubleJetC84 <= doublejet_8659448644911418067;
algo(28) <= L1_DoubleJetC84;
L1_SingleMu14er <= singlemu_9711237232560360119;
algo(29) <= L1_SingleMu14er;
L1_DoubleMu_10_Open <= doublemu_18098724758520711438;
algo(30) <= L1_DoubleMu_10_Open;
L1_DoubleMu_10_3p5 <= doublemu_18206810907184482574;
algo(31) <= L1_DoubleMu_10_3p5;
L1_QuadJetC40 <= quadjet_2751081844007168180;
algo(32) <= L1_QuadJetC40;
L1_SingleEG5 <= singleeg_1139637;
algo(33) <= L1_SingleEG5;
L1_SingleEG25 <= singleeg_145873205;
algo(34) <= L1_SingleEG25;
L1_SingleEG40 <= singleeg_145873456;
algo(35) <= L1_SingleEG40;
L1_SingleIsoEG18er <= singleeg_14262501725884976563;
algo(36) <= L1_SingleIsoEG18er;
L1_SingleIsoEG20er <= singleeg_6872943369141610225;
algo(37) <= L1_SingleIsoEG20er;
L1_SingleEG20 <= singleeg_145873200;
algo(38) <= L1_SingleEG20;
L1_SingleEG30 <= singleeg_145873328;
algo(39) <= L1_SingleEG30;
L1_SingleEG35 <= singleeg_145873333;
algo(40) <= L1_SingleEG35;
L1_SingleMuOpen <= singlemu_20848588853;
algo(41) <= L1_SingleMuOpen;
L1_SingleMu16 <= singlemu_17545683125249281989;
algo(42) <= L1_SingleMu16;
L1_SingleMu5 <= singlemu_14769293102632701893;
algo(43) <= L1_SingleMu5;
L1_SingleMu20er <= singlemu_9728688681116420791;
algo(44) <= L1_SingleMu20er;
L1_SingleMu12 <= singlemu_17545683056529805253;
algo(45) <= L1_SingleMu12;
L1_SingleMu20 <= singlemu_17545685221193322437;
algo(46) <= L1_SingleMu20;
L1_Mu8_HTT50 <= singlemu_14769293154172309445 and singlehtt_19504896688;
algo(47) <= L1_Mu8_HTT50;
L1_SingleMu25 <= singlemu_17545685307092668357;
algo(48) <= L1_SingleMu25;
L1_SingleMu30 <= singlemu_17545687420216577989;
algo(49) <= L1_SingleMu30;
L1_ETM30 <= singleetm_18699475376;
algo(50) <= L1_ETM30;
L1_ETM50 <= singleetm_18699475632;
algo(51) <= L1_ETM50;
L1_ETM70 <= singleetm_18699475888;
algo(52) <= L1_ETM70;
L1_ETM100 <= singleetm_2393532815408;
algo(53) <= L1_ETM100;
L1_HTT125 <= singlehtt_2496626710837;
algo(54) <= L1_HTT125;
L1_HTT150 <= singlehtt_2496626711216;
algo(55) <= L1_HTT150;
L1_HTT175 <= singlehtt_2496626711477;
algo(56) <= L1_HTT175;
L1_HTT200 <= singlehtt_2496626726960;
algo(57) <= L1_HTT200;
L1_Mu20_EG10 <= singlemu_17545685221193322437 and singleeg_145873072;
algo(58) <= L1_Mu20_EG10;
L1_Mu5_EG20 <= singlemu_14769293102632701893 and singleeg_145873200;
algo(59) <= L1_Mu5_EG20;
L1_Mu5_IsoEG18 <= singlemu_14769293102632701893 and singleeg_12507579852056532032;
algo(60) <= L1_Mu5_IsoEG18;
L1_Mu6_DoubleEG10 <= singlemu_14769293119812571077 and doubleeg_14367260113818400607;
algo(61) <= L1_Mu6_DoubleEG10;
L1_SingleJetC32_NotBptxOR <= singlejet_5967545327155853511 and (not (ext_cond_bx_0(33) or ext_cond_bx_0(34))) and (not (ext_cond_bx_p1(33) or ext_cond_bx_p1(34)));
algo(62) <= L1_SingleJetC32_NotBptxOR;
L1_ETM40 <= singleetm_18699475504;
algo(63) <= L1_ETM40;
L1_HTT250 <= singlehtt_2496626727600;
algo(64) <= L1_HTT250;
L1_Mu10er_ETM30 <= singlemu_9710674282606938807 and singleetm_18699475376;
algo(65) <= L1_Mu10er_ETM30;
L1_Mu10er_ETM50 <= singlemu_9710674282606938807 and singleetm_18699475632;
algo(66) <= L1_Mu10er_ETM50;
L1_Mu14er_ETM30 <= singlemu_9711237232560360119 and singleetm_18699475376;
algo(67) <= L1_Mu14er_ETM30;
L1_DoubleMu7_EG7 <= doublemu_14585797036318757695 and singleeg_1139639;
algo(68) <= L1_DoubleMu7_EG7;
L1_SingleMu16er <= singlemu_9711518707537070775;
algo(69) <= L1_SingleMu16er;
L1_Mu6_HTT100 <= singlemu_14769293119812571077 and singlehtt_2496626710576;
algo(70) <= L1_Mu6_HTT100;
L1_Mu4_EG18 <= singlemu_14769293085452832709 and singleeg_145873080;
algo(71) <= L1_Mu4_EG18;
L1_SingleMuOpen_NotBptxOR <= singlemu_3988579395159462617 and (not (ext_cond_bx_0(33) or ext_cond_bx_0(34)));
algo(72) <= L1_SingleMuOpen_NotBptxOR;
L1_DoubleMu6_EG6 <= doublemu_14585794287539688255 and singleeg_1139638;
algo(73) <= L1_DoubleMu6_EG6;
L1_Mu5_DoubleEG5 <= singlemu_14769293102632701893 and doubleeg_8902241707881387630;
algo(74) <= L1_Mu5_DoubleEG5;
L1_DoubleEG6_HTT150 <= doubleeg_8902241742241126126 and singlehtt_2496626711216;
algo(75) <= L1_DoubleEG6_HTT150;
L1_QuadJetC36_TauJet52 <= quadjet_2680186536839014580 and singletau_22686292658;
algo(76) <= L1_QuadJetC36_TauJet52;
L1_Mu0er_ETM40 <= singlemu_17763814103787320114 and singleetm_18699475504;
algo(77) <= L1_Mu0er_ETM40;
L1_Mu16er_IsoTau28er <= singlemu_9711518707537070775 and singletau_254396839629109502;
algo(78) <= L1_Mu16er_IsoTau28er;
L1_TripleMu0 <= triplemu_9114293561179868216;
algo(79) <= L1_TripleMu0;
L1_TripleMu_5_5_3 <= triplemu_3324693068400445471;
algo(80) <= L1_TripleMu_5_5_3;
L1_TripleEG_14_10_8 <= tripleeg_4430569450691365292;
algo(81) <= L1_TripleEG_14_10_8;
L1_DoubleEG_15_10 <= doubleeg_14367282104050956127;
algo(82) <= L1_DoubleEG_15_10;
L1_DoubleEG_22_10 <= doubleeg_14367831859864844127;
algo(83) <= L1_DoubleEG_22_10;
L1_Mu0er_ETM55 <= singlemu_12527040340151471175 and singleetm_18699475637;
algo(84) <= L1_Mu0er_ETM55;
L1_ETM60 <= singleetm_18699475760;
algo(85) <= L1_ETM60;
L1_DoubleJetC100 <= doublejet_15894421920862285922;
algo(86) <= L1_DoubleJetC100;
L1_QuadJetC60 <= quadjet_2899845767245260980;
algo(87) <= L1_QuadJetC60;
L1_SingleJetC20_NotBptxOR <= singlejet_5967545309707548871 and (not (ext_cond_bx_0(33) or ext_cond_bx_0(34))) and (not (ext_cond_bx_p1(33) or ext_cond_bx_p1(34)));
algo(88) <= L1_SingleJetC20_NotBptxOR;
L1_DoubleJetC56_ETM60 <= doublejet_8659232075480484563 and singleetm_18699475760;
algo(89) <= L1_DoubleJetC56_ETM60;
L1_DoubleIsoTau28er <= doubletau_14808619702871276270;
algo(90) <= L1_DoubleIsoTau28er;
L1_DoubleIsoTau36er <= doubletau_10196933752089623294;
algo(91) <= L1_DoubleIsoTau36er;
L1_DoubleIsoTau40er <= doubletau_14808619836015262477;
algo(92) <= L1_DoubleIsoTau40er;
L1_TripleJet_92_76_64_VBF <= triplejet_7932644363018286197 or (doublejet_8659515749480450771 and singlejet_5974144913806802428) or (doublejet_8659513516097456851 and singlejet_5974216382062607868) or (doublejet_8659374977632357075 and singlejet_5974354920527707644);
algo(93) <= L1_TripleJet_92_76_64_VBF;
L1_TripleJet_84_68_48_VBF <= triplejet_7930354149017105525 or (doublejet_8659444315584383699 and singlejet_5974006375341702652) or (doublejet_8659439917537872595 and singlejet_5974147112830057980) or (doublejet_8659301379072772819 and singlejet_5974285651295157756);
algo(94) <= L1_TripleJet_84_68_48_VBF;
L1_QuadMu0 <= quadmu_8412493752467612928;
algo(95) <= L1_QuadMu0;
L1_DoubleMu_12_5 <= doublemu_16961157430756337668;
algo(96) <= L1_DoubleMu_12_5;
L1_SingleMuBeamHalo <= singlemu_3988579393249071961;
algo(97) <= L1_SingleMuBeamHalo;
L1_AlwaysTrue <= ext_cond_bx_0(32) or (not ext_cond_bx_0(32));
algo(98) <= L1_AlwaysTrue;
L1_SingleMu7woQcut <= singlemu_1272503;
algo(99) <= L1_SingleMu7woQcut;
L1_Mu12woQcut_EG10 <= singlemu_162879666 and singleeg_145873072;
algo(100) <= L1_Mu12woQcut_EG10;
L1_Mu5woQcut_EG15 <= singlemu_1272501 and singleeg_145873077;
algo(101) <= L1_Mu5woQcut_EG15;
L1_Mu16erwoQcut_TauJet20er <= singlemu_12505349801959197767 and singletau_16608830939767017800;
algo(102) <= L1_Mu16erwoQcut_TauJet20er;
L1_Mu16erwoQcut_IsoTau32er <= singlemu_12505349801959197767 and singletau_2452153457785911550;
algo(103) <= L1_Mu16erwoQcut_IsoTau32er;
L1_DoubleMu0woQcut <= doublemu_8128595062609530965;
algo(104) <= L1_DoubleMu0woQcut;
L1_SingleMu14woQcut_Eta2p1 <= singlemu_12505349801957100615;
algo(105) <= L1_SingleMu14woQcut_Eta2p1;
L1_DoubleMu_10_Open_woQcut <= doublemu_12781631550144613991;
algo(106) <= L1_DoubleMu_10_Open_woQcut;
L1_DoubleMu_10_3p5_woQcut <= doublemu_12781631550150905447;
algo(107) <= L1_DoubleMu_10_3p5_woQcut;
L1_SingleMuOpenwoQcut <= singlemu_20848588853;
algo(108) <= L1_SingleMuOpenwoQcut;
L1_SingleMu16woQcut <= singlemu_162879670;
algo(109) <= L1_SingleMu16woQcut;
L1_SingleMu5woQcut <= singlemu_1272501;
algo(110) <= L1_SingleMu5woQcut;
L1_SingleMu20erwoQcut <= singlemu_12505349802087124039;
algo(111) <= L1_SingleMu20erwoQcut;
L1_SingleMu12woQcut <= singlemu_162879666;
algo(112) <= L1_SingleMu12woQcut;
L1_SingleMu20woQcut <= singlemu_162879792;
algo(113) <= L1_SingleMu20woQcut;
L1_Mu8woQcut_HTT50 <= singlemu_1272504 and singlehtt_19504896688;
algo(114) <= L1_Mu8woQcut_HTT50;
L1_SingleMu25woQcut <= singlemu_162879797;
algo(115) <= L1_SingleMu25woQcut;
L1_SingleMu30woQcut <= singlemu_162879920;
algo(116) <= L1_SingleMu30woQcut;
L1_Mu20woQcut_EG10 <= singlemu_162879792 and singleeg_145873072;
algo(117) <= L1_Mu20woQcut_EG10;
L1_Mu5woQcut_EG20 <= singlemu_1272501 and singleeg_145873200;
algo(118) <= L1_Mu5woQcut_EG20;
L1_Mu5woQcut_IsoEG18 <= singlemu_1272501 and singleeg_12507579852056532032;
algo(119) <= L1_Mu5woQcut_IsoEG18;
L1_Mu6woQcut_DoubleEG10 <= singlemu_1272502 and doubleeg_14367260113818400607;
algo(120) <= L1_Mu6woQcut_DoubleEG10;
L1_Mu10erwoQcut_ETM30 <= singlemu_12505349801952906311 and singleetm_18699475376;
algo(121) <= L1_Mu10erwoQcut_ETM30;
L1_Mu10erwoQcut_ETM50 <= singlemu_12505349801952906311 and singleetm_18699475632;
algo(122) <= L1_Mu10erwoQcut_ETM50;
L1_Mu14erwoQcut_ETM30 <= singlemu_12505349801957100615 and singleetm_18699475376;
algo(123) <= L1_Mu14erwoQcut_ETM30;
L1_DoubleMu7woQcut_EG7 <= doublemu_8906806948896397166 and singleeg_1139639;
algo(124) <= L1_DoubleMu7woQcut_EG7;
L1_SingleMu16woQcut_Eta2p1 <= singlemu_12505349801959197767;
algo(125) <= L1_SingleMu16woQcut_Eta2p1;
L1_Mu6woQcut_HTT100 <= singlemu_1272502 and singlehtt_2496626710576;
algo(126) <= L1_Mu6woQcut_HTT100;
L1_Mu4woQcut_EG18 <= singlemu_1272500 and singleeg_145873080;
algo(127) <= L1_Mu4woQcut_EG18;
L1_DoubleMu6woQcut_EG6 <= doublemu_8906806914536658670 and singleeg_1139638;
algo(128) <= L1_DoubleMu6woQcut_EG6;
L1_Mu5woQcut_DoubleEG5 <= singlemu_1272501 and doubleeg_8902241707881387630;
algo(129) <= L1_Mu5woQcut_DoubleEG5;
L1_Mu0erwoQcut_ETM40 <= singlemu_12527040340151471175 and singleetm_18699475504;
algo(130) <= L1_Mu0erwoQcut_ETM40;
L1_Mu16erwoQcut_IsoTau28er <= singlemu_12505349801959197767 and singletau_254396839629109502;
algo(131) <= L1_Mu16erwoQcut_IsoTau28er;
L1_TripleMu0woQcut <= triplemu_6287047278622715060;
algo(132) <= L1_TripleMu0woQcut;
L1_TripleMu_5_5_3woQcut <= triplemu_12465740988095074135;
algo(133) <= L1_TripleMu_5_5_3woQcut;
L1_QuadMu0woQcut <= quadmu_10570387899611405630;
algo(134) <= L1_QuadMu0woQcut;
L1_DoubleMu_12_5woQcut <= doublemu_14819874771460887482;
algo(135) <= L1_DoubleMu_12_5woQcut;
L1_Mu0p5_SingleEG5 <= singlemu_20848588853 and singleeg_1139637;
algo(136) <= L1_Mu0p5_SingleEG5;
L1_SingleJet92 <= singlejet_20010310834;
algo(137) <= L1_SingleJet92;
L1_SingleJet176 <= singlejet_2561319656374;
algo(138) <= L1_SingleJet176;
L1_SingleJet200 <= singlejet_2561319671856;
algo(139) <= L1_SingleJet200;
L1_SingleJet36 <= singlejet_20010310070;
algo(140) <= L1_SingleJet36;
L1_DoubleJetC112 <= doublejet_15903572090988376162;
algo(141) <= L1_DoubleJetC112;
L1_DoubleMu0_Eta1p6_WdEta18 <= singlehtm_5235774947381327925;
algo(142) <= L1_DoubleMu0_Eta1p6_WdEta18;
L1_DoubleMu0_Eta1p6_WdEta18_OS <= singlehtm_5235774947381327925;
algo(143) <= L1_DoubleMu0_Eta1p6_WdEta18_OS;
L1_DoubleMu_10_0_WdEta18 <= singlehtm_5235774947381327925;
algo(144) <= L1_DoubleMu_10_0_WdEta18;
L1_IsoEG20er_TauJet20er_NotWdEta0 <= singlehtm_5235774947381327925;
algo(145) <= L1_IsoEG20er_TauJet20er_NotWdEta0;
L1_Jet32_DoubleMu_Open_10_MuMuNotWdPhi23_JetMuWdPhi1 <= singlehtm_5235774947381327925;
algo(146) <= L1_Jet32_DoubleMu_Open_10_MuMuNotWdPhi23_JetMuWdPhi1;
L1_Jet32_MuOpen_EG10_MuEGNotWdPhi3_JetMuWdPhi1 <= singlehtm_5235774947381327925;
algo(147) <= L1_Jet32_MuOpen_EG10_MuEGNotWdPhi3_JetMuWdPhi1;
L1_Mu3_JetC16_WdEtaPhi2 <= singlehtm_5235774947381327925;
algo(148) <= L1_Mu3_JetC16_WdEtaPhi2;
L1_Mu3_JetC52_WdEtaPhi2 <= singlehtm_5235774947381327925;
algo(149) <= L1_Mu3_JetC52_WdEtaPhi2;
L1_SingleEG2 <= singleeg_1139634;
algo(150) <= L1_SingleEG2;
L1_SingleEG3 <= singleeg_1139635;
algo(151) <= L1_SingleEG3;
L1_SingleJet8 <= singlejet_156330552;
algo(152) <= L1_SingleJet8;
L1_SingleJet12 <= singlejet_20010309810;
algo(153) <= L1_SingleJet12;
L1_SingleJet16 <= singlejet_20010309814;
algo(154) <= L1_SingleJet16;
L1_ETM20 <= singleetm_18699475248;
algo(155) <= L1_ETM20;
L1_ETT20 <= singleett_18699589936;
algo(156) <= L1_ETT20;
L1_ETT30 <= singleett_18699590064;
algo(157) <= L1_ETT30;
L1_HTT30 <= singlehtt_19504896432;
algo(158) <= L1_HTT30;
L1_HTT50 <= singlehtt_19504896688;
algo(159) <= L1_HTT50;
L1_SingleMu3woQcut <= singlemu_1272499;
algo(160) <= L1_SingleMu3woQcut;
L1_BptxAND <= ext_cond_bx_0(32);
algo(161) <= L1_BptxAND;
L1_BptxPlus <= ext_cond_bx_0(33);
algo(162) <= L1_BptxPlus;
L1_BptxMinus <= ext_cond_bx_0(34);
algo(163) <= L1_BptxMinus;
L1_BptxOR <= ext_cond_bx_0(35);
algo(164) <= L1_BptxOR;
L1_ExtCond_032 <= ext_cond_bx_0(0);
algo(165) <= L1_ExtCond_032;
L1_ExtCond_033 <= ext_cond_bx_0(1);
algo(166) <= L1_ExtCond_033;
L1_ExtCond_034 <= ext_cond_bx_0(2);
algo(167) <= L1_ExtCond_034;
L1_ExtCond_035 <= ext_cond_bx_0(3);
algo(168) <= L1_ExtCond_035;


-- ==== Inserted by TME - end ===============================================================================================================

-- One pipeline stages for algorithms
algo_pipeline_p: process(lhc_clk, algo)
    begin
    if (lhc_clk'event and lhc_clk = '1') then
        algo_o <= algo;
    end if;
end process;

end architecture rtl;