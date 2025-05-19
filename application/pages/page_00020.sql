prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_name=>'LIST OF APPOINTMENTS'
,p_alias=>'LIST-OF-APPOINTMENTS'
,p_step_title=>'LIST OF APPOINTMENTS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(44009697541670691255)
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
 p_id=>wwv_flow_imp.id(44009698390296691257)
,p_plug_name=>'LIST OF APPOINTMENTS'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ap.APPOINTMENT_ID,',
'       ap.PATIENT_ID,',
'       ap.DOCTOR_ID,',
'       ap.APPOINTMENT_DATE,',
'       ap.STATUS,',
'       ap.NOTES,',
'       p.name AS PATIENT_NAME,',
'       d.name AS DOCTOR_NAME',
'  from DERO_APPOINTMENTS ap',
'  JOIN DERO_PATIENTS p ON p.patient_id= ap.patient_id',
'  JOIN DERO_DOCTORS d ON d.doctor_id=ap.doctor_id',
' where ap.DOCTOR_ID = NVL(:P20_DOCTOR,ap.DOCTOR_ID)',
'AND ap.PATIENT_ID = NVL(:P20_PATIENT,ap.PATIENT_ID)',
'AND ap.APPOINTMENT_DATE = NVL(:P20_DATE,ap.APPOINTMENT_DATE)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'LIST OF APPOINTMENTS'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(44009698457641691257)
,p_name=>'LIST OF APPOINTMENTS'
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
,p_internal_uid=>44009698457641691257
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44009703709575691445)
,p_db_column_name=>'APPOINTMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_APPOINTMENT_ID,P22_PATIENT_NAME:#APPOINTMENT_ID#,#PATIENT_ID#'
,p_column_linktext=>'<span role="img" aria-label="Edit" class="fa fa-file-prescription" title="Add Prescription"></span>'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44009704910013691447)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44009705399208691447)
,p_db_column_name=>'STATUS'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44009705720427691448)
,p_db_column_name=>'NOTES'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45241027133260100328)
,p_db_column_name=>'PATIENT_ID'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Patient Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45241027209452100329)
,p_db_column_name=>'DOCTOR_ID'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Doctor Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560599069340548704)
,p_db_column_name=>'PATIENT_NAME'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Patient Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45560599152816548705)
,p_db_column_name=>'DOCTOR_NAME'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Doctor Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(44013281337085751604)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'440132814'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'APPOINTMENT_ID:PATIENT_NAME:DOCTOR_NAME:APPOINTMENT_DATE:STATUS:NOTES:'
,p_sort_column_1=>'APPOINTMENT_ID'
,p_sort_direction_1=>'DESC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(44003751814291608707)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(44009698390296691257)
,p_button_name=>'Apply'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Apply'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44003751526049608704)
,p_name=>'P20_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(44009698390296691257)
,p_prompt=>'DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44003751623423608705)
,p_name=>'P20_DOCTOR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(44009698390296691257)
,p_prompt=>'DOCTOR NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DERO_DOCTORS.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(44003751732635608706)
,p_name=>'P20_PATIENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(44009698390296691257)
,p_prompt=>'PATIENT NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DERO_PATIENTS.NAME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
