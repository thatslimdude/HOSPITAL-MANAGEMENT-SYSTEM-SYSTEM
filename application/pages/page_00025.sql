prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>'UPCOMING APPOINTMENTS'
,p_alias=>'UPCOMING-APPOINTMENTS'
,p_step_title=>'UPCOMING APPOINTMENTS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45231943462417673769)
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
 p_id=>wwv_flow_imp.id(45231944141465673772)
,p_plug_name=>'UPCOMING APPOINTMENTS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ap.APPOINTMENT_ID,',
'       p.NAME AS PATIENT_NAME,',
'       d.NAME AS DOCTOR_NAME,',
'       ap.APPOINTMENT_DATE,',
'       ap.STATUS,',
'       ap.NOTES',
'  FROM DERO_APPOINTMENTS ap',
'  JOIN DERO_PATIENTS p ON p.patient_id=ap.patient_id',
'  JOIN DERO_DOCTORS d ON d.doctor_id=ap.doctor_id',
' WHERE STATUS = ''Scheduled''',
'   AND ap.APPOINTMENT_DATE > SYSDATE;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'UPCOMING APPOINTMENTS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(45231944223643673772)
,p_name=>'UPCOMING APPOINTMENTS'
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
,p_internal_uid=>45231944223643673772
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45231947919470674062)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Appointment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560598824865548702)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>14
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560598954254548703)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>24
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45231949596159674064)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45231949147949674063)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>44
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45231949940150674065)
,p_db_column_name=>'NOTES'
,p_display_order=>54
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45232984466025958186)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'452329845'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PATIENT_NAME:DOCTOR_NAME:APPOINTMENT_DATE:STATUS:NOTES:'
);
wwv_flow_imp.component_end;
end;
/
