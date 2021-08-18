## list of names for variables we need to work with

treatnames <- c("ID","wave","Sample","startDate"
  ,"soughthelp_for_self"
  ,"soughthelp_didnot_seek"	
  ,"soughthelp_prefer_not_say"
  ,"wherehelp_sought_emergency_mh"
  ,"wherehelp_received_emergency_mh"
  ,"wherehelp_sought_existing_mh_team"
  ,"wherehelp_received_existing_mh_team"
  ,"wherehelp_sought_online_talk_therapy"
  ,"wherehelp_received_online_talk_therapy"
  ,"wherehelp_sought_gp"
  ,"wherehelp_received_gp"
  ,"wherehelp_sought_nhs_111"
  ,"wherehelp_received_nhs_111"
  ,"wherehelp_sought_nonnhs_phone"
  ,"wherehelp_received_nonnhs_phone"
  ,"wherehelp_sought_gov_website"
  ,"wherehelp_received_gov_website"
  ,"wherehelp_sought_nongov_website"
  ,"wherehelp_received_nongov_website"
  ,"wherehelp_sought_selfguide_online"
  ,"wherehelp_received_selfguide_online"
  ,"wherehelp_sought_struc_therapy"	 
  ,"wherehelp_received_struc_therapy"	
  ,"wherehelp_sought_other"
  ,"wherehelp_received_other"
  ,"preventhelp_emergency_mh"
  ,"preventhelp_existing_mh_team"	
  ,"preventhelp_online_talk_therapy"
  ,"preventhelp_gp"	 
  ,"preventhelp_nhs_111"	
  ,"preventhelp_nonnhs_phone"	 
  ,"preventhelp_gov_website"	
  ,"preventhelp_nongov_website"	
  ,"preventhelp_online_self_therapy"
  ,"preventhelp_struc_therapy"
  ,"preventhelp_other"
  ,"treatmenthelpful_emergency_mh"
  ,"treatmenthelpful_existing_mh_team"
  ,"treatmenthelpful_online_talk_therapy"
  ,"treatmenthelpful_gp"
  ,"treatmenthelpful_nhs_111"
  ,"treatmenthelpful_nonnhs_phone"
  ,"treatmenthelpful_gov_website"
  ,"treatmenthelpful_nongov_website"
  ,"treatmenthelpful_online_self_therapy"	
  ,"treatmenthelpful_struc_therapy"
  ,"treatmenthelpful_other"	
  ,"reasonhelp_new_mh"
  ,"reasonhelp_cont_mh"
  ,"reasonhelp_worsen_mh"	
  ,"reasonhelp_mh_crisis"
  ,"reasonhelp_repeat_prescription"
  ,"reasonhelp_change_med"
  ,"reasonhelp_new_med"
  ,"reasonhelp_alt_support"
  ,"reasonhelp_other",
  "reasonNohelp_feel_fine",
  "reasonNohelp_I_feel_better",
  "reasonNohelp_I_want_to_but_havent",
  "reasonNohelp_Too_busy",
  "reasonNohelp_I_dont_think_I_feel_bad_enough",
  "reasonNohelp_I_didnt_know_where_to_find",
  "reasonNohelp_I_want_help_dont_think_its_available",
  "reasonNohelp_Bad_experiences_in_past",
  "reasonNohelp_other")

## rename the relevant items for RAMP and COPING treatment seeking

