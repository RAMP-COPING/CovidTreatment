## create barrier to treatment supported vs client led columns

treat_dat <- treat_dat %>%
  mutate(PreventHelp_Supported  = case_when(preventhelp_emergency_mh == "Systemic" ~ "Systemic",
                                            preventhelp_existing_mh_team == "Systemic" ~"Systemic",
                                            preventhelp_online_talk_therapy == "Systemic" ~ "Systemic",
                                            preventhelp_gp == "Systemic" ~ "Systemic",
                                            preventhelp_nonnhs_phone == "Systemic" ~ "Systemic",
                                            preventhelp_nhs_111 == "Systemic" ~ "Systemic",
                                            
                                            preventhelp_emergency_mh == "Client-level" ~ "Client-level",
                                            preventhelp_existing_mh_team == "Client-level" ~"Client-level",
                                            preventhelp_online_talk_therapy == "Client-level" ~ "Client-level",
                                            preventhelp_gp == "Client-level" ~ "Client-level",
                                            preventhelp_nonnhs_phone == "Client-level" ~ "Client-level",
                                            preventhelp_nhs_111 == "Client-level" ~ "Client-level",
                                            
                                            preventhelp_emergency_mh == "Other" ~ "Other",
                                            preventhelp_existing_mh_team == "Other" ~"Other",
                                            preventhelp_online_talk_therapy == "Other" ~ "Other",
                                            preventhelp_gp == "Other" ~ "Other",
                                            preventhelp_nonnhs_phone == "Other" ~ "Other",
                                            preventhelp_nhs_111 == "Other" ~ "Other"),
         
         PreventHelp_SelfGuided  = case_when(preventhelp_gov_website == "Systemic" ~ "Systemic",
                                             preventhelp_online_self_therapy == "Systemic" ~"Systemic",
                                             preventhelp_struc_therapy == "Systemic" ~ "Systemic",
                                             preventhelp_nongov_website == "Systemic" ~ "Systemic",
                                             
                                             preventhelp_gov_website == "Client-level" ~ "Client-level",
                                             preventhelp_online_self_therapy == "Client-level" ~"Client-level",
                                             preventhelp_struc_therapy == "Client-level" ~ "Client-level",
                                             preventhelp_nongov_website == "Client-level" ~ "Client-level",
                                             
                                             preventhelp_gov_website == "Other" ~ "Other",
                                             preventhelp_online_self_therapy == "Other" ~"Other",
                                             preventhelp_struc_therapy == "Other" ~ "Other",
                                             preventhelp_nongov_website == "Other" ~ "Other"))
         