-- ========================================================
-- from VHDL producer:

-- Module ID: 4

-- Name of L1 Trigger Menu:
-- L1Menu_Collisions2017_v4_r2

-- Unique ID of L1 Trigger Menu:
-- 04d867d5-3c53-47f0-a97b-d8a1846f61a4

-- Unique ID of firmware implementation:
-- 1617e19e-196f-43a1-922a-63b5e360f44d

-- Scale set:
-- scales_2017_05_23

-- VHDL producer version
-- v2.3.0

-- External condition assignment
    single_ext_15141600570663550655 <= ext_cond_bx_0(18); -- single_ext_15141600570663550655
    single_ext_16249626042834147010 <= ext_cond_bx_0(23); -- single_ext_16249626042834147010
    single_ext_9960888781443116569 <= ext_cond_bx_0(3); -- single_ext_9960888781443116569
-- Instantiations of muon charge correlations - only once for a certain Bx combination, if there is at least one DoubleMuon, TripleMuon, QuadMuon condition
-- or muon-muon correlation condition.
    muon_charge_correlations_bx_0_bx_0_i: entity work.muon_charge_correlations
        port map(mu_bx_0, mu_bx_0,
            ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
            ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
            ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);

-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI, DR and mass) - once for every calo ObjectType in certain Bx used in correlation conditions

-- Instantiations of pt, eta, phi, cos-phi and sin-phi for correlation conditions (used for DETA, DPHI, DR, mass, overlap_remover and b_tagging) - once for every ObjectType in certain Bx used in correlation conditions
    mu_data_bx_0_l: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_pt_vector_bx_0(i)(MU_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(MU_PT_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.pt_high downto D_S_I_MU_V2.pt_low))), MU_PT_VECTOR_WIDTH);
        mu_eta_integer_bx_0(i) <= CONV_INTEGER(signed(mu_bx_0(i)(D_S_I_MU_V2.eta_high downto D_S_I_MU_V2.eta_low)));
        mu_phi_integer_bx_0(i) <= CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low));
        mu_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
        mu_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(CONV_INTEGER(mu_bx_0(i)(D_S_I_MU_V2.phi_high downto D_S_I_MU_V2.phi_low)));
    end generate mu_data_bx_0_l;
    jet_data_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_pt_vector_bx_0(i)(JET_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(JET_PT_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.et_high downto D_S_I_JET_V2.et_low))), JET_PT_VECTOR_WIDTH);
        jet_eta_integer_bx_0(i) <= CONV_INTEGER(signed(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
        jet_phi_integer_bx_0(i) <= CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low));
        jet_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        jet_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
        conv_jet_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_jet_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(jet_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate jet_data_bx_0_l;
    eg_data_bx_0_l: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_pt_vector_bx_0(i)(EG_PT_VECTOR_WIDTH-1 downto 0) <= CONV_STD_LOGIC_VECTOR(EG_PT_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.et_high downto D_S_I_EG_V2.et_low))), EG_PT_VECTOR_WIDTH);
        eg_eta_integer_bx_0(i) <= CONV_INTEGER(signed(eg_bx_0(i)(D_S_I_EG_V2.eta_high downto D_S_I_EG_V2.eta_low)));
        eg_phi_integer_bx_0(i) <= CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low));
        eg_cos_phi_bx_0(i) <= CALO_COS_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        eg_sin_phi_bx_0(i) <= CALO_SIN_PHI_LUT(CONV_INTEGER(eg_bx_0(i)(D_S_I_EG_V2.phi_high downto D_S_I_EG_V2.phi_low)));
        conv_eg_cos_phi_bx_0(i) <= MUON_COS_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
        conv_eg_sin_phi_bx_0(i) <= MUON_SIN_PHI_LUT(eg_phi_conv_2_muon_phi_integer_bx_0(i));
    end generate eg_data_bx_0_l;

-- Instantiations of differences for correlation conditions (used for DETA, DPHI, DR, mass and b_tagging) - once for correlation conditions with two ObjectTypes in certain Bxs
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
    diff_eg_eg_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_EG_OBJECTS)
        port map(eg_eta_integer_bx_0, eg_eta_integer_bx_0, diff_eg_eg_bx_0_bx_0_eta_integer);
    diff_eg_eg_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_EG_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, eg_phi_integer_bx_0, diff_eg_eg_bx_0_bx_0_phi_integer);
    eg_eg_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eg_bx_0_bx_0_l2: for j in 0 to NR_EG_OBJECTS-1 generate
            diff_eg_eg_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_DIFF_ETA_LUT(diff_eg_eg_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_eg_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_DIFF_PHI_LUT(diff_eg_eg_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_eg_bx_0_bx_0_l2;
    end generate eg_eg_bx_0_bx_0_l1;
    diff_eg_jet_eta_bx_0_bx_0_i: entity work.sub_eta_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS)
        port map(eg_eta_integer_bx_0, jet_eta_integer_bx_0, diff_eg_jet_bx_0_bx_0_eta_integer);
    diff_eg_jet_phi_bx_0_bx_0_i: entity work.sub_phi_integer_obj_vs_obj
        generic map(NR_EG_OBJECTS, NR_JET_OBJECTS, CALO_PHI_HALF_RANGE_BINS)
        port map(eg_phi_integer_bx_0, jet_phi_integer_bx_0, diff_eg_jet_bx_0_bx_0_phi_integer);
    eg_jet_bx_0_bx_0_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            diff_eg_jet_bx_0_bx_0_eta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_ETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
            diff_eg_jet_bx_0_bx_0_phi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_DIFF_PHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)),DETA_DPHI_VECTOR_WIDTH_ALL);
        end generate eg_jet_bx_0_bx_0_l2;
    end generate eg_jet_bx_0_bx_0_l1;