treatRAMP.renamed <- treatRAMP %>%
  rename(ID = externalDataReference) %>%
  rename(soughthelp_for_self =	treatment.i_tried_to_get_help_for_myself) %>%
  rename(soughthelp_didnot_seek	 =	treatment.seek_professional) %>%
  rename(soughthelp_prefer_not_say	 =	treatment.prefer_not_to_say) %>%
  rename(wherehelp_sought_emergency_mh	 =	treatment.emergency_mental_health_services) %>%
  rename(wherehelp_received_emergency_mh	 =	treatment.emergency_mental_health_services.1) %>%
  rename(wherehelp_sought_existing_mh_team	 =	treatment.existing_mental_health_support_team) %>%
  rename(wherehelp_received_existing_mh_team	 =	treatment.existing_mental_health_support_team.1) %>%
  rename(wherehelp_sought_online_talk_therapy	 =	treatment.online_talking_therapy) %>%
  rename(wherehelp_received_online_talk_therapy	 =	treatment.online_talking_therapy.1) %>%
  rename(wherehelp_sought_gp	 =	treatment.registered_gp) %>%
  rename(wherehelp_received_gp	 =	treatment.registered_gp.1) %>%
  rename(wherehelp_sought_nhs_111	 =	treatment.nhs_111) %>%
  rename(wherehelp_received_nhs_111	 =	treatment.nhs_111.1) %>%
  rename(wherehelp_sought_nonnhs_phone	 =	treatment.nonnhs_helpline) %>%
  rename(wherehelp_received_nonnhs_phone	 =	treatment.nonnhs_helpline.1) %>%
  rename(wherehelp_sought_gov_website	 =treatment.nhs_or_government_support_or_information_website) %>%
  rename(wherehelp_received_gov_website	 =	treatment.nhs_or_government_support_or_information_website.1) %>%
  rename(wherehelp_sought_nongov_website	 =	treatment.nonnhs_support_or_information_website) %>%
  rename(wherehelp_received_nongov_website	 =	treatment.nonnhs_support_or_information_website.1) %>%
  rename(wherehelp_sought_selfguide_online	 =	treatment.online_selfguided_therapy) %>%
  rename(wherehelp_received_selfguide_online	 =	treatment.online_selfguided_therapy.1) %>%
  rename(wherehelp_sought_struc_therapy	 =	treatment.structured_therapeutic_activity) %>%
  rename(wherehelp_received_struc_therapy	 =	treatment.structured_therapeutic_activity.1) %>%
  rename(wherehelp_sought_other	 =	treatment.other) %>%
  rename(wherehelp_received_other	 =	treatment.other.1) %>%
  rename(preventhelp_emergency_mh	 =	treatment.emergency_mental_health_services.2) %>%
  rename(preventhelp_existing_mh_team	 =	treatment.existing_mental_health_support_team.2) %>%
  rename(preventhelp_online_talk_therapy	 =	treatment.online_talking_therapy.2) %>%
  rename(preventhelp_gp	 =	treatment.registered_gp.2) %>%
  rename(preventhelp_nhs_111	 =	treatment.nhs_111.2) %>%
  rename(preventhelp_nonnhs_phone	 =	treatment.nonnhs_helpline.2) %>%
  rename(preventhelp_gov_website	 =	treatment.nhs_or_government_support_or_information_website.2) %>%
  rename(preventhelp_nongov_website	 =	treatment.nonnhs_support_or_information_website.2) %>%
  rename(preventhelp_online_self_therapy	 =	treatment.online_selfguided_therapy.2) %>%
  rename(preventhelp_struc_therapy	 =	treatment.structured_therapeutic_activity.2) %>%
  rename(preventhelp_other	 =	treatment.other.2) %>%
  rename(treatmenthelpful_emergency_mh	 =	treatment.emergency_mental_health_services.3) %>%
  rename(treatmenthelpful_existing_mh_team	 =	treatment.existing_mental_health_support_team.3) %>%
  rename(treatmenthelpful_online_talk_therapy	 =treatment.online_talking_therapy.3) %>%
  rename(treatmenthelpful_gp	 =	treatment.registered_gp.3) %>%
  rename(treatmenthelpful_nhs_111	 =	treatment.nhs_111.3) %>%
  rename(treatmenthelpful_nonnhs_phone	 =	treatment.nonnhs_helpline.3) %>%
  rename(treatmenthelpful_gov_website	 =	treatment.nhs_or_government_support_or_information_website.3) %>%
  rename(treatmenthelpful_nongov_website	 =	treatment.nonnhs_support_or_information_website.3) %>%
  rename(treatmenthelpful_online_self_therapy	 =treatment.online_selfguided_therapy.3) %>%
  rename(treatmenthelpful_struc_therapy	 =	treatment.structured_therapeutic_activity.3) %>%
  rename(treatmenthelpful_other	 =	treatment.other.3) %>%
  rename(reasonhelp_new_mh	 =	treatment.new_mental_health_concerns) %>%
  rename(reasonhelp_cont_mh	 =	treatment.continuation_of_an_existing_mental_health_concern) %>%
  rename(reasonhelp_worsen_mh	 = treatment.worsening_of_an_existing_mental_health_concern) %>%
  rename(reasonhelp_mh_crisis	 =	treatment.mental_health_crisis) %>%
  rename(reasonhelp_repeat_prescription	 =	treatment.seeking_repeat_prescription_of_medication) %>%
  rename(reasonhelp_change_med	 =	treatment.seeking_changes_in_medication) %>%
  rename(reasonhelp_new_med	 =	treatment.seeking_new_medication) %>%
  rename(reasonhelp_alt_support	 =	treatment.availability_lack_normal_support) %>%
  rename(reasonhelp_other	 = treatment.other_please_specify)   %>%
  rename(reasonNohelp_feel_fine	 = treatment.reason_seek_feel_fine) %>%
  rename(reasonNohelp_I_feel_better	 = treatment.i_feel_better_than_i_normally_do) %>%
  rename(reasonNohelp_I_want_to_but_havent	 = treatment.i_want_to_get_help_but_i_havent_done_it_yet) %>%
  rename(reasonNohelp_Too_busy	 = treatment.busy_find) %>%
  rename(reasonNohelp_I_dont_think_I_feel_bad_enough	 = treatment.feel_great_feelings_bad) %>%
  rename(reasonNohelp_I_didnt_know_where_to_find	 = treatment.i_wasnt_sure_where_to_find_help) %>%
  rename(reasonNohelp_I_want_help_dont_think_its_available	 = treatment.i_think_i_could_do_with_help_but_i_dont_think_there_is_help_available_for_me) %>%
  rename(reasonNohelp_Bad_experiences_in_past	 = treatment.mental_health_services_provisions) %>%
  rename(reasonNohelp_other	 = treatment.other_please_specify.1)

