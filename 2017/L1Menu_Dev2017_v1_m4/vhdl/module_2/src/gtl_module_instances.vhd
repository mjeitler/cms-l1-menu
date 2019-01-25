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

-- External condition assignment

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


-- Instantiations of eta and phi conversion to muon scale for calo-muon and muon-esums correlation conditions (used for DETA, DPHI and DR) - once for every calo ObjectType in certain Bx used in correlation conditions
jet_conv_2_muon_bx_0_l: for i in 0 to NR_JET_OBJECTS-1 generate
    jet_eta_conv_2_muon_eta_integer_bx_0(i) <= JET_ETA_CONV_2_MUON_ETA_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.eta_high downto D_S_I_JET_V2.eta_low)));
    jet_phi_conv_2_muon_phi_integer_bx_0(i) <= JET_PHI_CONV_2_MUON_PHI_LUT(CONV_INTEGER(jet_bx_0(i)(D_S_I_JET_V2.phi_high downto D_S_I_JET_V2.phi_low)));
end generate;


-- Instantiations of differences for correlation conditions (used for DETA, DPHI and DR) - once for correlation conditions with two ObjectTypes in certain Bxs
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


double_eg_14367831859864844127_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"002C", X"0014", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367831859864844127);


double_eg_14367840655957867231_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 2, true, EG_TYPE,
        (X"0030", X"0022", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, double_eg_14367840655957867231);


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


single_eg_145873334_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
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
    port map(lhc_clk, eg_bx_0, single_eg_145873334);


single_eg_145873461_i: entity work.calo_conditions_v3
    generic map(NR_EG_OBJECTS, 1, true, EG_TYPE,
        (X"005A", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, eg_bx_0, single_eg_145873461);


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


single_jet_20010310832_i: entity work.calo_conditions_v3
    generic map(NR_JET_OBJECTS, 1, true, JET_TYPE,
        (X"00B4", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, jet_bx_0, single_jet_20010310832);


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


single_tau_16608830939767017288_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0028", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, single_tau_16608830939767017288);


single_tau_16608831008486494024_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
        (X"0030", X"0000", X"0000", X"0000"),
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
    port map(lhc_clk, tau_bx_0, single_tau_16608831008486494024);


single_tau_218368042610145022_i: entity work.calo_conditions_v3
    generic map(NR_TAU_OBJECTS, 1, true, TAU_TYPE,
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
    port map(lhc_clk, tau_bx_0, single_tau_218368042610145022);


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


double_mu_16961157256621881348_i: entity work.muon_conditions_v3
    generic map(2, true,
        (X"0019", X"000B", X"0000", X"0000"),
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
        double_mu_16961157256621881348);


quad_mu_509409160461874775_i: entity work.muon_conditions_v3
    generic map(4, true,
        (X"0001", X"0001", X"0001", X"0001"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
        (X"0000", X"0000", X"0000", X"0000"), (X"0000", X"0000", X"0000", X"0000"),
        (true, true, true, true),
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
        quad_mu_509409160461874775);


single_mu_11649248473972557216_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"003D", X"0000", X"0000", X"0000"),
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
        single_mu_11649248473972557216);


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


single_mu_17545683162572296645_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_17545683162572296645);


single_mu_7037562455545169312_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0015", X"0000", X"0000", X"0000"),
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
        single_mu_7037562455545169312);


single_mu_7109620049583097248_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"001D", X"0000", X"0000", X"0000"),
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
        single_mu_7109620049583097248);


single_mu_7145648846602061216_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0021", X"0000", X"0000", X"0000"),
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
        single_mu_7145648846602061216);


single_mu_7181677643621025184_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0025", X"0000", X"0000", X"0000"),
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
        single_mu_7181677643621025184);


single_mu_9343405464758863264_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0029", X"0000", X"0000", X"0000"),
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
        single_mu_9343405464758863264);


single_mu_9379434261777827232_i: entity work.muon_conditions_v3
    generic map(1, true,
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
        "ig"
    )
    port map(lhc_clk, mu_bx_0,
        ls_charcorr_double_bx_0_bx_0, os_charcorr_double_bx_0_bx_0,
        ls_charcorr_triple_bx_0_bx_0, os_charcorr_triple_bx_0_bx_0,
        ls_charcorr_quad_bx_0_bx_0, os_charcorr_quad_bx_0_bx_0,
        single_mu_9379434261777827232);


single_mu_9433477457306273184_i: entity work.muon_conditions_v3
    generic map(1, true,
        (X"0033", X"0000", X"0000", X"0000"),
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
        single_mu_9433477457306273184);