-- Instantiations of cosh-deta and cos-dphi LUTs for correlation conditions (used for mass and overlap_remover) - once for correlation conditions with two ObjectTypes in certain Bxs
    jet_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_JET_OBJECTS-1 generate
        jet_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            jet_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COSH_DETA_LUT(diff_jet_jet_bx_0_bx_0_eta_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
            jet_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(JET_JET_COS_DPHI_LUT(diff_jet_jet_bx_0_bx_0_phi_integer(i,j)), JET_JET_COSH_COS_VECTOR_WIDTH);
        end generate jet_jet_bx_0_bx_0_cosh_cos_l2;
    end generate jet_jet_bx_0_bx_0_cosh_cos_l1;
    mu_mu_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_MU_OBJECTS-1 generate
        mu_mu_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_MU_OBJECTS-1 generate
            mu_mu_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COSH_DETA_LUT(diff_mu_mu_bx_0_bx_0_eta_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
            mu_mu_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(MU_MU_COS_DPHI_LUT(diff_mu_mu_bx_0_bx_0_phi_integer(i,j)), MU_MU_COSH_COS_VECTOR_WIDTH);
        end generate mu_mu_bx_0_bx_0_cosh_cos_l2;
    end generate mu_mu_bx_0_bx_0_cosh_cos_l1;
    eg_eg_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_eg_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_EG_OBJECTS-1 generate
            eg_eg_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COSH_DETA_LUT(diff_eg_eg_bx_0_bx_0_eta_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
            eg_eg_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_EG_COS_DPHI_LUT(diff_eg_eg_bx_0_bx_0_phi_integer(i,j)), EG_EG_COSH_COS_VECTOR_WIDTH);
        end generate eg_eg_bx_0_bx_0_cosh_cos_l2;
    end generate eg_eg_bx_0_bx_0_cosh_cos_l1;
    eg_jet_bx_0_bx_0_cosh_cos_l1: for i in 0 to NR_EG_OBJECTS-1 generate
        eg_jet_bx_0_bx_0_cosh_cos_l2: for j in 0 to NR_JET_OBJECTS-1 generate
            eg_jet_bx_0_bx_0_cosh_deta_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COSH_DETA_LUT(diff_eg_jet_bx_0_bx_0_eta_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
            eg_jet_bx_0_bx_0_cos_dphi_vector(i,j) <= CONV_STD_LOGIC_VECTOR(EG_JET_COS_DPHI_LUT(diff_eg_jet_bx_0_bx_0_phi_integer(i,j)), EG_JET_COSH_COS_VECTOR_WIDTH);
        end generate eg_jet_bx_0_bx_0_cosh_cos_l2;
    end generate eg_jet_bx_0_bx_0_cosh_cos_l1;

-- Instantiations of conditions
double_eg_13299746526186732683_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0010", X"0010", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_13299746526186732683);


double_eg_14367260113818400607_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0014", X"0014", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_14367260113818400607);


double_eg_14367290900143979231_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"0022", X"0022", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_14367290900143979231);


double_eg_8902241742241126126_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, EG_TYPE,
        (X"000C", X"000C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        double_eg_8902241742241126126);


double_jet_10840719965249128790_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"003B", X"0000", X"0000"), (X"00C4", X"00C4", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_10840719965249128790);


double_jet_16379747838884957589_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00DC", X"0050", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_16379747838884957589);


double_jet_16382562588652064149_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"00E6", X"0050", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_16382562588652064149);


double_jet_17504692923644168291_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"00BA", X"00BA", X"0000", X"0000"), (X"008D", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_17504692923644168291);


double_jet_3730266969229109735_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_3730266969229109735);


double_jet_3805139313034161255_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"005A", X"005A", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_3805139313034161255);


double_jet_3851467703317088356_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"00BA", X"0000", X"0000"), (X"0045", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_3851467703317088356);


double_jet_3851467703875127396_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"0072", X"0072", X"0000", X"0000"), (X"0045", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_3851467703875127396);


double_jet_7821119012726214247_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"00BA", X"0000", X"0000"), (X"00C4", X"008D", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_7821119012726214247);


double_jet_7821119013284253287_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"003C", X"003C", X"0000", X"0000"),
        (false, false, true, true),
        (X"003B", X"0072", X"0000", X"0000"), (X"00C4", X"0045", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_7821119013284253287);


double_jet_8659301094004951763_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 0,
        2, true, JET_TYPE,
        (X"0078", X"0078", X"0000", X"0000"),
        (false, false, true, true),
        (X"003D", X"003D", X"0000", X"0000"), (X"00C2", X"00C2", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        double_jet_8659301094004951763);


quad_jet_17630949366336433287_i: entity work.calo_condition_v6_quad
    generic map(0, 11, 0, 11, 0, 11, 0, 11,
        4, true, JET_TYPE,
        (X"008C", X"006E", X"0050", X"0046"),
        (false, false, false, false),
        (X"0039", X"0039", X"0039", X"0039"), (X"00C6", X"00C6", X"00C6", X"00C6"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F")
    )
    port map(lhc_clk, jet_bx_0,
        quad_jet_17630949366336433287);


single_eg_14262501742930627507_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0036", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_14262501742930627507);


single_eg_9244738805910375422_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_9244738805910375422);


single_eg_9244741004933630974_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0034", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_9244741004933630974);


single_eg_9244743203956886526_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, EG_TYPE,
        (X"0038", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"C", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, eg_bx_0,
        single_eg_9244743203956886526);


single_jet_20010310448_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0078", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_20010310448);


single_jet_20010310832_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_20010310832);


single_jet_5967545310209469767_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, JET_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"003D", X"0000", X"0000", X"0000"), (X"00C2", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        single_jet_5967545310209469767);


single_tau_12210388642533153582_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 0, 0, 0,
        1, true, TAU_TYPE,
        (X"0050", X"0000", X"0000", X"0000"),
        (false, true, true, true),
        (X"0030", X"0000", X"0000", X"0000"), (X"00CF", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"E", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, tau_bx_0,
        single_tau_12210388642533153582);


triple_jet_10368473821548883594_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"0034", X"0034", X"0034", X"0000"),
        (true, false, false, true),
        (X"0000", X"003D", X"003D", X"0000"), (X"0000", X"00C2", X"00C2", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        triple_jet_10368473821548883594);


