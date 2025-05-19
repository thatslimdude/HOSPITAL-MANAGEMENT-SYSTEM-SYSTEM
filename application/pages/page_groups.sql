prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 43621
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(43963172760489909535)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
