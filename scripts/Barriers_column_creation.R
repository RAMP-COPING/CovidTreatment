## create barrier to treatment supported vs client led columns

treat_dat <- treat_dat %>%
  mutate(PreventHelp_Supported.Systemic  = case_when(preventhelp_emergency_mh == "Systemic" ~ 1,
                                            preventhelp_existing_mh_team == "Systemic" ~1,
                                            preventhelp_online_talk_therapy == "Systemic" ~ 1,
                                            preventhelp_gp == "Systemic" ~ 1,
                                            preventhelp_nonnhs_phone == "Systemic" ~ 1,
                                            preventhelp_nhs_111 == "Systemic" ~ 1,
                                            TRUE ~ 0),
         PreventHelp_Supported.Client = case_when(preventhelp_emergency_mh == "Client-level" ~ 1,
                                            preventhelp_existing_mh_team == "Client-level" ~1,
                                            preventhelp_online_talk_therapy == "Client-level" ~ 1,
                                            preventhelp_gp == "Client-level" ~ 1,
                                            preventhelp_nonnhs_phone == "Client-level" ~ 1,
                                            preventhelp_nhs_111 == "Client-level" ~ 1,
                                            TRUE ~ 0),
         PreventHelp_Supported.Other = case_when(
                                            preventhelp_emergency_mh == "Other" ~ 1,
                                            preventhelp_existing_mh_team == "Other" ~1,
                                            preventhelp_online_talk_therapy == "Other" ~ 1,
                                            preventhelp_gp == "Other" ~ 1,
                                            preventhelp_nonnhs_phone == "Other" ~ 1,
                                            preventhelp_nhs_111 == "Other" ~ 1,
                                            TRUE ~ 0),
         
         PreventHelp_SelfGuided.Systemic  = case_when(preventhelp_gov_website == "Systemic" ~ 1,
                                             preventhelp_online_self_therapy == "Systemic" ~1,
                                             preventhelp_struc_therapy == "Systemic" ~ 1,
                                             preventhelp_nongov_website == "Systemic" ~ 1,
                                             TRUE ~0),
         PreventHelp_SelfGuided.Client = case_when(
                                             preventhelp_gov_website == "Client-level" ~ 1,
                                             preventhelp_online_self_therapy == "Client-level" ~1,
                                             preventhelp_struc_therapy == "Client-level" ~ 1,
                                             preventhelp_nongov_website == "Client-level" ~ 1,
                                             TRUE ~ 0),
         PreventHelp_SelfGuided.Other =case_when(
                                             preventhelp_gov_website == "Other" ~ 1,
                                             preventhelp_online_self_therapy == "Other" ~1,
                                             preventhelp_struc_therapy == "Other" ~ 1,
                                             preventhelp_nongov_website == "Other" ~ 1,
                                             TRUE ~ 0))
         