triple_jet_1776207310752122438_i: entity work.calo_conditions_v7_no_quad
    generic map(0, 11, 0, 11, 0, 11,
        3, true, JET_TYPE,
        (X"003C", X"003C", X"003C", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (X"F", X"F", X"F", X"F"),
        false
    )
    port map(lhc_clk, jet_bx_0,
        triple_jet_1776207310752122438);


double_mu_14585777620730815295_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_14585777620730815295,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


double_mu_14585786515326686015_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 0, 0, 0,
        2, true,
        (X"0007", X"0007", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFFF", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        double_mu_14585786515326686015,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


single_mu_14769293122775847365_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_14769293122775847365);


single_mu_17494117756195063635_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"002D", X"0000", X"0000", X"0000"),
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_17494117756195063635);


single_mu_17545683025133343173_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_17545683025133343173);


single_mu_17545683111032689093_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"001F", X"0000", X"0000", X"0000"),
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_17545683111032689093);


single_mu_17545683162572296645_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 0, 0, 0, 0, 0,
        1, true,
        (X"0025", X"0000", X"0000", X"0000"),
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
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        single_mu_17545683162572296645);


triple_mu_3324685351042537503_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 7, 0, 0,
        3, true,
        (X"000B", X"0007", X"0001", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FF00", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324685351042537503,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


triple_mu_3324685732743223327_i: entity work.muon_conditions_v7
    generic map(0, 7, 0, 7, 0, 7, 0, 0,
        3, true,
        (X"000B", X"0007", X"0001", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        ("ign", "ign", "ign", "ign"),
        (X"F000", X"F000", X"FFF0", X"FFFF"),
        (X"F", X"F", X"F", X"F"),
        "ig",
        false
    )
    port map(lhc_clk, mu_bx_0,
        triple_mu_3324685732743223327,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0);


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


single_etm_18699476016_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476016);


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_18699476144_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476144);


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


single_etm_2393532815536_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815536);


single_etm_2393532815541_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815541);


single_etm_2393532815664_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815664);


single_etmhf_306372248967728_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967728);


single_etmhf_306372248967856_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967856);


single_etmhf_306372248967984_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248967984);


single_etmhf_306372248968112_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"008C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968112);


single_etmhf_306372248968240_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968240);


single_etmhf_306372248968368_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00B4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_306372248968368);


single_etmhf_39215647867820080_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820080);


single_etmhf_39215647867820208_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00DC",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820208);


single_etmhf_39215647867820336_i: entity work.esums_conditions
    generic map(true, ETMHF_TYPE,
        X"00F0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etmhf_bx_0, single_etmhf_39215647867820336);


single_htt_19504896816_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0078",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_19504896816);


single_htt_2496626710576_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710576);


single_htt_2496626726960_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0190",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626726960);


single_htt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727216);


single_htt_2496626727472_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01E0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727472);


single_htt_2496626727600_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01F4",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727600);


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


single_htt_2496626727984_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0230",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727984);


single_htt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743344);


calo_calo_correlation_12094985861278103608_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 11, true, EG_TYPE,
        X"003C",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"C",
        0, 11, true, JET_TYPE,
        X"0044",
        false, X"003D", X"00C2",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"00000000084CA240", X"0000000000015F90",
        X"0000000000000000", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, EG_JET_COSH_COS_PRECISION, EG_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, jet_bx_0,
        diff_eg_jet_bx_0_bx_0_eta_vector, diff_eg_jet_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, jet_pt_vector_bx_0,
        eg_jet_bx_0_bx_0_cosh_deta_vector, eg_jet_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, jet_cos_phi_bx_0, eg_sin_phi_bx_0, jet_sin_phi_bx_0,
        calo_calo_correlation_12094985861278103608);

invariant_mass_2443380592745462540_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, EG_TYPE,
        X"0006",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, EG_TYPE,
        X"0006",
        false, X"0030", X"00CF",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000001312D00", X"0000000000000000",
        EG_PT_VECTOR_WIDTH, EG_PT_VECTOR_WIDTH, EG_EG_COSH_COS_PRECISION, EG_EG_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, EG_EG_SIN_COS_PRECISION
    )
    port map(lhc_clk, eg_bx_0, eg_bx_0,
        diff_eg_eg_bx_0_bx_0_eta_vector, diff_eg_eg_bx_0_bx_0_phi_vector,
        eg_pt_vector_bx_0, eg_pt_vector_bx_0,
        eg_eg_bx_0_bx_0_cosh_deta_vector, eg_eg_bx_0_bx_0_cos_dphi_vector,
        eg_cos_phi_bx_0, eg_cos_phi_bx_0, eg_sin_phi_bx_0, eg_sin_phi_bx_0,
        invariant_mass_2443380592745462540);

invariant_mass_2940638391871890823_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000008E9BD84D000", X"00000001DCD65000",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_2940638391871890823);

invariant_mass_2940919866919937415_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"0050",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000008E9BD84D000", X"000000047999ED00",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_2940919866919937415);

invariant_mass_3161027694297827830_i: entity work.calo_calo_correlation_condition_v4
    generic map(
        true,
        true, false, false, true, 0, false,
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        0, 11, true, JET_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        X"F",
        X"000005DC", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000008E9BD84D000", X"00000001DCD65000",
        JET_PT_VECTOR_WIDTH, JET_PT_VECTOR_WIDTH, JET_JET_COSH_COS_PRECISION, JET_JET_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", CALO_SIN_COS_VECTOR_WIDTH, JET_JET_SIN_COS_PRECISION
    )
    port map(lhc_clk, jet_bx_0, jet_bx_0,
        diff_jet_jet_bx_0_bx_0_eta_vector, diff_jet_jet_bx_0_bx_0_phi_vector,
        jet_pt_vector_bx_0, jet_pt_vector_bx_0,
        jet_jet_bx_0_bx_0_cosh_deta_vector, jet_jet_bx_0_bx_0_cos_dphi_vector,
        jet_cos_phi_bx_0, jet_cos_phi_bx_0, jet_sin_phi_bx_0, jet_sin_phi_bx_0,
        invariant_mass_3161027694297827830);

invariant_mass_13689376201502793133_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 7, true,
        X"000B",
        false, X"00D3", X"012D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        0, 7, true,
        X"000B",
        false, X"00D3",X"012D",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"FF00", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"0000000005D75C80", X"0000000001E84800",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_13689376201502793133);

