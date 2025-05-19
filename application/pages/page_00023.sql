prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'LIST OF PRESCRIPTIONS'
,p_alias=>'LIST-OF-PRESCRIPTIONS'
,p_step_title=>'LIST OF PRESCRIPTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44018552130451561969)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(43963166878042909520)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44018552972409561971)
,p_plug_name=>'LIST OF PRESCRIPTIONS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    pr.DRUG_NAME,',
'    pr.NOTES,',
'    p.NAME AS PATIENT_NAME,',
'    d.NAME AS DOCTOR_NAME,',
'    ap.APPOINTMENT_DATE,',
'    pr.APPOINTMENT_ID',
'FROM ',
'    DERO_PRESCRIPTIONS pr',
'JOIN DERO_APPOINTMENTS ap ON ap.APPOINTMENT_ID = pr.APPOINTMENT_ID',
'JOIN DERO_PATIENTS p ON p.PATIENT_ID = ap.PATIENT_ID',
'JOIN DERO_DOCTORS d ON d.DOCTOR_ID = ap.DOCTOR_ID',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'LIST OF PRESCRIPTIONS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44018553016307561971)
,p_name=>'LIST OF PRESCRIPTIONS'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'DEROADEGBITE@GMAIL.COM'
,p_internal_uid=>44018553016307561971
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44018560645842562231)
,p_db_column_name=>'DRUG_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Drug Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44018561098865562231)
,p_db_column_name=>'NOTES'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003752944946608718)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003753014530608719)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>24
,p_column_identifier=>'F'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003753127906608720)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>34
,p_column_identifier=>'G'
,p_column_label=>'Appointment Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003753568502608724)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>44
,p_column_identifier=>'H'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44048916259338017801)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440489163'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DRUG_NAME:NOTES:APPOINTMENT_DATE:'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44003752816801608717)
,p_name=>'APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44018552972409561971)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
