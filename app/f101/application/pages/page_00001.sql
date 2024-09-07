prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7477392115214474
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RENTASTUFFDEV'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'RAS_Manager'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8408894949771001)
,p_plug_name=>'empty_storage'
,p_title=>'Empty Storage'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8005446572738272)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_location=>null
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>'select * from ras_devices where dev_u_id = :P0_U_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8409452232771007)
,p_plug_name=>'rented_devices'
,p_title=>'Your rented devices'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8005446572738272)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select * from ras_rentals where ren_u_id = :P0_U_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8409548942771008)
,p_plug_name=>'storage'
,p_title=>'Your Stored Devices'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(8005446572738272)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>7
,p_plug_display_column=>4
,p_location=>null
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>'select * from ras_devices where dev_u_id = :P0_U_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8409170065771004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8408894949771001)
,p_button_name=>'Add_Device'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(8079066745738496)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Device'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8618883702017220)
,p_name=>'P1_NUMBER_OF_DEVICES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8409548942771008)
,p_prompt=>'Number Of Devices'
,p_source=>'select count(*) from ras_devices where dev_u_id = :P0_U_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(8076595015738488)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8619461992017226)
,p_name=>'P1_WARNING_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8408894949771001)
,p_prompt=>'Warning Text'
,p_source=>'Your storage is empty!'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_colspan=>6
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(8076307343738487)
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