invariant_mass_3063833799189854821_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, false, true, 0, false,
        0, 7, true,
        X"000B",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0007",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"0000000000000000", X"0000000000000000",
        X"000000000269FB20", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        invariant_mass_3063833799189854821);

muon_muon_correlation_16784489743460462578_i: entity work.muon_muon_correlation_condition_v4
    generic map(
        true,
        false, false, true, false, 0, false,
        0, 7, true,
        X"0009",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        0, 7, true,
        X"0009",
        true, X"0000",X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        true, X"0000", X"0000",
        "ign", X"F000", X"F",
        "os",
        X"00000000", X"00000000",
        X"00000000", X"00000000",
        X"000000000015FCE8", X"0000000000000000",
        X"0000000000000000", X"0000000000000000",
        MU_PT_VECTOR_WIDTH, MU_MU_COSH_COS_PRECISION, MU_MU_COSH_COS_VECTOR_WIDTH,
        X"0000000000000000", MUON_SIN_COS_VECTOR_WIDTH, MU_MU_SIN_COS_PRECISION
    )
    port map(lhc_clk, mu_bx_0, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        diff_mu_mu_bx_0_bx_0_eta_vector, diff_mu_mu_bx_0_bx_0_phi_vector,
        mu_pt_vector_bx_0, mu_pt_vector_bx_0,
        mu_mu_bx_0_bx_0_cosh_deta_vector, mu_mu_bx_0_bx_0_cos_dphi_vector,
        mu_cos_phi_bx_0, mu_cos_phi_bx_0, mu_sin_phi_bx_0, mu_sin_phi_bx_0,
        muon_muon_correlation_16784489743460462578);


-- Instantiations of algorithms

-- 17 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_17545683162572296645;
algo(45) <= l1_single_mu18;

-- 30 L1_DoubleMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_double_mu0 <= double_mu_14585777620730815295;
algo(65) <= l1_double_mu0;

-- 134 L1_SingleJet60 : JET60
l1_single_jet60 <= single_jet_20010310448;
algo(8) <= l1_single_jet60;

-- 135 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(82) <= l1_single_jet90;

-- 153 L1_DoubleJet60er2p7 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]}
l1_double_jet60er2p7 <= double_jet_8659301094004951763;
algo(9) <= l1_double_jet60er2p7;

-- 170 L1_HTT200er : HTT200
l1_htt200er <= single_htt_2496626726960;
algo(12) <= l1_htt200er;

-- 171 L1_HTT220er : HTT220
l1_htt220er <= single_htt_2496626727216;
algo(15) <= l1_htt220er;

-- 172 L1_HTT240er : HTT240
l1_htt240er <= single_htt_2496626727472;
algo(18) <= l1_htt240er;

-- 173 L1_HTT255er : HTT255
l1_htt255er <= single_htt_2496626727605;
algo(24) <= l1_htt255er;

-- 174 L1_HTT270er : HTT270
l1_htt270er <= single_htt_2496626727856;
algo(28) <= l1_htt270er;

-- 175 L1_HTT280er : HTT280
l1_htt280er <= single_htt_2496626727984;
algo(31) <= l1_htt280er;

-- 176 L1_HTT300er : HTT300
l1_htt300er <= single_htt_2496626743344;
algo(36) <= l1_htt300er;

-- 184 L1_ETM40 : ETM40
l1_etm40 <= single_etm_18699475504;
algo(11) <= l1_etm40;

-- 186 L1_ETM60 : ETM60
l1_etm60 <= single_etm_18699475760;
algo(17) <= l1_etm60;

-- 187 L1_ETM70 : ETM70
l1_etm70 <= single_etm_18699475888;
algo(106) <= l1_etm70;

-- 189 L1_ETM80 : ETM80
l1_etm80 <= single_etm_18699476016;
algo(29) <= l1_etm80;

-- 190 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(35) <= l1_etm85;

-- 191 L1_ETM90 : ETM90
l1_etm90 <= single_etm_18699476144;
algo(96) <= l1_etm90;

-- 192 L1_ETM95 : ETM95
l1_etm95 <= single_etm_18699476149;
algo(43) <= l1_etm95;

-- 193 L1_ETM100 : ETM100
l1_etm100 <= single_etm_2393532815408;
algo(3) <= l1_etm100;

-- 194 L1_ETM105 : ETM105
l1_etm105 <= single_etm_2393532815413;
algo(101) <= l1_etm105;

-- 195 L1_ETM110 : ETM110
l1_etm110 <= single_etm_2393532815536;
algo(103) <= l1_etm110;

-- 196 L1_ETM115 : ETM115
l1_etm115 <= single_etm_2393532815541;
algo(105) <= l1_etm115;

-- 197 L1_ETM120 : ETM120
l1_etm120 <= single_etm_2393532815664;
algo(104) <= l1_etm120;

-- 199 L1_ETMHF70 : ETMHF70
l1_etmhf70 <= single_etmhf_306372248968112;
algo(64) <= l1_etmhf70;

-- 200 L1_ETMHF80 : ETMHF80
l1_etmhf80 <= single_etmhf_306372248968240;
algo(75) <= l1_etmhf80;

-- 201 L1_ETMHF90 : ETMHF90
l1_etmhf90 <= single_etmhf_306372248968368;
algo(80) <= l1_etmhf90;

-- 202 L1_ETMHF100 : ETMHF100
l1_etmhf100 <= single_etmhf_39215647867820080;
algo(21) <= l1_etmhf100;

-- 203 L1_ETMHF110 : ETMHF110
l1_etmhf110 <= single_etmhf_39215647867820208;
algo(51) <= l1_etmhf110;

-- 204 L1_ETMHF120 : ETMHF120
l1_etmhf120 <= single_etmhf_39215647867820336;
algo(61) <= l1_etmhf120;

-- 221 L1_DoubleJet30_Mass_Min400_dEta_Max1p5 : mass_inv{JET30,JET30}[MASS_MIN_400,DETA_MAX_1p5]
l1_double_jet30_mass_min400_d_eta_max1p5 <= invariant_mass_3161027694297827830;
algo(112) <= l1_double_jet30_mass_min400_d_eta_max1p5;

