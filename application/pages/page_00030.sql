prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(89574181069764130048)
,p_plug_name=>'HOSPITAL MANAGEMENT SYSTEM'
,p_title=>'HOME'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_landmark_type=>'exclude_landmark'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(91012744619017209215)
,p_plug_name=>'DOCTORS POST APPOINTMENT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91012746177720209231)
,p_name=>'APPOINTMENT SUMMARY'
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ap.APPOINTMENT_ID,',
'       p.NAME AS PATIENT_NAME,',
'       d.NAME AS DOCTOR_NAME,',
'       ap.APPOINTMENT_DATE,',
'       ap.STATUS,',
'       p.COMPLAINTS',
'  FROM DERO_APPOINTMENTS ap',
'  JOIN DERO_PATIENTS p ON ap.PATIENT_ID = p.PATIENT_ID',
'  JOIN DERO_DOCTORS d ON ap.DOCTOR_ID = d.DOCTOR_ID',
' WHERE  ap.APPOINTMENT_ID = NVL(:P30_APPOINTMENT_ID, ap.APPOINTMENT_ID)',
'   ',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611005502929220507)
,p_query_column_id=>1
,p_column_alias=>'APPOINTMENT_ID'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611004795309220505)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611005116766220506)
,p_query_column_id=>3
,p_column_alias=>'DOCTOR_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Doctor Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611005964438220507)
,p_query_column_id=>4
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>100
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611006322523220508)
,p_query_column_id=>5
,p_column_alias=>'STATUS'
,p_column_display_sequence=>110
,p_column_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611006777307220509)
,p_query_column_id=>6
,p_column_alias=>'COMPLAINTS'
,p_column_display_sequence=>120
,p_column_heading=>'Complaints'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91012747806769209247)
,p_name=>'EXISTING PRESCRIPTIONS'
,p_template=>4072358936313175081
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pr.PRESCRIPTION_ID,',
'       pr.APPOINTMENT_ID,',
'       pr.DRUG_NAME,',
'       pr.NOTES,',
'       p.NAME AS PATIENT_NAME,',
'       ap.APPOINTMENT_DATE',
'  from DERO_PRESCRIPTIONS pr',
'  JOIN DERO_APPOINTMENTS ap ON ap.APPOINTMENT_ID = pr.APPOINTMENT_ID',
'  JOIN DERO_PATIENTS p ON p.PATIENT_ID = ap.APPOINTMENT_ID',
'  WHERE  pr.APPOINTMENT_ID = NVL(:P30_APPOINTMENT_ID, pr.APPOINTMENT_ID)',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611009521538220514)
,p_query_column_id=>1
,p_column_alias=>'PRESCRIPTION_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611010024107220515)
,p_query_column_id=>2
,p_column_alias=>'APPOINTMENT_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611010416213220515)
,p_query_column_id=>3
,p_column_alias=>'DRUG_NAME'
,p_column_display_sequence=>40
,p_column_heading=>'Drug Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611010859495220516)
,p_query_column_id=>4
,p_column_alias=>'NOTES'
,p_column_display_sequence=>50
,p_column_heading=>'Notes'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611008781121220513)
,p_query_column_id=>5
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>30
,p_column_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611009108112220514)
,p_query_column_id=>6
,p_column_alias=>'APPOINTMENT_DATE'
,p_column_display_sequence=>70
,p_column_heading=>'Appointment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(91051449580189692525)
,p_name=>'PAYMENT HISTORY'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pa.PAYMENT_ID,',
'       p.name as PATIENT_NAME,',
'       pa.AMOUNT,',
'       pa.PAYMENT_DATE,',
'       pa.PAYMENT_TYPE,',
'       pa.PAYMENT_NAME,',
'       pa.APPOINTMENT_ID',
'  from DERO_PAYMENTS pa',
'  JOIN DERO_PATIENTS p ON p.PATIENT_ID = pa.PATIENT_ID',
'  WHERE  pa.APPOINTMENT_ID = NVL(:P30_APPOINTMENT_ID, pa.APPOINTMENT_ID)'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611003922350220504)
,p_query_column_id=>1
,p_column_alias=>'PAYMENT_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611001547073220501)
,p_query_column_id=>2
,p_column_alias=>'PATIENT_NAME'
,p_column_display_sequence=>80
,p_column_heading=>'Patient Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611001918340220502)
,p_query_column_id=>3
,p_column_alias=>'AMOUNT'
,p_column_display_sequence=>30
,p_column_heading=>'Amount'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611002320089220502)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Payment Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611002745884220503)
,p_query_column_id=>5
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>50
,p_column_heading=>'Payment Type'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611003193280220503)
,p_query_column_id=>6
,p_column_alias=>'PAYMENT_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'Payment Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(45611003591336220504)
,p_query_column_id=>7
,p_column_alias=>'APPOINTMENT_ID'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45611011619384220517)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(91012744619017209215)
,p_button_name=>'ENTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'ENTER'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90852034697102320841)
,p_name=>'P30_DOCTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91012746177720209231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90852034804964320842)
,p_name=>'P30_PATIENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91012746177720209231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90852034909981320843)
,p_name=>'P30_APPOINTMENT_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91012746177720209231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90852034952841320844)
,p_name=>'P30_COMPLAINTS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91012746177720209231)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(90852037979922320833)
,p_name=>'P30_APPOINTMENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(91012744619017209215)
,p_prompt=>'APPOINTMENT ID'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp.component_end;
end;
/
