## create helpfulness of treatment supported vs client led columns

treat_dat <- treat_dat %>%
  mutate(Helpfulness_Supported  = case_when(treatmenthelpful_emergency_mh == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_emergency_mh == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_emergency_mh == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_emergency_mh == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_emergency_mh == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_emergency_mh == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_emergency_mh == "Extremely helpful" ~ "Extremely helpful",
                                            
                                            treatmenthelpful_existing_mh_team == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_existing_mh_team == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_existing_mh_team == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_existing_mh_team == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_existing_mh_team == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_existing_mh_team == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_existing_mh_team == "Extremely helpful" ~ "Extremely helpful",
                                            
                                            treatmenthelpful_online_talk_therapy == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_online_talk_therapy == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_online_talk_therapy == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_online_talk_therapy == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_online_talk_therapy == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_online_talk_therapy == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_online_talk_therapy == "Extremely helpful" ~ "Extremely helpful",
                                            
                                            treatmenthelpful_gp == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_gp == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_gp == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_gp == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_gp == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_gp == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_gp == "Extremely helpful" ~ "Extremely helpful",
                                            
                                            treatmenthelpful_nonnhs_phone == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_nonnhs_phone == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_nonnhs_phone == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_nonnhs_phone == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_nonnhs_phone == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_nonnhs_phone == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_nonnhs_phone == "Extremely helpful" ~ "Extremely helpful",
                                            
                                            treatmenthelpful_nhs_111 == "Extremely unhelpful" ~ "Extremely unhelpful",
                                            treatmenthelpful_nhs_111 == "Very unhelpful" ~ "Very unhelpful",
                                            treatmenthelpful_nhs_111 == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                            treatmenthelpful_nhs_111 == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                            treatmenthelpful_nhs_111 == "Somewhat helpful" ~ "Somewhat helpful",
                                            treatmenthelpful_nhs_111 == "Very helpful" ~ "Very helpful",
                                            treatmenthelpful_nhs_111 == "Extremely helpful" ~ "Extremely helpful"),
                                            
         Helpfulness_SelfGuided  = case_when(treatmenthelpful_gov_website == "Extremely unhelpful" ~ "Extremely unhelpful",
                                             treatmenthelpful_gov_website == "Very unhelpful" ~ "Very unhelpful",
                                             treatmenthelpful_gov_website == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                             treatmenthelpful_gov_website == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                             treatmenthelpful_gov_website == "Somewhat helpful" ~ "Somewhat helpful",
                                             treatmenthelpful_gov_website == "Very helpful" ~ "Very helpful",
                                             treatmenthelpful_gov_website == "Extremely helpful" ~ "Extremely helpful",
                                             
                                             treatmenthelpful_online_self_therapy == "Extremely unhelpful" ~ "Extremely unhelpful",
                                             treatmenthelpful_online_self_therapy == "Very unhelpful" ~ "Very unhelpful",
                                             treatmenthelpful_online_self_therapy == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                             treatmenthelpful_online_self_therapy == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                             treatmenthelpful_online_self_therapy == "Somewhat helpful" ~ "Somewhat helpful",
                                             treatmenthelpful_online_self_therapy == "Very helpful" ~ "Very helpful",
                                             treatmenthelpful_online_self_therapy == "Extremely helpful" ~ "Extremely helpful",
                                             
                                             treatmenthelpful_struc_therapy == "Extremely unhelpful" ~ "Extremely unhelpful",
                                             treatmenthelpful_struc_therapy == "Very unhelpful" ~ "Very unhelpful",
                                             treatmenthelpful_struc_therapy == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                             treatmenthelpful_struc_therapy == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                             treatmenthelpful_struc_therapy == "Somewhat helpful" ~ "Somewhat helpful",
                                             treatmenthelpful_struc_therapy == "Very helpful" ~ "Very helpful",
                                             treatmenthelpful_struc_therapy == "Extremely helpful" ~ "Extremely helpful",
                                             
                                             treatmenthelpful_nongov_website == "Extremely unhelpful" ~ "Extremely unhelpful",
                                             treatmenthelpful_nongov_website == "Very unhelpful" ~ "Very unhelpful",
                                             treatmenthelpful_nongov_website == "Somewhat unhelpful" ~ "Somewhat unhelpful",
                                             treatmenthelpful_nongov_website == "Neither helpful nor unhelpful" ~ "Neither helpful nor unhelpful",
                                             treatmenthelpful_nongov_website == "Somewhat helpful" ~ "Somewhat helpful",
                                             treatmenthelpful_nongov_website == "Very helpful" ~ "Very helpful",
                                             treatmenthelpful_nongov_website == "Extremely helpful" ~ "Extremely helpful"))

## reorder factors

treat_dat$Helpfulness_Supported <- factor(treat_dat$Helpfulness_Supported, levels=c("Extremely unhelpful","Very unhelpful","Somewhat unhelpful",
                                                                                    "Neither helpful nor unhelpful",
                                                                                    "Somewhat helpful","Very helpful","Extremely helpful"))

treat_dat$Helpfulness_SelfGuided <- factor(treat_dat$Helpfulness_SelfGuided, levels=c("Extremely unhelpful","Very unhelpful","Somewhat unhelpful",
                                                                                    "Neither helpful nor unhelpful",
                                                                                    "Somewhat helpful","Very helpful","Extremely helpful"))

         