-- 228 L1_LooseIsoEG30er2p1_Jet34er2p7_dR_Min0p3 : dist{EG30[EG-ETA_2p13,EG-ISO_0xC],JET34[JET-ETA_2p7]}[DR_MIN_0p3]
l1_loose_iso_eg30er2p1_jet34er2p7_d_r_min0p3 <= calo_calo_correlation_12094985861278103608;
algo(113) <= l1_loose_iso_eg30er2p1_jet34er2p7_d_r_min0p3;

-- 229 L1_LooseIsoEG24er2p1_HTT100er : EG24[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg24er2p1_htt100er <= single_eg_9244738805910375422 and single_htt_2496626710576;
algo(99) <= l1_loose_iso_eg24er2p1_htt100er;

-- 230 L1_LooseIsoEG26er2p1_HTT100er : EG26[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg26er2p1_htt100er <= single_eg_9244741004933630974 and single_htt_2496626710576;
algo(5) <= l1_loose_iso_eg26er2p1_htt100er;

-- 231 L1_LooseIsoEG28er2p1_HTT100er : EG28[EG-ETA_2p13,EG-ISO_0xC] AND HTT100
l1_loose_iso_eg28er2p1_htt100er <= single_eg_9244743203956886526 and single_htt_2496626710576;
algo(4) <= l1_loose_iso_eg28er2p1_htt100er;

-- 232 L1_LooseIsoEG24er2p1_TripleJet_26er2p7_26_26er2p7 : EG24[EG-ETA_2p13,EG-ISO_0xC] AND comb{JET26,JET26[JET-ETA_2p7],JET26[JET-ETA_2p7]}
l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7 <= single_eg_9244738805910375422 and triple_jet_10368473821548883594;
algo(102) <= l1_loose_iso_eg24er2p1_triple_jet_26er2p7_26_26er2p7;

-- 233 L1_Mu18_HTT100er : MU18[MU-QLTY_SNGL] AND HTT100
l1_mu18_htt100er <= single_mu_17545683162572296645 and single_htt_2496626710576;
algo(66) <= l1_mu18_htt100er;

-- 234 L1_Mu18_Jet24er2p7 : MU18[MU-QLTY_SNGL] AND JET24[JET-ETA_2p7]
l1_mu18_jet24er2p7 <= single_mu_17545683162572296645 and single_jet_5967545310209469767;
algo(62) <= l1_mu18_jet24er2p7;

-- 243 L1_HTT250er_QuadJet_70_55_40_35_er2p5 : HTT250 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt250er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727600 and quad_jet_17630949366336433287;
algo(22) <= l1_htt250er_quad_jet_70_55_40_35_er2p5;

-- 244 L1_HTT280er_QuadJet_70_55_40_35_er2p5 : HTT280 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt280er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626727984 and quad_jet_17630949366336433287;
algo(34) <= l1_htt280er_quad_jet_70_55_40_35_er2p5;

-- 245 L1_HTT300er_QuadJet_70_55_40_35_er2p5 : HTT300 AND comb{JET70[JET-ETA_RESTR],JET55[JET-ETA_RESTR],JET40[JET-ETA_RESTR],JET35[JET-ETA_RESTR]}
l1_htt300er_quad_jet_70_55_40_35_er2p5 <= single_htt_2496626743344 and quad_jet_17630949366336433287;
algo(38) <= l1_htt300er_quad_jet_70_55_40_35_er2p5;

-- 255 L1_IsoTau40er_ETM80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM80
l1_iso_tau40er_etm80 <= single_tau_12210388642533153582 and single_etm_18699476016;
algo(26) <= l1_iso_tau40er_etm80;

-- 256 L1_IsoTau40er_ETM85 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM85
l1_iso_tau40er_etm85 <= single_tau_12210388642533153582 and single_etm_18699476021;
algo(84) <= l1_iso_tau40er_etm85;

-- 257 L1_IsoTau40er_ETM90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM90
l1_iso_tau40er_etm90 <= single_tau_12210388642533153582 and single_etm_18699476144;
algo(86) <= l1_iso_tau40er_etm90;

-- 258 L1_IsoTau40er_ETM95 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM95
l1_iso_tau40er_etm95 <= single_tau_12210388642533153582 and single_etm_18699476149;
algo(88) <= l1_iso_tau40er_etm95;

-- 259 L1_IsoTau40er_ETM100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM100
l1_iso_tau40er_etm100 <= single_tau_12210388642533153582 and single_etm_2393532815408;
algo(71) <= l1_iso_tau40er_etm100;

-- 260 L1_IsoTau40er_ETM105 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM105
l1_iso_tau40er_etm105 <= single_tau_12210388642533153582 and single_etm_2393532815413;
algo(69) <= l1_iso_tau40er_etm105;

-- 261 L1_IsoTau40er_ETM110 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM110
l1_iso_tau40er_etm110 <= single_tau_12210388642533153582 and single_etm_2393532815536;
algo(73) <= l1_iso_tau40er_etm110;

-- 262 L1_IsoTau40er_ETM115 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM115
l1_iso_tau40er_etm115 <= single_tau_12210388642533153582 and single_etm_2393532815541;
algo(76) <= l1_iso_tau40er_etm115;

-- 263 L1_IsoTau40er_ETM120 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETM120
l1_iso_tau40er_etm120 <= single_tau_12210388642533153582 and single_etm_2393532815664;
algo(77) <= l1_iso_tau40er_etm120;

-- 264 L1_IsoTau40er_ETMHF80 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF80
l1_iso_tau40er_etmhf80 <= single_tau_12210388642533153582 and single_etmhf_306372248968240;
algo(93) <= l1_iso_tau40er_etmhf80;

-- 265 L1_IsoTau40er_ETMHF90 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF90
l1_iso_tau40er_etmhf90 <= single_tau_12210388642533153582 and single_etmhf_306372248968368;
algo(97) <= l1_iso_tau40er_etmhf90;

-- 266 L1_IsoTau40er_ETMHF100 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF100
l1_iso_tau40er_etmhf100 <= single_tau_12210388642533153582 and single_etmhf_39215647867820080;
algo(87) <= l1_iso_tau40er_etmhf100;

-- 267 L1_IsoTau40er_ETMHF110 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF110
l1_iso_tau40er_etmhf110 <= single_tau_12210388642533153582 and single_etmhf_39215647867820208;
algo(90) <= l1_iso_tau40er_etmhf110;

-- 268 L1_IsoTau40er_ETMHF120 : TAU40[TAU-ETA_2p13,TAU-ISO_0xE] AND ETMHF120
l1_iso_tau40er_etmhf120 <= single_tau_12210388642533153582 and single_etmhf_39215647867820336;
algo(91) <= l1_iso_tau40er_etmhf120;

-- 269 L1_Mu22er2p1_IsoTau40er2p1 : MU22[MU-ETA_2p10,MU-QLTY_SNGL] AND TAU40[TAU-ETA_2p13,TAU-ISO_0xE]
l1_mu22er2p1_iso_tau40er2p1 <= single_mu_17494117756195063635 and single_tau_12210388642533153582;
algo(6) <= l1_mu22er2p1_iso_tau40er2p1;

-- 275 L1_DoubleJet60er2p7_ETM70 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]} AND ETM70
l1_double_jet60er2p7_etm70 <= double_jet_8659301094004951763 and single_etm_18699475888;
algo(92) <= l1_double_jet60er2p7_etm70;