single_etm_18699475376_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"003C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475376);


single_etm_18699475632_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"0064",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699475632);


single_etm_18699476021_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00AA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_18699476021);


single_etm_2393532815541_i: entity work.esums_conditions
    generic map(true, ETM_TYPE,
        X"00E6",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, etm_bx_0, single_etm_2393532815541);


single_htm_19504782384_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00A0",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_19504782384);


single_htm_2496612030512_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"00C8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612030512);


single_htm_2496612031152_i: entity work.esums_conditions
    generic map(true, HTM_TYPE,
        X"012C",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htm_bx_0, single_htm_2496612031152);


single_htt_2496626710837_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"00FA",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626710837);


single_htt_2496626711344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0140",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626711344);


single_htt_2496626727216_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"01B8",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626727216);


single_htt_2496626743344_i: entity work.esums_conditions
    generic map(true, HTT_TYPE,
        X"0258",
        true, X"0000", X"0000",
        true, X"0000", X"0000"
        )
    port map(lhc_clk, htt_bx_0, single_htt_2496626743344);


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

muon_muon_correlation_8008405571232419574_i: entity work.muon_muon_correlation_condition
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
        muon_muon_correlation_8008405571232419574);


-- Instantiations of algorithms

-- 9 L1_SingleMu18 : MU18[MU-QLTY_SNGL]
l1_single_mu18 <= single_mu_17545683162572296645;
algo(48) <= l1_single_mu18;

-- 14 L1_SingleMu10_LowQ : MU10[MU-QLTY_DBLE]
l1_single_mu10_low_q <= single_mu_17545683021081726533;
algo(47) <= l1_single_mu10_low_q;

