prompt --application/shared_components/user_interface/lovs/dero_doctors_name
begin
--   Manifest
--     DERO_DOCTORS.NAME
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
 p_id=>wwv_flow_imp.id(43969248574990046974)
,p_lov_name=>'DERO_DOCTORS.NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DERO_DOCTORS'
,p_return_column_name=>'DOCTOR_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15624818767675
);
wwv_flow_imp.component_end;
end;
/