-- 276 L1_DoubleJet60er2p7_ETM80 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]} AND ETM80
l1_double_jet60er2p7_etm80 <= double_jet_8659301094004951763 and single_etm_18699476016;
algo(19) <= l1_double_jet60er2p7_etm80;

-- 277 L1_DoubleJet60er2p7_ETM90 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]} AND ETM90
l1_double_jet60er2p7_etm90 <= double_jet_8659301094004951763 and single_etm_18699476144;
algo(10) <= l1_double_jet60er2p7_etm90;

-- 278 L1_DoubleJet60er2p7_ETM100 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]} AND ETM100
l1_double_jet60er2p7_etm100 <= double_jet_8659301094004951763 and single_etm_2393532815408;
algo(13) <= l1_double_jet60er2p7_etm100;

-- 286 L1_DoubleJet_110_40_DoubleJet40_Mass_Min620 : comb{JET110,JET40} AND mass_inv{JET40,JET40}[MASS_MIN_620]
l1_double_jet_110_40_double_jet40_mass_min620 <= double_jet_16379747838884957589 and invariant_mass_2940919866919937415;
algo(110) <= l1_double_jet_110_40_double_jet40_mass_min620;

-- 288 L1_DoubleJet_115_40_DoubleJet40_Mass_Min620 : comb{JET115,JET40} AND mass_inv{JET40,JET40}[MASS_MIN_620]
l1_double_jet_115_40_double_jet40_mass_min620 <= double_jet_16382562588652064149 and invariant_mass_2940919866919937415;
algo(111) <= l1_double_jet_115_40_double_jet40_mass_min620;

