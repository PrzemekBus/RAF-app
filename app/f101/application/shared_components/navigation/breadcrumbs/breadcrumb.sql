prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.1'
,p_default_workspace_id=>7477392115214474
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'WKSP_RENTASTUFFDEV'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(7902108324738051)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(7902305354738052)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8382858118754893)
,p_short_name=>'Administration'
,p_link=>'f?p=&APP_ID.:10000:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8421574359869748)
,p_parent_id=>wwv_flow_imp.id(7902305354738052)
,p_short_name=>'storage'
,p_link=>'f?p=&APP_ID.:200:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>200
);
wwv_flow_imp.component_end;
end;
/
