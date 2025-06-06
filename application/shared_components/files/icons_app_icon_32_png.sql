prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 43621
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000252494441545847ED955F6BD36014877F69B2AE699ACEAEA5D64D573BEC74DDF46A43BC5033C10B6FFCCB60EE5EF0FB0CC44F30';
wwv_flow_imp.g_varchar2_table(2) := '0B22A2375E28B6E895AD3050A3A38ED5A873E934AB5BD286A6ED220D92D93AEDCBDA4E84E6267012CE7978CE79CF4B9D483C31F10F1FAA0BD035D035F07F18304D38D6F318E438AC140AD8EAF70114D596ED41B407AAAA8AF3070FC1C7B2C8EB3A1E7FFE';
wwv_flow_imp.g_varchar2_table(3) := '64151F763AADF7B26180E6F95D0111035C180A83EFED855A2AE1D1470951970BD7476356D13B8BEFB04CD3E0373731353088C49715A85E2F912522009826BC8502022E17BE960CA86E16C7005C8B8E5800F7DE67206A1AEE9E3E83110F8F8CA662FAF933';
wwv_flow_imp.g_varchar2_table(4) := '222B4400D562115BBA6E2B76389DE861188CBB39D42E12512FA25C2EE3A1308530EB86A417713199680F4055D320840E20E8F1D8008BF22A167239500C63C5288A02EDF1E028C360D21F405A5190A9CD28C1A03635505614CC8C8DD70DD82B49C2D5D828';
wwv_flow_imp.g_varchar2_table(5) := '18CA61C5F54A05B7522FA0D2F4B6259605ED76371DCC5D01C8CA3708E1C376F2859C8CCB43614CF8FAED586A5DC18D740A34C7FD15A22D0049E903E64E9EFAADD0F107F7D1E3F7B706601A068CB535CC4E4CDA891A0D7414A056B5710EE65FA6712E12B1';
wwv_flow_imp.g_varchar2_table(6) := 'DBB0E70071F10D8450A80EE069360B7166D6B634169F87331804F5735BFEA90F4D6760270371518410DAFF0B8084A4BC8AD797AED87548FA6F1D6192DBB0F27D03317E7B0FBCD5349C0D04EA0C2465B973003BE91BD00A88F8F6599FB2F90D48257D6F01';
wwv_flow_imp.g_varchar2_table(7) := '1AA16A966E468FD8E1DB4B4B60FAFA5A5F444D33B4F803D10CB458A3B545D4C9E2C4A7A09310DD16740DFC00EED9313061E2D8780000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(43963169982111909529)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