-- 289 L1_DoubleJet30_Mass_Min400_Mu6 : MU6[MU-QLTY_SNGL] AND mass_inv{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu6 <= single_mu_14769293122775847365 and invariant_mass_2940638391871890823;
algo(59) <= l1_double_jet30_mass_min400_mu6;

-- 290 L1_DoubleJet30_Mass_Min400_Mu10 : MU10[MU-QLTY_SNGL] AND mass_inv{JET30,JET30}[MASS_MIN_400]
l1_double_jet30_mass_min400_mu10 <= single_mu_17545683025133343173 and invariant_mass_2940638391871890823;
algo(57) <= l1_double_jet30_mass_min400_mu10;

-- 315 L1_Mu6_HTT240er : MU6[MU-QLTY_SNGL] AND HTT240
l1_mu6_htt240er <= single_mu_14769293122775847365 and single_htt_2496626727472;
algo(58) <= l1_mu6_htt240er;

-- 316 L1_Mu6_HTT250er : MU6[MU-QLTY_SNGL] AND HTT250
l1_mu6_htt250er <= single_mu_14769293122775847365 and single_htt_2496626727600;
algo(60) <= l1_mu6_htt250er;

-- 317 L1_Mu15_HTT100er : MU15[MU-QLTY_SNGL] AND HTT100
l1_mu15_htt100er <= single_mu_17545683111032689093 and single_htt_2496626710576;
algo(32) <= l1_mu15_htt100er;

-- 323 L1_DoubleMu3_SQ_ETMHF40_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF40 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf40_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967728 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(23) <= l1_double_mu3_sq_etmhf40_jet60_or_double_jet30;

-- 324 L1_DoubleMu3_SQ_ETMHF50_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF50 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf50_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967856 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(27) <= l1_double_mu3_sq_etmhf50_jet60_or_double_jet30;

-- 325 L1_DoubleMu3_SQ_ETMHF60_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF60 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf60_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248967984 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(41) <= l1_double_mu3_sq_etmhf60_jet60_or_double_jet30;

-- 326 L1_DoubleMu3_SQ_ETMHF70_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF70 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf70_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968112 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(52) <= l1_double_mu3_sq_etmhf70_jet60_or_double_jet30;

-- 327 L1_DoubleMu3_SQ_ETMHF80_Jet60_OR_DoubleJet30 : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND ETMHF80 AND (comb{JET30,JET30} OR JET60)
l1_double_mu3_sq_etmhf80_jet60_or_double_jet30 <= double_mu_14585786515326686015 and single_etmhf_306372248968240 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(33) <= l1_double_mu3_sq_etmhf80_jet60_or_double_jet30;

-- 328 L1_DoubleMu3_SQ_HTT100er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT100
l1_double_mu3_sq_htt100er <= double_mu_14585786515326686015 and single_htt_2496626710576;
algo(72) <= l1_double_mu3_sq_htt100er;

-- 329 L1_DoubleMu3_SQ_HTT200er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT200
l1_double_mu3_sq_htt200er <= double_mu_14585786515326686015 and single_htt_2496626726960;
algo(47) <= l1_double_mu3_sq_htt200er;

-- 330 L1_DoubleMu3_SQ_HTT220er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT220
l1_double_mu3_sq_htt220er <= double_mu_14585786515326686015 and single_htt_2496626727216;
algo(81) <= l1_double_mu3_sq_htt220er;

-- 331 L1_DoubleMu3_SQ_HTT240er : comb{MU3[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]} AND HTT240
l1_double_mu3_sq_htt240er <= double_mu_14585786515326686015 and single_htt_2496626727472;
algo(39) <= l1_double_mu3_sq_htt240er;

-- 336 L1_DoubleEG6_HTT240er : comb{EG6,EG6} AND HTT240
l1_double_eg6_htt240er <= double_eg_8902241742241126126 and single_htt_2496626727472;
algo(16) <= l1_double_eg6_htt240er;

-- 337 L1_DoubleEG6_HTT250er : comb{EG6,EG6} AND HTT250
l1_double_eg6_htt250er <= double_eg_8902241742241126126 and single_htt_2496626727600;
algo(14) <= l1_double_eg6_htt250er;

-- 338 L1_DoubleEG6_HTT270er : comb{EG6,EG6} AND HTT270
l1_double_eg6_htt270er <= double_eg_8902241742241126126 and single_htt_2496626727856;
algo(25) <= l1_double_eg6_htt270er;

-- 339 L1_DoubleEG6_HTT300er : comb{EG6,EG6} AND HTT300
l1_double_eg6_htt300er <= double_eg_8902241742241126126 and single_htt_2496626743344;
algo(30) <= l1_double_eg6_htt300er;

-- 340 L1_DoubleEG8er2p6_HTT255er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT255
l1_double_eg8er2p6_htt255er <= double_eg_13299746526186732683 and single_htt_2496626727605;
algo(44) <= l1_double_eg8er2p6_htt255er;

-- 341 L1_DoubleEG8er2p6_HTT270er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT270
l1_double_eg8er2p6_htt270er <= double_eg_13299746526186732683 and single_htt_2496626727856;
algo(37) <= l1_double_eg8er2p6_htt270er;

-- 342 L1_DoubleEG8er2p6_HTT300er : comb{EG8[EG-ETA_2p61],EG8[EG-ETA_2p61]} AND HTT300
l1_double_eg8er2p6_htt300er <= double_eg_13299746526186732683 and single_htt_2496626743344;
algo(40) <= l1_double_eg8er2p6_htt300er;

-- 349 L1_ETMHF100_Jet60_OR_DoubleJet30 : ETMHF100 AND (comb{JET30,JET30} OR JET60)
l1_etmhf100_jet60_or_double_jet30 <= single_etmhf_39215647867820080 and ( double_jet_3730266969229109735 or single_jet_20010310448 );
algo(55) <= l1_etmhf100_jet60_or_double_jet30;

-- 357 L1_ETMHF100_Jet60_OR_DiJet30woTT28 : ETMHF100 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf100_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820080 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(53) <= l1_etmhf100_jet60_or_di_jet30wo_tt28;

-- 358 L1_ETMHF110_Jet60_OR_DiJet30woTT28 : ETMHF110 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf110_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820208 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(100) <= l1_etmhf110_jet60_or_di_jet30wo_tt28;

-- 359 L1_ETMHF120_Jet60_OR_DiJet30woTT28 : ETMHF120 AND (comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_CENNoTT28]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_CENNoTT28],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_POS]} OR comb{JET30[JET-ETA_FWD_NEG],JET30[JET-ETA_FWD_NEG]} OR comb{JET30[JET-ETA_FWD_POS],JET30[JET-ETA_FWD_NEG]} OR JET60)
l1_etmhf120_jet60_or_di_jet30wo_tt28 <= single_etmhf_39215647867820336 and ( double_jet_10840719965249128790 or double_jet_7821119013284253287 or double_jet_7821119012726214247 or double_jet_3851467703875127396 or double_jet_17504692923644168291 or double_jet_3851467703317088356 or single_jet_20010310448 );
algo(67) <= l1_etmhf120_jet60_or_di_jet30wo_tt28;

-- 360 L1_ETMHF70_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF70 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf70_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968112 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(74) <= l1_etmhf70_jet90_or_double_jet45_or_triple_jet30;

-- 361 L1_ETMHF80_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF80 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf80_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968240 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(79) <= l1_etmhf80_jet90_or_double_jet45_or_triple_jet30;

-- 362 L1_ETMHF90_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF90 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf90_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_306372248968368 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(85) <= l1_etmhf90_jet90_or_double_jet45_or_triple_jet30;

-- 363 L1_ETMHF100_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF100 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf100_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820080 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(48) <= l1_etmhf100_jet90_or_double_jet45_or_triple_jet30;

-- 364 L1_ETMHF110_Jet90_OR_DoubleJet45_OR_TripleJet30 : ETMHF110 AND (comb{JET30,JET30,JET30} OR comb{JET45,JET45} OR JET90)
l1_etmhf110_jet90_or_double_jet45_or_triple_jet30 <= single_etmhf_39215647867820208 and ( triple_jet_1776207310752122438 or double_jet_3805139313034161255 or single_jet_20010310832 );
algo(94) <= l1_etmhf110_jet90_or_double_jet45_or_triple_jet30;

-- 366 L1_ETMHF80_HTT60er : ETMHF80 AND HTT60
l1_etmhf80_htt60er <= single_etmhf_306372248968240 and single_htt_19504896816;
algo(7) <= l1_etmhf80_htt60er;

-- 367 L1_ETMHF90_HTT60er : ETMHF90 AND HTT60
l1_etmhf90_htt60er <= single_etmhf_306372248968368 and single_htt_19504896816;
algo(83) <= l1_etmhf90_htt60er;

-- 368 L1_ETMHF100_HTT60er : ETMHF100 AND HTT60
l1_etmhf100_htt60er <= single_etmhf_39215647867820080 and single_htt_19504896816;
algo(42) <= l1_etmhf100_htt60er;

