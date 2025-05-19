prompt --application/shared_components/navigation/lists/page_director
begin
--   Manifest
--     LIST: Page Director
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
 p_id=>wwv_flow_imp.id(45624409708068686965)
,p_name=>'Page Director'
,p_list_status=>'PUBLIC'
,p_version_scn=>15625582019340
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45624410139023686967)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'PATIENT MODULE'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_green_64.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45624410646495686967)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'DOCTOR MODULE'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/user_red_64.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45624411028567686968)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'APPOINTMENT MODULE'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/calendar_64.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45624411475991686968)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'PRESCRIPTION MODULE'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/edit_64.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(45624411823815686968)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'PAYMENT MODULE'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'menu/chart_bar_64.gif'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
