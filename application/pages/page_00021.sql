prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_name=>'PAYMENT SUMMARY'
,p_alias=>'PAYMENT-SUMMARY'
,p_step_title=>'PAYMENT SUMMARY'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(45205044466044114868)
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
 p_id=>wwv_flow_imp.id(45205045138915114870)
,p_plug_name=>'PAYMENT SUMMARY'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    p.PAYMENT_ID,',
'    pt.NAME,',
'    p.AMOUNT,',
'    p.PAYMENT_DATE,',
'    p.PAYMENT_TYPE,',
'    p.PAYMENT_NAME,',
'    SUM(p.AMOUNT) OVER (PARTITION BY NAME) AS TOTAL_AMOUNT_BY_PATIENT',
'FROM DERO_PAYMENTS p',
'JOIN DERO_PATIENTS pt ON p.PATIENT_ID = pt.PATIENT_ID',
'ORDER BY  p.PAYMENT_DATE;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'PAYMENT SUMMARY'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(45205045256578114870)
,p_name=>'PAYMENT SUMMARY'
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
,p_internal_uid=>45205045256578114870
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45205050139738115107)
,p_db_column_name=>'PAYMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Payment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45205050902314115108)
,p_db_column_name=>'AMOUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45205051371447115109)
,p_db_column_name=>'PAYMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Payment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45205051729189115109)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(45205052144128115109)
,p_db_column_name=>'PAYMENT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Payment Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003754383215608732)
,p_db_column_name=>'TOTAL_AMOUNT_BY_PATIENT'
,p_display_order=>26
,p_column_identifier=>'H'
,p_column_label=>'Total Paid'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(44003754435897608733)
,p_db_column_name=>'NAME'
,p_display_order=>36
,p_column_identifier=>'I'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(45207823757167145861)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'452078238'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMENT_ID:AMOUNT:PAYMENT_DATE:PAYMENT_TYPE:PAYMENT_NAME:TOTAL_AMOUNT_BY_PATIENT'
);
wwv_flow_imp.component_end;
end;
/