-- 369 L1_ETMHF110_HTT60er : ETMHF110 AND HTT60
l1_etmhf110_htt60er <= single_etmhf_39215647867820208 and single_htt_19504896816;
algo(70) <= l1_etmhf110_htt60er;

-- 370 L1_ETMHF120_HTT60er : ETMHF120 AND HTT60
l1_etmhf120_htt60er <= single_etmhf_39215647867820336 and single_htt_19504896816;
algo(63) <= l1_etmhf120_htt60er;

-- 377 L1_DoubleMu4_SQ_OS_dR_Max1p2 : dist{MU4[MU-QLTY_SNGL],MU4[MU-QLTY_SNGL]}[DR_1p2,CHGCOR_OS]
l1_double_mu4_sq_os_d_r_max1p2 <= muon_muon_correlation_16784489743460462578;
algo(107) <= l1_double_mu4_sq_os_d_r_max1p2;

-- 387 L1_TripleMu_5SQ_3SQ_0OQ_DoubleMu_5_3_SQ_OS_Mass_Max9 : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU0[MU-QLTY_OPEN]} AND mass_inv{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}[MASS_MASS_0to9,CHGCOR_OS]
l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9 <= triple_mu_3324685732743223327 and invariant_mass_3063833799189854821;
algo(108) <= l1_triple_mu_5_sq_3_sq_0_oq_double_mu_5_3_sq_os_mass_max9;

-- 388 L1_TripleMu_5SQ_3SQ_0_DoubleMu_5_3_SQ_OS_Mass_Max9 : comb{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL],MU0[MU-QLTY_DBLE]} AND mass_inv{MU5[MU-QLTY_SNGL],MU3[MU-QLTY_SNGL]}[MASS_MASS_0to9,CHGCOR_OS]
l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9 <= triple_mu_3324685351042537503 and invariant_mass_3063833799189854821;
algo(109) <= l1_triple_mu_5_sq_3_sq_0_double_mu_5_3_sq_os_mass_max9;

-- 401 L1_DoubleMu5Upsilon_OS_DoubleEG3 : mass_inv{MU5[MU-QLTY_DBLE,MU-ETA_2p3],MU5[MU-QLTY_DBLE,MU-ETA_2p3]}[MASS_MASS_8to14,CHGCOR_OS] AND mass_inv{EG3[EG-ETA_2p13],EG3[EG-ETA_2p13]}[MASS_MASS_0to20]
l1_double_mu5_upsilon_os_double_eg3 <= invariant_mass_13689376201502793133 and invariant_mass_2443380592745462540;
algo(114) <= l1_double_mu5_upsilon_os_double_eg3;

-- 405 L1_Mu6_DoubleEG17 : MU6[MU-QLTY_SNGL] AND comb{EG17,EG17}
l1_mu6_double_eg17 <= single_mu_14769293122775847365 and double_eg_14367290900143979231;
algo(50) <= l1_mu6_double_eg17;

-- 425 L1_Mu6_HTT200er : MU6[MU-QLTY_SNGL] AND HTT200
l1_mu6_htt200er <= single_mu_14769293122775847365 and single_htt_2496626726960;
algo(78) <= l1_mu6_htt200er;

-- 428 L1_EG27er2p1_HTT200er : EG27[EG-ETA_2p13] AND HTT200
l1_eg27er2p1_htt200er <= single_eg_14262501742930627507 and single_htt_2496626726960;
algo(95) <= l1_eg27er2p1_htt200er;

-- 429 L1_DoubleJet60er2p7_ETM60 : comb{JET60[JET-ETA_2p7],JET60[JET-ETA_2p7]} AND ETM60
l1_double_jet60er2p7_etm60 <= double_jet_8659301094004951763 and single_etm_18699475760;
algo(68) <= l1_double_jet60er2p7_etm60;

-- 432 L1_DoubleMu0_ETM40 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM40
l1_double_mu0_etm40 <= double_mu_14585777620730815295 and single_etm_18699475504;
algo(46) <= l1_double_mu0_etm40;

-- 433 L1_DoubleMu0_ETM55 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM55
l1_double_mu0_etm55 <= double_mu_14585777620730815295 and single_etm_18699475637;
algo(54) <= l1_double_mu0_etm55;

-- 434 L1_DoubleMu0_ETM60 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM60
l1_double_mu0_etm60 <= double_mu_14585777620730815295 and single_etm_18699475760;
algo(56) <= l1_double_mu0_etm60;

-- 435 L1_DoubleMu0_ETM65 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM65
l1_double_mu0_etm65 <= double_mu_14585777620730815295 and single_etm_18699475765;
algo(89) <= l1_double_mu0_etm65;

-- 436 L1_DoubleMu0_ETM70 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]} AND ETM70
l1_double_mu0_etm70 <= double_mu_14585777620730815295 and single_etm_18699475888;
algo(98) <= l1_double_mu0_etm70;

-- 439 L1_DoubleEG6_HTT255er : comb{EG6,EG6} AND HTT255
l1_double_eg6_htt255er <= double_eg_8902241742241126126 and single_htt_2496626727605;
algo(20) <= l1_double_eg6_htt255er;

-- 442 L1_Mu6_DoubleEG10 : MU6[MU-QLTY_SNGL] AND comb{EG10,EG10}
l1_mu6_double_eg10 <= single_mu_14769293122775847365 and double_eg_14367260113818400607;
algo(49) <= l1_mu6_double_eg10;

-- 472 L1_BPTX_BeamGas_B2_VME : EXT_BPTX_BeamGas_B2_VME
l1_bptx_beam_gas_b2_vme <= single_ext_9960888781443116569;
algo(0) <= l1_bptx_beam_gas_b2_vme;

-- 483 L1_BPTX_RefAND_VME : EXT_BPTX_RefAND_VME
l1_bptx_ref_and_vme <= single_ext_15141600570663550655;
algo(1) <= l1_bptx_ref_and_vme;

-- 488 L1_FirstCollisionInTrain : EXT_BPTX_FirstCollisionInTrain_VME
l1_first_collision_in_train <= single_ext_16249626042834147010;
algo(2) <= l1_first_collision_in_train;


-- ========================================================