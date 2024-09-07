prompt --workspace/credentials/app_101_push_notifications_credentials
begin
--   Manifest
--     CREDENTIAL: App 101 Push Notifications Credentials
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7477392115214474
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RENTASTUFFDEV'
);
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(8407942639755514)
,p_name=>'App 101 Push Notifications Credentials'
,p_static_id=>'App_101_Push_Notifications_Credentials'
,p_authentication_type=>'KEY_PAIR'
,p_prompt_on_install=>false
);
wwv_flow_imp.component_end;
end;
/
