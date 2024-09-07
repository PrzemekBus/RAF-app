prompt --application/shared_components/user_interface/lovs/available_notavailable
begin
--   Manifest
--     AVAILABLE_NOTAVAILABLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7477392115214474
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RENTASTUFFDEV'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9163118841226039)
,p_lov_name=>'AVAILABLE_NOTAVAILABLE'
,p_lov_query=>'.'||wwv_flow_imp.id(9163118841226039)||'.'
,p_location=>'STATIC'
,p_version_scn=>41476545164045
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9163469102226047)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Available'
,p_lov_return_value=>'A'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9163824809226050)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'N/A'
,p_lov_return_value=>'NA'
);
wwv_flow_imp.component_end;
end;
/