## COPING
treatCOPE.renamed <- treatCOPE %>%
  rename(ID = externalDataReference) %>%
  rename(soughthelp_for_self =	treatment.i_tried_to_get_help_for_myself) %>%
  rename(soughthelp_didnot_seek	 =	treatment.seek_professional) %>%
  rename(soughthelp_prefer_not_say	 =	treatment.prefer_not_to_say) %>%
  rename(wherehelp_sought_emergency_mh	 =	treatment.emergency_mental_health_services) %>%
  rename(wherehelp_received_emergency_mh	 =	treatment.emergency_mental_health_services.1) %>%
  rename(wherehelp_sought_existing_mh_team	 =	treatment.existing_mental_health_support_team) %>%
  rename(wherehelp_received_existing_mh_team	 =	treatment.existing_mental_health_support_team.1) %>%
  rename(wherehelp_sought_online_talk_therapy	 =	treatment.online_talking_therapy) %>%
  rename(wherehelp_received_online_talk_therapy	 =	treatment.online_talking_therapy.1) %>%
  rename(wherehelp_sought_gp	 =	treatment.registered_gp) %>%
  rename(wherehelp_received_gp	 =	treatment.registered_gp.1) %>%
  rename(wherehelp_sought_nhs_111	 =	treatment.nhs_111) %>%
  rename(wherehelp_received_nhs_111	 =	treatment.nhs_111.1) %>%
  rename(wherehelp_sought_nonnhs_phone	 =	treatment.nonnhs_helpline) %>%
  rename(wherehelp_received_nonnhs_phone	 =	treatment.nonnhs_helpline.1) %>%
  rename(wherehelp_sought_gov_website	 =treatment.nhs_or_government_support_or_information_website) %>%
  rename(wherehelp_received_gov_website	 =	treatment.nhs_or_government_support_or_information_website.1) %>%
  rename(wherehelp_sought_nongov_website	 =	treatment.nonnhs_support_or_information_website) %>%
  rename(wherehelp_received_nongov_website	 =	treatment.nonnhs_support_or_information_website.1) %>%
  rename(wherehelp_sought_selfguide_online	 =	treatment.online_selfguided_therapy) %>%
  rename(wherehelp_received_selfguide_online	 =	treatment.online_selfguided_therapy.1) %>%
  rename(wherehelp_sought_struc_therapy	 =	treatment.structured_therapeutic_activity) %>%
  rename(wherehelp_received_struc_therapy	 =	treatment.structured_therapeutic_activity.1) %>%
  rename(wherehelp_sought_other	 =	treatment.other) %>%
  rename(wherehelp_received_other	 =	treatment.other.1) %>%
  rename(preventhelp_emergency_mh	 =	treatment.emergency_mental_health_services.2) %>%
  rename(preventhelp_existing_mh_team	 =	treatment.existing_mental_health_support_team.2) %>%
  rename(preventhelp_online_talk_therapy	 =	treatment.online_talking_therapy.2) %>%
  rename(preventhelp_gp	 =	treatment.registered_gp.2) %>%
  rename(preventhelp_nhs_111	 =	treatment.nhs_111.2) %>%
  rename(preventhelp_nonnhs_phone	 =	treatment.nonnhs_helpline.2) %>%
  rename(preventhelp_gov_website	 =	treatment.nhs_or_government_support_or_information_website.2) %>%
  rename(preventhelp_nongov_website	 =	treatment.nonnhs_support_or_information_website.2) %>%
  rename(preventhelp_online_self_therapy	 =	treatment.online_selfguided_therapy.2) %>%
  rename(preventhelp_struc_therapy	 =	treatment.structured_therapeutic_activity.2) %>%
  rename(preventhelp_other	 =	treatment.other.2) %>%
  rename(treatmenthelpful_emergency_mh	 =	treatment.emergency_mental_health_services.3) %>%
  rename(treatmenthelpful_existing_mh_team	 =	treatment.existing_mental_health_support_team.3) %>%
  rename(treatmenthelpful_online_talk_therapy	 =treatment.online_talking_therapy.3) %>%
  rename(treatmenthelpful_gp	 =	treatment.registered_gp.3) %>%
  rename(treatmenthelpful_nhs_111	 =	treatment.nhs_111.3) %>%
  rename(treatmenthelpful_nonnhs_phone	 =	treatment.nonnhs_helpline.3) %>%
  rename(treatmenthelpful_gov_website	 =	treatment.nhs_or_government_support_or_information_website.3) %>%
  rename(treatmenthelpful_nongov_website	 =	treatment.nonnhs_support_or_information_website.3) %>%
  rename(treatmenthelpful_online_self_therapy	 =treatment.online_selfguided_therapy.3) %>%
  rename(treatmenthelpful_struc_therapy	 =	treatment.structured_therapeutic_activity.3) %>%
  rename(treatmenthelpful_other	 =	treatment.other.3) %>%
  rename(reasonhelp_new_mh	 =	treatment.new_mental_health_concerns) %>%
  rename(reasonhelp_cont_mh	 =	treatment.continuation_of_an_existing_mental_health_concern) %>%
  rename(reasonhelp_worsen_mh	 = treatment.worsening_of_an_existing_mental_health_concern) %>%
  rename(reasonhelp_mh_crisis	 =	treatment.mental_health_crisis) %>%
  rename(reasonhelp_repeat_prescription	 =	treatment.seeking_repeat_prescription_of_medication) %>%
  rename(reasonhelp_change_med	 =	treatment.seeking_changes_in_medication) %>%
  rename(reasonhelp_new_med	 =	treatment.seeking_new_medication) %>%
  rename(reasonhelp_alt_support	 =	treatment.availability_lack_normal_support) %>%
  rename(reasonhelp_other	 = treatment.other_please_specify) %>%
  
  rename(reasonNohelp_feel_fine	 = treatment.seek_reason_feel_fine) %>%
  rename(reasonNohelp_I_feel_better	 = treatment.i_feel_better_than_i_normally_do) %>%
  rename(reasonNohelp_I_want_to_but_havent	 = treatment.i_want_to_get_help_but_i_havent_done_it_yet) %>%
  rename(reasonNohelp_Too_busy	 = treatment.busy_find) %>%
  rename(reasonNohelp_I_dont_think_I_feel_bad_enough	 = treatment.feel_great_feelings_bad) %>%
  rename(reasonNohelp_I_didnt_know_where_to_find	 = treatment.i_wasnt_sure_where_to_find_help) %>%
  rename(reasonNohelp_I_want_help_dont_think_its_available	 = treatment.i_think_i_could_do_with_help_but_i_dont_think_there_is_help_available_for_me) %>%
  rename(reasonNohelp_Bad_experiences_in_past	 = treatment.mental_health_services_provisions) %>%
  rename(reasonNohelp_other	 = treatment.other_please_specify.1 )
  



