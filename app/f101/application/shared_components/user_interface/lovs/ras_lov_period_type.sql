prompt --application/shared_components/user_interface/lovs/ras_lov_period_type
begin
--   Manifest
--     RAS_LOV_PERIOD_TYPE
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
 p_id=>wwv_flow_imp.id(8565592784352262)
,p_lov_name=>'RAS_LOV_PERIOD_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(8565592784352262)||'.'
,p_location=>'STATIC'
,p_version_scn=>41476094453525
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8565867992352273)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hours'
,p_lov_return_value=>'H'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8566141761352277)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Days'
,p_lov_return_value=>'DAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8566553595352278)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Weeks'
,p_lov_return_value=>'Week'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(8566905362352279)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Years'
,p_lov_return_value=>'Year'
);
wwv_flow_imp.component_end;
end;
/
