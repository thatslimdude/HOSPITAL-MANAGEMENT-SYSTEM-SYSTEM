prompt --application/shared_components/user_interface/lovs/dero_paytype
begin
--   Manifest
--     DERO_PAYTYPE
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
 p_id=>wwv_flow_imp.id(44079339922054761609)
,p_lov_name=>'DERO_PAYTYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Cash'' AS display, ''Cash'' AS return_value FROM dual',
'UNION ALL',
'SELECT ''Card'', ''Card'' FROM dual',
'UNION ALL',
'SELECT ''Insurance'', ''Insurance'' FROM dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15625389363066
);
wwv_flow_imp.component_end;
end;
/