-- 16 L1_SingleMu14er : MU14[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu14er <= single_mu_7109620049583097248;
algo(30) <= l1_single_mu14er;

-- 17 L1_SingleMu16er : MU16[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu16er <= single_mu_7145648846602061216;
algo(7) <= l1_single_mu16er;

-- 18 L1_SingleMu18er : MU18[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu18er <= single_mu_7181677643621025184;
algo(14) <= l1_single_mu18er;

-- 19 L1_SingleMu20er : MU20[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu20er <= single_mu_9343405464758863264;
algo(9) <= l1_single_mu20er;

-- 20 L1_SingleMu22er : MU22[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu22er <= single_mu_9379434261777827232;
algo(10) <= l1_single_mu22er;

-- 21 L1_SingleMu25er : MU25[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu25er <= single_mu_9433477457306273184;
algo(11) <= l1_single_mu25er;

-- 22 L1_SingleMu30er : MU30[MU-QLTY_SNGL,MU-ETA_2p10]
l1_single_mu30er <= single_mu_11649248473972557216;
algo(49) <= l1_single_mu30er;

-- 23 L1_DoubleMuOpen : comb{MU0[MU-QLTY_OPEN],MU0[MU-QLTY_OPEN]}
l1_double_mu_open <= double_mu_14585778097856672575;
algo(27) <= l1_double_mu_open;

-- 28 L1_DoubleMu_12_5 : comb{MU12[MU-QLTY_DBLE],MU5[MU-QLTY_DBLE]}
l1_double_mu_12_5 <= double_mu_16961157256621881348;
algo(28) <= l1_double_mu_12_5;

-- 33 L1_DoubleMu0er1p6_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p6],MU0[MU-QLTY_DBLE,MU-ETA_1p6]}[DETA_MAX_1p8,CHGCOR_OS]
l1_double_mu0er1p6_d_eta_max1p8_os <= muon_muon_correlation_8008405571232419574;
algo(4) <= l1_double_mu0er1p6_d_eta_max1p8_os;

-- 38 L1_QuadMu0 : comb{MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE],MU0[MU-QLTY_DBLE]}
l1_quad_mu0 <= quad_mu_509409160461874775;
algo(5) <= l1_quad_mu0;

-- 46 L1_SingleEG30 : EG30
l1_single_eg30 <= single_eg_145873328;
algo(35) <= l1_single_eg30;

-- 52 L1_SingleEG45 : EG45
l1_single_eg45 <= single_eg_145873461;
algo(37) <= l1_single_eg45;

-- 56 L1_SingleIsoEG24 : EG24[EG-ISO_0xE]
l1_single_iso_eg24 <= single_eg_12507579852186555456;
algo(39) <= l1_single_iso_eg24;

-- 60 L1_SingleIsoEG30 : EG30[EG-ISO_0xE]
l1_single_iso_eg30 <= single_eg_12507579852316578880;
algo(41) <= l1_single_iso_eg30;

-- 63 L1_SingleIsoEG20er : EG20[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg20er <= single_eg_6872943369141609713;
algo(38) <= l1_single_iso_eg20er;

-- 66 L1_SingleIsoEG26er : EG26[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg26er <= single_eg_6872949966211376369;
algo(40) <= l1_single_iso_eg26er;

-- 72 L1_DoubleEG_18_17 : comb{EG18,EG17}
l1_double_eg_18_17 <= double_eg_14367295298190490335;
algo(19) <= l1_double_eg_18_17;

-- 75 L1_DoubleEG_22_10 : comb{EG22,EG10}
l1_double_eg_22_10 <= double_eg_14367831859864844127;
algo(20) <= l1_double_eg_22_10;

-- 77 L1_DoubleEG_24_17 : comb{EG24,EG17}
l1_double_eg_24_17 <= double_eg_14367840655957867231;
algo(21) <= l1_double_eg_24_17;

-- 84 L1_SingleJet90 : JET90
l1_single_jet90 <= single_jet_20010310832;
algo(46) <= l1_single_jet90;

-- 85 L1_SingleJet120 : JET120
l1_single_jet120 <= single_jet_2561319655728;
algo(43) <= l1_single_jet120;

-- 88 L1_SingleJet160 : JET160
l1_single_jet160 <= single_jet_2561319656240;
algo(44) <= l1_single_jet160;

-- 91 L1_SingleJet200 : JET200
l1_single_jet200 <= single_jet_2561319671856;
algo(45) <= l1_single_jet200;

-- 93 L1_DoubleJetC50 : comb{JET50[JET-ETA_CEN],JET50[JET-ETA_CEN]}
l1_double_jet_c50 <= double_jet_8659228673866386131;
algo(25) <= l1_double_jet_c50;

-- 96 L1_DoubleJetC100 : comb{JET100[JET-ETA_CEN],JET100[JET-ETA_CEN]}
l1_double_jet_c100 <= double_jet_15894421920862285922;
algo(24) <= l1_double_jet_c100;

-- 102 L1_QuadJetC40 : comb{JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN],JET40[JET-ETA_CEN]}
l1_quad_jet_c40 <= quad_jet_2751081844007168180;
algo(0) <= l1_quad_jet_c40;

-- 104 L1_QuadJetC60 : comb{JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN],JET60[JET-ETA_CEN]}
l1_quad_jet_c60 <= quad_jet_2899845767245260980;
algo(1) <= l1_quad_jet_c60;

-- 111 L1_DoubleIsoTau32er : comb{TAU32[TAU-ISO_0xE,TAU-ETA_2p13],TAU32[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau32er <= double_tau_973280238110587646;
algo(22) <= l1_double_iso_tau32er;

-- 116 L1_HTT160 : HTT160
l1_htt160 <= single_htt_2496626711344;
algo(57) <= l1_htt160;

-- 118 L1_HTT220 : HTT220
l1_htt220 <= single_htt_2496626727216;
algo(51) <= l1_htt220;

-- 123 L1_HTT300 : HTT300
l1_htt300 <= single_htt_2496626743344;
algo(58) <= l1_htt300;

-- 129 L1_HTM80 : HTM80
l1_htm80 <= single_htm_19504782384;
algo(52) <= l1_htm80;

-- 130 L1_HTM100 : HTM100
l1_htm100 <= single_htm_2496612030512;
algo(55) <= l1_htm100;

-- 134 L1_HTM150 : HTM150
l1_htm150 <= single_htm_2496612031152;
algo(56) <= l1_htm150;

-- 137 L1_ETM30 : ETM30
l1_etm30 <= single_etm_18699475376;
algo(34) <= l1_etm30;

-- 139 L1_ETM50 : ETM50
l1_etm50 <= single_etm_18699475632;
algo(33) <= l1_etm50;

-- 154 L1_Mu16er_Tau20er : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu16er_tau20er <= single_mu_7145648846602061216 and single_tau_16608830939767017288;
algo(6) <= l1_mu16er_tau20er;

-- 155 L1_Mu16er_Tau24er : MU16[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu16er_tau24er <= single_mu_7145648846602061216 and single_tau_16608831008486494024;
algo(15) <= l1_mu16er_tau24er;

-- 156 L1_Mu18er_Tau20er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU20[TAU-ETA_2p13]
l1_mu18er_tau20er <= single_mu_7181677643621025184 and single_tau_16608830939767017288;
algo(8) <= l1_mu18er_tau20er;

-- 157 L1_Mu18er_Tau24er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU24[TAU-ETA_2p13]
l1_mu18er_tau24er <= single_mu_7181677643621025184 and single_tau_16608831008486494024;
algo(12) <= l1_mu18er_tau24er;

-- 158 L1_Mu18er_IsoTau26er : MU18[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu18er_iso_tau26er <= single_mu_7181677643621025184 and single_tau_218368042610145022;
algo(17) <= l1_mu18er_iso_tau26er;

-- 159 L1_Mu20er_IsoTau26er : MU20[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu20er_iso_tau26er <= single_mu_9343405464758863264 and single_tau_218368042610145022;
algo(18) <= l1_mu20er_iso_tau26er;

-- 170 L1_Mu3_JetC16_dEta_Max0p4_dPhi_Max0p4 : dist{MU3[MU-QLTY_SNGL],JET16[JET-ETA_CEN]}[DETA_MAX_0p4,DPHI_MAX_0p4]
l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4 <= calo_muon_correlation_16240387826857744385;
algo(2) <= l1_mu3_jet_c16_d_eta_max0p4_d_phi_max0p4;

-- 175 L1_EG25er_HTT125 : EG25[EG-ETA_2p13] AND HTT125
l1_eg25er_htt125 <= single_eg_14262501742662192051 and single_htt_2496626710837;
algo(26) <= l1_eg25er_htt125;

-- 184 L1_Mu10er_ETM30 : MU10[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu10er_etm30 <= single_mu_7037562455545169312 and single_etm_18699475376;
algo(29) <= l1_mu10er_etm30;

-- 185 L1_Mu10er_ETM50 : MU10[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM50
l1_mu10er_etm50 <= single_mu_7037562455545169312 and single_etm_18699475632;
algo(32) <= l1_mu10er_etm50;

-- 186 L1_Mu14er_ETM30 : MU14[MU-QLTY_SNGL,MU-ETA_2p10] AND ETM30
l1_mu14er_etm30 <= single_mu_7109620049583097248 and single_etm_18699475376;
algo(31) <= l1_mu14er_etm30;

-- 187 L1_HTM80_HTT220 : HTM80 AND HTT220
l1_htm80_htt220 <= single_htm_19504782384 and single_htt_2496626727216;
algo(50) <= l1_htm80_htt220;

-- 259 L1_SingleEG36 : EG36
l1_single_eg36 <= single_eg_145873334;
algo(36) <= l1_single_eg36;

-- 263 L1_SingleIsoEG32er : EG32[EG-ISO_0xE,EG-ETA_2p13]
l1_single_iso_eg32er <= single_eg_6873086305653220593;
algo(42) <= l1_single_iso_eg32er;

-- 267 L1_DoubleMu0er1p4_dEta_Max1p8_OS : dist{MU0[MU-QLTY_DBLE,MU-ETA_1p4],MU0[MU-QLTY_DBLE,MU-ETA_1p4]}[DETA_MAX_1p8,CHGCOR_OS]
l1_double_mu0er1p4_d_eta_max1p8_os <= muon_muon_correlation_7972376774213455602;
algo(3) <= l1_double_mu0er1p4_d_eta_max1p8_os;

-- 273 L1_ETM85 : ETM85
l1_etm85 <= single_etm_18699476021;
algo(54) <= l1_etm85;

-- 278 L1_DoubleIsoTau36er : comb{TAU36[TAU-ISO_0xE,TAU-ETA_2p13],TAU36[TAU-ISO_0xE,TAU-ETA_2p13]}
l1_double_iso_tau36er <= double_tau_10196652277112847102;
algo(23) <= l1_double_iso_tau36er;

-- 279 L1_Mu22er_IsoTau26er : MU22[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu22er_iso_tau26er <= single_mu_9379434261777827232 and single_tau_218368042610145022;
algo(13) <= l1_mu22er_iso_tau26er;

-- 280 L1_Mu25er_IsoTau26er : MU25[MU-QLTY_SNGL,MU-ETA_2p10] AND TAU26[TAU-ISO_0xE,TAU-ETA_2p13]
l1_mu25er_iso_tau26er <= single_mu_9433477457306273184 and single_tau_218368042610145022;
algo(16) <= l1_mu25er_iso_tau26er;

-- 288 L1_ETM115 : ETM115
l1_etm115 <= single_etm_2393532815541;
algo(53) <= l1_etm115;


-- ========================================================