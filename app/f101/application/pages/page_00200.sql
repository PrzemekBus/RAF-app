prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_name=>'Storage'
,p_alias=>'STORAGE'
,p_step_title=>'Storage'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8619569486017227)
,p_plug_name=>'Devices'
,p_title=>'Devices'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(7945954611738144)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_display_column=>3
,p_query_type=>'TABLE'
,p_query_table=>'RAS_V_DEVICES'
,p_query_where=>'dev_u_id = :P0_U_ID'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(8621747704017249)
,p_region_id=>wwv_flow_imp.id(8619569486017227)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'DEV_NAME'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'DSP_AVAILABILITY'
,p_body_adv_formatting=>false
,p_body_column_name=>'DEV_DESCRIPTION'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'DSP_PERIOD_DETAILS'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&DI_URL.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'DEV_ID'
,p_pk2_column_name=>'DI_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8800591231480032)
,p_card_id=>wwv_flow_imp.id(8621747704017249)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Rent'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:310:&SESSION.::&DEBUG.::P310_REN_DEV_ID,P310_AVAILABILITY:&DEV_ID.,&DEV_AVAILABILITY_STATUS.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(8621847305017250)
,p_card_id=>wwv_flow_imp.id(8621747704017249)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Edit'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.::P210_DEV_ID,P210_DI_ID:&DEV_ID.,&DI_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8800209240480029)
,p_button_sequence=>20
,p_button_name=>'Add_dev'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(8079066745738496)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Device'
,p_button_redirect_url=>'f?p=&APP_ID.:210:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8802352538480050)
,p_name=>'P200_DEV_AVAILABILITY_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8619569486017227)
,p_prompt=>'New'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(8076595015738488)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_imp.component_end;
end;
/
