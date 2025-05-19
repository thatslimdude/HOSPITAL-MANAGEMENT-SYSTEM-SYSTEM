prompt --application/shared_components/user_interface/lovs/dero_payname
begin
--   Manifest
--     DERO_PAYNAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(45197030811584285744)
,p_lov_name=>'DERO_PAYNAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Consultation'' AS display, ''Consultation'' AS return_value FROM dual',
'UNION ALL',
'SELECT ''Treatments'', ''Treatments'' FROM dual',
'UNION ALL',
'SELECT ''Drugs'', ''Drugs'' FROM dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_table=>'DERO_PAYMENTS'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15625393678565
);
wwv_flow_imp.component_end;
end;
/
