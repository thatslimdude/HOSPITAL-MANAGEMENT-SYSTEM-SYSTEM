prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(43963167414923909521)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15625576783129
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43963179422589909548)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'HOME'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43963806113082643989)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'PATIENT FORM'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43963490394130914554)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'MANAGE PATIENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_parent_list_item_id=>wwv_flow_imp.id(43963806113082643989)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43964177321873653160)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'LIST OF PATIENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bars'
,p_parent_list_item_id=>wwv_flow_imp.id(43963806113082643989)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43966268670342961638)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'DOCTOR FORM'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-clock'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43965807876650943864)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'MANAGE DOCTORS'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_parent_list_item_id=>wwv_flow_imp.id(43966268670342961638)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7,8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43966381766997968740)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'LIST OF DOCTORS'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bars'
,p_parent_list_item_id=>wwv_flow_imp.id(43966268670342961638)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(43969245606832046763)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'APPOINTMENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44009697155757691255)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'LIST OF APPOINTMENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bars'
,p_parent_list_item_id=>wwv_flow_imp.id(43969245606832046763)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45231943096776673769)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'UPCOMING APPOINTMENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-angle-down'
,p_parent_list_item_id=>wwv_flow_imp.id(44009697155757691255)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44018551635153561969)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'PRESCRIPTIONS'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bars'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'23'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(44016759539224820827)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'ADD PRESCRIPTION'
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-plus'
,p_parent_list_item_id=>wwv_flow_imp.id(44018551635153561969)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45186881127043828823)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'PAYMENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-piggy-bank'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45192645842545939768)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'LIST OF PAYMENTS'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bars'
,p_parent_list_item_id=>wwv_flow_imp.id(45186881127043828823)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'17'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45205044028746114868)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'PAYMENT SUMMARY'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard'
,p_parent_list_item_id=>wwv_flow_imp.id(45186881127043828823)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45612396914448237204)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'DASHBOARD'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ellipsis-v-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
