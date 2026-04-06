prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.15'
,p_default_workspace_id=>52658545235278853
,p_default_application_id=>151
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEMOSERIES'
);
end;
/
 
prompt APPLICATION 151 - Formula APEX
--
-- Application Export:
--   Application:     151
--   Name:            Formula APEX
--   Date and Time:   17:16 Monday April 6, 2026
--   Exported By:     DEMO_SERIES
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      8
--       Items:                    7
--       Processes:                4
--       Regions:                 13
--       Buttons:                  1
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              4
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Excluded
--   Version:         24.2.15
--   Instance ID:     7640881093541880
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DEMOSERIES')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Formula APEX')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'FORMULA-APEX')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'75C5B8CB5DE35B9F56FFABAB825DF46775D3C02C94E27D0ADCF3A10937782A37'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(85464555398309994)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Formula APEX'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Formula APEX'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>11
,p_version_scn=>39609680003274
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(151)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(85465311944309985)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(85466566781309944)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/remote_servers/api_jolpi_ca_ergast_f1
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(85480727695285732)
,p_name=>'api-jolpi-ca-ergast-f1'
,p_static_id=>'api_jolpi_ca_ergast_f1'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_jolpi_ca_ergast_f1'),'https://api.jolpi.ca/ergast/f1/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_jolpi_ca_ergast_f1'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_jolpi_ca_ergast_f1'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_jolpi_ca_ergast_f1'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_jolpi_ca_ergast_f1'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_jolpi_ca_ergast_f1'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_jolpi_ca_ergast_f1'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_jolpi_ca_ergast_f1'),'')
);
end;
/
prompt --application/shared_components/data_profiles/f1_driver_standings
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'F1 - Driver Standings'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'MRData.StandingsTable.StandingsLists'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85481199494285716)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'ROUND'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'round'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85481430256285714)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'SEASON'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'season'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85481739954285713)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVERSTANDINGS'
,p_sequence=>30
,p_column_type=>'DATA'
,p_data_type=>'ARRAY'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'DriverStandings'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85482080796285712)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'URL'
,p_sequence=>40
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85486566034285695)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'url'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85482340588285711)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'NAME'
,p_sequence=>50
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85486566034285695)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85482624435285709)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'NATIONALITY'
,p_sequence=>60
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85486566034285695)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'nationality'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85482986130285708)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'CONSTRUCTORID'
,p_sequence=>70
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85486566034285695)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'constructorId'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85483220965285707)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'WINS'
,p_sequence=>80
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'wins'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85483502353285706)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_URL'
,p_sequence=>90
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Driver.url'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85483851643285705)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_CODE'
,p_sequence=>100
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Driver.code'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85484116900285704)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_DRIVERID'
,p_sequence=>110
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'Driver.driverId'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85484451264285703)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_GIVENNAME'
,p_sequence=>120
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Driver.givenName'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85484713048285702)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_FAMILYNAME'
,p_sequence=>130
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Driver.familyName'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85485068678285700)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_DATEOFBIRTH'
,p_sequence=>140
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'Driver.dateOfBirth'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85485367589285699)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_NATIONALITY'
,p_sequence=>150
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Driver.nationality'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85485673112285698)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'DRIVER_PERMANENTNUMBER'
,p_sequence=>160
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Driver.permanentNumber'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85485983394285697)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'POINTS'
,p_sequence=>170
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'points'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85486247038285696)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'POSITION'
,p_sequence=>180
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'position'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85486566034285695)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'CONSTRUCTORS'
,p_sequence=>190
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'Constructors[0].name'
,p_remote_data_type=>'array'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85486825977285694)
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_name=>'POSITIONTEXT'
,p_sequence=>200
,p_column_type=>'DATA'
,p_parent_column_id=>wwv_flow_imp.id(85481739954285713)
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_is_hidden=>true
,p_selector=>'positionText'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/f1_drivers
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'F1 - Drivers'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'MRData.DriverTable.Drivers'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85491734344272768)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'URL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'url'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85492049390272767)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'CODE'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'code'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85492334526272766)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'DRIVERID'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'driverId'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85492682834272764)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'GIVENNAME'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'givenName'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85492985520272763)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'FAMILYNAME'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'familyName'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85493258820272762)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'DATEOFBIRTH'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'dateOfBirth'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85493560282272761)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'NATIONALITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'nationality'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85493861312272760)
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_name=>'PERMANENTNUMBER'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'permanentNumber'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/f1_circuits
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'F1 - Circuits'
,p_format=>'JSON'
,p_row_selector=>'MRData.CircuitTable.Circuits'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85495015680268327)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'URL'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'url'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85495371422268326)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'LOCATION_LAT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Location.lat'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85495614459268325)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'LOCATION_LONG'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'Location.long'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85495919200268324)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'LOCATION_COUNTRY'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Location.country'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85496204389268323)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'LOCATION_LOCALITY'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'Location.locality'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85496521579268321)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'CIRCUITID'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'circuitId'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(85496803799268320)
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_name=>'CIRCUITNAME'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>32767
,p_has_time_zone=>false
,p_selector=>'circuitName'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/web_sources/f1_driver_standings
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(85490535212285670)
,p_name=>'F1 - Driver Standings'
,p_static_id=>'f1_driver_standings'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(85480976183285728)
,p_remote_server_id=>wwv_flow_imp.id(85480727695285732)
,p_url_path_prefix=>'/current/driverStandings.json'
,p_version_scn=>39609633827122
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(85490789585285666)
,p_web_src_module_id=>wwv_flow_imp.id(85490535212285670)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'60'
);
end;
/
prompt --application/shared_components/web_sources/f1_drivers
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(85494105208272758)
,p_name=>'F1 - Drivers'
,p_static_id=>'f1_drivers'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(85491504146272770)
,p_remote_server_id=>wwv_flow_imp.id(85480727695285732)
,p_url_path_prefix=>'current/drivers.json'
,p_attribute_01=>'FLEXIBLE'
,p_attribute_02=>'100'
,p_attribute_07=>'100'
,p_attribute_08=>'OFFSET'
,p_version_scn=>39609631857714
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(85494386497272757)
,p_web_src_module_id=>wwv_flow_imp.id(85494105208272758)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'60'
);
end;
/
prompt --application/shared_components/web_sources/f1_circuits
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(85497161415268319)
,p_name=>'F1 - Circuits'
,p_static_id=>'f1_circuits'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(85494865848268328)
,p_remote_server_id=>wwv_flow_imp.id(85480727695285732)
,p_url_path_prefix=>'current/circuits.json'
,p_version_scn=>39609578236142
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(85497337980268318)
,p_web_src_module_id=>wwv_flow_imp.id(85497161415268319)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
,p_caching=>'ALL_USERS'
,p_invalidate_when=>'60'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(85465311944309985)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>39609635275060
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85477051089309831)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85499855800197853)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Driver Standings'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-trophy'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85501398027196509)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Drivers'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85502673365195701)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Circuits'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-map-marker'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(85466566781309944)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>39609577700777
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85478506580309806)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85478984855309803)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(85478506580309806)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(85479384581309802)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(85478506580309806)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000714494441547801EC957B5055D715C67FE7DECBE521C84B230245412B124004E323338D4E94682CB11D30D6CE38763A7D4CA6ED1F99D846C7E0349626FDA3A0B1';
wwv_flow_imp.g_varchar2_table(2) := '539B2A3AC34B624D841614444022628DC49619512A52418A12909770E1F2B8CFAE7D94B13A92C4B43399767AEE7CF7ECBDCF3E7B7FFB5BDF5AC7E072B9DC2ED79707035FF2F57F02FF9D0A689A86A63D807450D0B407639AF6D96DF5CE1752C0D6D1C1F8';
wwv_flow_imp.g_varchar2_table(3) := 'B56B3A266EDEC4393484CB6A65A2AD95F1E6667D5CBFAB76F375C6AF4F429E5D17A8F19616EC77BA7932026E37131DFF60302F8FFECC4C1D96E2626C9DB7186F696660FFEF18D8B347B05747FF9EBDF4EF95B6826AEF79077D2C4BE61CF83D63D7FEF664';
wwv_flow_imp.g_varchar2_table(4) := '04DC0E0796D212867272B1E41660293C8A4D4EE31A1B63F46C2D43D987B1E41560C917E4E533AC909B87254720F76105D596E7A3D535183D3D9F80809CDED1DFC7D8990F71F60DA0190C186787608E8FD5E51FA9ACC46DB7E95E50B17D2CD0701B8D1843';
wwv_flow_imp.g_varchar2_table(5) := '43F0792119AF050B31F0392F75FAB1CB9771B4B6C1C4046EF999E36231C7C5E3E8EC62A249E40C0E460B0E9A12040560981BC1B44D1B09FEE96B1803A4FF39F7C7EDB033F6D1459CFD03E072A17979E2BD6C19DE8949F8BDB88EB935D5CCA9FDF0619CBB';
wwv_flow_imp.g_varchar2_table(6) := 'DF97FBDCBAB344D454115A9047C0F7BE8F79D66C10157505344D43D3EE612A42AE8971466B6A7089E3DDB8F05CBA04CFA444C63FAEA7273D9DBE5FBE4DDF5BBFBA77576D858CB7EEF7D5B8E0CD5F30FCC1710C1E1EA8CDD55E86663151555515B5B5B55C';
wwv_flow_imp.g_varchar2_table(7) := 'BA7489C6C646AE4BDADCBE7D1BABA496A669B846AD584A4AB0B7DD04BB034DCC336DD52A4CE1618C5EBD8AB5EA0CD69213584F9CC47AB2EC014E94CB98F44B4F325252CA787D3D389C78CC7C4AEDADC360B158D8BF7F3F7B2555F2F3F3A9A8A8E0C2850B';
wwv_flow_imp.g_varchar2_table(8) := '9495955129C6D2670D0E32F287F761C80262465348088DA36364CBC2B957AED21223668A08C72D6BB9878671CB3C0597F475886A8EC1014C115FC177ED5A8C7E7EFAB2EACF101616269E9AE0B218ACAEAE0EA5862271FAF4694A4A4B29913CAF3E7E9C5E';
wwv_flow_imp.g_varchar2_table(9) := '510A7F3F9CC1817484CDE6A89CE6B77979D4F5F4625DB31AFBFAF58CCD8BC2B6601EEEA717E291108F57E2623C1727E0B56219FE5BB712FCEAABF83CFB2C126F262FC3AC59B3484D4DC54F5829D987846D7F7F3F6D6D6DFC4542929393C3A93F5FE07DDB';
wwv_flow_imp.g_varchar2_table(10) := '0415E2F2E2E97EE4CA9C720955BBCCB9DDDD45AB84AA755E24E39B36E278E9EB5853D6D3F79220F59BD8BEBB15D38F5E811FFE00D7F3CF63F2F797FDB5C9FD31188D46D60BFBB4B434626363993973265E5E5E984C260C06039DDDDDDC723AA90A08E4D0';
wwv_flow_imp.g_varchar2_table(11) := 'E828B963A39CEFED2548883CB7289E6722E7E223E49C260FEE8A02977DBCA97739393FD04FA3C3C6B59059541B3472EBCE935B70848B172F62B7DB1116A8CBA0691A111111A4A7A7B36DDB367C7C7CE8E9E9213A3A9A556234B3D94CDF279FB03C2888D0';
wwv_flow_imp.g_varchar2_table(12) := 'DE1E164BD5FB4650203F910C787BED0BBC29D82073DD77EE5021263C70EC030A8E14527C309B863FFD91CAE222F6656591B17B37BB76ED224BDA4D625CB74E827B85C82DC6521B454545111A1ACAF4E9D3494A4A62F5EAD5787A7BE310C9D708899D4613';
wwv_flow_imp.g_varchar2_table(13) := 'BBBCBCF9B10BD6C9D8CCC62BB45657932FA9F5F3EC431C2C2BE7927C64AE5886E98A9843F38CA768BCD5C9DD81BBBAA2A3A260EDB9731C397C08CB95469C6252BD0E2829FE154A852039B1BFC4CB24219A90538F74756116A9ED9E662C5272EFB4FC9D8F';
wwv_flow_imp.g_varchar2_table(14) := '07EFF29B9BED649DAEA4A9BD1D9BCD863AC8B2A54BC9FC75262BBFF61CF152297DA7F932266BA83D86AD2334D49EE523F998759F39734F01F540213C3C5C0FC18D1B37282C2CD4E5FAAB18B1534E5F2395F0A8CD4E8184275FD2F25D09D53B9201E7A436';
wwv_flow_imp.g_varchar2_table(15) := '281F4DF3F5D58D1C181848B098B55EB244D334BDA6B8A472868484A82D080F0D634ED2120EB4B450522445491F953F1586808000366CD8406262224D4D4D34343410E274F08A8468A3C1C88BA2466A5A1ADF397C98D7C450EF16BE47A9A46A797939A74E';
wwv_flow_imp.g_varchar2_table(16) := '9DD26B475151113B77EE64CB962D6CDEBC5987CA3465E8C8C84892D7AC61C71BE9ECCECE2679C78E8715D0344D8F7D464606EF1D3BC6C1F437C85CF0555264F3F99A914891326EDD5AE256AE247EC9129E11A9972F5FCE2456AC58C152198B8F8F272626';
wwv_flow_imp.g_varchar2_table(17) := '06E5294542194F15BA7DFBF6B17DFB76E6CF9F4F5CC262A2629E7E988052C15B4CA726A80C5819358F79ED1DF84A1A1AE5EBE72569E6BB30064F31A9D964C2436AFAE3A07CA0A052598544193A252585E4E4649D945194F450EF1B3D1E26805C8A845BEE';
wwv_flow_imp.g_varchar2_table(18) := '9ACD8687EF347CA474FA8A947EDFDE8CDFB75EC6232C5C7247E84858F4B99F729765A472BBF57AE22B1E51E656EF4C8EBBE5508FCD02195773F08C8E66C6F6D799F1FACF08961AE1FFF2268C623259557FFE247F6A638547DF793C0161A029796787E22D';
wwv_flow_imp.g_varchar2_table(19) := 'B1F24E48C07BD122CC73E6A2C61F5DE4DFE94F41E0FE928FC8FB454E7E7FA5296F9F4E60CAD7FE730FFEF7097C9656FF040000FFFF7880ACCF0000000649444154030053F4CB8EFF19B08C0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(85467619723309915)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D07605355DB7E4E92EE4159028A0CD9A09FA82C27387E17EE818A82B8B722825BD9D3056E3F1788E042C509B8583204A165AA3840760B65';
wwv_flow_imp.g_varchar2_table(2) := '75374DEEFF3C370D163E0A6993A61512F3E6DC7BEE99EF79CEBBCE2D3A10F9443810040722000A827991AA400440111404C581088082625FA4720440110C04C581088082625FA4720440110C04C581720328A85E23950F1A0E440074D02C65E54C2402A0';
wwv_flow_imp.g_varchar2_table(3) := 'CAE1FB41D36B044007CD5256CE442200AA1CBE1F34BD460074D02C65E54C2402A0CAE1FB41D36BF8017400D659965593D45CE476BB4F627AA19F8A8A8A7A1D2AA4396BFE225EDBFC605AF300EC0BFBE34A071099D2C8E3F10CF07ABDD349BCB5B6F2E737';
wwv_flow_imp.g_varchar2_table(4) := '91D3E99CC3F4733F391C8EB70F15D29C357F11AF6D7E30DD4A1EAD26BFDE260DE07D97B02366AF0E2B05409A3819F03699C14B6BB531A63FC755E9CCE018FE0DDF46E4572F527F324F9B6E35F9B89AD7BD2A63F0610510412349A3C94E27032A65C295C1';
wwv_flow_imp.g_varchar2_table(5) := 'E40AEEB311DB6F440069434A3A0DE07DD8BE61015031702C82469246130EDB040FB18E249DFA4B2289E7E1987B8503889391B41170C2319F481F3E0ED8400A07882A0C4014A98D041ECE2762DB900995F195C4E71AC864A830A95F21002278BA90569369';
wwv_flow_imp.g_varchar2_table(6) := '21040F5B8B7CCBC301D947D3B91E156273861C401CA83DE0F2CC3452A7C238A03591D71672495411007ABBC2D8106938180E0844D38369605F75430A20EA5B0D30A2B6F6C5E9AA91A7A06D483778C800546CF147C053358052EA286858F7A29911327B28';
wwv_flow_imp.g_varchar2_table(7) := '6400E2C0AE2F75D49107558A030450C8C22A21011007244487DC40AB525C3FB806237B486B16F4AC4205A090213AE819FD6F03919C7D70809B3E246B16348038102139227DF6B148553C4B5228689B3514008AD83E551C29A50D8F9B3F682914348038B8';
wwv_flow_imp.g_varchar2_table(8) := 'A051CC3622DFCAE140D09A23280011C1525F9533F548AFA1E040D06A2C280085620691362A97030CFE06A5418202103BEF5CB9D38FF41E2C0718BF0B6A0D8302103B0F0ABDC14EBEA2EB1F22ED0765070505203238A8CE593FF2AD7C0EC80E2AF75F7B94';
wwv_flow_imp.g_varchar2_table(9) := '1B4034A09B57FEDC2323081107C20FA0A2A2A25A211A7C789B3106C6948FF639D072B6654CF9C6604CF0F5F6398F7266965B0295B3BF4AAB66D8B3657951B0613DB2172F42F6829F480B02A29C850B90FBCB4A780A0A61A91D3666C1C062EADEB2053969';
wwv_flow_imp.g_varchar2_table(10) := '69C8F969017216FC2F6533AF24E52C62DF8B17233BF51FCA4A5B0C3F652F4945F6D234642D5D625336D3ECA54B99E7A39C654B51927CCF96207B491AB2D358B744BBFE3E72D8BEDDAEEA721EEEAD19B0BC1ECEC4F70D46181C3200D26217EDDC851DEFBD';
wwv_flow_imp.g_varchar2_table(11) := '878C471E4146DF7EC8E8B77F4A67199B1E7B143B3FFD145641012CF83F5E589685ED9F7C6CB7B7B95F5F6C66F9CD7D1F64FA0FEDDD47FA037D91DEB704158F219D75ED31ED95EE9DBFC7FD03FD9061B7D58F6DFA2883F5D3EDBCBECCF391C695CE7E949F';
wwv_flow_imp.g_varchar2_table(12) := '31702072972F47A83E8EF236E472B9CAAD37CBDB6730F5B4D8F97FFC8EDCA9D3903F7316F2E7CD47FEDC79A5909ECD4701CB14CC9B8B8295BFC0512D198E9868CA9D7F4651B87E2D72267F8EBC1F7E4001DB2A9C3B1F85763A6F775AB20F952998330785';
wwv_flow_imp.g_varchar2_table(13) := 'B37F44C1AC629A391B053366A390A9A860C62C144C9F85C2E93399CE2C4EA7F3BA987E988E7C3F4D9FCE7C5F9942D6B3EBAB1D7FDBFE94796A377FFA0C783333E14848041CCEDD1309662DCB0D208FC7F3AF0290D7ED46DEC29FE0FEFD77188A1187D349';
wwv_flow_imp.g_varchar2_table(14) := '1E96420E071C64B011B99C8869D31AF19D4E8489F60148F551E441D694A9285AB992ED19389C2E18B6695389D4E1FCA70FE36099627230B5C9AEC77CA5CCF39571C2B06F0749E9DE6DEE71EF2FA3947DC1E56BCBC1F61C0E176CE2B5311C478D9A883FEB';
wwv_flow_imp.g_varchar2_table(15) := '0CC4366D0283D07C1CA169A6EAB7E2C9C840DE8F73E0D99C4EE6917DD269A5114BF86664C18A8D435C972E647A3318C37A7A40D55598BE1979DF7E076FC616E68B8DC5CFF4BC2495ECA364BEFF9A60162045FEACFF494BB6B1F775C9C2C56DD97A96D7FE';
wwv_flow_imp.g_varchar2_table(16) := '47BAB438F6A8962D107FF2297055AFE17F64A7C10803CDDC6EE460FEF116B9913D7B360A68BC1A2E3E50CA6263AF0FCB46376F8EB80E1DE14C4ADAFDD05B54845C1AAB05AB7E83E5F9C718DD5DA00A5D589A2AE76112131077CAC9886BD51AC412472858';
wwv_flow_imp.g_varchar2_table(17) := '3109F27B0800C88B424A9FDC59B3E0DDB01930814C59CCF502B1D18869DF0E314D9B020E03FFC7B37307F217FE0C4FFA1666FD93CF9B2AF7F58DCE20BA554B249E79165C5463B68482EF49B0037604DB4055AFEFF114219F764AC1A254187711D91600E3';
wwv_flow_imp.g_varchar2_table(18) := '58C44B2E3BEAD5437CC70E88AA5387764EF14CB99BDD1B36A220350D56760ED820AAF287C385A99E82B8B3CF46DC71C7150F97130CD1A00F7A005939B9C8672CC6B37E03888980D826F96328A9A28F3E1AB1ED3BC01113BBBB9ED4A1005948CFCCD09036';
wwv_flow_imp.g_varchar2_table(19) := '30BB9F55A50BA92E4B13763910D3A93D92BB9E07577272C88778700388DBCFBD691301B410DEECACC099C77AA8590371A79E8AD826F4588CF1D565E2CEDC82EC1FBE838701445F6655FD257C385EE7518D91D4AD1B629BB78031CC08F1700F6A00593476';
wwv_flow_imp.g_varchar2_table(20) := 'F3962F43E18A15B6FA0A98776474EC71C722E18C2E7044455372492601329EF32979F21873B1D5A12F3BE0660F5C303425081D5874E9A31AD447B5DB6E46F29967C2191F8FD0C30738880164A1283707D953BF81B52593AB7F80D5362C4292E8B76D064A';
wwv_flow_imp.g_varchar2_table(21) := '9FB8264D196DA6315DBCAE9E1D3B91F5F5545834CA8DB7B83D257B5371793607AD9ADA2C3761AF8FFA5296214C4A10A8AE2C1ED57849A0AA8AE9D411290FF643F5ABAF4654EDDA003785BF2A42F8396801246991B77239F267CC80555870409689B9FE05';
wwv_flow_imp.g_varchar2_table(22) := '7731D016D7B1231C8C011918BBAE57C6F89AD5C89D39139EC2221471A16C82174525C8C36B0F9F79BD5E78441E2FBCC190DAF013DBB5FB62EAA19AF5D006F3D03150EA5500B1EE61883AA923926FBC1E35795C93724D77386B093C5A66DF3CECC984F047';
wwv_flow_imp.g_varchar2_table(23) := '2D87B0B9AAD394675716764DFC00567A0637A7A4882052FAF8C45E9BA8B2628E6D8B68DA3E28E1BA7383C3C4C5A1DA9597A37ABF3EA8FE50DF7D528AF21FECCBDDFF804D7659952F2F3DC8BE44C5EDEEEE97EDD5E8733FAADF7F1FAAF7B90F290FF7438D';
wwv_flow_imp.g_varchar2_table(24) := '01FD71D8C8E1A8FDF0C3483EE30C9FDA92E82B7DDA413F392801246991B7EA57E4515A58DCA1B0A588E081D23FC217C9D4A4F12CD75DF1128A7D7F0507777842EBD6A8F3D023A83778C8FE69089F0F1D8A7AA261C3502F181ACAFA22B65997B4BBEF21CC';
wwv_flow_imp.g_varchar2_table(25) := '1F3502F59E1E85C3478D44BD279E40AD1B6F4252C71319694E810D7E03383827FF1C2A223D380194958DBC39F368AB6C61FCC6D87440E6D19EF0921BAE168C3C1F7BAC4F7DEDC57CB6041A456CCFDA2FA94C4590A1DAF293AF7D701C866312F19A62D292';
wwv_flow_imp.g_varchar2_table(26) := 'BACB2F84368EA1F4E11715F921CB2AB2F94A689B4C766F62A0EFE79F819CBC8007C06AD001642C0F1BA31A348071FCBB5863D1A8B70A0AE15EBF0ED90B17C0BD750B8165053CFFF216FC777169BFB314B32C1AAC1EE4F3C4BDF0D75F79EDDE6F8D3D1ED2';
wwv_flow_imp.g_varchar2_table(27) := 'DE310D8F40F239E7C29594BCC7234B3B9BC6315784F9BE7E4ABD2612AD12E493146CC19FA7B678EDCF2F995AECC3828725BCCCB676D33EFBA221EDF5B8E1C9CF817BDB56E4FEB21C5B274EC0C6471E45FEA245B47F120043C9848AFD1C440012A30C3C0C';
wwv_flow_imp.g_varchar2_table(28) := '1816FCBC088A3C1B3259B981900CE424BABCB10D1B00CE7FD8E2E6B957DED2A5C899371F39F3FFA1EC79F320CA294E759D3D5779739133770E4929E9475E17532ED3DCD973A034E7C71F914DCAE2216FD6EC59BC9E8DDCD93F92E620876572E63015B1AD';
wwv_flow_imp.g_varchar2_table(29) := 'ECB973EDBEEC3EE6B30FDEEF9A39033BBFFA0ADBC78D43C6B011C8E8F710B60D1C0C2FCFE7124E3C11CEC44484E3F30FA7C2D15B85F6A1574C0DF2FFF803F95C54E89C2A90FE0C250AD59593C0493CF30C3812B87355CF8092C042CEC285C8A0D19C7E7F';
wwv_flow_imp.g_varchar2_table(30) := '1FA4F77E603765DC5FE2DA9F5F9CB799E9E6DE7D60531F9663DD0C523AF3D395F6BE1FE9F7F5418688E5B690746DB7CF321924FFB59DFADB679A414AE7F38CFBFB22F3E147B17DC453C87E673C0A0844B80B117FF699883FE63F08970A76885707051903';
wwv_flow_imp.g_varchar2_table(31) := 'AFBB00B9F3E6223F7589569F14C0F42CCE5EA7EE1DDB23BA614318878B19CA3428DAB11D795C98024A86A2254BE14E5B528296A168C932B88BA96829EF45CB96C3B36C058A96FBC8CDD4BD62257CB4C297329AEDFEE517888A7EF9956931297F05F359BE';
wwv_flow_imp.g_varchar2_table(32) := '88D1737F1B456C537D89DC694BD9EF72787EFD0D9EBFFE867753062C862CA8EF10D5F63F48BEF81238196EE024C2F20D80C3611947F09DD0AE28D02BAB3F4C07C4D0005BB48C81A3564DC4F1D0D495E27BC9524249764CFE6FBF218F6AC9BB7327288EB0';
wwv_flow_imp.g_varchar2_table(33) := 'E747202B41EC5F8BE827C37B3FF9F34A4FD932CB97FEBC443F2C6A0F4659BC56426BC99E43C2E96720B6F1511CAA72F9300CDFA000A468EBAE5DBB909D9D8DFCFC7C141616A288E74F1E8F077A1686F1EFEEC2535080BC858B5048292150EC7E70A00BAA';
wwv_flow_imp.g_varchar2_table(34) := '2F170F1C638F3986AE7B2CA8B958C3D038CDA3CDF3130A2855B82228539B6C217C5F0B8631AAA866CD117FD249704445710EBE5984630C41014880F98A86DCC48913F1F1C71F63CA9429983E7D3AE6D2C85BBC783156500CAF5EBD1A1B366CC0169E5EEF';
wwv_flow_imp.g_varchar2_table(35) := 'D8B1C3065B0117DB0F30630C8CD993CA3371F7E6CDC8FF6901BC3CF762730135212983F858C41C7F1CA28F3A0AC66176D72BF87D95FDB2BCB56D3B632D166CE9B0FB69D5B9B0474CBB2DA67D3BC4B66809FB3E8CC30B0A402E225F4019387020EEBDF75E';
wwv_flow_imp.g_varchar2_table(36) := 'DC7DF7DD76DAA74F1F3CF4D04378F4D147D1BF7F7F0C1F3E1C63C68CC19B6FBE0981EDF3CF3FC7F7DF7F8F9F7EFA09CB962DC31F347CD7AF5F6F832C2B2BCB9662C61818E3A303F1C3E2395501DBC84F4DB54FDD59EB4055ECE712FDCEFA4720BE731744';
wwv_flow_imp.g_varchar2_table(37) := 'A5A430CF9088154A50F79A35F012F0D1CD9A22AA71235B45584E076CD0D9A5AAC20F81CD61B81A1C89F82E9DE1AC568D7765FB065B3A2800391C0E9C7FFEF948494981A4CBC68D1BB16AD52A085433788829E93461C204BCFAEAAB78FAE9A73160C0003C';
wwv_flow_imp.g_varchar2_table(38) := 'CC731A81EDE69B6F468F1E3D70C30D37D8A07BECB1C7308C21FFE79F7F1EE3E89A7EF2C92798366D1A7EA31D2249B7EF89FA1858949343559306F71F7FC207817D97F6E75A347244888E42F4F1C7436E2F381781432AB8A0201F8627F1C9FDFA2279C450';
wwv_flow_imp.g_varchar2_table(39) := '240E1A80C4DEF72286414693924475E66FA91253CE81A21116A54F5CD7F3117FFC0970389D611F50500032C6A0458B1668DBB62DE268F98BEAD6AD8B238E3802471E79248EA25A1035A47753A74E1D54E30E898989B1258C6CA7CD543B52733FFCF003DE';
wwv_flow_imp.g_varchar2_table(40) := '7FFF7DBCF2CA2B183C7830EEBAEB2E1B5CD75D771D468C18813FFFFCB314C6180842459B36218F311A8BB6982504894AA9E1CB663D1AADCEC3EB21F1AC33A117CE77F1F843D250D2F19D77DFC5384AC88954BFEFAF598BCF77EEC2A2E62DE0BEE76EC45D';
wwv_flow_imp.g_varchar2_table(41) := '7D952D8DC0B9FBDA0AFFAFE6A8795BD1B1883EED14A45C7619A26AD5222F941BDEF1040DA0EAD5ABA363C78EA859D3E7C144D18853DE910450F3E6CDD1A143079C77DE79B8F6DA6B6D60F4EEDD1BF7DC738FADEE04945B6FBD153D7BF6C415575C8173CF';
wwv_flow_imp.g_varchar2_table(42) := '3D179D3B77C6D1471F8DF8F8786CDBB60DDF7DF71DE631AE9397B78F630982C02A72236F4986FB582500001000494441541A0A97AE80F19081F6C232DD1F1F59CF111D8398366D10D7B113B66ED98AC99F7E8A27782029B5FBE493FD3170E0200C1E3404';
wwv_flow_imp.g_varchar2_table(43) := '43870DC5501E8A8E18350A1F2F580847F76B117FC5E530B56BC14BA01EA0A7FD8DA2CCCF6CA9499850C9C27239117D5C5BD4B8F926C4366B0653FC1FC2FC090A401AAB24CA09279C80468D1AD95E98D4D8EF3C4A58CAE8AD165E46F5B7DF7E6B1BD8DF7C';
wwv_flow_imp.g_varchar2_table(44) := 'F30D7EE511437474348E3BEE3874EFDE1D7DFBF6C5934F3E692FD2534F3D65DB4A92440F3CF0001A376E8CAD5BB762218379999999EA6E2F32F0527DEDFA7A0AE3219BC84248AA93BF06FBFB182E82A9511DFA331737A5E2E44F2763E4C891B6CAD4D805';
wwv_flow_imp.g_varchar2_table(45) := 'DC44AA86138E3F1E175F74317AF5EA855B6FB905A79F710692297153EEBC0309D75212D5A0CD518668F7FEC614C83307810F386051DDBAB8C9AAF5BE0F89A79F0E675C7C20D52BA44CD000921DD4B469530844923E4574E30BE865E57061B76FDF0EA929';
wwv_flow_imp.g_varchar2_table(46) := '19C902D48F0CDD7FF8E187B63D74DF7DF7E1F2CB2FB7E9FEFBEFC70B2FBC80A953A7DA0053FD13198E976492FA13E8645B490AA97DBF07E73516F40F2514510259F9077E69CCC741CA0C1AFFD12D9BC3C31DFC310DFA51942E6A5FB696EC20B52F152BFB';
wwv_flow_imp.g_varchar2_table(47) := '4B1EA58C7D6D02017BD0902198F3D79F88A6B474356D0698A05988403FF64B63B5531077E1F9A83D641052CE3D07AEF88440AB5748B990CC5EEAEB94534EB16D1F638CAD7EEAD5AB674B10814B20A8451D2D69A5789176B85C7B016BD1A245F8E28B2FF0';
wwv_flow_imp.g_varchar2_table(48) := 'C61B6F40F68FD4DBEDB7DF6EAB1349302DA86C2019E3E3C78FC7679F7D86D98C0E2F59B2047F329ABB9AA0CBE2F90F28557CC45F02CB16454A8BF325FE6D221B0DC7E6A5D7329B9EDF4B2FBD84B56BD7EE11B7F203489EA1E83FFFF90FAEBFFE7AC826BB';
wwv_flow_imp.g_varchar2_table(49) := 'E0820BD0A0412344D73F12CEEA356CAF4CE5F7204A250F8947A27CCE5F5E5B2548AF9DEE51DEEBB5FB57BE5D8F65773F777289AA5783A34533C49E770EAA3FD80FB5E970249D7C0A9CB1719C4DE57E39BAE00720775E76D099679E6937A6C90B2C871F7E';
wwv_flow_imp.g_varchar2_table(50) := '38042049A773CE39C75E002DC4A5975E8A2E5DBA400B23835B922B3737D7B67904AC5F088CF9348A67CE9C89356BD6D8524C5E99BCB4C71F7F1C0A13C8967AF8E187F0D4675FE0730633B718C04BB0782D0F2F78E5B5E0A5C8B70D4E2D82248528219E0B';
wwv_flow_imp.g_varchar2_table(51) := '711E3636698A09933EC1F2E5CBA1F1DA032FF163B1AE3FBF196D8CD34E3BCDB6CF4E62B0AE295DFB786E88B8CEA722A1DBE548B8EA0A245E7D2592AEE986A4EE5721F11A923FBDF61A24EE4DDDAF46A29E93545EF5125937E1AA2BD9D69588EF760512D8';
wwv_flow_imp.g_varchar2_table(52) := '5E02EB25DF722352FAF641EDC1835067F040A4F4E889F8D647573E788A79151200A92D81E5FFFEEFFF6CEF4B52E6EFBFFFB66D1781E0E79F7F866C23014D5E9B8026A35A71A3071F7C1072E1058A1B6FBC11575E7925CE3EFB6C1C4FFB433690DA9584D3';
wwv_flow_imp.g_varchar2_table(53) := '82AA0DA91A491FA9C32FA74CC3278CFFBCCD28F834AAA56C7A80515C5C57EB5688EAD00EB1F4B012AFB81C29BD7A22E5F65B50FD8EDB50E39EBB804B2EC2373C5F9A4549E62E746BF8FB25015C1BC24F51AE2858F17188EF712D52460C43CAC8E1A8464A';
wwv_flow_imp.g_varchar2_table(54) := '193512359F790AF59E1F8DFA54C947900E6758C24FF5C68C41BDD1A361A7CFF39AE5EA8C790E7598D665EA7F5677CC68D4D1FD0B2C3B6C386ADF7D0FAA315C12DB92F34AA90E5309EE7A690C0A19801C34ECDAB66D0BA9320145C719B22964B7FC4D30C9';
wwv_flow_imp.g_varchar2_table(55) := '557FF9E597218FE6C5175FC4471F7D6403CCED76DB3B5B81C7FEFDFBDB1EDA35D75C838B2FBE185DBB76C585175E88ABAFBE1AB7D08815C9F016C024BD6262635148F1BF9EF409BDBFF99D3A228EE2BD360DE29AF49C5C7D1FC0DF175F84B9271C8F6F69';
wwv_flow_imp.g_varchar2_table(56) := 'FC4E6BD902735AB6C4648267F26793B16B17CFB84AE34C71BEC697CA00A554E7071F7C00A9D1B7DF7E9B2AF74DBC31E13DBCF1E14778FDFD0FF0E6FB1FE22DDA77EF307E359152F163AAD6A9B367611E55EDF2BFFEC25A3A01590C5016729C5E8E1BB45D';
wwv_flow_imp.g_varchar2_table(57) := '9C49D518C0AC0E17411145751855A306A24931356B21A6464DB8929260E88D3A18FA40948B4E82968B365CF1D8AA42A21185641C92109216327E0F3BECB052DBD4B9998C62051AE5A1C9C6509E8C6CD939FFFDEF7FED68F5D75F7F6DDB3A0A4ACA989551';
wwv_flow_imp.g_varchar2_table(58) := '7BCC31C7E0B6DB6E8302924368CC0A60898989545DC09F5481EFAE598D1F5D4EA433FEF415839A43B9B84FBEF65FF41FF302063EFD0C068E1C8527860CC5F3940CBFAFFA1D7A8BAFD481163F9041AF631AB9F79294F218070E1C88912346E2F9D163F0FA';
wwv_flow_imp.g_varchar2_table(59) := '6BAFE3C30F3EC49C3973F01781F2C7AA3F307FDE7C7CFAE964BCFEFA1B78F6B9E720237D28C7ABBA2308EEB7DE7A0B72182449376ED8886D5B3391939D0381D5E26600D527B531CD3843D0F806629B73F6A5B17FABCA4FC800A409C5726749F5B469D306';
wwv_flow_imp.g_varchar2_table(60) := '8AE3482A297F6F4AA08BDCA953273B022DB527375DD2476EFC7BEFBD07793C5251B283E405E95E814645A9B5FB75AE2669A71852FBF6ED21D5E2E6416E5A6A1A9E6628A01F430303191A18474931E3871FB082C7257F3118B99A0BBC72E54A7BA1058CBD';
wwv_flow_imp.g_varchar2_table(61) := 'C7B5AF7BD941529D32E4D3D3D321EF52FD29CE7512EDA11E3D7BE091471EB1E96EC6B46EED7E0DEEBCEE5AF466A4FD9E9B6E42F7CB2EC5C91DDAA37EBDBAF050DAAE6264FDFBE9DFE35D46E89F7EE6190C193A04AFBEF61A3EA723B160C102FCFADBAFC8';
wwv_flow_imp.g_varchar2_table(62) := 'C8C8807F7C92E492E23B78ACA27C8D414E88369D3CD27D8D399C7921059031060A1E76EBD6CD563D0A08A6A4A4A02490644F9C7CF2C990EB2E1008303A27136014F3115324CDFC4CD0B598A83332492E9517D8264D9A84A328696494CB56521FDAC1A98B';
wwv_flow_imp.g_varchar2_table(63) := '53F1350F78E5E1691154DFDF565952B5A74D50BB766DC8883EF5D453D1FDDAEEE8C7E30DC58C743C2340DFDFE77E5C70FEB9389A51ED9A9480C98C60D79AFE031AA62E469BBF57E3541E8B5C46897C6BBB13F038EDB151B4C19EA497792B0DE50B4EEF82';
wwv_flow_imp.g_varchar2_table(64) := '560D193FCBCDE101F48F18F7CE38BCF6DAAB90C3B086CEC3CE9D3B21C04B7D4AFDAB5F3912CF51AAE94C518013CF04F2B2CC2D9465430A202D560DEA70D9309AA45C73050A8F3DF65848D51863ECC5E8D5AB172485744CA1B890248A98608C818BC6B09E';
wwv_flow_imp.g_varchar2_table(65) := '490DCA4393012DC9A605D5C465A0A7A5A5D96A417694C028F75A47287AAE7604385D0742C6181BE002B600A3765AB56A85D319A0BB855244EAE79DB163F13ACFF386F61F803B997721CF9EDAB46E8D1A29297052F5E432529EF9C6EBD831F9336C671075';
wwv_flow_imp.g_varchar2_table(66) := 'CBB2A5D8327306B67EF22932DF79173B5937EBD9D1D845D597DBEF41C40C1E8286EF4D44A725A9B8B8300F3732AC705F878EB8F7BC73711D6DBF367402143FD3C6BA8952AC77EFDE90CA7E81AA5740D2981EE699A2D4B96C4AC5A92491C47F84F9135200';
wwv_flow_imp.g_varchar2_table(67) := '69ECC618FB5C4C675F8A366BF262C425975C82264D9AA017C153BF7E7D48924C9F3EDD7E8F4813D7020A303ACA90D17CC71D7740C14631E972061CDBB56B071D9118636CB77B13CFBF74BA2FF577D14517D9124F676D1A4369648C21580C14094F49A966';
wwv_flow_imp.g_varchar2_table(68) := 'C7AD5AD2A896E1AFD0C29D77DC8EA15CE43769E48F7FF9250C62B0F3321EC5B48A8D414D1ADCD15B32E011316C504009B18B92661BA5C68EAFBE4641BDC3B1E98A2BF00D3DA5F72955261F7B1CBE62ACE6734A9E4F1A1F85C9349427D3B6994CDBEC8B85';
wwv_flow_imp.g_varchar2_table(69) := '8BF0D5975330E5CDB7F0CDC8A7F1E3638F6365BF87E0993011751988DDB97D1BC6D04B7BF6D967ED836949193924DA1CE295A4B4549AC21DAF51FD89C732F0A5E2F41C61FC38CADC5780158C3170D2DDD4AED67998249162388A07A55182CC9831C3060F';
wwv_flow_imp.g_varchar2_table(70) := 'F8D182CA76BA916EFC193C2E1010F41E910C6831452AEAAAABAEDA0D3E637C20925D22AF48368240A7588D80C826777F8DC3701C0E242527A169B3A676FCE9AA6BAEC69D77DE8947FB3D80C10FF4C1A05B6EC693975F86DE04CBF934C21B2F490378A0BA';
wwv_flow_imp.g_varchar2_table(71) := 'EB85E791F5D187C8FF6525BC34D24DB40B16D5CA2E7A5A5B09B29D53A7C0CBB8D296F6EDF019BDAC21CF8DC6301AC9CFBDF02286D3BE19F4F4D318F4F22B1842EF6DF037D3303C2D0D4FD1BE19959F87518CD68F62F4FCA9DC3C3CC373BEA98D1BA0A8DB';
wwv_flow_imp.g_varchar2_table(72) := '9598BB69339EA5EBFFED37DFD24BDC057D148495D729492E13411B49125980F24BE4D1A347DB9B52C0529D70518501A8E4040490D614F98AF1C4F1D45E46B1BC2FED163142CCB999AA41C14419CB63C78E857694BC1F796692343A47936A9144927A33C6';
wwv_flow_imp.g_varchar2_table(73) := 'D8A7FAF27EA64E9B86E6942437D1D56FA317CAF94C2E7EA3A64D7001C3007D7878FB140DEB913DAEC3E3A79D8A7B6AD744374A92D3E72FC071F4F61A8C7F1731F4A8B2E9A1ED1C36023B9F7D0ED95F7C09EA5D249C79061268FF189EDF654D7C0FDB1E7D';
wwv_flow_imp.g_varchar2_table(74) := '1CDBDE9D00270F536B5FD713A93C441EF9D1243CFBCA2BD03B4E52C75A54813A97C0B0D3FC7CE49076E5E4621BD3AD74E737511AAD25FD49DA40697814A56C66B514BC36EE1DCC9B3FDF36D6C51B79B592C0320D64C04B55C9D613EFFC3CD6BDEC43D965';
wwv_flow_imp.g_varchar2_table(75) := 'E29980E57F56D1695800A449B868DB481AE97842D15F4D5AF9B239745A2F95247B485245E180CB2EBBCC3EBDD7FB46AA27A0C8FD1523E5FDC81352FDACEC2C7C357E3C9631EED39A1ED7BD4E071E494AC6189ECF8D3EAC367A6FDE886E3C83EBFCE59738';
wwv_flow_imp.g_varchar2_table(76) := 'FAE3C9A83FF103547BEF23C44EFA1460BCA6F0EB29C89F391BEED43478D6AE83898946DCB9E7A0063DAB244A250FBDBB6D0C056C79A01FB226BC0FAF7122A1D7F5C83CE5543CFBE5577894A0FB82605BCFBA9A53C985D5F8FE8718C6E1575EBAEDAD3B28';
wwv_flow_imp.g_varchar2_table(77) := 'F13AD0FEE9D0BE23A64C998A450CBA16E617DA6F37C819917A95C4563056BC51A45E20DABB1FD97D3A089644565981480EBFFAFA9F318430C311C2B60ED89426F9231753605161A93849952406CC14F791A725E0C8B8D6B9D8430F3D64BF6426D577024F';
wwv_flow_imp.g_varchar2_table(78) := 'FC053CBDDE215B4A4032C670112C6C58BD064B683F1491DAD188BD9C76C4A91B37A1D56FBFE3F0E5BF2261C97258A94BE05EB102457FADB1FF76CACACE856139FDB30B8E9A351073CAC948BEE52654BBF72EC49D760ADC1BD661E78B2F23F3E1C790453B';
wwv_flow_imp.g_varchar2_table(79) := 'C7CACB4122558CE7AEDB318B41D311B43D5E7EE5652C675052DE9EE6531E9297AA0D218F6B06D57A765616055F2294A78D24C9ABF342C5C1C43F0147B4AFBE942FAF4D125EE58B1453DA57C110E63942D8D6019B52FC42C136897815963A6BD0A0811DF7';
wwv_flow_imp.g_varchar2_table(80) := '90CD235526E359471D72D16588CB8596912C4F4B9248014719917A660CF718B758B6A708EB7765C3BD7317A272F3104F1561B2B3E1C9CA8655E401B8E0300E7E9D8093A03324DA4674A36CE024DC703D740EE56A501F05694BB0EBADB13678723E9A04CF';
wwv_flow_imp.g_varchar2_table(81) := '9AD5883BA11DE2EFB91B6B4F3A116FCE9D8B9154777AF14C9E92164D73292F294CA04D949A9A8A356B086EAA341D44CBB8D75C97318625033AD0F6B50925B136D158CFFBE32F1432F5921FBE88249915684301967304582EE862C618C83E901EF73726F7';
wwv_flow_imp.g_varchar2_table(82) := '5C2EBBF22572156B51B459F9FE324A6534EA99CED1E491E8DD20ED5C638C1E43A7593A9470F3D6629E456E1938F84BB2C0882E09FC7047EAB9A95503AEE38F41ECA5172281079F51F50F47CED469D831621472C64F44E1BC05F0D09835B49562BB5D01EF';
wwv_flow_imp.g_varchar2_table(83) := 'EDB7611E6DB7A154652FBD24A9B3CCFEE38060C1C311411B413C900D23D524A9DCA851233B9C2169A2CDA27281BC5F4F7D00000E104944415492CAAF5DBB161BD6AF43CEA29F90494999F3F34214E564830C01A83C2D122F42F27584A495001BD1E40414';
wwv_flow_imp.g_varchar2_table(84) := '7F7131CB180319CFB291248D94EE6B6192939321435CBB51E2D921A952DC1031020FBCFC4F57B00183BD3E7A09CB51B33A5C6D8F414CE79311DBE94438E31291FDDEFBC87C62000ABEF80AD8BA0DB4CC6112E210D3B13D62786CB2EEACB3F016D56EFF81';
wwv_flow_imp.g_varchar2_table(85) := '833195368A3640C939ECD54DA9B7C618C8F8972AEEC4287C077A7C7A8341DEA75493BC4DCD3B86E75E52D13B76ECC00E52A90D96F2406DE88C2F33731B1C3C53CBA1E1BF75D010EC98F4310AD6AD67088412B994BAE5C90E1B802CCBB28F370410FF40C5';
wwv_flow_imp.g_varchar2_table(86) := '38199ECAD3A248FC2AF53F2F990A38923C629000A7B2BA5619C31DE5E06191B1B7985116732C7899E795CA4A4A80B34D2B383BB487B36E3DC672329137ED3BE48C1D8FC25973607665015C60385C3035289DBA9E879C1EDD31D5E9C0309ECDBDFACAAB50';
wwv_flow_imp.g_varchar2_table(87) := 'CCC553E2FF7083327C1C0E0714FBBA894141FD718182ACCFD0CD57405091740559FD76943695C218F2DE4AE3C581BA16AF0A0A0B509494883CB7DBFE57D5B68F7A0A5B9E1D8DDC458BECFF69CC81DA08F479D800A401495C8B39BA16C916923411030506';
wwv_flow_imp.g_varchar2_table(88) := '790FDA897B334E0C918721DDAE908098AD72AAA376A260508D364E946E28842C6188368ED10B57F4C41C4D1A03D12E78FEFC0BEE3973E19EF713BCB40F40B75AB8817EA26380238F80872AEB978E1DF1D2DCF918F1FC8BF8EEDBEFB08DBBD9DF97BA280B';
wwv_flow_imp.g_varchar2_table(89) := '1963203B47218C1B19E73AEDB4D3ECF7C46524CBC3D2B9A154988B5EAADA553FDA549AA7319A8872CB4686BCB058F7771AE4DFD1FE49A7B350C8B967BFF30EB63EFF02F2FEF8A36C0DEEA774580124A0480D491D694C9224D2D7F2C204AC59B36641710C';
wwv_flow_imp.g_varchar2_table(90) := '81C3AFEE041ED90772F137D2209488D7EE94412E66833C4E24D527C3283FD42C8821580C629AEA49707061BCABFFB6FF5EDDFBE71FF04ADA14797DE58CC5B2AC1C1F0FB43B1EDB7BF5C42731B118CC58CC049EB0AF5DCB7A1E5F59BB42197F8C31D05CE5';
wwv_flow_imp.g_varchar2_table(91) := '590A3CB26D8C3130664F923D273BCF18639FC8CB38D7118E9C86327669B72D1B322E2E16BFAD5D8FB77816F791E5C1461AE71623E8452B5752026794B5D952CB871540C618FB8C4927D91A91248D5483A4908E2A6444EAD8436EBB8024B776DCB871F0DF';
wwv_flow_imp.g_varchar2_table(92) := '4BE5096832A4053EB5410CA01E63332D48BA1678940F7A5FDEF44C58FADF1B1034FA17BB2CCBD88F7C86A47E799F9080DC0EED30A74D6BF467F4F7B9D75FE7F1412AF47A05D1C542BB5B2CAE1B7822C9A220A08E641441962A13E84B925A53A4D96FFF69';
wwv_flow_imp.g_varchar2_table(93) := 'C348DAAA6E53C6B28CE11855284032C640218E5AB56A63C5F2E558C308FA47E4C53B9685B57CE67F5DC4372B8B6A3EC0864B2916560009306DDBB6455B927F776DDFBE1DD37926A649EBD50C315087A47A5B512F8FE9D0502FA349DDA98C44BDE2480293';
wwv_flow_imp.g_varchar2_table(94) := 'E614058323C8984CDA27CB2C2F7C6461999744F1BDD45B84A5CAE7FD5232318DA84885174B1C1656252762C5D16D309EB6C288AFBEC4ACF9F36CC3D5DFB6DA2F2FC996112864286BBC3AF09CCB10C09C3973EC7787FCA9CEF264DBC9B8968A17B8D6D09D';
wwv_flow_imp.g_varchar2_table(95) := '9714D241B16241025EA0E3D0518E422009F10990CA17DFB673DE5F9017E3E985FE56E8C6A6F51BB0855E5AAE5438F91268DBFB2A1756001963EC08ABDE016A4457558C11A8F4C6A2028962BAE21F62BC44BFD4551CDDE7949414FB2055E55556369018AD';
wwv_flow_imp.g_varchar2_table(96) := '09790888C504C818C6824678DC184E522A1A5EC47B3F315FF723ECFB228C245347F378E299CD9B309676CE6A46920B0A0AEDC0A4DA0D96343E85275EE5497CBF7EFDD0BB776F4812F953FFB5FE7C69C28409D0799F3C32D93E52CF0AB86AB348FD892702';
wwv_flow_imp.g_varchar2_table(97) := '462063AA55AB16E4E1C90CD07191F82B69B38B6A6C01F9F4757A3A3E7BF36D4C1A3C04DF31CEB5A31C9E5EC971841540EA58A0E8D2A58BFD27D1BA569EEC1D0143C71CEBD6ADB31751CFC44C919820AF4BBB52AACB2268544F24A7743D77D70AEEAEA5A4';
wwv_flow_imp.g_varchar2_table(98) := '65A4A5BC5FEAF5500A91C834BF545ACE672B68D3AC64BA94471473366FC6CF342E773200E965BEDA0B1569CC52B57AEB70F1E2C550A0302D2DCD960ACA13A5F15E2FCD8D1F3FDE7EC9AD6BD7AED01B0992808A01E93D20CD5B81541D16B768D1C27E794E';
wwv_flow_imp.g_varchar2_table(99) := 'C0923D29DE941CAF40A6B333850914BD1688763F278AF4EAEFD794F86FCD9D83E769500F1B39029378582CA37D77B9325E841D401A9F5C5AB9AF8A2ECBA6916411C3650B2922AD5758F5429840B56EDD3A3B52AD6762ACEA53FBA036A5D96934902F7445';
wwv_flow_imp.g_varchar2_table(100) := 'E102A65D454E17BA3AA3D0957936F1FE3CE69F4B83FADCB8785CD0BE032EBAF8E23D48EF5E5F7AE9A5D022E9FDEB5092FE0448A0D81FE9AC4F9E9854B982A57AEBA06EDDBAD0A6121F264F9E0C4923CD5DAFC7E87D70A97AA973F1C24FDA70028FDE3250';
wwv_flow_imp.g_varchar2_table(101) := '245B9E9FFEDAB7478F1EF69F89EB6FECAEECD9139D7B5C870EDDAF41C7ABBAA1F5891D919D9B0381D4DF4E59D34A019000A3F0BDC4B95E4BD5B554957FF062961828D2B5C0E57F9644E0FCC7E1404F82A43701722FC1712FD3FB18C3B98FD736399CB857';
wwv_flow_imp.g_varchar2_table(102) := '64E73B711FAFFBB66886017D7A63D8F0E118366C984D7A194BD74AF52F885416E965310157AA5BDE9A3657B366CD20892215237BE94B1E062F58B0003A5095372A3527C9618CCFD313F864370A4402973685FE545BEF6F8B060C188081360DC4A0010379';
wwv_flow_imp.g_varchar2_table(103) := '3D104F3CD91F575ED9CD8ECFF9F95BD6B45200A4410A44CD9B37B74FDC65288B818AC0CAFB30C6E77918E34B25B26B32C0D7A671435C141B8BBB28552E63ACA3050DE823E95989EAF3BA3E1CF0A50647F2DE4F0D58BE59FBF668D3B9335AB66A496A05D9';
wwv_flow_imp.g_varchar2_table(104) := '1552091A83AE056285182A83D4B70C5FB9DFE2C1ADB7DE6ABF2FAE98916C1AF14A1258E788526D92CCF258C517814E60E9D3A78FFDE750526B924632BE6557C9D62C8D1A376A8CFA47D487FAD59A94872A0D401AAC9312432EBD5E5BD0FBC523478E845E';
wwv_flow_imp.g_varchar2_table(105) := '8715E324A6E599C88B91D8BE83E751CFDE713B7AD3BB3891E0A94E7039081EAA76DB222A2DB51FD6AC89181E1DB818DAA781A5AEAB2C1963D0B061434812892732B6F596A6D49CF2050CA53A3394FA937491143D8B472E723CC23DB14A0590266B8CB145';
wwv_flow_imp.g_varchar2_table(106) := 'B574B67692BC16198F7AA1ECDD77DFC5A44993F011E9B1BBEF41CB0D1B91989343390338E845C146875AD90F391D886AD204B16DDA0004AC45C9842AFE31C6D8C6B22493FEE2435EDAEB8C4FE9F8436A56A95EB21B3B76AC6DDFD4A5CD24695419D37254';
wwv_flow_imp.g_varchar2_table(107) := '46A7FBEAD31803630C1CB46FB493B4CB640768C7C54645A170F55F28F87E3AF4E7CA804EBF0C02F95831D18866AC27BA3E151ADB0EAC56202D87A78CF851A74E1D48126B83C9F1B8E4924BEC7FCC420E883106C698F00C661FBD541900ED3D36638CCD18';
wwv_flow_imp.g_varchar2_table(108) := '631CF6FBC879A9A9F06C4EA7E4C13E4FDBB1AF8F010C4FF163DB1E5729FFFC1B42F831C6C0181F0954C69810B65EFEA6AA2C803425CB584C2CB833B7DA2F7A5979F9201741D307817C40F0B98E3802313CA630713C2C0DA852A450593850A5016488148B';
wwv_flow_imp.g_varchar2_table(109) := '01C1C2356B50F8DB2A80014241CAE8E700B3B4C0422E27A28E6E8D982647C14137FF0055228FCBC1817203881E546639FA2B5B150378797653B8E217FB85771A4065AB1F1F8784B3CE84FE110349AEB2558E940E8403E50650208D075B86320445DBB721';
wwv_flow_imp.g_varchar2_table(110) := '8F217FEFB66DA04082F2F46F13EE8F6CD5E77440EF0125743A118E6857B04339A8EB07230CCA0D2046892B5E02C1206FF972E4A72E8257EFF4F22094317E1C88F4EA06A2A29170FEF970D18331A6DCD33CA881E39F5C306B59A5394B0D06380CE24E3D05';
wwv_flow_imp.g_varchar2_table(111) := 'D57AF544F2F5A21E4CF74F4937F444D20DD7A3DAA597C04120F919154943CF817203C8E5726D0DFD70F66A9127E9091D3AE2B0471E456D9E5FD51E3694E981E9B0A12CF3F86388E5E9B5C3963E66AF8623B7253910CC5A961B4025075051D7160CA29292';
wwv_flow_imp.g_varchar2_table(112) := '1155E730445315451F5607815014CB46F1D8C2E18C2ADFD022B502E6403000AA701BC82F378CDF7A0E705AC602A1E723443E8170A0DC6B596E001963CADD6920338A94091F078259CB7203A8787A338AD348F22FE58065596383197A500062E73383E93C';
wwv_flow_imp.g_varchar2_table(113) := '52B7F239E07038825AC3A000C4CE2312A8F23110EC08825AC3A000C491AF2145BEFF620ED0FE096A0D83025071E74121F85FCCFB7D0CFDDF9545132428FB47B30D0A406A80201AA83442FF3E0ED0041917ECA8430120492051B06389D40F2F07D670F307';
wwv_flow_imp.g_varchar2_table(114) := 'BD6E41034873E6408246B2DA8950F838C0350B89E6080980386D213928638C6D44BE61E4000114B4FDA3E18604401C8CC4614810AD4145A8623940E339646B15120069BA04D1580E2C24A8567B11AA300ECC703A9D0342D57AC800A401D1AA17B2A5CE74';
wwv_flow_imp.g_varchar2_table(115) := '1BA1C03910AE926BB846A787B2B39002885248AAEC86500E30D256E838C0F509F9DA8414409A2A071901911851C588EB723A29E4DA21E40012DF38D0B1A4C6BC8E78666442257FB5A12B043C9A578500480D1340F6C06958CB2E525684C2CF8119B4791A';
wwv_flow_imp.g_varchar2_table(116) := '732D422E79FC53A93000A9030E7C8D2CFE621045A49198121E5A239E133C213598F735F40A0590BF43818860921895115761BBC1DFDF219CFA81D3583C0F071FC202204D8400924A1BAB5DC1EB0890C49410507113E2ED0DE46DD88053DC2FC206207F87';
wwv_flow_imp.g_varchar2_table(117) := '4A09203F90A49F6DC944911B09428A390726990233C8AF81E4E3E9048D21898F95C2BF4A01909F47648076CE0CA6632972B58378696AF1A785C8E3F19C2CE2F5455EAFF7864385345F3F15CFDFE60781628385E9E9E4D70096A97473A05201E40752C994';
wwv_flow_imp.g_varchar2_table(118) := '4CC924AD12454545CD15F1FA0B97CB35F65021CDD74FC5F3B7F951924F55E5BACA01A8AA3026328EC038100150607C8A942A8503110095C2984876601C880028303E1D7CA54234A3088042C4C843B59908800ED5950FD1BC23000A11230FD56622003A54';
wwv_flow_imp.g_varchar2_table(119) := '573E44F38E0028448C3C549B8900E8505DF910CD3B02A01031F2D06966CF994600B4273F227765E4400440656458A4F89E1CF87F000000FFFF7E1CC83300000006494441540300DC1C70981E3755DB0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(85467970067309911)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D07605455D6FEEE9B490F24F48E28165051047B05BBFBAFBDEB5A5001D706024A5194A228828A5DD786BAF6B54B151451B0808A080A4AEF';
wwv_flow_imp.g_varchar2_table(2) := '102021A467E6BDFFFB6E3261888904489090379933F7BEDBDFB9A7DF3713C7755DCF757D705D1F07AE5BF370E0C07FF918A8C118F019A0066FBE7FEB80CF003E15D4680CF80C50A3B7DFBFF91ACC00FEE6FB18F04D209F066A38067C0D50C309A0A6DFBE';
wwv_flow_imp.g_varchar2_table(3) := 'CF00359D026AF8FDFB0C50C309A0A6DFBECF00359102FC7B2EC180CF0025A8F0333511033E03D4C45DF7EFB904033E0394A0C2CFD4440CF80C501377DDBFE7120CF80C50820A3F53133050FA1E7D06288D11FFBA4661C067801AB5DDFECD96C680CF00A5';
wwv_flow_imp.g_varchar2_table(4) := '31E25FD7280CF80C50A3B6DBBFD9D218F019A03446FCEB1A85811AC400356A5FFD9BAD20067C06A820A2FC667B26067C06D833F7D5BFAB0A62C067800A22CA6FB66762C067803D735FFDBBAA20067C06A820A2AA75337FF1E562C067807251E357D4040C';
wwv_flow_imp.g_varchar2_table(5) := 'F80C501376D9BFC77231E03340B9A8F12B6A02067C06A809BBECDF63B918F019A05CD4F8157B0206B6750F3E036C0B437EFD1E8D019F01F6E8EDF56F6E5B18F019605B18F2EBF7680CF80CB0476FAF7F73DBC280CF00DBC2905FBF4763600F66803D7ADF';
wwv_flow_imp.g_varchar2_table(6) := 'FC9BAB240CF80C504988F487A99E18F019A07AEE9BBFEA4AC280CF009584487F98EA89019F017664DF3C0FA84AA8E89AAA720D7BD2D87F814F9F01FE0239D1558617061EBC7008E1AC2C84D6AD43615ADA0E80FA6D0D4563159585D2D3E1E6177026F218';
wwv_flow_imp.g_varchar2_table(7) := 'E78C7E7B285E0589339C9B83D0FAF5767EF50FA5AD4309949B4F639BA835AFDB920FAD67DD068E57266C40E1064174FD06845816DAC89450580A421B37E22F219DF51128A36D64BC10D72328645A1EA83EC4B594F4E15A84C750460642DC2BB7A080C8F4';
wwv_flow_imp.g_varchar2_table(8) := 'A2515992F719A004157F9D11FA5C1260C1EAD5487BED552CEA7A3D96DF70C30E4057F6E96661C50DDDB0A2EB8D58DEBD3B5676BB112BBADF8895F7DF8F9C5F7F050CD98DF4EE116034BB007C7908E7E72363E2242CBFBD179677ED8EE5EC6B53E509CB6E';
wwv_flow_imp.g_varchar2_table(9) := 'E88EB2E1062CBBFE062C17D8B57765BB6E58A6FE37DE841537DD821537DF82E5A560D96DB742B094690496F56059CFDBB0BC670F2CEBD9134B6FBF7D6BE8D50B4B7B9786DBB18C65CBFBF4C68A3E7D4A6039F3CB7AF7669D806D7A1134A6E0B6DBB0F456';
wwv_flow_imp.g_varchar2_table(10) := 'CE75CB2D584A5846F8D3FA58B6EC56AEBB87D6C3F69AE3CEBE58D1BF1F563DF324B27F9D0383B25F4ED9C57E69690C7824429772396BEE3CA4BFFB3E4253BE42FED41D802FBF46FE97EC47C825E44DF912B953A6228790FBCD37801B462039A968FA629A';
wwv_flow_imp.g_varchar2_table(11) := 'F7B87D1E19C2E1FC4018E1BC1CE47CF229F2274F62DF2F90F3E514E47E39151A4790C77C59903F95730BBE52CA354C9D8A02B62DF8620AF2267F81DCCF26236FE2E7C8FFAC144C98847C4201EB04851326A370FC64148C9B8482B19F217FDC44C284AD61';
wwv_flow_imp.g_varchar2_table(12) := 'EC38E4FF09C6B36C3CF2C68C43CEA76309632CE48E1983BCB163913B8630763C7209791338E6788EC9B934A7A0B078FEADD6C7B27CB611E48DFB0CB9E32771ACF1C8FEE413C218788B9702C118841DA708A7A53ECB2E2DD5C8BF043C9758C8A369B26801';
wwv_flow_imp.g_varchar2_table(13) := 'DCB9BF0054AB86A6CACE413E40696EF2F260F272114CAE8DC40E1D10D3B409491ED0E690EF38B1DE1EB48470C84568F972E47FF71D909185407E2E82B97970F2F261EC7A949607053005913AE66D7BCE9D4FE0FC866695C9CD86C9D91A9CEC6C58A039E1';
wwv_flow_imp.g_varchar2_table(14) := '100CAF919D0581A7546559EC130D9B799D9905130D9BB3000B9B613613A2EB94679DC9643FF67508262B07018E2FD0FC01CEEB945A9BD6EBE4E4406B72387F8063381CCBA1F963E26211D3B62D625AB4B4F814164B83705CBACCBF2E13031EB27F9F87AC';
wwv_flow_imp.g_varchar2_table(15) := 'EFBF8793B9C91227D9822DBDED003615451703853A04301C292680E001FB2276FF3670926BB1C053313B44DEC6CAFF1089228BE64F78CD9AE2360E34866133872D1C9BC2AEAF749E1D58EB6D01AEA3A8AF41E40FB6C0E0AF5283527FEC63009646010B58';
wwv_flow_imp.g_varchar2_table(16) := '8CAD0080EE82554C996726BADEE1750498B5F720CDE7D90BF664A517DD219267398AC1706487600201241CDE11C9471C8E98DAB5E0D16F42192FA78C32BFA80C0C84699A64CFFA09B962008A62211A1E3F2B0CB0A63C69AE2485A545FB01939488A4E38F';
wwv_flow_imp.g_varchar2_table(17) := '437CCBE6DC3ED8976A9431FC503FC70B53EA672073E2444012DF0E20B2570B36DAC6DB9008348EE19A41309A806974B7A23294AC31720DDB1665BED4C6617D3444CF6538C7B6019CD310946E01CDEBB1BFC7F105BA36CC0B22F948AA3236D525BC7A7590';
wwv_flow_imp.g_varchar2_table(18) := '70DCB148D87F7F04C81CE5117A79E5F05F5B63C065A4223C772EB074398C09B0929BC5CF8ABFCD9F9A96947083822D5B22E1C8A31053AF1E89803B1CDDBAF8324C53278FE657F8D7DF805028AA45C94851656565D54E00447FA2D4ABA86E4BA1AE4BA078';
wwv_flow_imp.g_varchar2_table(19) := '2D5B6ACBCB457A94575FBA5CED4B97C1AE5335D180E297CA9415E12B8D80474E8CEB781835C0E108D4AD4B8688B48CB4D892FA0CB00517E5E65C863EF37EF8098504539007ED8A240D2AE1658C8117178FF8A38E44709F7D80D8F8324795035EB8311DE9';
wwv_flow_imp.g_varchar2_table(20) := 'E3C7C164A4D39AA930259639DE9E54E892BEB51F1E495D58F16842269D7812E229FD8D13E0AD466A982DF5F619A014424A5F0AA1613AA959D3A72367CE2F70695B0AE152F1A5DBEEC8B5671C041A3642D2092721B641435019943D4C6121422B9723EFCB';
wwv_flow_imp.g_varchar2_table(21) := '2F1176A3A57FD9CD6B5429192072BF8AD6C51CDC0EF1ED3B20985A070EED2641549348539BFA0C60D150FE87C7F04FDEB2E528FC633E25EF269A2786002A01831D7F89AD041C212688B876ED088720909808E31697B32AF2E61EA2207D13B2677C0FB364';
wwv_flow_imp.g_varchar2_table(22) := '191D3A7FDB22B8512A13C802B52912129072D6194860F4C789895135F582F055F67EA9C636F23FA231E092C08BD46621C3949B274E40C18F3FC3A10F5A84469A2DD1CDB72B6FECD86050D370D74C4A12124E3A1EB18D1BC2505DFF99FCD5D243EE8AE548';
wwv_flow_imp.g_varchar2_table(23) := 'FFF41378A130026530C9762D610F6C6C744FFC08308A1677F8E108D2F63716D34635E5C21EC400E5DEE30E54082D22450377431AF27F9A81D0AA9540B9F649C5A6907A76C945AE3180E7C00DC622D07A3F241C7D14828C0279C605F70CA55F0E0FBE024B';
wwv_flow_imp.g_varchar2_table(24) := 'FE80378B4E389BA0AC46A8B92F0F0E42DC1B435FAACE85E723E1C0B670E2E22A8410ED74851AD6A4469EF11026E8999CBCEF66C29DB7004E7E210CED7503B3C3A8E0902802321631EF24C623A9D349886BB937101BC33A4310E309B64C9343B367FD84CF';
wwv_flow_imp.g_varchar2_table(25) := '7988C4C323167B8ECB4FFF1DC1806742083841A0ED018839FE78467E18498B546E23E5366CA3450DAC3636A440A9B2391D199326228FC7E99EA90C5489C00D6D520F861BE6356B86F8E38E474CAD14AB113C9A45AE31C4B8800999CD0B8751B86409F2BE';
wwv_flow_imp.g_varchar2_table(26) := 'FA1AC615E1B32FB5876A7D28C28076C6D4A985FA37764732233F4E90CC5054B5CD4FF5DD66A39AD7C08353184278C14260DE7C389BE8FC5612120C899A616A7809F1883FFA4824B539004E1CA53F09DF5095C3BE44E41E3C127CC1C6F5C8FB750EDC6572';
wwv_flow_imp.g_varchar2_table(27) := '7E5569F45183C1030C71437C31476102B8F171C029D4A494FEC1945A60152AFAF219A02C4C11B385B939583F71120A162D258659504974E7721C37E020D8A03E124F3A114EBDBA40D4835A06E0FE1AB8DC45B220B266FF8CF431636078F0A53AF0C5FDE7';
wwv_flow_imp.g_varchar2_table(28) := '67CD7C0B2F2E0C71E4120184B820021D3AA2C1BF6F425CD3E64030A05AD655ECED54AC59CD6AE52AF4B96A0542DF7D0B373D1DC66C1F52CBC71619C90BC3506299B6FB23E1B00E08C4527A95EAE01A407E88C743B7F0626AA1B9BF523718E84FD659A9E6';
wwv_flow_imp.g_varchar2_table(29) := '400D2A0830266C08617830019A3A87B643E3FE7D51FBE0F60890190C11E46D073E7C062803591E439F05DFD3F95DBCB8E8094BA346DB8356B5FF33680441A05E1DD43EF564C4366D8268E91FE9610C73146E79BFCE43F6D469C0A62CCB002CADF16F9762';
wwv_flow_imp.g_varchar2_table(30) := 'C0230380317EE7A823D0E4CE3E483AF61804E279826E1CD60A45C2B2D26D83B3ED2635A88510EB8611DA908ECD9F4F41286DBD3D49A43C96BCD921445020C1EE8A881A7C0563003ABF89C71E0F273101C6442A5857FCF6385B385480BC9F7F41DEB73338';
wwv_flow_imp.g_varchar2_table(31) := 'BD87482BE3A1248F1D78693D7F0794BF54DE10EFD76A3CDEDC96744B0FE1C302F7C7E329B8979C88B8534E45833EB7A33653272111601814C48C46C376BC7C06B0C812DA2C8AE1161422FFF779289C3D1B5E4E1E442C20620DB6FF55D497F4CBAE453300';
wwv_flow_imp.g_varchar2_table(32) := 'A64E2AE28E391AB17BB542C0901938364ABD24E1C2EBD3109E3F0F58B50A146C6C1119A1E2A981C7D1B7805622F3E1EF00CD5D36F0D6A2DEE481E22B8F29F784E66898A0E7B1DC982082071D885AD75E833AB7DD8CD4534F6730210986262A8C81610FD8';
wwv_flow_imp.g_varchar2_table(33) := 'CFA21C2AF0F219C022298230CF7E87347BEA1460DD6A98B00B8F88F558ADEDB04DB7E383DDB6B496F46241B079334AAD93114C4E4611F259B8A515348F17E2C9EFEC39C8F9F10778F979904F628940844088CEABAE5C6014C9FD1B4151AC08D87570ED65';
wwv_flow_imp.g_varchar2_table(34) := 'ADD5A3D6F5E8E4BB8430C1E6D9361C240BD35F42C3068863C4ACD6959721A5470FD4BFF516D4660001F49FB83D51D8DBFE6CD11E6C7FBF3DB347C845C1F2A5C8993A1DE1CC2CCA1297F7492924B1B4359DB2BC026F52B3EDC654521D49498839E000C4B5';
wwv_flow_imp.g_varchar2_table(35) := '690B30562D755F2415B71ECB25B314E85B4E0D1B22E1D4CE883FB93355FEF681FAC49FA23E9D107732438484845D08F19C2B326FDC299D50B416AD27029D60CB4F661D0F03E319C24C38EE38C49F702CE28F3F0E099D3B21E11F6722E9A20B90D2A50BEA';
wwv_flow_imp.g_varchar2_table(36) := 'DDD1070DEF1A80BA975F8684567B23405352F8D3D66C8DBDEDBB72B6AFF99EDB9A348AC2BC5CE4CE9C0177F1129842C5198AEE376232145D6DE7270716130882747A638F3F01C17AF5618C4A60257EF4882A350C8BA61C75241AF7E98D86F7DD8F864387';
wwv_flow_imp.g_varchar2_table(37) := 'A2C1D0214C2B066ADBE0BE2168703FDBDF3794E97D6870DFDF070DB986865C4F43DE83D666D348D97D83798F5C2BEB1B0C1D8C466AA33ADE73A3C143505F65BDFBA0F659FF87D8962DE9EC2A6A46CD20A409B73B7928E83380104990AAD6CF8BE44EFD1A';
wwv_flow_imp.g_varchar2_table(38) := '1E0FBE28F7596A10F9E3C50EBCB943A01945327719B588D96F7FA49E7802C3758C587064100CFEFC0A060288674C3BE9B08E483EFC4824116A1194AF0844DA26752CEA6BFB1C71241277212473AE0868FD02AD23B2B65A5C5B3221E9F0A39078D4D148E6';
wwv_flow_imp.g_varchar2_table(39) := '8978F2092720F1F8136D3EE988239078E041886BD61C3ADCD2E9AE477CC102189C005F6404C36427DE3E03087994C65E7E01F27F63D8F1C759B4BB0B78D062886A5324A2E504F04A4DB7076C37F6939A76F54DAF83DA22A6711348C273E4BF18CAB375B4';
wwv_flow_imp.g_varchar2_table(40) := '8420D3491A8819AE85E545853B94D738BB0A2AB65EDE266F89F28119BD0DB1A594505CEEB044A502E5B7B4056BC0971A32D9C1B7B383FDF6A86E2E1DC5828D1B91FBF5577018FA049DB2CAB84111BEC6D11625F3E0ABDE692733F4C9909D0A7DA8200684';
wwv_flow_imp.g_varchar2_table(41) := '3D0F2E91192E2C84575040DE525905BB6FA399CF00421011EB2EA3F33BFD1B78B9B945D255E53B09D2003280DCA44404DAB441EC8107C3D0F9DDC9616B5477276C00C622DCDC3CE42C9887AC45BF332AE6551A13546306D8193A9004F18A54A831086566';
wwv_flow_imp.g_varchar2_table(42) := '62F3CC9908CBF96508D2DB99A1A3FA526801D42EA6F55E081EDE114EADD4A8DAADB39535E7917CD53A0000100049444154D6A356D595565B1A767E2E090C8D5234B20757A15086450BD7AEC6A6B19F20FDB53751F0EB7C3881008C2163A8F14E420D6580';
wwv_flow_imp.g_varchar2_table(43) := '08D688649A3B05EBD6226F1AA53F198125446EA47EE752D9EF72DEEA1E7E38EAD2C133416E5CA921B5D9B688DCE219EA0BA6B086AE6AB680C7B26828ABCDB6CBEC4C251F1EE8449601250DCAC988504BC39F9B7A2CAA0880FE56513BDE3D85BD0743A1E1';
wwv_flow_imp.g_varchar2_table(44) := '5213E7AD5E838C2F2763D5B0E1583B641890BE918EF1815C312AED55E318404E202C0AB9F992224474E8F7F9C8FFF967A03004700BF851296FCE00AF7E7D60BFB60836698A00B1ED951AD9B621718360B82E470D0CAF4A01AB20D09205A50970EB6BB28A';
wwv_flow_imp.g_varchar2_table(45) := '18A914B094B3147FAACEDEAB2624E8DA02ED0D9B1695D9D6BCF6A200D12FEB9473BD2C638FA8F15956EA1EB65E63513DB8069742281C2A4038270BF93C80CC9D3B17E9EFBC833503EEC2C601F720F7DD77019E8BC41E720862F76D0DDA3F9CAD72DEDC92';
wwv_flow_imp.g_varchar2_table(46) := 'CA19A8BA8CA24D2006ED723D5254FEBA75C8FAEA2B60ED5A18AADC2D04699BECD487C64FE20966F27147DB831BC3F94CA9110D1714CE2B4468C52AE42F5D8ABCE5CB50407F44077265413EEB04056C5B362C41FE12C2E2C5C88F86458B51B070110A1694';
wwv_flow_imp.g_varchar2_table(47) := '860528584858B0008582850B8BAE5996BFF00F142CF81DF97F14419EF28402D66D058B1670AE6258B488F945C85BBC88EB588CFCA54B50B24EAEBDE49E98CF67DBECDFE622F3FBE948FFDF7B5833FC51ACB9B31FD2FADC89F4118FD8DF0A0DCD9943C99F';
wwv_flow_imp.g_varchar2_table(48) := '8E84A318163DE658383171A530B87397358E0140222C02B2413884903662C64CE897D63C804C40C00EBE8C4688F4A5EC4C4EB2B67FCC416DE012D3AE4477A4BA380D730DB9F37EC5FA918F602D377E4D9F3BB0E68EBE24827E58D7A75F71DA977545B0C6';
wwv_flow_imp.g_varchar2_table(49) := 'B6B9136BEF2882C8F59694EDD87F2D614D9FBE28015EAF559F3BD94FC0FC3AA6EBEEEC8B75CCAFB5E372EEDE776075EFBE843BB186A9FAAFED7D2704EB782D58CB3616D8679DC665AAFE6B39DF5A8EA9796C7971DD9AA8FA756C23586BCBEEE0DC7DB1E1';
wwv_flow_imp.g_varchar2_table(50) := 'AE7B90FED048E48C1E8DDC8FC720870229F4C71F309B33B9492E4C934648EAD419896DDB707F5C54E6CBA9CCC1AACB5822531163E1C674E4CCFAD93ABF9EEB11B992FF864827ECC0CD78913ECCC8FE0FECBF2F82DAB45AB5A0F9383028F08B5B710E9A0F';
wwv_flow_imp.g_varchar2_table(51) := 'FACDA1CD53BE40E6C71F43BF689CF3F1A7C8F9E853647FF409D34F6C9ACDEB9C088840D4A65C18831CB5F9642C72C644C1A763913D761C72A240D7D963C6217BCCF8E2F2F16C539C579960EC04E48C9B4898805CE505632620672CDBB1DEF6659AF329C7';
wwv_flow_imp.g_varchar2_table(52) := 'E6584A7399CFE5FC829C8FC716ADA778BDBA17418EAED92E6FC264144CFD06A15FE602AB57C3E4E482DE2F1CC78188D3F023FE84E39078E49108C62714E3AEF2120E5F7983559B9128A949A354CFCB90FDF53478E9D15F7924615A2DB1FD77C36149E064';
wwv_flow_imp.g_varchar2_table(53) := '22658231D037BE92DA1D82801BE0661A8EAA59A9190C406E834767AF60C532E47D3115EE86741679F684D39019E18284500486F90838CC3BAE81290687A36E0DE018C6CEE790DB4AA0B89D61BA15502B19C312529A21381110016E0501185E9780E135DB';
wwv_flow_imp.g_varchar2_table(54) := 'AA8FC0F643D1BC1C8D397E6AAD001C825109AF4D0918D83E81A00D0D3B4A399EA376045038E82907B74E3D249C7C3262F7DB57A5040795F9AADCD12A736555369607DDB4C9CFB33F7655400D8050B85266D32683346E345AE3C6883FFC08C4B56CC94D03';
wwv_flow_imp.g_varchar2_table(55) := '0C89D170478B52707F5D84F218DBFEE61B14CEFD15263F1F604B3663C211F8E625F3C05FA628E3A5BE2C56120D2CDAB56F4D1E3DA3AEA321BAAE246FE05A2E61019922F6A82311AF5F794B4C22CE885C085857496FD142250D555D862182C902F92B5720';
wwv_flow_imp.g_varchar2_table(56) := 'F78719F0D2D22A6DE114CA1CD9E5781E628F3E1C31FBEC43A919001CC3B2ADDF5ED845C1FA75C89E3C05E1F4F500B5012CA5A346BF3C4BFC24724A8240422252CE3C03097BEF6371E25532F16BD01AC700442D44A2D9BFFD869CAFBFA1E42DA844B47AF6';
wwv_flow_imp.g_varchar2_table(57) := 'F784C23CF94D3DB91392F6DB8F24ED50FA83A966E6161AA5A4F7FC42E4FEF233F267FD8480FEF1861193440095F2D24CD150298356E120A4798EEE115F061ECDAD409BFD61BF375D27D54A7F83225CA2125F4E642C3D0FB379F3666CDAB48921D71C1416';
wwv_flow_imp.g_varchar2_table(58) := '165228895400634C09802F630C3FABE99B6BF7D23380DFE6C15BBA0CB2C389F14AB9196377D02078F04108B63910013ABFDC4A8EED11F436762A8F2C57B8291D599F4D86B72ECDAE81CB020C6AF4ABE8F6F5E9C0494840F2B9E722A6D55E162D4584EAC1';
wwv_flow_imp.g_varchar2_table(59) := 'A2B812B154342E070C87C3983163063EFDF4534C9E3C19DF7FFF3D66CF9E8DF9F3E7632163C34B185B5EB16205D6AC5983758C9D676464400C93473B36C4E36A453D380C8CD10D28B77B8256974FE99FFDEDF77079F2AB559A087DEA6227C0E5404ED041';
wwv_flow_imp.g_varchar2_table(60) := 'F229A7C069D51232894A0F676078E05680D0F225289CF123BCDCBCD24D6AEE35F741BF7B1A260E0B5B3443FCB1C721A8A768E9105715524A1820100860DEBC7978E8A18770C51557E0ACB3CEC2A9A79E8AFFFBBFFFC3A5975E8AEBAFBF1E7DFAF4C19021';
wwv_flow_imp.g_varchar2_table(61) := '43F0F0C30FE395575EC1FBEFBF8F2FBEF802BFFCF20B16F15063D5AA559639366CD800314826094C4C92CBD3D67C3A79D22A62B408B354D54DFDD5B8213784CCD9B390F5E38F7069871B461E40D5FA577D2A5A67D8D06DDC0C29279C84E4463CF92D25AE';
wwv_flow_imp.g_varchar2_table(62) := 'B8BF34910C0AA969B3A64DB33F76651D70467D0C375900A61CA686BE6942D25F8A898B47DD73CE46027D284587AA1219250C608C41E7CE9DB1EFBEFB42449A959585F4F4742CA1E49F356B16A64E9D8A0F3FFCD012FED34F3F6D19A177EFDEB8EAAAAB70';
wwv_flow_imp.g_varchar2_table(63) := 'E69967E284134EC069A79D868B2EBA08DDBA75C38001033072E448FCE73FFFB18C3269D22448A32C5FBE1C62108D2FC69006117314141458B34BDA44F3CB24AB6C4611018656AD81F7FB7C04376E4090169EE1E92F6892540692DD982014B3765B34811B';
wwv_flow_imp.g_varchar2_table(64) := '0CA0F4CBB0C0D0D9D5FFB4CDFB7E263C1EFF0792E2E1D44A2224DB7F93A47FEC8640C9B6B0474D7A1BB88120DC460D9178D6E970EAD6A13CD0AE551D0EB6C274AB56AD70D04107213535D5CE280214218A2043347344A8225A11AF9863E3C68D10A43192';
wwv_flow_imp.g_varchar2_table(65) := 'B276ED5AFCFEFBEFF8EEBBEF307EFC78FCF7BFFFC5134F3C81E1C387A35FBF7EB8E9A69B2C739C7EFAE9E8D4A913FEF9CF7FE25FFFFA177AF4E88161C386414CF5FAEBAF63DCB8719846E9F8EBAFBF42636A2E3187E617682D5A975D60053E88524BDEAE';
wwv_flow_imp.g_varchar2_table(66) := '242B993C7BDA97C89D361DC82B04A392F058568161CA69226BDE700C56731C97922B85F795A4E77E5854E69BD23E50BB366A5F7A05EA3FF000EA8D7800751EBC1FB5870C42ED3EBD107FF185C001FBC34D88870B8ECF759BAAA5813297B96B0A2337C6D4';
wwv_flow_imp.g_varchar2_table(67) := 'B830C6202EB916922FBB0809FBB7817E344C42A32AD7E2440F9E40C7E3489EB8EDBFFFFE080683D155DBCC8B28459C22D60893C8A15EBF7E3D641AC97F58BA74A9F527646A7DFBEDB798306102DE79E71D3CF3CC3318316284D52A77F228FDE69B6FB6CC';
wwv_flow_imp.g_varchar2_table(68) := '71CE39E7E08C33CEB08C23AD72EFBDF75A9F44736D7341C50D5C6BDE187B3814CEDE8C82D973115AB8147019FB2771812F6F07B1EC72C33C52A711A9060CE20E6C83D8B6FBC161CC5AFE00C997A36F796B1A0637105BBF1E524EEB8C948B2E44CA0597A0';
wwv_flow_imp.g_varchar2_table(69) := 'DEC584CBAE40DDAEDDD0E8DE4168FAEC5348B9F94604E80072E1D01C5B46D973721E0CEF4DF763681A3A08C5C6206FEFBD51FBEC73104C4965C0C0556595821319DD1803630C0E3FFC701C7AE8A1484A4AB255B1B1B1A85FBF3EF6DA6B2FB468D1C26A87';
wwv_flow_imp.g_varchar2_table(70) := '989818DBD63628FE30C6C0E1EE1A6350FA258215A85CA9B48A18252727C7469DC424AB790C2E734B5A44D25F7EC50F3FFC609D71994F1F7CF001A421C4346A6F0C91574CC01AB73C30A46E87ED3C1268DEBCDF2008E76641D21FC54B355E79BDCB2F8F74';
wwv_flow_imp.g_varchar2_table(71) := '7198E11B26188BC4D34E454CFD86DC54AEAD78EF24141438F8FAEBAFF1F22BA371FF830F62E0BD8371CF03C371EFF011B8E7A1111834F2113CF2FC7FF0EE671331276D1DDC7DF747DD6E37A21699C03014A87F896499A978BDE5AFAA7AD5188B78DE19EF';
wwv_flow_imp.g_varchar2_table(72) := 'CB21C4346E80A6B7764742EBFDE1D0114664835075AF1206D014224E11FBC1071F8CA64D9BC2186E2489470E72A3468D2C73C8E697948E38C30F7243EFB8E30EDC70C30DB8ECB2CBF08F7FFC03C71E7B2C3A74E86019A96DDBB6D89B5CDDB061433468D0';
wwv_flow_imp.g_varchar2_table(73) := '0075EBD64572723234A6E62C0D5A43348880E427489B8849DE7DF75D6B6AA98D31C45AE9014A5DF30E20691C0A87903EE973FB6B6B4E5824EBC08381DD03FB51AAE3362E0DEB054CF80EC0AB9302FD4A594CED148EEB21E00490B66EBDF599E42BDD75D7';
wwv_flow_imp.g_varchar2_table(74) := '5D7878E4C378EED9FFE0C59746E3A51747E3E5175FC2CB2FBF84175E7A8126E0B3184EA6E8D7B71F9E7AEE392CA370A87BE12548BEE24AA05113189A4EBA674EB6C7BC49FAC415E0711F03F51B20F952DEEFA9A721989800ED8DA0AA6F762B06D06492EE';
wwv_flow_imp.g_varchar2_table(75) := '112D20E92F0214F12D5BB60C325D7EFEF967EBCC4A422BBF78F1621863D0AE5D3BC8641123F4EFDFDFDAF5326B46D211163CFAE8A388C0A851A3F0D8638F592779E8D0A1104329CA74C10517D8E8D349279D84430E39C432617C7CBC1DDF1803F9000ACB';
wwv_flow_imp.g_varchar2_table(76) := 'FEF1C71FF6ACC2982D24A8B59705D68E263AB13E0D66EE1C98B5EB207A8F80EDE36D7B1CDBAE9C0F87AA3BE6E8A311DB6A6F98D838782456E1E689271EE77D8EB2C103EBD7CCFD15CB972FC3DA35ABB16EED6AAC5DBB066B19565EB37A0D962D5B823973';
wwv_flow_imp.g_varchar2_table(77) := '7EC1E70C413FF7DC737879F4682CD9B4C99A4729D75F07976613BD66DE89C8A69C85ECC6C5C2B035E58478E84AA249A90727A51602277746AD2BFF8540BD06308EC31686E055F91D39A5679094D98F279892E092D832572481A5C67F63FCFCABAFBEC2D8';
wwv_flow_imp.g_varchar2_table(78) := 'B163EDA6CA7E177CC8E8D0C71F7F6CCF1064AE48DDCB7C8930877C8A134F3CD186542FB9E41274E9D2C53AC5B7DD769B75827BF6EC09494931821C6631D0DD77DF8D7BEEB90737DE78235AB66C8940805296DA283B3B1B9F7FFEB90DBB965E7B59D74223';
wwv_flow_imp.g_varchar2_table(79) := 'E060131DDFC23F16C0E1015FA49D89647622D51679C949483DF71C04E8DC6AA8AFBFFA1A4F3EF924469388E7CC990BF944C2A348D7180309969494143469D2C4DEDB81071E68A36812205DBB76C5BFAEBC12871C7A08926A252381DAB3EE3557A1F62D37';
wwv_flow_imp.g_varchar2_table(80) := 'C16180C21211F1A079AA1790D0852C91B545BCAE0975EA20C8E86132993CA135FD27EE3388A35D756F4E5913C94469DFBE3D64BE88F0A2DB8841A41564C38B31140D92441651BEFDF6DB78E18517F0F8E38FDBF384071E78003291A4091E79E4111B157A';
wwv_flow_imp.g_varchar2_table(81) := 'EAA9A76C68F4ADB7DEB2076E0B162CB0615711837C8FE38E3BCE3ABE175F7CB135ABC41CB7DC728B35A7E4A46B6E495331A3D612BDB6B2F222BA504E3632BFF81C39D45614CE6535DB81326E9E42A8713170DAEE8FE4638EA6F48FC5F4E9D3F1ECB3CFE2';
wwv_flow_imp.g_varchar2_table(82) := '830F3EB0CE7FE9351A6320AD26E1223353CC2D13B175EBD63604AD54FE961866D6AC599026711B3444FDEBBBA0F6B55DE0D094840CE61D58F1DFD9C5D23E3F840FCF0BD32C75615AB640D22517239561F3D4638EA190B39CB14B9759260318632CF11F71';
wwv_flow_imp.g_varchar2_table(83) := 'C41190A4DAD68A7453DA301D744542A5329B962C5902690C39AF0A738A11060F1E0C497781F23A787B82E15231E79724970000100049444154CEABAFBE8A37DF7CD39E1BC8D9FDE9A79FACD9A3B3059956328D525353ED3982984ECC678CA1C0D802A5D7';
wwv_flow_imp.g_varchar2_table(84) := 'EA9248F317FC0EF3DBAF40E6669A10A674931DBE1673213505B5CF3F0F86443A8F6160992F9F7DF6995DA3F052D6E0626269329D87AC65F858789A33678E75F87512FF0A0F1915198BE0E5CBA95FA29041895A3C9C0CB63F145E4CB0AC6177EB32976827';
wwv_flow_imp.g_varchar2_table(85) := 'D9D3FC74E1D1C60F74EC805A377441EABFBB23953E635C80F7C4BDDCD53751260368118D1B3746C78E1DB10F4FE38C312AB2A0484F0CA340A53583AD2CE34344A00D1763E85458A08D9779A4C72DFEF7BFFFD14E7ECC8640757826875AE690CCA0FBEEBB';
wwv_flow_imp.g_varchar2_table(86) := 'CF86483FF9E413C4C5C541A6546D9A19D23EEA2BD0583A2BD0F8F211B404634C095378747E733E9F82F0F21588A1F32BD7176403B513FCD9FCA798524505C04B4C44A0C361A875D63FB166C37A6BB78BF8C598E57597A050F44B26E5D2E2B0B01E35118E';
wwv_flow_imp.g_varchar2_table(87) := '647A1E76D86110DE056DDAB481C2D12B79C29E935F08439328F69083E004B66C9B562B286FBEAA28D77CD150F61CC52D98C827521BE12BD8B60D12692ED6E9D9030DBA7565BCFF0038B4F93DD027305BEE4BED77059439A38856889709242D2095ADC518';
wwv_flow_imp.g_varchar2_table(88) := '632C212A22A4CD3AE080032C83346BD60C52E9B56AD5B2F5110631C6A85B99A039440C225A116F84314418928852FDF2356432C91718387020E4672804AA3ED22C92B62FBDF45289C650999E6792341551E9EC613D896CE5679F2393CE2F95AED00C6B47';
wwv_flow_imp.g_varchar2_table(89) := 'D31913F1BB5C9DAE952F4A29D78BEB28AE544BD05BF7C24D62D6238027BDC1D6FB22958779B9B56AE3938F3FC23B34017528A87B5393F240F511100E8C31389A4EB41E35B9FFFEFB2110F30BA425AFA473284D1C43C91F57BFB175B25D9911044FC0330D';
wwv_flow_imp.g_varchar2_table(90) := 'CF02A52B4F9ABD627059E6520346C0A3EFF0D7E0426DBDE2FEE5A794E5766CA69CDF2580D7456B08C3E3B5C567807E1B0FF44C9346883FA41D4F77CF40AD1EB7A1D13D77A3EED96733D65F170113E09E08531ED1ED29B34BC1F9ABD914F71703C83E8FB4';
wwv_flow_imp.g_varchar2_table(91) := '13B72A542A0975366F42919B33CF3C139D3B77B6E14F6DA4FAC89E1703C9C66D4C6D5287CE8E7C0B3980622E69108D1519B774EA72136452C9CFD073452B57AE8424A6A4BDEA6462E9D45844228D21875AA093E5DB6FBFDD12D1537444FF37FA154C5BB8';
wwv_flow_imp.g_varchar2_table(92) := '103F1584B18E841D121D13E5227CC045804461B85BC60337002077B094172023E8926D99B09C652426C3F6BAF61A3442EC596722EEF8E331EB97D978FE3FCF43E68CD6A6FAED01630C62A8552540CA82446A1AD583670D4E6A5D38749E1D1255A0692304';
wwv_flow_imp.g_varchar2_table(93) := '9A3646A059130BC1668D5104BC6ECEF216C56973A54DE0B4686AC114A7916BA54565CD106CDE1481E2F69134C8F183256337E65C6CD38CC05079A029C76DD218866B71D82ED0A219023C338A6DD316311DDA23D8F94424D37FA93F64081A3FF800EA5C7A';
wwv_flow_imp.g_varchar2_table(94) := '29E25BB6E6AD24027F83C447A957B90CE071A31313136D7853A7C3225A9529A2A170A8A4B3224013274E841C5911B498426701FFFEF7BF6D5447B16F811CD92B19D910C3C8C9553B3187CC2B3982F5EAD5834C9B24DAB9D236DA6C8D2706111863A99692';
wwv_flow_imp.g_varchar2_table(95) := '8544C975691D2234690E3D7027336819C3B43A409359A407F4E490CBEF18F2E413B88FCEEFB0823C8CA3AA4DA3C491236C48F4207044262E8139C7C0A5D44220069E4EC2E36381A4F822484EB02688939C0827B536E28E3E0275AFBC022BD233F02C4FB2';
wwv_flow_imp.g_varchar2_table(96) := '172E5C8C505484A9149EB779A97B2AB711EFD9C083FEB758EC6187A056EF5B91DAAF2FA11F52FBF7439D01FD907A577FD4BE7B005206DE8D3A92B0F70C44DD81F7A0EE3D4550EF5EA6F7DE8B7A83069509F5595E97F575D82E02A9F70E442AC71268DC94';
wwv_flow_imp.g_varchar2_table(97) := '8177218573A4723ECD5987736B1D295C4B0AF329770D402AFBD7BF7F081A3DF4201A31F4DDF4B151A8DFA3071218E68C6BDE0241D214C53E5CE3F18ECABDE35D56512E036805C618B46AD50AC7D043AFCB032C630C447892CA92C0323144748A7CC87993';
wwv_flow_imp.g_varchar2_table(98) := '23AB2745E5C07DF4D147F629D100094A1AE1EAABAFB60FC829FE2FE74E51213D272415AFF0A7CE01140654B8546700B27F35B71824A23D1405128344B44869E6D0DA04B2A765676FCECAC286CDD9D850988FE561176F90092692FA338231401C899B9BE1';
wwv_flow_imp.g_varchar2_table(99) := '255112D5AE0553BF2E829464319460C17DF741E0A0B6883DFA28C49F7A2AE2FFF94F24325A9178E56548B8F822D4FAD795A873F595C8484AC627BCCFCF1961CACFCDDFE10D15F16BDD4A85F7D26049851AD1504BC4B73900752FBF0AF5AEBA0A75697ED5';
wwv_flow_imp.g_varchar2_table(100) := 'A56049BDE20A08EA5C7E05EA5C76395205975E8EBA94B6752EB9744B7AF1C5A873D145A84B505A1AEAAA9E616A496981FAD7E5E1A6C6AC7B39C7D3F83C982B9AF75F760DF5AFBE06F5B9B75A4F3DAEA50E0FB36A9F7B9E25F864FA47092D9A2396F80DC6';
wwv_flow_imp.g_varchar2_table(101) := '10DFA40544342AA0A73CF8F9D7EFAAAEFD4B06D0E4B23DE598C9A431C6A8C882364C207B5CA68A4C13D9BF726E6587CB71958DAE13639928B26B65AF7FF9E597F6013A9955D22CE79E7BAE7DD4BA6FDFBE50C854CCF1FCF3CF43B6BF2244F75082C936BE';
wwv_flow_imp.g_varchar2_table(102) := 'F9E69B71393741CF06A99FFC8F68F34ADA233636D63A8DD256620E119405AE384489B38AC4FF3F371F5FECDD1285175E80C46ED7A3F6CD3721A5E7EDA8D37F00EA0C1A84FA0F3D84464F3E8E2694EA8D1EA1F4A24D5E876B48E97B276AF7EE855449BADB';
wwv_flow_imp.g_varchar2_table(103) := '7B02871F0569C2D7DF781399999B104298B3ECD85B6B140E854B31AF9C7C6937091A31B22246999B376353C626A4676420233B07EB376711B22D6C605EB091690643BE9BF3F391130E239FC4167202080782D4683116686BD970AD21AE040E5387018608';
wwv_flow_imp.g_varchar2_table(104) := '04E2121088DF1A1CDAF14E42020401A6414220819A50ED94A720092426417581B878D8313527E70635AE2936751C0F301413A2226E075CA31CFED6D73619208652676F1EC6E87167D9A7E5AD569B28D0066A33652A6570B3A425E6CE9D0B45475E7EF965';
wwv_flow_imp.g_varchar2_table(105) := 'FB74A8247EAF5EBDEC59819E1C9536911924692F87BA79F3E690FFA179E56C1F7AE8A13896A132F91B3A18D34371D220A3468D827C00458E542E06D123D932B134862247C608E55C35911FA629B1889AE0FD82024CE7615F220F9D1AF030AE3E4D3649B5';
wwv_flow_imp.g_varchar2_table(106) := '94F3CF47024FA1C3FB1F8095DCC8E934AB3E98360DAFF2E0EFC5F73FC08BFF7B1FFF1D3B0EE3BFFD0E13BFF8020ADB2EE0A97438448F826373961D7A0B67121C3227DF7BEF3DFBCC93B4A934A904C1A84747E1A1E10F41A7E677DF3510322B070CB80BFD';
wwv_flow_imp.g_varchar2_table(107) := 'FAF583A265FDC9BC77F15AE543860CC5889123F004CF62248084739D494CA0A9FAFD8CEFF13BD7BB7CC50AA4AD5F8F4D9999C8C9CB43014D3797EBF7B87A8F04CAA4F82D023524DAAD012A31FC24802FA3EB52C06296C0028A5F1A1F9112A35C5109FEC6';
wwv_flow_imp.g_varchar2_table(108) := 'D7361940442DE2145189281DDAD1155DAFFA4A4B882124C932C8107A32543EC3F2E5CB110A85D0A85123487AAB4ED11B1180CE0BA41144D803060CC0A04183AC532B0DA13A6DEA37DF7C631F87D0734B227C39BE620C690D3D7221F34A8C2393297ABD8C';
wwv_flow_imp.g_varchar2_table(109) := '84621EE77E6BE2044C9A391385946486D1AB5C32CA42861B3F26A1DCFFD008DCDEA70FFADF7517863014FBE0F0E17868E44812D6483CF0E0700CA4461842A74E6715F9F979D1C3EF505E7898397326C4D4BA0711BA0E1175AF2A9356D4F72AC470EFBEFB';
wwv_flow_imp.g_varchar2_table(110) := '2E842311F5871F7E6823635A87FC1EE1441AF6E38F3EB64C240690C929EDAB7317091D6952819847C2434C16F1E5A4B9B537FAC69FA272D244DABFC84D693F958FA4CA5777D82603E806655A28067FCA29A720225555BEBD20D3243535153AD0D20674EF';
wwv_flow_imp.g_varchar2_table(111) := 'DEDD865115F294EF2053471B3F7AF468FBBD003D52A14DF9F1C71FF1C30F3FD8EF1AE81458FE86CC2431843657076D4B962CB187766DDBB6B571F4D34F3F1DB7DE7A2B6426498B6D59AB412EA59EC67CEBCDB73069D264E8C04DE6593F9A61F793E05FE3';
wwv_flow_imp.g_varchar2_table(112) := '81DC144A78AD2BF24D37FBCCCE9A35F6591E993E0285642B83183486048042B77AD649F72241A190B0224B322DE5E8EB7C41E690048A185B0249CF6DE9D45C5A558C337870D141A3885D7E97BED5A7E7B46472AA8FB4ADA269C2A3FC34E151C242A6A6C6';
wwv_flow_imp.g_varchar2_table(113) := '902091E0912079EDB5D7EC37FE84076972051CC4145B7059FD73156200497DC5F915E2944F50FAB68DA13E2B5D58EA3A4007481B76D34D3741D2FD4C864EB5F122DE61C386597342717C1180365C1B2D644B3ACA441068E3F369DF6A231416D537CC6436';
wwv_flow_imp.g_varchar2_table(114) := '48D2494B4852EA1109492D4595C404FA7AA7C2B0C644D648B5CBAC1CE469DF4CA7647F087753D22B62A4B164AE89B0358FE6D41A4BDD0A54A6399496AEDBD16B8D557A4C638CF569148DD33DE8992111B4CC3D31EA43D44C92E20AFD5E4A87F7ACFFFB07';
wwv_flow_imp.g_varchar2_table(115) := 'CEE469F1D9E79C838BE8CC5E77FDF5B8BD776F0CB89B9A6CE87D187AFF7DB88F3ECD203249BFFEFDD1FDC61B71D63FFE018D9B44877E137D99858B16623AF1A24755F4488B3492B4B04CAD0718C67CEBEDB7EC89F5329EAF681FB43F5A7B79F76D8C8131';
wwv_flow_imp.g_varchar2_table(116) := 'C656AB5DF43D1A634AEAD440F54A7725548801B4206DC2013CF85244478F362B222389AEBA6D2D5C1A447D25E1BB74E96243AB52D923695648F24AD24BE289E0B78CA591B70D721415029D32650A5E7CF145482BE87C400CA4C89508A353A74E5024A964';
wwv_flow_imp.g_varchar2_table(117) := '34F20068EB6EDCB001DFD39ED7734C7AB4427E8B36A8A4DD2ECE48480857B578DA2D897D20B5999CFE9BA9C924D945EC92D4B730207029A32DA79F711A1410D0F343D2AC316E2190B60666E922C4AD5A81BA74885B26C6E18006F571E8DEAD7054BB8370';
wwv_flow_imp.g_varchar2_table(118) := 'F23147E3AC534FC145E79D8B6BAEBA0A1AAB1F7D89C183EEC590A18370F7A0BBD1EB8E3EB8BACBB538EE841390523B15AB798838F3E75918336E1C246CA475070F198CE1648837DF7C1DB367FFCCC046BA356923281363089FD25CD238326F152D948926';
wwv_flow_imp.g_varchar2_table(119) := '534DD7DAB78D1B37427B28BC1B6322DD77595A6106D0E6ECB5D75E508C5FAA52A94C1939AE52ADC694BD78F5D306E990EA124A25F9137AFC41CEDD87B461850449DA9DBD63215C7E85C694E47A97B6B224941C699902320364BE95CC4326F01815D2DC82';
wwv_flow_imp.g_varchar2_table(120) := '92F25D9431C6409A55B813F10A8F3267748E22334436BB885DC47933B5A6BE3EAA889982017BEFB30F9279FA1CE05945888773FA7DD1DC39B3B1FEE557B0EEFE6148A323BC8EB07AE810AC193A146B58B69A923F8DFECBC6C74621E3E9A790F3C6EB7026';
wwv_flow_imp.g_varchar2_table(121) := '7D867AF3E7E18050018E69D914671CD111179C7232AE38FF5C74BBE66AF424A3F5BBF34E0CA0937D47EF3B70FD75D7DBEF7D376BD114691BD6E38BA95F5ACD3DFAE597699E7E6B43E4DA0711B5885D0F05CA941ACA358881958A89E53F0DA25FA754F57A';
wwv_flow_imp.g_varchar2_table(122) := 'F6499A57424B8C805DF8AA30031863A08D529445B6BB6C4C31825299198AD6487A19B385118C315054E7BAEBAE83885F1A430E97CC0DD9F6BAE16DDDAB31C6128A31662B7589725E72B6A55134871C4585678F3BEE385C73CD35F6013F3164395DABACD8';
wwv_flow_imp.g_varchar2_table(123) := '98A2B5CB1791E6141EA511F58B1B7AC8AF67CF9E102EEFA40FD2E78E3BD0839129955F4CB3E6F8E38FC75E2D5A40FD0C03101EA3358AD8148AF00BF291F7EB5C6CA0145EFFCC53C81A3306854B9621CC7069E1B2E5C8FB691632A77C890C3AC59BDE780B';
wwv_flow_imp.g_varchar2_table(124) := '19A35F43C67F5EC0A6679F43C6934F61E3A38F60FD8887B08E927CEDB007B0E1C191D8FCF8932878E17938EFBC85FA53A7E0E0258B4C2274440000100049444154709A012EE029EF55471D899B2EBA00B777BD0EB7DDD80D375CDB05A79F7606F6DE7B1F';
wwv_flow_imp.g_varchar2_table(125) := 'C84290B41FC335C814957697032F41A7A0851C779998D2FC4AF58B222AD763E3F2FF048A7C2918A03DD47D56D986440D5C6106501F630C44408ADA88B065634BB2CB3EBCE5965B700A9D64F90A287EC9EC10C35C45552BE29F3469927D4E5E76BA6CECE2';
wwv_flow_imp.g_varchar2_table(126) := '665B25C6989239A47124F1F4132D2296CE9D3BA34D9B369611454CC67067B0F54B889314927F20E44AE5CAB4BAF0C20BED37D65AB56A552146DA7AD4EDBFD2FD4A20085772C445C85AC3B5D75E8B1B197695E0906D7DD7DD775BE2171E2F38FF7CB43BE8';
wwv_flow_imp.g_varchar2_table(127) := '60D4494E465861CADF7E43CEAA95D0037D7605247EDD9F9BC738FFEC5F90F1EE7B487FFA69647EF2095CC6FD6BFFF31F48BAF566E4708EB4F3CE43F68517A180875B2EC70D9C7F1E1CFA0681534F43DC899D10DBFE30049A35A32108E4FC361FE9EF7F88';
wwv_flow_imp.g_varchar2_table(128) := '0D4F3F8B0D231EC5FA0747208D5A630D235DAB06DF8BD594E0EBA93D363FF124DCD1AFA2CEC449E8989686AB8E3F0E77F4EE8D1BBA75B7DFF4932497092A6256A062E5CA9590902B4FAAAB5CF58A3CE94714140051044FFE874C62EDA3BDEF2AFCD82E06';
wwv_flow_imp.g_varchar2_table(129) := '88AC439B10016DB44C1C396662043DBAAC471C44A00A518AF8E5902A6A228294AD2D673632562435C658874FB6AF4C2B698CC898117529B340842273404EB4E6D53C9131A253993552AB0A1FEAB45AC4782925AA7E8D42CF321963A29BEF705EC304838E';
wwv_flow_imp.g_varchar2_table(130) := '5D7B3C0F869A34698AC30EEB805378827C1E89F0CA2BAFC0BFE96CDE4547FB7E3AFBC32869870EB90FFAE2CBD13C696E54B71E823C97C8A1F3B979FA74644C9E84EC9F7E44CEA23F90BB7C19429B3279C8E6D1BCF010A6939AF5E34FC8F8E463A43FF594';
wwv_flow_imp.g_varchar2_table(131) := '25D8421259CA3FCF41C3BB0723EB1F67637A61086FCEFD152F2D5C84377372F029CF33C6376B8A0907EC8F89071E8009071D88F16D0FC46707B5C3E476876232F39FF39C6772BD7AF89C27E45F84C298C253ED693C41FF266D3DBE67687806CF71664FFD';
wwv_flow_imp.g_varchar2_table(132) := '1AF3DE7A17BF8D7A120B863F82B59F7C8A9CD52BB13933033367CEB0824DD1243D8A22AD8BED7C8919147E95792CC75B215FD18A84D7760EB55DCD9DED6AFD178DC5083A2C932AD7630D323BA41124C1D7539AC9F499356B967578C43CD1431963A0E892';
wwv_flow_imp.g_varchar2_table(133) := 'E2F632A7F4E4A724A4FAD7628C5EA13BD995C618FB5D634592E48889418E39E618C8298F1E2F9217A34903481A29A4A828D4F994865AA75476A45DD9E91606D99203CD31322A235AB1717168D0B03E64CAC811ED4447FB9F679F83EBAEBB1E770F1C8811';
wwv_flow_imp.g_varchar2_table(134) := '3C4B78F2C927F0E4138FA1EF1DBD70C689C7A379721262E9F4E552B267CC98894D5F7D85ACC99391FED18758FFC67FB1E9EDB790F1F147C82501C7E9FBD3271C8764FD4ED3C64DD84CA6C8645D1A0FC4D60CBB1FE13F7E472C9DE0C60F3C0830923367ED';
wwv_flow_imp.g_varchar2_table(135) := '1ABCF0DC7F7057BFFE78E88107F0C2B3CF6024D37BFA0F40DFDE7DD08B6656CF1EB7E336DAF4370FE8877FDF3B10B78C18815EAFBE8601D3A663F0EA351842461C4C06B88FDAE47E1E183EE8BA18C143BE87DD423C0B17AF38061FF1547855A79350B747';
wwv_flow_imp.g_varchar2_table(136) := '0F040F3F12D3797E31EAB147F1EA6BAF42FB54D6DECA6A10485849102995FF638CF913EA25B824FDC54C72B87F23AECAB316FED479070A2A8D0174E3E262A97B31C0304A3B396D5ABC62EEFAA28B2483DA45AFD31863233422A0489448510145876EBBED';
wwv_flow_imp.g_varchar2_table(137) := '366BBBEBA04B8C71EDB5D7E2663A668F3DF698FD79153D3B24E74A9236DAF48A1E5FF36B6EAD41E38A21A5090E39E410FBD5C492B6DA0B4171812166B4494EC0412036885AA9B5D1AC45331C4013ECB00E87A1D34927E292CB2F6748F74E3C3CFC41BCF0';
wwv_flow_imp.g_varchar2_table(138) := 'D41378F1F14730E0961B7126EBF7A5E48D4FDB80FC5FE721FBDB6FB069C23864D0F14C1B350A6BEEED8F0D3D6FC3AAEE376145CF1E4827A384962C4512A3338D6812A55CFD2FC4376F89B0089F1196AC77DEC69AFEFDB076E02060E11F4838E638D47FF0';
wwv_flow_imp.g_varchar2_table(139) := '41D4B99563506A7F40C6E84BDF41F6B6A4A688C898A89B29BEA7E8C42371171616202F3707599999C8CCCE467AA8106924F4D5F42F961116D2E49A472369B60B7CCE43CBF7BC30BE68DD0A49DDBA21B9C391F87EE68F788E2698ECFE82FC82AD4C4B638C';
wwv_flow_imp.g_varchar2_table(140) := '3D336AD2A489FD1E877E704D01090921092C3D19ECD0A7895E53242F1AD1419CA27AA2039948BAA7487D65A64E650D668C2941806EF0A8A38E82222F526B7280D2D3D351D64D48C2CB2C11B18B7974D392F0DA4CA9D3A58C374B83E86C4011231D5AC979';
wwv_flow_imp.g_varchar2_table(141) := '1223C8D1926491532E534B5AA4F4FD882997F090EC43469C441C42FA993C83E8D2A58B3D848B2101393010049D00E2E2E3513BA5B63DA1D67AF66DB50F0EA3B970EE29A7A1F70DDD30E2EE817881F6F0EB8F3C8261B7DE824B18566C47C95E9BE640EEF8';
wwv_flow_imp.g_varchar2_table(142) := '3148FBCF735875DF10ACBCB30F5676BB1ECBAFB802CB2EBA022BAFBE1E1BEE1A881C466A429F7D0DF78F4570683A25773E194D873D8426231F41F2E9672040C609AD598B4DDF4E431A25EBEA1BBA226DD0206001DB1F7A2852EEB91B8D870D4676F366F8';
wwv_flow_imp.g_varchar2_table(143) := 'FE8719E83BF02E0CA0C6F98ADA4444A3FB150109B0AD97C706020378C54054D8C7C2F5AC0E542720763C4A84DA7552D0ADEB0DE8707807FCF1FB7CBCF0E28B18CF93F35041A13D1BD19CC6182B581A376E0C09994B18F9D3FEC83456944BC11231820496';
wwv_flow_imp.g_varchar2_table(144) := '34015750E65B63C9191E3D7AB43DD5D6415C990D77B2D0D9C9FEE57637C6404ECCEFBFFF0E1DD54B12976E1C0804ACE32CE21573C84710718BD00B0B0B618CB152242929096214454244C01A57268D4E2AA56956D14E55F8508C2415BBD53CDA584AB249';
wwv_flow_imp.g_varchar2_table(145) := '3435E6FCFC337269822450C59F7EECB1B892B1F0A6B56B21959BDB20260E2DEAA4A2236DE50B4E39153DAFBE060F503ABF74CF40BC7E673F0C3DE30C5C1013C4C1337F40F2ABAF209384B7F6DA6BB1EC92CBB0E49FE76335897C43AF7EC87DF40914BEF5';
wwv_flow_imp.g_varchar2_table(146) := '3F147EF639DC1F67C35DBC146EC64618DE8F4742425C2C629A3746DC05E7A1E1A85168307430628EEE8800EFB5906648C6479F60CD1D7722EDC69B90FB9F1781E5AB60F6DF0F29B7DE8C168F3F8A984E2763D5BA743C411FE0A67FDF84311F7D8AF40D1B';
wwv_flow_imp.g_varchar2_table(147) := 'E1F21E51192F12BC0763699F49F1889EF5714E3CFE449CD2F914249049DF78FD75E839AE3C1E4C16378231C67EDF59D25E42AC77EFDED62CD2BE2A322441A81F5ED68FA2E9D92769E448DFB2D20813689F1539AA0A7FC0296BE2CA2833C640927BDAB469';
wwv_flow_imp.g_varchar2_table(148) := '9064128147C635C64084AC288FCCA4B8B838FB5D601D606564645869124F49DCBC79731B7796B457A8F0EAABAF861C6B39D5621E21506135853CD54F52BD75EBD6766C6CF532584BA93AFEF91730A36F3FACEAD717DEE3A370D2DC39E8C5CDEC1B9F8807';
wwv_flow_imp.g_varchar2_table(149) := '9B35C78B471C8151AD5AE296F56B711AA5799B871F456DDAD4A15E3D9077EF3DC87DEC71E48E7E05051F7C8C82CFA620FCE32F8024F9FA8D7032372398955DF46BCF2476435B3A40B3C14A5227082F3E0E68BD1712BB5C8D46CF3E8D86830721E1C88E70';
wwv_flow_imp.g_varchar2_table(150) := '631CE4CCFD0D6B1F7F0C2BC950E90306207FEC7878ABD7C3AB5507B1E79E8DC6231F442A7D8BCD5CEB98B1631975E98A679E7E168B172D467E5E2E140122D2B6BAE3EDBAF0D83A02CCA288FC4B1287B67F6D0A8A4B194468CE90ECB8B1E3F0F9175F2083';
wwv_flow_imp.g_varchar2_table(151) := '5A9D16137B181BB9935F75047178EFBDF742D25D112139B52276D180846021712301264D850ABC443712700A69EB00CD184AB4483FAE99EFC8D50EA555C6005A8D18E0BBEFBE43599C1BE4218E6C7BA94531899E169513658C81D4E795575E09D97F921E';
wwv_flow_imp.g_varchar2_table(152) := '7A36A5478F1E90BD2F7B7ED0A04138E8A083ACC41152A5FEDF78E30D88312EBAE822AB8235BF058B210F42F86C9A0CF3DF7F1F39EFBE8FFCFF7D80BA53BFC109199938D50DA1FDBAB568FCED0CA47C391DC93FCD46C21F8B11C7505F801A031B32E01214';
wwv_flow_imp.g_varchar2_table(153) := '5F77B3B28A889C362F48E4A0B3688AA56FC871E0302FA2778D8B10EFD1656428A67D3BA4F6BB13CD693234BEE34EC47620E167E720E39DF7B0FA961E58D3AD2BB29F791A216A1797010397F677E0C8C35177F04034194C0D717007FCB66811060D1E0285';
wwv_flow_imp.g_varchar2_table(154) := '4E651A0A57BA277B8F55FC21626EDFBE3DA35B87593C2AA8A0935C49684DAD54FB29B3577BA5E7A7A4C9157D13E18B88D5466DB70565D5ABAFF658018D5C46B6845FB5732B817A2B61082DA56C48230129F253D646C906D4F70CF40098CE07F4AB6F1AA5';
wwv_flow_imp.g_varchar2_table(155) := '55AB563644A8135039ACB2C3757AACC71AE45BE8A13C39C452AF42B8310672AEC5449210679C7106D4DE21316A3C0794186C23A5BE9244BB9684574887CFCBDA8C406E161218E148A4188BA7647224C1598FBC4280D10FD23002348E290065BC90B80D53';
wwv_flow_imp.g_varchar2_table(156) := '03630CF8813FBF3C8E248E73E1D5AE8DE0699DD0F0E1616846895FF7FAEB104B8D963DF33BAC2561AFB8AE0B32E94BE48F9D08CC5F82703A992C940FAF5103D4BEEE5A34A2699472E10558C7115F6284455AF09D77DE81CC4369BE3FCF5D3525C618FBB4';
wwv_flow_imp.g_varchar2_table(157) := 'EE59679D65F13A75EA5428BC2CC1133DA3FC3D857625EC24A4C404CA47B7D999BCCE0B7478FAD34FB3006E88980214365E445BEDE0E0CE0EF6FBCB6EC6181BEED44148464606D729A2D8D2C518631D243D0AAD270D15EA925AD4C1990ED744E07294641A';
wwv_flow_imp.g_varchar2_table(158) := 'E946A3C118637FAB541BA290A6CC288DACC720A64C9902F5D1A3DB92482AD717DD25A10D2FB2F991C5FE61E3C02000C0A19A371648E7701D8F000BBA16B814372E5B7AECC196CC012A17D88BC887368392DB655C3F70EE39683472389ADFFFA0FDC58830';
wwv_flow_imp.g_varchar2_table(159) := 'C38B1BFFFB5FACA416DB78EF6064BFF90E0A66FC0097911F6773268C5788007D9098E34E40BD8177A301DB050E6E87E98CF9DFCF330345BD7442AA50B07011997257A4C6186BD72BD42B1F4C52584C183D77FDFAF5A1D0B2F653410C051B64EA44B7A98C';
wwv_flow_imp.g_varchar2_table(160) := 'BC18EFA7593FD9A164F685B2F3A376C5166FF7072960BBFB54A883549F1CD5B21A1B6320E9AE5098A23C8A10A99D1E651661EB20CD9808B9A9E6CF208DA03068679E0EAB56525152474EB79E6E8C38C3A44B4BB022E27CD743365126B479F0D8CDC0E33C';
wwv_flow_imp.g_varchar2_table(161) := '02E31912A280C56C63582D60034BF146C50416DB4FD529EF32341816346B84A4CB2E41A3110FA1014396B10C85E6FC3A07EB478CC4FA0103B1E9E9FF40FF67B770F65C607D3A1C3AE2D413703570E30648BEF62A34A4BFA12FE52CA3EFF0CCF3CF63D0BD';
wwv_flow_imp.g_varchar2_table(162) := 'F7E0BDFFFD8F91CF3F2001C18977F95B8244BE98403896E913D9AFC862846FED83184352BAB47688B4DBD95491A079F3E6233B2F0FE1AC4CE47CF70D32278C87FEDB66D80ECE1DD1C680A9055BF8971F55C600424226E3CBC66887B75E4380D19FD6AD5B';
wwv_flow_imp.g_varchar2_table(163) := '434F0BCA4C92AA8CA7D3BBDF7EFB59275748DFBA47D9576294F6EDDBDB7304B590849C376F1EF4609918C0983FCF9D438EC803492FAACAE24C0390F041D075A45A6904AC7D2FC492593C4A7B2FE0C2B46A81C4ABAF6234671089F81A384D1A20FBF3CF91';
wwv_flow_imp.g_varchar2_table(164) := 'FEF0286430B499F5DAABC8A366D2FF230B1484383AF8E2885C874BE7DFE97818EADEDE13A937DD8C50FB4331E1EB6918C943B4E79E7D165F7FFD3536A66F64FBBFEF2D3CCADF92832B7355DF4F883669A571552FBF4DDA41822FBABE32572E2120265BB2';
wwv_flow_imp.g_varchar2_table(165) := '78098775115EB9149B9E79066B9F7812058B17D11D73592EA12699553126A832061012B46063B8D95C56F45B4E95A4BF9029A2555B31806C7C49768FC4F0985462000010004944415411DDBEACBC31C6461EEAD5AB677F93087CC94E9429A4B1C564C694';
wwv_flow_imp.g_varchar2_table(166) := '9E9BA619C2282003888ED985525F9FDB068F1D5C43C6A1C3EC050D9C7DF7B15F8E4F65A8B4D659A7C32BF490C7D0E7464673368D7A1CB96FBF0B77D62F8C0E65D3D07248F85A8B36459B1486A95FCFFE13B87ABD7A21F9D2CBB18066D20B2FBD687F30F8';
wwv_flow_imp.g_varchar2_table(167) := 'ADB7DFB1077D15C103AAF8253CEAB45B3E954C1BF95BD153A6A6A6427E9A849D7C3009B3E8FACACEA7AD5B87C58B16C2046311888D473E030719CF3D8B8D8F3C8ACC499FDB47473C621BF6F7EF8B1881F28ABB57F64A9CB28B77BED41803634C99031953';
wwv_flow_imp.g_varchar2_table(168) := '542E82955AD5460702011BBD91F437A6A81E7FF1521F558B71649B2A2FBB33E27344EA551E0D2461B81560B0E83E74626C9F428632CDC16D9074F17948BCF44238ED0F8347A95E386912D68F7C18994F3D83FC0993E1AC4B0368E278F63EE46B14DF0FB5';
wwv_flow_imp.g_varchar2_table(169) := '46989121EF80FD90DAE51AD4B9ED56848E3E069F4EFD0A4F3EF138E1494C9FFE0DC3C6995B4D5F9517C29F24B882077AE050A083427DF1E6C4134F841E6951BDF645024BFB15BD1E45DE04328B542F61165D5FD9F94CFA4C7AEA1481182031D98680032B';
wwv_flow_imp.g_varchar2_table(170) := '5763F37F5FC7A6474661ED2BAF22FF8F3F0006353C8A1EE36905FC28DE025D45439531801026F558164244A8327F74B8A5432E638CB571855CD5452FF0AFF2C618C8D4CA61682CD24E21376915699FB29820960D63840C8247E09B257A1349564E280575';
wwv_flow_imp.g_varchar2_table(171) := '04D36246F112E211DBA60DE2794016736227E60F520364EA69CCA1C390F9DA5B00A512F273E058A3DEC0E3DA9455A84EDA434C84D43A089E70226AFFBB3BE2AFEF82D9850578FDCD37F0C0F007F1D65BEF409130CF75B5982A05638AEE5AFB73F4D14743';
wwv_flow_imp.g_varchar2_table(172) := 'A7F07A4E5F878A7AC66AE8D0A1D0B3FA8AE7EBBB093233A5B58567E1357A71123E1A4775C27D745D55E40B88B3FC823C2040D28D8F01A5ACD5E25E5E3E0AA74EC186871F41FA33CF226BDAD708F100121EC0D8866D83325E1CA58CD24A289264917A2C8B';
wwv_flow_imp.g_varchar2_table(173) := '0885C465CB9659DB5DE150318B885F8F4D8878CBEA53D69244FC221AF553BDEC556D886C558DA7718C2A50F4A96C22373F9ED7C48B2E851FA6BCB2A28229A5B4FAB944B0A79FFCD86F6F98360720D8B123120F3D1466F55AA43FF90C329F780A86E7068E';
wwv_flow_imp.g_varchar2_table(174) := 'CE050A43A03B4079C3A184514E4716E02CBC76C300A34E4E8B664838EF6C24F6B815F92777C6846FBFC7C81123F0E0F0E198F3CB2FC8C9C9868485651654FD4BFBA333187DB1498F2B74E8D0C1FA5FEDDAB5B3F17E457D4E3AE924FB8B7F4D9B3685F648';
wwv_flow_imp.g_varchar2_table(175) := '7829BD3287E16681EA04A5EB2BFDDAEE8F4B01056CA6B0584953A7C021C229ACC2BC8EE7794EE60B2F61E38847B0F1E38F91B37C19B584840ADB94B1186D5719C53B5F24E9AE079F4494A54713A2E4E049DACB79D266889815C199356B9695EA6A53BA5F';
wwv_flow_imp.g_varchar2_table(176) := 'F4B5EA45E87AEE5F8742AAD39C0AC5A94C4CA6329234247D75FB31C6400C10CB545241E51E2B5C1228884823920D04E1242723A64913A06973C41ED50181BD5B2267C60C6C7EF249E48F1B076FC30618691D22DCF6D144ECEB79014A1B91304113735318';
wwv_flow_imp.g_varchar2_table(177) := '9705DAEC87C46BAE423C0FBCFE888BC54BAFBE81BBEFBE0713277E46273703611DA8A9BD1DA7EA3F24CD75A22EE23FE59453EC01A231BC93621041478331C62E4AFB1408C8A4B397F6439A5CFB284DAE718D296A6B2BABE0C33141044D0C0A88B3F9DC83';
wwv_flow_imp.g_varchar2_table(178) := '0F42055818F65068A7359079EBE5E7217F0AB501237019132620C476E5A900A70AD648BAF2ACC49053ABA7018DB1AB2B994AC4FBC30F3F4011207DB1465A40953A39D42F15E8E93F11B0DA0954170D9294D2141F7EF8217488A63A638C3DB0913AD6B9C2';
wwv_flow_imp.g_varchar2_table(179) := '16756C60D840F4954427B636F3B19E615904C03C09D61028CDC2B56A01FBB542EC81FBC3093AC81EFF05DC09131158B400DEE62C80D29E4D49E85B1302F8F2C8551ED701EA02CF71E0A4A4C01C752462BA77C3E633CEC447337EC44012FED34F3F8325CB';
wwv_flow_imp.g_varchar2_table(180) := '96F2AC2497B8927462E75DF036C6901FE3A0B0A50ED664E7EBECC518B3CDD98D3190B092868D6E2CD347A0071115C03066DB6345F7DFDE7C1CFDB084E40484C385589D9587319CEF712F1FB3E160B303CB00C4BC95FA66F56A60E54AB8B9399CA6EC75B1';
wwv_flow_imp.g_varchar2_table(181) := '0BEBAAE8AD088DECC7D25243D389F825A975B22B551CCF30A8220C9F3384A8E7C025DD855811BB9840A0BCA20C3279DE7AEB2DBCF7DE7B96898C31F62B79DA1CC58AE55CABBDE6018D1C11BFF28DF8D180E41E202EBC08B04CF586058648648007A155AB';
wwv_flow_imp.g_varchar2_table(182) := '5030ED7B84172F86B3211D86072EC43889DEA32029429967C228FD321E4B388E1B608627BAC1F3CE016EF9376690A9068F7C044387DD8F993FFE804D99197029C1D89ACB3380CD54ED8731C60619F6DD775FE8DB7B727AB53FC6101115985A1A411A5D38';
wwv_flow_imp.g_varchar2_table(183) := '8E6E2EE757079E12763A0C2B4BE347B7DFD9BC98AC29B573283F9F7BBF061B29ED67B8C063A13CFC8820B2A8CD3DB080FBAEFD303241992F6F5EA7BC8ACA289764979325E236660BA2459C3279DE2211AF2697CAFE544C5F4856244184AD2F84EB0778F5';
wwv_flow_imp.g_varchar2_table(184) := '2095CAC430F21BF4C8839C353D5D28492F4D618CB1DF3D56384ECF8CA86CCBFA39AFDE444C87601C5A3B01C85E174E2C8248AB4617048F075A5EE66604D248A039B9F6094E8A6884D9DF657F97F3E8649982BE8411B6CC03320847A2D6C03E7B23B64B17';
wwv_flow_imp.g_varchar2_table(185) := 'AC3CA9135E9CFA35860D7F0863C68FC59A55AB51985F009AB19C8D3D3937398099AA7D1B63ECC3693A3517F12BCAD3A04103044A99337FB50AB595B012D344B793D0D23E28FEDF998792D204DAC7E83695999789BB6FEB7D919D9D8B253C492F60B44767';
wwv_flow_imp.g_varchar2_table(186) := '3B7348F34FD339FE929A770341E249FBEBF1DE5D0ABDC81AB47FC2B9AB4A163A842A798BC853535321E95E1EB225AD65C60869679F7D36A462D54F127EE2C489D037C3B4618A44E89B66B7DD761B94D7B3264B962CB1BE8216AFF10562169D3E6B0C9517';
wwv_flow_imp.g_varchar2_table(187) := '81476205EA9080DBD1466FEA1A5BECF13302A2469BA7CDAE288C6729542542151B827D3C0253956A882230708560011DB1B0A212471E893C1E8C7D58908B7B9E7B06AFFCF7BF983F7F3EB2E92C87298DD45F23EE4A1041CA14D517ED23C4AF324FF75B41';
wwv_flow_imp.g_varchar2_table(188) := 'D07A257DDB301AA6B0A7AE23306BD62C4873EB2053DF7DD6A19931C257A445E5A4F233F4884CD3A6CD20CDA3C768ACA9CB7B28E09ECDE3468E663468AA6B900E0F214BDD867ADDE315F7924B32DC4795384CC1976DC2B44ADE728A24D985F4789A38C670';
wwv_flow_imp.g_varchar2_table(189) := '055133C979D2938D92F4E26C3DC9299F409B2389B268D1224C9D3A157AFA508FC3EA5972491BDDBCFAAA5DFDFAF521D52C674C4EB44548D41C20D1EA26F765DC38999934B858C16544C34A4A8C6858C1EB156C2B58EE78102C639F650096129630BFC878';
wwv_flow_imp.g_varchar2_table(190) := '5848336821FD8AC53479D6A62423AB53277C7BC8C118F1D5D778968759DFFFF003D6AF5FCF9074217BFD7D6F118E1E3D91ED9F91916119528F34E83F7DCA0C158888F5652381F2222E950BC4C0F2B9846F7D05B529A342D177230D3D65CA149A2469D053';
wwv_flow_imp.g_varchar2_table(191) := 'BC22529942C61051D10D7732DFAA552BB46DDBD68E2241275F51FB2DA122083128B10021BC12CEC3672C58E57AD8C403C64DD9D936CA166208D523A3B804F28C1D87DB6CD32AFB906496749704921A8D9EC8E32A7482A888907E4D5A0CA3909CB486A48C';
wwv_flow_imp.g_varchar2_table(192) := 'EA15CE944D2F8610918BF08D311043E9F9146D86A2404286DA697CF5535A04E27E83E5749A5E0EE763905B80216141210633823084A0B4048824950D0D156208612855ACE0BE503E861294DE57988F616C773F1DE261A11046C5C6E2A3FDF6C773943E4F';
wwv_flow_imp.g_varchar2_table(193) := '4C9E8CF16480C54B96219766D4D66B295AD1AEFE94B9F9E38F3F42DFA0D3D74E7BF6EC899E0469537DF75AD0BB776FFB3F1D94EA5A10A9579FB7DF7E9B07749BA1D0A84E8615168DDC874C4E318C9E56958924AD2D62151344DA5446AAEF8C2B3CABFD96';
wwv_flow_imp.g_varchar2_table(194) := '7094F9158D5FD23C78208F156484AF485B9F158631E6CB69789B21D1771E79185F7CFC29562C5F8950810C24B506B54365ACAC9C31B43811AA1C617D9942442D2952BA7906A5921EA2D2176296D0B4D157E9F4ED2E9D424AE54A2B48D28BD8A551E4C8A9';
wwv_flow_imp.g_varchar2_table(195) := '3C99E14A491F99526290ADC735F6529FB2F7D67921FC1276F13DE13B9ED27E170E311FC677CC7F5B0ABE63DDB704A5DFB1AE088AFACE60C86D6631FCC0B104DFD2AEFF88E71A1FD3C19DF3FB1FD894910997FDEC0276830F090D11CCF4E9D3AD46959F24';
wwv_flow_imp.g_varchar2_table(196) := 'A1130DF2AD046A2388AE93747FF9E597ED63D01268A79D761A24E5A36F2D837BA888DCABAFBE0AF91AFA5D56F976DA2363B40BD1ADB7E42B9A937F272DA6BDD71764F4AD3231B6680C888C5F44D42E802416C5513815FCFA2BB2DEFF10692FBD82198F8C';
wwv_flow_imp.g_varchar2_table(197) := 'C27B4F3E85B9BFCDB507AF6C56B50CA00904920A326F142528CB3ED44D889BF520DB975F7E097D8946CFF41863AC79A3A3F88E3C88928DA958BFD49E4C0B451FE41C4B33680CCD55840BDEBDBD80B5FD407B2F4C08794088696104D8B890105239DB8704';
wwv_flow_imp.g_varchar2_table(198) := 'EC5AC8EB126059E156C098338A20A494EA342B2F0FCB186ED39A446CC5B3B2D7EEF156F44CEB52044D697920491EA9535EA06B45E314A27EE38D37EC69B54C5A09279956913BD41C1246D2E46202ED937C0EEDBB0ED7146E8DD3C37F342F237D8C319055';
wwv_flow_imp.g_varchar2_table(199) := '50965044F1CB1863A357279F7C323AD1C434C6406B1183EA7E8A9A71C38A32F6537B379F02EC736AEA719B37615CDA5A7CBA74093E9EF91DDE7CE72DBCFAEA2B58B37635B466C7F6A8E20FA94B11EF75D75D677FD6A474282D32BD102E8296DD3973E64C';
wwv_flow_imp.g_varchar2_table(200) := '2B7164DA482B28022410D14B02082475C40C91FE5BA71E1C222B86CE6F2CD358127A2C1B6C0183585B661043A28F615D09B07D513F876D1CD6139C0062E947C4C4C4222636865195204129211844C071B65CC7B08CA0FBDE534078566042CEAE8216FA91';
wwv_flow_imp.g_varchar2_table(201) := '2F99AA81A84892849084807C3A3181049A0EDCF4CDBF6BAEB906679D7596FDE56E696F497269736977094594F332C6D893693DFA2ED34BDA5EB4B171E3467BA621A62A0DC1B878AC880DE2E75807B398FEC4FDFA89FB31CF3158B0218D0EFB648C1F3B1E';
wwv_flow_imp.g_varchar2_table(202) := '6220A79C792BB5D818636D767170F7EEDDED0D454B8FD29389332575844C4576E4DCCAF9555E65AAD38694EE67AF29DD0D330D39E769B4CD2F8A09E2120B314C8B2118834B5976A94D636CF9C544D0C5BC165CC4F402C2F984F348DCE713FE91988CB33B';
wwv_flow_imp.g_varchar2_table(203) := '74C4A5175F848B2FB810175F781124DD2EB9E412688305575C7185CDAB4C3F59AE7A118AE0820B2EC0AE02CD57D970FEF9E743216D696A69DC134F3CD13ABCB2CB4B33816C746972FD529C7E1041E697884D8C23F3482093563420E9AFFDE696FDE96D8C';
wwv_flow_imp.g_varchar2_table(204) := 'B1BFDC21DC4AE304B90F12923287AEBDF65A74EBD6CD82682A0237DE782394EFD6ED465CDF5DD09D69370B5DBADE88ABAEBF01679211E3E3759816C62E6100DD993106C9B4D9C5C95AB8A2094288312257B5A81C88E5302D9D002E0CC6A22B8FCDBB3901';
wwv_flow_imp.g_varchar2_table(205) := '74A594EA1A706CDA8DF9EE0495776359374AEE6E4E10DD0341746379D7A8F637B0CEF60B0670F3BEADD1EBAA2B71E780FEE8D7AF1FFAF52530EDDBB76FF17F69292E6759FFFE5BF26AAB364AB717348E40FD2A9246DAA87D6988D4292D0B4AB78F5CABAD';
wwv_flow_imp.g_varchar2_table(206) := 'F24A158A9629A27D943FA7E086B4BA7C360530887A480B0844A80A67EBBBDE6204994FD21E325F24C8A4CD053A071243A96F3438C4BDB483885FF3E8A04DF58A16EA8714B465181885000009384944415416AD2B1AB4465DF7EFD71F8201FD06A07F7F82';
wwv_flow_imp.g_varchar2_table(207) := '5296F5EBDF0F7DB93F3D7BF4847E4A5E6BDE650CA0C50BC4F5928EFAD98CF3CE3B0FAD5AB5B2369E313BC708D46EA8C3313A92882F0BC4E04A32C0418CBB376528AC51D84323A5848684068C1034505A0C8D1835684C87B631AF9BB0AE29A1196DFBE64C';
wwv_flow_imp.g_varchar2_table(208) := '052DA809DA1F73140E3FF3741C7CD0C16877E8A168D7FE50FBB54ED9B76D181B8F80C274F259542EE9D8BE7D7BABF1F4FDE7ED85F6EC2B50BF8AA4D16D948F86C85A949605D16DA3F36AABEBE8343535D5DACF3AB791A691D49539145F46A85B7B2EE92F';
wwv_flow_imp.g_varchar2_table(209) := '73557E9D18401A3D62C26E7164D51230C658D346876EFA094CFD12482BD288B484184BF4A3E89F9843411181228C02ADC742934668DCA4316CBE3153E5797AAC364D9B3485D27AF5EB59BA73B00B5FC61411793C1175F6D96743BF97D9B56B57E8F04437';
wwv_flow_imp.g_varchar2_table(210) := '124B93459C5FD125196320B598C27E07D2A439D709A22BD5E4E50183BA2E5D54D6BB307455CB00D67911609BADDB6905C57DE85FB98909700E3A10C1E6CD4111C73743AB640E6D484D048B1DE24E4429892C934FE153690711A7F6D198A2BD56DB8A82F6';
wwv_flow_imp.g_varchar2_table(211) := '5E9A45E68ECC1845925AB76E0D638C85C8389581731EE3D8E1762903D8198B3F74B37284F473277A065D3F8EA530971C1D458DE4D888B8CB0221585268DF7DF6C1911D3BE2FFDAEC8F9BE312D19392FA58927B0C439E3CBFB227C0C5D36D57E28108F708';
wwv_flow_imp.g_varchar2_table(212) := '1C8B9A1868DA046EF366404202C7F12C141DA9335B83DFC650485010886815B6D66FFD77E9D205C71C738CFD96989C5B6B661089C6983F61CA1803D181F6537B2E534ACF280D1A340837DC700324C151C52FA78AC72F7778638A10A288900E37A40D9E7F';
wwv_flow_imp.g_varchar2_table(213) := 'FE79FB458CCB2EBBCC6A05C5918514A95F81F22AD3CFA19C73CE39B89376DDD3231FC250E68FA7F912E429AF4BB726E039D02F3C78C57394BB88722A1C8F829E4C2022F7A85D6AD1E1AB75503B9670C3D587F5F08AD6AFCB9A0CC6181863AC3921F34FB6';
wwv_flow_imp.g_varchar2_table(214) := 'B97ED652D25B8766DA3709359DD6EB0C418F532824AABCCAD4473FA6A580817E1A5D7DC54032758C31558E5AA7CA67A8E0049216B2F544D8FAEF88EFBEFB2E040AA7BDF0C20B10C899D289A41E8B78E699A771E5D557A329ED7BF7A7D908E6E7A3983CE1';
wwv_flow_imp.g_varchar2_table(215) := '31E7B88043E954C1E9B76AE6155F5935999A82D80E1DEC6FE973608ECC59883553DCC64FB660C098A2689F085EDF35183D7A34748026C2D6C38D326B24DC64325D7FFDF590A4D77F9179EDB5D7EC29B52C00318731BB0EBBDCCA2D37F077E58C3130C620';
wwv_flow_imp.g_varchar2_table(216) := '4007562A339E3E8222447274844CC592057234253584A484844430CC0BEF8FDF913F770E3CF577394E31F57A20A162C75E9E613FE3C2E57ADCA6CD106CD602FA27D0D20BACA169A506CAF9501A033269B48FD2EC0A756ACF3A77EE6C43A68AD00C1F3E1C';
wwv_flow_imp.g_varchar2_table(217) := '1270D2F88AF0489B2BAC2989AFBD577F41E971ABEA7AB76080B26ECE1863ED4321331A841C638A0830B43E0DA179F3E1AC5C031585150AC2CEBF24F92D03C5C7A156A79310D77A9F9D1F347A841A9237C6940835F974D2F222F46486C39557997C3CED29';
wwv_flow_imp.g_varchar2_table(218) := 'FEA6D76ECB00DBC2872201FA6F29D93FFC40891CB61AC06CAB5385EB3DB6F410AC570F09877740B061035EFBEFCAC4803195B75B3BB3AEEAC900421E63F785F37F47E18205247E874C60083B838AADFB7A018ED9722FC4ECB50F820949009DECAD5BF857';
wwv_flow_imp.g_varchar2_table(219) := '7B02069C6A771334D0C324C6FCB4B528F87D3EDCB43458FB072023F0A312DE9E71E031F69F7CFCB188E7018A2C2B23BBA812C6F687D8BD3050AD18C08307D784E1F28437EBBB99C8FB650E4CE4BBB5C46BA5D1A801CD9E86483AEA48046806799C97C3FB';
wwv_flow_imp.g_varchar2_table(220) := 'EF3D10034E75BA2703FE19AE385C88FC9F7E4268E122384E40A52CDCF9B7085DD63F820104F6DD0F81567BF3F02B9EE46F4B777E027F04EC6E287076B7056D6B3DC6657873F52AB80C7F223D03C614DD022DA36D75AD50BDDC0BC32845FC31472350BF3E';
wwv_flow_imp.g_varchar2_table(221) := '8FD50CCF13C47502F8AF3D0C0345D4534D6E4A12BA90264FD6B46F50F8DBFC12F367E7899F235BFA2673F1D8DE69D208B58F3E12B1B56AD3B1F6A57F35218F1D5A66F562009EEC7A79B9C89A4E0658BA1486C41A4DFCCA6F3F1411BFC8DCA313E1C5C620';
wwv_flow_imp.g_varchar2_table(222) := '70C001886DDE024E6C2C5446F77A8790EB77DAFD31506D1880640ACF73ED2F7D05962C83C9C902C53376FE65453FCD1C0F060E4CAD6424D2F905CD1FFDBA1B7902604D11C07FED611870AACBFD1812A19B5F88B4A95390B378A1FDD2391502798084CB8C';
wwv_flow_imp.g_varchar2_table(223) := 'FD37483B9A92AFE051CE071D041B3546ADA38F416C4232678405F0250664E2BFF7300CEC4206D839CC5902CCCD43EE0F3F222F7B33DCD4143829B5606A570244C6A9938AD8430F8169DE0C9E1E34D2926953D9B995F7618FC340B5610061DE3161241D71';
wwv_flow_imp.g_varchar2_table(224) := '04EA5E763952BB74411221B9CBB5D85948EA720D92AEBB9AE370CC0B2F44B04E1D4AFE80A604E99F79E91F7BE97FEC6118A8360C608878C3A84CFD8B2E44FDDEB7A35EEF5E68D8AB171AF4EABD93C0313856BD3EBD51FFD69B51FB84E3114C4824D17342';
wwv_flow_imp.g_varchar2_table(225) := 'FFBDC763A0DA300048924E2006C19454C434684868846043A63B09C1868DEC58B1F51B21B65E0304939210A0330CFF552330E05497BBA48F0AC63D618CB180A207745806C0003B0AC6B033C3A9C6183B2478B0E61A96C17FD5040C541B06282249B9A386';
wwv_flow_imp.g_varchar2_table(226) := '911F14872D2B638B3C8E47B04319F291F29EBDAAB40F7FA0DD1603D5860122183436A34F81BDA8E48FAA1AB79297E90F572918A8760C502977ED0FE263A018033E031423C24F6A26067C06A899FBEEDF7531067C062846849F540D0676F7517D06D8DD77';
wwv_flow_imp.g_varchar2_table(227) := 'C85F5F9562C067802A45AF3FF8EE8E019F0176F71DF2D757A518F019A04AD1EB0FBEBB63C06780DD7D87FCF5552906AA9001AA74DDFEE03E062A05033E03540A1AFD41AA2B067C06A8AE3BE7AFBB5230E03340A5A0D11FA4BA62C06780EABA73FEBA2B05';
wwv_flow_imp.g_varchar2_table(228) := '033E03540A1A4B0DE25F561B0CF80C506DB6CA5F685560C06780AAC0AA3F66B5C180CF00D566ABFC855605067C06A80AACFA63561B0CF80C506DB6AA7A2CB4BAADD26780EAB663FE7A2B15033E03542A3AFDC1AA1B067C06A86E3BE6AFB75231E03340A5';
wwv_flow_imp.g_varchar2_table(229) := 'A2D31FACBA61C06780EAB663FE7A2B150395C80095BA2E7F301F03BB04033E03EC1234FB93ECAE18F0196077DD197F5DBB04033E03EC1234FB93ECAE18F0196077DD197F5DBB04033E0354069AFD31AA2D067C06A8B65BE72FBC3230E033406560D11FA3';
wwv_flow_imp.g_varchar2_table(230) := 'DA62C067806ABB75FEC22B03033E03540616FD31AA2D067C06A8B65BB77B2CBCBAAFE2FF010000FFFF3627D712000000064944415403008523EE2F3DC236E50000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(85468290568309910)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC5D07601CD5D1FE664F5DB22DF74273A313AAC1044C3110200412126A42009300A163D39B1B98669A49FE90D04DEFA1F766AAE9D51483C1BD';
wwv_flow_imp.g_varchar2_table(2) := 'C8B225592E924E77BBFFF7BDD3C96759362ED2A9ED6AE7DEEEDB57E7CDCC9B99F776E5213C420C841868B3180805409B1DFAB0E3210680500084541062A00D632014006D78F0C3AEB76D0CA8F7A1001016420831D04631100A80363AF061B7430C0803A1';
wwv_flow_imp.g_varchar2_table(3) := '001016420831D04631100A80363AF061B7DB360692BD0F05401213611862A00D622014006D70D0C32E87184862201400494C846188813688815000B4C1410FBBDCB63190DAFB5000A46223BC0E31D0C630100A803636E06177430CA462201400A9D808AF';
wwv_flow_imp.g_varchar2_table(4) := '430CB4310C8402A08D0D78D8DDB68D81BABD0F05405D8C84F72106DA10064201D086063BEC6A8881BA180805405D8C84F72106DA10064201D086063BEC6ADBC6407DBD0F05407D5809E3420CB4110C8402A08D0C74D8CD1003F561201400F561258C0B31';
wwv_flow_imp.g_varchar2_table(5) := 'D04630100A803632D06137DB360656D5FB5000AC0A33617C88813680815000D433C84110B4AB819E0C93B019AF430882968283E4B825C376F50C759B8F6AB30280CCDC9B30241E8F8F22DCEDFBFE9B84A9044607E5FC11CC619884C9BC0E21085A0A0E92';
wwv_flow_imp.g_varchar2_table(6) := 'E3960CCB35B6048DF19B1A7301C7740861EFB62A09DA8400E000D7323B09408CCEA8606A1004779BD948C210128088A037C3F06CDD18D018EFAD3117880608A2090986A949A1D09A50B0BABEB45A01C041EDCDC11C2586E7752DB31319627406E1196260';
wwv_flow_imp.g_varchar2_table(7) := '050C4830F44E0A05D24D4090401845FA69B534D3AA0400072AC9F462F8A91CCC911CE2563B78EC5B78362E0624104692AE9C86A009A571AB4B7FE9AD42007080C4F877334C32BDA479FAB119D6D89A31E084418D56205A6B15134B8B160064F8DE1C9037';
wwv_flow_imp.g_varchar2_table(8) := '198AF165C7B766020CFBD63C30204120C7A1B402D15EB31604BF84B2162900C8F0B5333E3BD8A20780ED0FCF968B81BD498B6E4581618BD43A5B9C00901D466487337ECB659A56D772FA9A9C4620DA6C699D6B3102804CEFD47D225B8EBD9686E7B0BDAD';
wwv_flow_imp.g_varchar2_table(9) := '1F03320D46D2249503BAC568032D420090F9A56A4D250D85EA3E91109ECD1A03DA7322B3605453B7724DEA6FF60280CCEFD4AB35E94C9826C44033C180D3065A8249D0AC050011A8E596BB9BC9A086CD0831B0561890B94A1A6ED69A40B31500B4A5DE24';
wwv_flow_imp.g_varchar2_table(10) := '02C3A5BDB522B9307173C3006978248540B39DC49AA500A8415868EF37376A0EDBB34E18A010702F9DAD53E675CCB4A6D99A9D0020F38F12C2D6B40361BA10032D0103A4696902CDCE1C685602800E3FBDA5152EF3B5048A0EDBB8D618688E42A0D90800';
wwv_flow_imp.g_varchar2_table(11) := '32BF5B3E596BAC8619420CB4200C50081C2F5A6F2E4D6E4E02A0D93A4A9ACB6085ED681518D044D7A8B4BE36586A160240763F1B1D3AFD8884F06C1318D8BB86E69BBCB34D2E00A40E512D0AEDFE262785B001E9C400695EA640934F7ACD4100341B7528';
wwv_flow_imp.g_varchar2_table(12) := '9D0410D6D5E6312053A0C927BE2615009CFD2501056D9E1A4204B4490CE81D9706A5FFB5C562530B802697806B8BB0307D888186C40027C126E581261300ECB8249FA021F119961562A0A561A049B580261300BEEF1FDFD2462A6C6F8881C6C00027C326';
wwv_flow_imp.g_varchar2_table(13) := 'D3029A4C00D00B1ABEE8D318D41496D91231D0201F1059978E378900A0C40B997F5D462BCCD35A31A06F5C36C97B024D25009A4CE569AD1414F6AB6563801A719398C469170035B37F93A93C2D9B4CC2D6B7620C685F40DA9DE269170074FE85CCDF8AA9';
wwv_flow_imp.g_varchar2_table(14) := '38ECDABA6380BCB1CE02605D6B4DBB00682A55675D1114E60B31902E0C9037F64A575DC97AD22E005871A8011009E11962A01E0CB46E0DA0C6FEAFA7DF615488811003C2007924AD4220AD1A006D9CB4AB38426A0821065A0A062800D67A856C7DFA9656';
wwv_flow_imp.g_varchar2_table(15) := '01401B27ADD26D7D1013E60D31D0441848AB899C56014084A6B573AC2F3C430C8418580D06D22600A8DA84CCBF9A81081F8518A8C1405AF703A44D00B073A1FA4F248467888186C4C0FA96953601103A00D777A8C2FC6D0503E495B44D966913006D65F0';
wwv_flow_imp.g_varchar2_table(16) := 'C27E8618585F0CD0599EB6D5B2B40900762AF401AC2F6584F9430C343006D22600D8EE50001009E11962600D30B046BCB206E5FC62925000FC228AC2042106D28E81562900D28EC5B0C210032D15035C366F978EB6A7450360677AA6A333ADBD0EE21141';
wwv_flow_imp.g_varchar2_table(17) := '2C86A09AA0709DA03A51C60A79152750B9D580EFAF112A83783C5196DA2358A14C9555179275D48D6F83F7BF8CE382351A84F54C941601B09E6D6CD3D94DBD0F02F884AA39B3B1E8F9E751FAC8238447D71198F7D1879957F0084A1E7D0C6535E5953CFA';
wwv_flow_imp.g_varchar2_table(18) := '28CA9E7A0A5573E6C0F7592702046C80C0C06B246E0286B165CBB0F483892E6F19CB287F84791F7D048B5896A0EC9187F9AC2E3CC2B84758777D6D7F2CD196279F4429DB502278FA2994A4C233BCAF81850C1D3CCBB8679F46E973CFA0ECB96751FAFCB3';
wwv_flow_imp.g_varchar2_table(19) := '58F8C27228E175E90BCFA16C25789E710958F4D20B58095EE43307CCFBE2735019252CBB4475B14DA502B6B1BEB6BA677AFE0CDBF5EC332861DB4A5F60DB5E7E09E5AFBD8EF2B7DF42C54F5328C8296C35BEEB000D952514000D85C9C62A87DC1718198F';
wwv_flow_imp.g_varchar2_table(20) := 'B36BD1C38F62C185E7A3E4FC615870DE39EB08E761C1B984F312B0F0DC7331FFFCF31DA8CC85E3EF426CC10298C73A517304540A786B0C032FC6C80015D3A7A1E45FB760FE39C330EFBCA1987BFEB9285659E79D8BF92C7BFE79E7335C198AF97CC1796A';
wwv_flow_imp.g_varchar2_table(21) := '7F1212FD28567FD8AEE261BC1FC6672CB798612A2C3887CF088934BC66DA8543193A601EA65F78F630949E3914A5670D45D959BC269410169CC574B5300C0BCE3A3B01670F4531AF13A0EB612866FE62E62F3EF3ECC435EF17F07EA160289FB35EB5A158';
wwv_flow_imp.g_varchar2_table(22) := '6D242C20A4B6733EDB513C8C650D2528E4FD02B671D19967A1F88C33507AD9A558F4FEFB88FDB21680C63EBCC6AE202C7FFD3010980FA9FE553367A1EACDB7109D3E07D5A54B112F5DBCDE102B2D875F5A86A06431FC9272542FAD42DEDE8391D5BBB76B';
wwv_flow_imp.g_varchar2_table(23) := 'B499414C6FBA0BF8CB1B2A22F0298CAABFFA0AD14F3F835FB61841593961514A7BCA79BD2A588C7819DB2F285DC274BC675F02B625285D04BFB884508A603EA1B80E14952020607E0992A0FB60FE42F8450B119FBB00B1A205A82E26CC5F80680D54CF2F';
wwv_flow_imp.g_varchar2_table(24) := '467C7E510ACCE7B5E216205E548CD85CC23C411162F3E62156A4B028F1CCE5653A961563B9BEEA661B21601B4108EAB693CF5CFBF58CED0DE631FFDCF9A862D955F38A10CDC943EE669BC2CBCC14669B14D22500D2E2D068524C3652E59C74E1D3BE5EFC';
wwv_flow_imp.g_varchar2_table(25) := 'E9E788FC34055E1007F9121AB8F501B2B32BC31546C6F6E023A75F3FE4FC7A37440A0B012660B4130070874C00B07E0FD5649065EFBC8B587111230C110099BE298B2BD378EFAD0E28453C414A1AE59199A1BEB99026874BA37435908C4F86601A77CDE7';
wwv_flow_imp.g_varchar2_table(26) := '26D03D438F2E8C040488D094F108EC1E9603B1CA74087C088C0F8CD7C6740980EBB7C7641126517E81AE4DF9580F33261211498A5BB1AD7C04C0F48C69850BF5CF0F3C78B9D9C8DF77307237DF1C5EAA9685958EB4F08CB752B56144F3C2008930BE8433';
wwv_flow_imp.g_varchar2_table(27) := 'E3679F50352F26611A814D2471B98BB50E951724CE0438422603041986AC810390B5491FF740C54287E9476010A320EEA3EADB49A898F821505DCD26188BE0136630127B222598B67E800EA66546AC00588383B87055D4842AA66E2EB6064E88F0422118';
wwv_flow_imp.g_varchar2_table(28) := '0A1C3332432284A25606A6559E649AE5ED0356485C537F6D5B980FF51D35E914801A54C0FABDFE7D5178C001C868DF81395695918F567336E423AF210B0BCB6A040C04012AA74FC7B2CF3F45B0AC021085823C27825A2750DEE5C0A220320C3A7542CEAE';
wwv_flow_imp.g_varchar2_table(29) := 'BB22BF7B17CEF29CF6F480E088972169D7F143455515DBF22582B9738178C0BCE6800A0053ADE96908EAB47DA59CC636A6C04ACF571311F059C09F1561E53A833A6D58F53DDBA2F2582E182A580118C7A2900A6CFAF2247C2EE465654690BBCF3EC8ECDF';
wwv_flow_imp.g_varchar2_table(30) := '0F918C4CE26D7992A6BA0A054053617E0DEBF5C970951F7E8CAAEF2623C2D937994D04D62040E28C6744903760000A06EC0CCBCA4E56511B3209893BA09EC01A1797A3F2A38F112C5D5A43C001F4DC44FD3531B5195775C10C2CC9A54E862B25559A1458';
wwv_flow_imp.g_varchar2_table(31) := 'E9F96A224CF9F83C597683852C97C5D67BBA3AF93C19F272857401D5FD60838DD1FE40CEFEF9ED1DCEEAA65921439A6E4201902644AF7535A40E3F08102D9A878A09136065A56440463AD259EBD2569941255A6147E40DDE1B397DFA8066306B10CBAC98';
wwv_flow_imp.g_varchar2_table(32) := '456CEEFB71C4BEFA0C555F7F897875D58A09C2BB1530207928DC2AD2E12E3717ED0F3F14B9DBFC0A9691C1683D15F0B209CF50003421F25757B588469B7EA293BF47F48B2FA06BBF31462B92896C3AFFB2771A80202787EA3F3833AF280074A799CD5FB4';
wwv_flow_imp.g_varchar2_table(33) := '0873C68FA7877E3EB83881F0583506842FE14D29026A58997DFAA2C3A1872293B6BFAC38391893CF95664DA1A1D335064935741BDB6679A40E9F6A76F9BB13E1CF17C305F07CACC49C58E7A366F6C9CA401667A5ECDE7D41B7B42B4DC4EB2E6A7F02CEF8';
wwv_flow_imp.g_varchar2_table(34) := '3E167DFD1562EFD3F957114544535CEDF3F0A22E068C11027A0FE065E7A0FDA0DD601BF5869907E1376018209182499BECF49AACE6B0E2953120CAA0021EF0891FA7BA3DF5272C7BEE5958655474C4583AB2F8BB7EA72B9D44A89025756A8F9CBDF64066';
wwv_flow_imp.g_varchar2_table(35) := 'C742B784074D4F6C039FD49EB44410AB588AA5AFBE82ECC5B2FD0DF1A6A7DDDAF635C70B61379090243E231B6D8CACBDF7E6ECCF953DDE070410C7CD0185A1006846D413800CEE8400105B548EA2E79F437CFA54040DB563ACA66C11A0AF1988B37FE6F6';
wwv_flow_imp.g_varchar2_table(36) := '3BA260D75D384B659224036283508732033906664F47F4FD89A8AAAA642BE100E1B14A0C0414A73EF57C3F2F1F3983F742FE40E2382B0B667590BBCA12D2F3201400E9C1F31AD642E6131B6AA7DDD469A87AE175789CFD0D89BF352CA4FE64647E0B584E';
wwv_flow_imp.g_varchar2_table(37) := 'C0210F580FED8948FBF6E878D411C8E8D21D81E7B11642E0AB052B9641A65FF8C6DB88FDF833E425646E50854078AC1A0301E24491D1B1DA1B05BF3D1091AEDD6066ABCEB0064F1A2389D718858665AE1B06CC316804B168152ABEFC1491695348469175';
wwv_flow_imp.g_varchar2_table(38) := '2BAC6E2E962DC6D5661403FFBC4C608B2D913D60174432B31DB182AC1FA32008F8BC363B85456CCE2CAE44BC059496214BDA88F1694008CF5562C0884BBF4301827D06237F9701F022CD93D59A67AB5689D6D6FDC079FE4938282941C5FB1F2090BD1DC4';
wwv_flow_imp.g_varchar2_table(39) := '1BB8D30199DD43909B87FCFDF745568FEE3012A7995169A5E21AC01DBE7E791DAFAEC6623AFFE25C8D00FD12418D70B09A50C942E0C8117F011111D4E0C5B8A292B3C76EE87ADC5FDCAE3F5A037CDAFCCE500034A331D17E72C4C8709F7E8E659F7D09BF';
wwv_flow_imp.g_varchar2_table(40) := 'DA4783128EA9B31EFC0C0E7BEFDE68BFDF604448A835344BD163EED2984CE01B15D9F232547DF6196245F3A92090D09982D14C119EB51830E2939A1211C4281F4124828C6D7F85CE7F3B01395B6E0D8F5A15D1C667CDEF64CB9B5FA3DA6A8B7C124AB4AC';
wwv_flow_imp.g_varchar2_table(41) := '148BDF781DC1CF74FED100B0A001872820668D4CDC3E0FED0FFC0D32FA6D06CF562E3F20B51A095A4B555533A7A3F2BD0F8065CB14CB02C273250C1057440EA38D41808CFE7DD0E18421C8DD736F443C0F819ED00463B0CE6763655C79F41BABA6B0DC5F';
wwv_flow_imp.g_varchar2_table(42) := 'C4800865D98F3F025F7C8148A5F6FD830485063BC8FA08CC4756AF5EC81DB43B32F3DBB17C4707888B00001000494441545BA97CC5041EAD582DFD7DF0212ABFFAC66D4356BC1237535A56D39A063870C2ADD300FAF643BB134F40FB3FFC1E59F9ED11E1';
wwv_flow_imp.g_varchar2_table(43) := '33CA5C249E374DF356576B280056879D743F8BC551FDE52454B9D91FB4D5C984A21E34D0410E362F82EC2DB742C6A6FD8188CA473D07A9964B7F15537EC692E75F842D5BCCB62C4F66BC1430084F6240A652909985CCEDB645A7B34E43C7238F4266A74E';
wwv_flow_imp.g_varchar2_table(44) := '10D2B4BA4229EBAED10C8F500034E1A07032763343C05F35A36AC6542C7BF71DC416969076CCD1CDFACCB6CAEB9B4A4E00D91A7E870EC8D87967E4F5DC00A0E30AF51E01FCCA4A547DF535E25F7CBDB21F8205F1AC3767DD48559F0AB5CF5323D37D5DDB';
wwv_flow_imp.g_varchar2_table(45) := '88BA17EA5502020ADEE5C0B95D6D64720501C78B963E022E99FAD494221D3B20678F41E874E1F9E8F8E7BF20B35B0F1852594BB952EFD16C8EE6D9AA66839EC66B88482220F65D4872D15776CADF7E1B4BDF7C131E97DA821AE6241DAE77231C49B32079';
wwv_flow_imp.g_varchar2_table(46) := 'F6B377DC0EEDE8FCF3E8FC8BB0017A56B78280C41B2B5D88AA8F3E805F5A029F090236745D80595738594CE25E153715B005BFD41726A11006812DA68DCF5F500CF014FB0710E3FB7979C066FD51306408BA8EBA0CED0F3A08191D3AA266E898BE61CEC6';
wwv_flow_imp.g_varchar2_table(47) := '2C8524D898C58765AF0A03010CBE89B540760B503973062ADF7E17DEC285BC57AE80C4A634BA5E77306615B034789CFDF3F7D813B95B6D8598226B9E3158E1D4EC563D6F2ECA3FF91416C982974942CFC801D60182CC1C340700DBB102D4DB975CF69110';
wwv_flow_imp.g_varchar2_table(48) := 'C9062C0B71F63DAE6B2F1B0143CB2F00BA7484D7676364EEBC13BC230E47CF7FDE84AE232E41DE80815C51C943C03115AED1420EAF85B4B3153633805733036BDF7FD50FDFA3FA8B49F0FC08400A122171FAA198E0CD3AF6DE9855E00A6419997DFA2067';
wwv_flow_imp.g_varchar2_table(49) := '975D115806B4F11716676C3D67DC876566237FAF3D5170D271C83FF1AF0C8F45FE49EB0605CC57C032F2FEFE57E413DA3501A86E41FE89EC03416D5AA93F27B39F6C67BB217F41C15F8F42FBBF1C41F8130A8E3902F927B0ED679C8CF6179E872E63AE42';
wwv_flow_imp.g_varchar2_table(50) := 'CF1B6F42BFB157A3DDA03D90915B00CF0C3EFF885CA2DB03515F0F629B5F94D7FC9AD4365AA409D827D1288C2D5E8CE8679FC39F310349D514140E713E747B03D61925016548C0DC2C882A7FE6AFB646CEAF7EC57B9D8CA378D1555D30CF43CE165B60C3';
wwv_flow_imp.g_varchar2_table(51) := '4B2E42CF2BAE40F73157B8B0A7C2B58631E839660C7A1094BF07F33BB8F20AF44823A86EB54361AF2BC7B04D57AC0CECAB9EF7BCE62AF4BAEE1AF4BCEE5AC258F41C7B0D36B86A0C7A5C7C093A9F722A3AFCFE10146CBB3D22ED0B215C59128F96C0A402';
wwv_flow_imp.g_varchar2_table(52) := '41E2AE79FF8602A089C6277044134061F58C99289BF00E02ADB59BF18900F0024E2658B7214A0A1263FFE8D04764830DD061FFDF20BB736750C760AC9E087859E7F4181DA157DBCBE732565E3B6410225C3254B8B610C9E3EC4870F90BDA23831011A8EC';
wwv_flow_imp.g_varchar2_table(53) := '3482EACD286807B5C3537BD8A795FBD29ECFDBC32BE84073A92322859D12D0B113BC76ED9D8A9F9995838C8C2CE81D7FE3D8040EC03103C7CB5C48A98B863A1ABB9C75A3AEC66E551B289FBC0D8F1AB8F6FD2F9D3811FEE41FA1ADB60DD575530524C798';
wwv_flow_imp.g_varchar2_table(54) := '4510E4642163C7ED51B0C71E14386B5F83AD7D96569B4368957095903433B2BF11CB68B14728009A68E88CAC18904B63C5C558F6F63BF0CA4A1BB4252A5FE6831C8D195D3AA360B75F039CD1AC416B697B85097F02E96E713AFCFC5815FC589C4B82120D';
wwv_flow_imp.g_varchar2_table(55) := '2D0F1FA10068C2318B7306897ECDB5F6EFBE43108D36684B7C5269C0B929837544FAF646CE76DBC3CBCA68D03ADA6E61442E711B5DB8008B3E7817D1E2F900976E5B223E420190B6510B5893E60D052420DE06413596BC3901B1D973009A035408F8B081';
wwv_flow_imp.g_varchar2_table(56) := '4E96AFF2F4014A6FC08EC8E8DB17525BEB96AE3DFF2BC4311FA4E392C09102C6B854487DB6D6D7ACC36AC16A6A09182E07D473048C5B11CCC51882DABC8CE0A978062B9C8A5B3308988FDDE52F68CE27C6CC671DEE8A0235884551F1ED2494DD720B4A1F';
wwv_flow_imp.g_varchar2_table(57) := '7C14BEDBB6ADB2D1A0473A0A0B05403AB05C5B87232D90AAE0BEF83BF97B5470EDDF2F5FCC382049746880430C26F5DFEFD51D1DF6DC1B599DBBB0D495873B204143CDE253B60081E858E0EE97FF28492A2C7FB22E57AA2009AA5590CAC67A565FB98A4F';
wwv_flow_imp.g_varchar2_table(58) := '05A5513EE54F806212909A4ED789D8D5FD0A67EA636DEAC0B13C14A7AF22C59755A09CDADA82071E42D1E83128B9FB6EE46EDA0FD9FAD807574E565776737DB6324534D796B6F8769150CD43628538805555A0EC89E7119F360D1EDDF4F207081AAA9BE2';
wwv_flow_imp.g_varchar2_table(59) := 'EB78C443DEBE8391B7CD36F0323268A7D637DC3E12F506E0340AE54BB0920F685D3B09B477835A605AAC0E96E735E64F0557A6C73A534002B16E69AC9CE78AB1C63AEB4222454D6CA2F1A8B9AB0DC17C603B1290C80117977AEDC3A704F0C0B6073EF415';
wwv_flow_imp.g_varchar2_table(60) := 'E668B412554B97205E5484CA0F3FC4BC9BFF89F9175F8AD22BAFC6B2575E45469FFE28FCFDA1F0F272D9D69679D647112DB327CDBED501E9DCE0934839B1A072CE6C44E9FD47791948A93CF51C0D7A6470D6CF1B3C1899DDBABBF20312F84A1590DE6355';
wwv_flow_imp.g_varchar2_table(61) := '51F70F35A3F38A515D341FB1F9F3A17FA8591762F3F9DC819ED700D32B4F5D88CE9B0FFD23CCAAB945488528EFA3B38B109D3D0FD50C6B610EEF09B11AA89E3317B19A6B85D5BCAF9A3D1B8228C36A9A4DD573E6308D602EAAF9BC7AF65C44E7CE657DF3';
wwv_flow_imp.g_varchar2_table(62) := '52A008D17945A8623BA384DA76B28FEA8FC0F5B3A89865CCC3B269D3B174F2775842865FF2C20B5874E79D98377234E65C7811CAFFF52FC45E7C11FECC19887049B1F39F0EE3F2EAC680D772D9A8E5B67C254A6EEE11C6064AA50CE0FB7154D2F917FCF4';
wwv_flow_imp.g_varchar2_table(63) := '132C16406AB747A9A090891AE4F439FB83337FE696BF82979D4D01801AED63C5E263743E547C3709B3AFBE0633869D83D9E79C8F59E75E8059E75D9802BC3F57F18473CEC32CC1308643CFC5AC61048543CFC1AC24E819E3679ECDB8B38661560ACC3E73';
wwv_flow_imp.g_varchar2_table(64) := '28669F7926E12CCC3AF30CCC3A4390B89F7DE6599879DA199871EAE998253885610DCCFCC769987DF2A99875F2290486FF109C86994C37E3B4D3319BE528FFEC33CEC6CC33CFC62CC1594359B7EE8762E659E760E6D9E726DAC8B6CD623F679EC7FE9CC7';
wwv_flow_imp.g_varchar2_table(65) := 'BE319C79EE7998CE72A60F3901B34EF83B8A4E3B158BCE39174BAEB80A4B1F7A18FA288A575A8A4CF8B08C08BC2D3747EEE0BD909999056BC88143E248D7AF97AE8AC27A0C6475F824967879392A3EF810D1F945904690C08D258275FCD5EC5E5B022FE2';
wwv_flow_imp.g_varchar2_table(66) := '39D9E8B8FF3E68B7C9C6609520D93A42551B82DA3A8C0EAC18AA267E80D8534F23FEFC33A878EE69543DFB34AA9F7932059E4294712BC073CF20FAC2B335F00CAA785D0B2C47CF622F3D8FE82B2FAC0055AFBC88AA575F71107DF535445F13BCCA342F39';
wwv_flow_imp.g_varchar2_table(67) := 'A87EFD15C4DE7815556FBC8ECA37974374C29B88BEF516AA090AA3132620FAE69BA866BAD8EBAF21FAAACA781955AFBC84A8EA20281454F33AFEF2F3A87EF1D9443BD5BE67D9A7A705EAE753A87EF61957AFF7D147C09793109F3C0515D4882A972D03A2';
wwv_flow_imp.g_varchar2_table(68) := '55C88CFB082846A314A3D6A103F42FBEB237DE0488F82062D1528F5000A46DE44428A417CEF84BBFF916CBDEFF005651F389ED4016A9918E6C9D5BA39C3E7F0212694095346BDB5F2167B7DDE015E4B370170B3D079F27008CF7115F300F8B5E7E0DD50B';
wwv_flow_imp.g_varchar2_table(69) := '4BE047AB11A9AC8611823A00DE0BAC2A0601AAAAA17B0735718AAF0B88C6C84029501D83314E00D6570BD55C06490153BABA10635EAEB91B432421250F786D042F1A8760795B126D5D7E1F03D866F521603FD4575D2B0FCD7F504ABBB188502B9366A619';
wwv_flow_imp.g_varchar2_table(70) := '9EEE0FB8EBCC083276D80EF9FBEC8D086D7F0F1900CD3AB4D0231400691AB880F3073815C72B9671F6E78CAB9D7F0DB8766C01C0132246CBCD45FEDE7B217BD3CD196748FEC11DBC2361078478348AC59C65639F7D49868922C2F6A914D7569776FD7F3C';
wwv_flow_imp.g_varchar2_table(71) := '36AA2EAC7FA9E92AC17382805D70C2D36DFC29EC80BC3DF74256BFFE30D373B6450918B4C4D36B898D6E896DB640A836549616A3EA938F604B9736683744836EC63220AB474FB7F127A35D3B126E929D8D3318C0C7704C4E01102D5E80C58F3D0DBF6C21';
wwv_flow_imp.g_varchar2_table(72) := 'AC4618C5D94C270798AACD9F92AA848012CC1020C3F790BD491F640DDC15197905507C9CCF84CF86C4553ACBE270A7B3BAB65B574035311EC46053A7A1FAAB4908E2F106454660207307647820DEBF0FB2B7DA1A16C98047BD9F8F48A37A263121306AD0';
wwv_flow_imp.g_varchar2_table(73) := '71547CFE11623447F425E2C094CA6081A1210FD556171AB2FCC62C2BD1EE8038F141030EF1DC6C64EFB82DF2B6E5B2AA6714090699064CD198CD68D4B24301D0A8E85D5E78C04BBFAC1C4BE8ACF2B914C6DB063D3D326ED48BC03A7640E6E0BD91D3AB17';
wwv_flow_imp.g_varchar2_table(74) := 'CC48A006F0743FC62B4EFCD07AB75F5E8AF2679E43505A4222163183F1205133A91A8BF0F0FC1A44507B8B1377995B6C89F6871F8EACF61DC05B181F1BA04BB4D423ED02A0BABA1AB366CDC28C1933B068D122446987CA1E353398AD19B44464CB715535';
wwv_flow_imp.g_varchar2_table(75) := '79328A9F7E8E0EA82A321AA9A7013BA2198ABE3F646CBA29BAFD665FC80F6075CA179B1BA936E0182CFBFC73FA223E01E88823DA819AC43501C203F0895039FEC0D1CAA439A5EFFEE5ED32106686C41FB16484167CA65D00545555E1B9E79EC3B5D75E8B';
wwv_flow_imp.g_varchar2_table(76) := '9B6EBA09FFF9CF7F70D75D77E1B1C71EC34B2FBD84095CDEF99CC4F9C30F3F60FAF4E9983F7F3E4AB9FEBA581FCDA0B0F069AB9A19CC5684E63E06D54B16633197B0B2A74D83049ED7B0FC0F4D47D95CEFCFA1832AA27FF51D5979685D95FCD132E4222E';
wwv_flow_imp.g_varchar2_table(77) := 'C1D99C39AE2DD0C178058C20B9BBAB36FF635497282F898700191B6DC075FFC114ACF98EF618D92867BA0B5D994A1AB9051919199016F0E4934FE2F2CB2FC7B061C3F08F7FFC03279D74124E39E5149C7EFAE938E79C7370D14517E1D24B2FC598316370';
wwv_flow_imp.g_varchar2_table(78) := 'C30D37E09FFFFC276EBDF556DC7BEFBD78E49147F0E28B2FE2BDF7DEC3575F7DE5340A69131515159046A1F2635C2692B010B3091AB95BAB2D5EF5478BE6A2E2EDB7012E6D01063840C31D1488D12EDD50B0CF607899D95AAD5EA9EC80754AABAD9E310D';
wwv_flow_imp.g_varchar2_table(79) := 'F6E55708882F11B82374B2BD0B033015C28318F0E0232E5B3F8F4CBFD30EC8E7F25F0627203E6A3567DA0540565616060C18803E7DFA2012A1CD4AC215A38A8165167CFBEDB74E0B908078E08107F0DFFFFE17E3C68D731AC3A851A370F1C517E3FCF3CF';
wwv_flow_imp.g_varchar2_table(80) := 'C705175CE0AE154A58285ECF6FBEF966A751FCEF7FFF73E57CF2C92750993FFDF493333BE6CD9B87929212677E2C59B204121AD24A2430C4A80D3DB20119CBAFAA44359D6DB1EFBF43944B4749B5B2A1EAA2F98F20874CBFF38EC8DB666B64442860C8C8';
wwv_flow_imp.g_varchar2_table(81) := '75CB672CB5D938A273E701D12A4436E8818C0D7A22B2612F86BD10E9D60DE8D00E416606422900B2BFC7D1F310E9DB0785871C82CCAE5DA057B8D18A8EB40B00CFF3B0F9E69BE337BFF90DF2F459E51464D6C7809ACD9772C94C268018570C3C73E64CC7';
wwv_flow_imp.g_varchar2_table(82) := 'D4EFBFFF3E5E79E5153CF8E0834E3B90A0B8E69A6B70C5155738EDE1BCF3CEC3D0A1439D962121317CF8708C1E3D1A63C78E75E6C76DB7DD86871F7ED89924EFBEFB2E264D9A84A953A742752C5CB810656565907090804A69E61A5C26B82F2067EA2A46';
wwv_flow_imp.g_varchar2_table(83) := '47DB9237DE40B0A00C52D5B1DE4740C2048156BDE36A8375E9821E471C898CC24204C4F1AA18D8CC90DDB71F0AA54D9D8000001000494441544F39155D470C47E71197A1E36597A1F0B24BD0F18273D1EEC4BF2363F7DD1174EE049F69019FF5A817EBDD';
wwv_flow_imp.g_varchar2_table(84) := 'E8165000F16A6A26FB6B045E7A39B9C8DB7B4F14ECBC33BC4816568557B4D0C34B77BBC5E41D3B76C41E7BEC81DEBD7BC3CC1CA4B6C36CE5B8D4E7BA1653C6B994A6F292206121A69D3B772E34E37FF1C517F8F0C30FF1E69B6FE2E9A79F76A6C3F8F1E3';
wwv_flow_imp.g_varchar2_table(85) := 'F17FFFF77FB8F1C61B71F5D55743424166C890214370383DBC071D74100E3BEC309C79E699183972245E7FFD75545656AACA358600E6D8462A35623E2ABEE5CCFFC127F02AA354CD03574EE2D75DAEC30FCB3765F3294F089CB1B3B7D90A39037782E745';
wwv_flow_imp.g_varchar2_table(86) := 'F8400F57AC41F8AAAE8EA22A5A8960E30DE11DF45B64FEE14FC83EF44FC83FF430E41F76240A86FC0DDD2EBC081B8EBB1EED4E3E11B6D146B04C0F1C0E96D9FACFC075D4771DF5610EB77EDFBEC8FBCDFE8874E90A4620221B0A8D733445A95E53546A66';
wwv_flow_imp.g_varchar2_table(87) := 'CE04D871C71D6166AE09119A03050505E8463554505858889C9C1CC867A06749F038BBE93A196F66AE0C3373E5248581BBE18F085F82422ABEFC039AD1972D5B06A9FF9AE5252C66CF9EEDCC832953A640CEC78F3FFE184F3DF5943325AEBCF24AFCF8E3';
wwv_flow_imp.g_varchar2_table(88) := '8F50192C6ECDCE0030FE816DF22B9661D9C489A89A3B8B5EE538692831CBF011D6F560F114247010184B69DF0EB9BBED86A03D67FF208071CE169DAACDEAA784A1FC254F3EF914EEBBE77EDC7BF7BDB8FFDEFB71CF7DF761FC03F7E3BE471FC293CF3D83';
wwv_flow_imp.g_varchar2_table(89) := '773F9A882945F310DD7063743DE32C741D7D29B0E5962C4D250660C168ED87177814DE1EB45A12EDD6191D871C8376BBEC028FBE2B9F9D0F2084F3A2959C5EBAFB61964060CF9E3DB1D34E3BA17DFBF6D0919999898D37DE18120ABBEEBA2B76A71ABA1B';
wwv_flow_imp.g_varchar2_table(90) := '897AD0A04138E0800370086DB0030F3C1083070FC65E7BED855FFFFAD72EEDD65B6F8DCD36DB0CFDFBF7774265C30D377442A473670E1E358D0E1D3A385343E54B70082444CC8CB3A5E7C0CC60462227F380878485667D090A31BFCC0C99207CB446A790';
wwv_flow_imp.g_varchar2_table(91) := 'EA05A00309A89C3503D12FBF00CA1793F90D01EB01581F9F631D0F633E69A83E2F0C19B4DD7B22679B6D9195950DB0FCC08F6331EB9383542B2C72AEFEF9CF7FC6A9A79E82F32FBE10C3478FC2E851233186308A7011FD2AA79D7E1A8E3EEA68FC8D9AD0';
wwv_flow_imp.g_varchar2_table(92) := '83140CF3162F45FEC17F4097B387C268321051C07AB4192DE288C32762CD7C785CF6EB78F4D1283CF410440A3B10AD01BCC0E07B447A8BE8CB9A3552B4BA66291B38556E6E2EC4DC03070E74256B76FEF9E79FA1254039ED8A8A8A48739E63E65EBD7AA1';
wwv_flow_imp.g_varchar2_table(93) := '5FBF7E50DA238E3802679F7DB65B1DB8EEBAEB9C3DAF2545A9F3575D7595B3FF478C1881CB68D76A1541B6BF9C86679D75965B6538FEF8E39D8ABFE79E7B62BBEDB673C24342A31D075C5A4552389819020A0439273FFAE823A83DBA778DFD851FBD99E7';
wwv_flow_imp.g_varchar2_table(94) := '935B442A51AE5244BFF90E5E2CCE5CE684804C838077EB7A920EE1803F716A4E993B6D8F6CCED48870F60A7C2CA09353CBAA975C72098413F937D4FEB2B245282F2B47E9C21297663ED32DE475695919CA29304A4BCAF0D9679FE3062ECFDE76FBAD282E';
wwv_flow_imp.g_varchar2_table(95) := '5D8482FD7F830E438E4540812DC688798996277ED7B5074D9BCF583DF9DC313B2F61FC8303E28F0F82EC1C641DB03F0A8F3D0E59BD3686475A00C82A060A8196DC73AC74B0572BC5A52D629B6DB6C1FEFBEF0FCDD2622EA9E75AF797CAFAD9679F61C284';
wwv_flow_imp.g_varchar2_table(96) := '0978F6D9679DA3EEEEBBEF762AB9C23BEEB803F771961261171717BBFC9B6EBAA9D30A7EFFFBDF63C890219CED4E754B8A62FC73CF3DD7390565D3CB412861211F8096166FB9E516C819A8322548945FDA8334052142DAC077DF7D87EFBFFF7ECDCD0032';
wwv_flow_imp.g_varchar2_table(97) := 'A69921B6B0188BDF7D1FD5B3E690F1551A6A43ACC7411A859300E0ACD4A32BF2F7DA03D91BF4A2C082DB3771E71D77D1C77103DEA0E351F8115E650E08C766C674344328DC74AF66E4D2D4529F7B7145A04F9FDEE8585888E933A6E3C7299311E9D40585';
wwv_flow_imp.g_varchar2_table(98) := '471D854ED410023A6FC50C017CC72ECADB12412CAC99BE4696B137EC8543AA39553F874EBF4EFF3819B914AA5E2402D4F4D6D078475395DCA402406AF9CEF4AE4A10982D274C9F6BAD2258319F96E964C76A0560FAF4E9D06CAC8D44DA0F2026D66C3F74';
wwv_flow_imp.g_varchar2_table(99) := 'E850A715C899A765C151A346B90D462FBCF082B3DFB58A606690D6D1A95327676A68F6978921734226861C8052952520549E4C0A690462921933663867A2DAB266031590C97C94BDFF0196BEF33632AAAAD62CDB1AA64A102EC9D8639F06EC803CDAA888';
wwv_flow_imp.g_varchar2_table(100) := '6440B3F92DB7FCC72D9DCA74A9AEAE663B982EA55CF5497D3BF4D0431DCE843F0944695337DC702305C78DB8FEFAEB31945A56FFFE9BBA559048AF9EE870FC71E87AE9A5A8DA6463503583E7A714DA022F8D6D96BD6F14D692CA32A790978BECFD0E40A7';
wwv_flow_imp.g_varchar2_table(101) := '73CE41CE4E0360B4FB99AC559F4D2A0084D9FEFDFB63871D767076BA998645B1F58398310922EEA450F8F2CB2FF1F6DB6FBBE5BC871E7A08775043D0E621A9C0DA6074CC31C7388D406681761E6A8F80664709132DFD49E39023500CDEBB776F9C70C209';
wwv_flow_imp.g_varchar2_table(102) := '9010902F223F3FDFAD0228ADB400B3D5B7512D176F5472E92FFAC107300A2DC5352468F6B2208E48D7AEC8E66A4A46AF0D3167D66CA7C94843D2566B09D055D5A97ECEE452AA7C0472780A772FBFFCB25B29492EA96A97E6E5975F0E2DABBEFEFA1B5846';
wwv_flow_imp.g_varchar2_table(103) := '4A2938F000743EFEAF30DAC4DA20B3AAF29B7BBC4462C059DDE7DC1F581C4166045EEF4D9077EC31E876F970E4D32CCDA419C029A9B97765BDDBE7AD7709EB518098594B82B2EDE51434FB65E64A56A7BCC96B85D21A2414E4B82BA34D2B869E3C793244';
wwv_flow_imp.g_varchar2_table(104) := 'E05A067CEAA9A720E6D01E006D1AD21E01C145353B0E350BFEFBDFFF861840CB87F2391C4D27D02E9C5DB5C55666803615C9576166305B11D4865A30A07AFA0C547FFE2950C165375B73346B42AA2D67151722CC78562632761980F6FBED8F45D12A3CF5';
wwv_flow_imp.g_varchar2_table(105) := '4CA27F5AD5102E569115D2AAE40FF8FAEBAFA17D14C2CDABAFBEEAF655949797D317500E393C75BD60C102A7417DF4C18798376F3E2C2F1F5D0F3E10D6B307E059A28A9A2071D3C4BFF5B62558A9514A1690F97D0B10746887AC3D07A1D3B0B3D19590B3';
wwv_flow_imp.g_varchar2_table(106) := 'F536886467BBF1C55A8CDB4A95B4908835A7CC46EA5056561634D36EBBEDB6F0BCE5CD8944226E85A0B0B010321552AB37D310A6C6AC7C9D2A20742DAFBE885A9B7CB4D9470C3091CB73F2F04B23907090EA2BA170E289273A9F817C0C3D7AF470F54BDB';
wwv_flow_imp.g_varchar2_table(107) := '90D6F0E28B2F3AA1F2CD37DF60DAB469908DADB2D502334B104E75CCBDF25B31E91BA8471E69504C4BC39DC9487429BF523F1DD09E6774E25217EE5E690506F0ACF9611041E6669BA2F0E8C3E1F5E9838FDE9F88FBEFBB1F3291D457ACE6D07309010932';
wwv_flow_imp.g_varchar2_table(108) := 'F906926DFFC31FFEE0F64768E7A57C22B7DF7EBBDB5CA59D95A79D763A36623D19E621B3530F443A76012F01330002D41CEAE52F0356C8837A8F80697E09C034A83DD40E424D9B1279F550ED51B83CC6B9633B92AE76A2E6490767971197D2E1772C7236';
wwv_flow_imp.g_varchar2_table(109) := 'EE0DB30C37064E38285B1AA029AB107D3665FDAEEEEEDDBB63BFFDF683B401330E22632500A41568A5E0283AA1FEF297BFE0B7BFFDAD5BFA939A2EC7612E5712343B0B2424944720416296288745D57B8A1134538A19A439482D4ECE7C1212D21CB44B50';
wwv_flow_imp.g_varchar2_table(110) := '2685560294466AB20444D2B198B49FC52477DE79279E79E619F77EC2F71F4CC4CCD75EC5E2B2C5A8363A9134D3106467FA260321706D3218D9DCDC352FA1D583C4134519A38C024421283B8C3F4ACF4B0AC5BC3F1C8A76FB1D8449143277DC711BBEFCE2';
wwv_flow_imp.g_varchar2_table(111) := '0BE7A454BF98708D4FA517BE2468856FADB82894E013686CBA723DBC80B816D3C72D1391CC2C96EF21E02C1AF0D7B59BFD13E718C35400FB1BD061B01C988354175083581D80E580795321B55C5D83690296E53B08E0EBDEE589C35CC866920E3CDAF2DA';
wwv_flow_imp.g_varchar2_table(112) := 'DE5CCD993DE05273DEC1BF4307DAF95DAEBB163D868F42875D062133278F793CE29B2340547B81C198BDB59F445DD377511B7EA405683DDF2C8176319C5604B459478CDE873390DE21D877DF7DA1D9EAD8638FC5C9279FECECF5A3A9AACB7BBFCF3EFB40';
wwv_flow_imp.g_varchar2_table(113) := '2AFB96F4DE4A4874A58D2C41213B5E7548489825CAFFA55E8B31CC0C66E692EA5ECE486D16FA80B6BD34070907ED2AD472A3760E6A79522B0EC3478EC2556F4CC07F6231BC0E431939C7276919C1E3BD4A34860181FC8380C4E6F35A0222F048C81EC028';
wwv_flow_imp.g_varchar2_table(114) := 'FE2001504A01ED556A4C1983F640FB430E41F1D2A578F49187F0F63BEFA03A1A65E2753B250805ABCC1DF0491020603F90114164ABCD90397047640C1CC0702764EDBA33B27EBD33B21DECC27017E4EC9680EC41BB227BF75D919302D9837E8DEC3D7643';
wwv_flow_imp.g_varchar2_table(115) := 'F6A0FA216B77C5338DD20976E735F367B34C07BF4ED4A13A3377DD05AEFE813BB32D039049B3C881DAC4BC597B0D42DE4107A2807EA00E54F13B5E3E12DDAFBD0ADD860D45C16E7B2052D09E38660779B2976DEEF49A438F2354F737D86003686D5E8C6A';
wwv_flow_imp.g_varchar2_table(116) := 'C6998E04275B5E5B79B59945B3AC42BD322CA79F6C7C3DD76C25CD400CA819593BF7E4B892575B20C79F1C814AB3E38E3BBA1500E5D16A80401B9154A784833CE46A8B99D5A2458C5F7B9372A1F8A4F620879BD469AD16C859F8141D924FCC9B83872A97';
wwv_flow_imp.g_varchar2_table(117) := 'E2D658146FB12F1524B0806BF4018540C0F2C94E0067294E84F0781FA1A69011C980979989485E0E221DDAC3E86CF3190AE21D3AC023B1666DB3053A9D3804D6BB0F5E7BF5153CFAF0A358BC68099913EB75046CE32A81257344D45C64B46F87CE7F3B11';
wwv_flow_imp.g_varchar2_table(118) := '5DAFBE06DDC75EEFA01BC36ED75C8F2ED7DE80AEBC4EC00DEE5EF1DDAFB901DD6AA0FBB5D7A3C7B563D1E31ACEBED75CC3B00E5C7B2D7A12BA5D7B1DBA32AD0395A9EBB137308EA07B01EBEBC674DD58B7DAD09DF7DDC7DE886ED7DDC876309DF2F079C7';
wwv_flow_imp.g_varchar2_table(119) := '3163D065C408F43AF77C743FE248E4F4ED07A3561061BF221C17066DF66C160240D8970AAA99BD3BCD01A9A48A13416A66128369296FCE9C39547927E11DCE78CF3FFFBCFB86C02D5CC7D77EFE51A346B9FD025AFE92C6B0D5565B3993E1EF7FFF3B2404';
wwv_flow_imp.g_varchar2_table(120) := 'E4E0D36BC4DA5720479F5609A4CE6B63D0A1871EEA5E4ED292A476166EB4D1469070D0E62095250191140C6606B304A88D4948B65561A07DB824AC7860F8894B9A0FC66398E865209E9D8BA0203F01ED0BE077ED8CA0CFC6886CB9052203B64764F05EC8';
wwv_flow_imp.g_varchar2_table(121) := 'FADD41C8A146937FEAC92838FF1C741A3D1C5DAFBB1A9DAFB912ED475E828E175D88AC9D76C2879F7F8EFFDC7E2B66CD990DE128605DC9B6AC6DA836FF721E834FED24C88E207BAB2D90BFF3CE68B7F34E28D8794714D096CEE77264FE80ED91BBE3F6C8';
wwv_flow_imp.g_varchar2_table(122) := 'E37D32CCE77DFE0EDB217FC7ED5040C8E375EEF64C27D86107E4D60517BFBD7BF5B680696B417955D64EDBBBF255473EEB51DD0503764412F277DE816DDB11050C0B76F815F2B7DD1A799BF5434EAF1EB076B9F023060E208C7F3A25D512A83334C5D1D4';
wwv_flow_imp.g_varchar2_table(123) := '75361B01A0D9576F09EA451C319C1063B67C5044A449D0CC2B27963CFE3213A4964B2868F94FFB004EA66920C656A8653FED2E9400C9CBCB431F9A125AFF974F41FB06E4FD971051DE7BEEB907026D321A3F7EBC5B0F3FEDB4D3F0C73FFE11DA7A2CA1D2';
wwv_flow_imp.g_varchar2_table(124) := 'B76F5F485BD1FB0A12106A6B16D5726910125C6646BA0A40FE87CF4EC4F8FB7D10C3BDEDB331E988C3D0EE46CE4CB7FD173DEF198F2A6DCE6100001000494441545E0F3C800DEEBF1F3DEFBB071B8CBF071BDE7E0736F8BF7FA3FB982BD171E8396847E1';
wwv_flow_imp.g_varchar2_table(125) := '957BD4D1C83EE40FC8A5906A77DCF1C8DF6F7F945454E0A5175EC0B75F7F033F1E670DAA4935B2C275382540A4C1C8EC52287F88702B93477E91B2458B505A5686B285255830773E8A8B8A5034AF0873E60AE6636E5131E609B8525034BF18F38B17A0B4';
wwv_flow_imp.g_varchar2_table(126) := 'B42CF1CAF5D26558565989CAAA28AAE81C8DC57D27B0F4BF11359E6A6E50D374DD9B19A30832375680086C857B0FE60918AF90CFDC3D35291380F10A150F8FE3613086CCC1100E28CF005E19808410E0451B3BBDE6D45FD9EA52D537DC704388994410BF';
wwv_flow_imp.g_varchar2_table(127) := 'D43EA511C4C9085555556E194BDE7031BD9C76F2EC0F1932047FFDEB5F21D3402ABA3CDF6258390F55FE2212B896CF645608E4D997801193CBE7A0550199130F3EF8A0DB81A80D48DA6320B3434246DB930F3CF040F79D835C3ACB12F4ACDF80F63D5045';
wwv_flow_imp.g_varchar2_table(128) := '0AFF76C9523C306D2A7EDEA017F2F7D90FED07EF8B760377E50CB51D7236DF1CE8D11DF3C8289F7CFF3D5E78F34D3CF0D863F8F76DB761DC2DB7E0A6FFFB3FFCEB3FFFC178D6FFF473CFB917955E7EE5658849D5FEF50531BE963E1F7DF4513C40A12453';
wwv_flow_imp.g_varchar2_table(129) := '4BBE0D995DC2DF55575E8911C387BBEF30FCE3945371D24927439AD5DFFEF63708B74950DCC9279D84B3CE3C13C2CF18E613AEA47D69E396CA97A3F40DF64F7E942FBEFC123F4E9982D9D462CA172F468C6328AC912757DB2531AC60B589EA3CAC2FBDAB';
wwv_flow_imp.g_varchar2_table(130) := 'AB269D21F5AE26B20D04CD4A0048CDD60CAB8D419A55CDEA1BB6D58F4A5218484B10A38BB935FBCB19D8BF7F7F74E9D20566E696EFB4FE2D22D716E10B2FBCD011F845175DE488578E3D990EF22B6877A0B60DCB84D0D2DF36DB6C83E38E3BCEA5571A3D';
wwv_flow_imp.g_varchar2_table(131) := 'D79E7B09180902BDD56896D276D256456515DEFEE8235CFFCF7F61D2F793A13DFC017D1FCB28B43EA507FF562EBBA91DD260B44F41D72AEFFAEBAEC30DD75FEFDE79D0B70CF44C4C25AD47426FF5D858B3A7C2D56BAFBD06D529503DEA8FF64C8C1B370E';
wwv_flow_imp.g_varchar2_table(132) := '5A1AD432A95645245495F64D32F15B6FBDE5CC31BD69285FCDA79F7E0A0912ED979089F6E8238FB8BC6AAFCA132E855F394AF5D527F555F893F9A6E71236F7DC730F342EDA742507B0C630D94FB3044E35C6EA994281AE4358370C342B01A02E68D6DD7D';
wwv_flow_imp.g_varchar2_table(133) := 'F7DD21F5DA2C31E08A5F5B3033B77EAF9585534E39C511B7985602407E0011BA8851442EC29E306102F4FE815E44D22BC1025D2B4EE6C5E38F3F0EED8E4BFA1BC410DA41A8A5CB4D36D9045B6CB1857B8351C4ADD58AA476916CB74FBFC0626A01EFBDFD';
wwv_flow_imp.g_varchar2_table(134) := 'AE7BA7E1ABAFBFC65B74164AB3B89842470CA0768891E4C7D052A48497547081F630C8DC99366D9A7B75598C912C7B7D433191EA92F6233F8B3600A93ED52B9029206D43A6813423690C02093AEDDF900F45DA901CB0F2AD88918557094609566950F2EF';
wwv_flow_imp.g_varchar2_table(135) := 'C8F49299A77CFACEA3F652685BF7FD3483246025F024242418B4A22221A1FB7FFDEB5F90F6A0719076A7BACDCC6989E0A1F633687167736870B313009AF9B53350CE38B375130066E6F6FDEBA3232244119308550C2DA61F356A94B3F5355B89C045509A';
wwv_flow_imp.g_varchar2_table(136) := '057D3AEC04222881AE057A26C2170388E9B57148E5CA89288297F9A0F4325BA4BD1C4D279E9620CD52DAAF4BAE532F2A5F84C79F7A02C3CE3E0B175E700144DC6F712615D3A90ECD762A4B501F81285E50DFB3F58D53B982D472D427994B32CFA445F5E8';
wwv_flow_imp.g_varchar2_table(137) := 'D103D272C4EC128252EFC5E8C3860D73E6C051471D853FFDE94F908FE5B8E38F77DF7B14234B73D1F71D251C645EC8E7A2FC0A55D631C7FCD5BD1E6E66983973266422E8232EB7DF7107F492963405BDD5F90FFA774EFEC73F20C129734E824BE322DC69';
wwv_flow_imp.g_varchar2_table(138) := 'AC84E6D4F6AFEE5A7D15AC2E4D6B7FD6EC0480084EB3F6E0C183A1E53A39D9CC12C36A664E7D5FDDA028BFB40811E2E8D1A3DDDB86F20DC8B12786D54C2EF53939838A68D69608241034436B46120388B0C5C49A2525C0F45521F91CB4A251DB56FA01E4';
wwv_flow_imp.g_varchar2_table(139) := '10F08338162E588077DF7B0F529935132699BE366D135C9899ABD5CCDC77053A77EE8C4DFBF7C3AEBB0E8466787DAC550E536D7812439E7AEAA938F8E083B1F3CE03D0B74F5FAE9A74869711417555052A66CEC0D2EFBF450581DC8C3C0ABDCE7E1C1BD2';
wwv_flow_imp.g_varchar2_table(140) := '3FD2AF5B376CBBC5E618F4EB5FBBEF3C1CFDE7A329244E712B3537DE7813B5A3BBDD3B0DD78EBD16E79E7F1EB4DF43FB3BFAB10E3FE663EAD4699840F3433B15CF1E7AB6CB7BF915573881FEC6EBAF43A683766D6A8C02E25CA08E09C7D264A4E148BB93';
wwv_flow_imp.g_varchar2_table(141) := 'F0970091C6257F91F2490392B9289A509EB6005E73EAA4993906978A28E2D2D782A53AEEBAEBAECE7BAF59C8CC56D96433835472E539E38C33489C3B43B3B3669A71E3C6B95D7A9A2D54800843A0EB750511958846AABB6631D9C72220092E7D8043DF3D';
wwv_flow_imp.g_varchar2_table(142) := '94537085F2E90F684EFE26ADBE08DF129A12BCDA4825DC6BF5632CD7EB6FBEE9665CC95509CDE26246BD3929ED4CFB270276C40FE8D567188F56A16AD64C94BFF032665F7E39669D7126E69C7626669C3D14732EBB0C45575D85F937DC8005B7FE17258F';
wwv_flow_imp.g_varchar2_table(143) := '3C84B2E79EC562FA1D967DF011ECA729E8B67409B6E8D01E83B8C4F8BBDD07E198430EC5A9C70FC145E70CC398CB47E306AE9EDC425360DCB89B7001FD3507D0E9DAA16347CC609D6FBC310177DD7DB7FBF6C1D5575F83A43016DE25946536E8BD074D02';
wwv_flow_imp.g_varchar2_table(144) := '12D6D256B49B539AA140E68B409A8C36774930685CA55598AD9ADE547E4B8766250092C83433486517D169194F4E28A980522BB7DF7EFB7ADF1C343367F38BE9C4FC7ADD5736B3F2EB73E252DDC5B0AA637D195F652441B385D450BD5720B340CE2FCD34';
wwv_flow_imp.g_varchar2_table(145) := 'B2758FA70A2C86920A9D4CDF94A1598298A5A54895172E0F242309AFC2993426BD07702B972965BBFFEEF7BFC7F60306A01F35019934A90298932B7CE3F21A055AD59C5958FCF20B5878F5D598396A1462133F84CD9B87F88CE9F0BFA326405FC7A227FE';
wwv_flow_imp.g_varchar2_table(146) := '878577DC8905578FC58261E7A3882B0933E8489D79C210CCA68F66D639E7A068D470145F770D4A6EF9272A1EBB1FC12B2F20FBC389E838E5476C585A8A4DB33231889AC05F0F3C00632EB908F7DE79079D8CFFC685175F88A38E3A924BB50339516CE23E';
wwv_flow_imp.g_varchar2_table(147) := '222387B24C3E7D18456F356AB5462B134927A30482B67BCB612973434E4DAD54C8FF209F914C0CF927B4B92B49370D3976CDA5AC662B0034809A3D0B0B0B9D3018326408E42492FA7914ED4CADE78B908548338366327D624C8327E693AAA799FF0EDA90';
wwv_flow_imp.g_varchar2_table(148) := '455CB75EDD209A25F26B9F80545F31876671A9F0AA5FF12A5FE685EAAB0B12283233E430D40C2387A2FC0A7BEFBD373493CA41A8FE289F992968543033A8AD6AB3DA2EAD489B9BB41352CBAC5AAE1BCE653DED7F1088D865A3CB77F1AB5FFD0A9D0A3B22';
wwv_flow_imp.g_varchar2_table(149) := '972B14C1B2A5882F29871F8D22D96A335E91FBE3FAC0E8BCB958F4E604145F7F23E68DBD0E153F4F41D7430E42C751239077C5E5C83E6F18F2C9DCD9438620EBB0C390FBDB8390BDDFBEF0F4DF7536DD1C993D7BC17D1D69D62CC43FFF1C4B9F7D0E8B6E';
wwv_flow_imp.g_varchar2_table(150) := 'BD03A5D7DE88D291635072F125281E7A0EE69D7A1AE69C7C12358AD3B0E0C2F3B1F0CA3158CC65D1E0C9FF6193EFBFC3019D0A71EA618763F4A82B70E14517432B49D2C6D42731B4185B6F864A504B03947920C1AD7113E85A20B3B0ACAC0C7A514C938E';
wwv_flow_imp.g_varchar2_table(151) := 'B4038DA7340AE5551AA5472B3A9AA500A88BDF24D2A576EE4DA61AC559460EA1DDB95AA05949C4DEBB776FF7CEFFCE3BEFEC3EF8295B5F33BF063499BF6EB966E63E3C2AE6D0CB485AD796175FCC21EFB3B40EA98B5A3DD873CF3D9D4F4242C78C4C50B7';
wwv_flow_imp.g_varchar2_table(152) := '30DEAB1EBD69A859E68B2FBE701B5EE4CB389A4E410914B593C9D6FFACA9DFCCC898068FA1983D9B36767ECD875577D86E7BC81721C1A93E8C1C31C20950F92CB49A211B7E17DAF73D7BF5447E4E0E99BC0A958B4AB1ECA79F503E712216BDFF2E2A267F';
wwv_flow_imp.g_varchar2_table(153) := '8B28FD1531F7611120E04A467545252AA64E752A7C39197FFE156350F9DD77E870D021E876E5587438FF224CEFDB1F4F172DC0E3E54BF0645E1E5EDB6823BCB7C30E786FEF3DF1EEBE7BE39DBD06E18D81BBE08D6DB7C73B84F7B6DD0EEF6FBD0D3EDC6C';
wwv_flow_imp.g_varchar2_table(154) := '337CDCAD3B3ECBCCC6D755714C29AFC4CCB272CC9B3B1F0BA6CD40F9A449287BF32D2C7EE8712CA0909877EE853431CE43D1830FA162F60C1A223EA6505B90D6A7B1D3B6712D258A71B11687C651027C1EB518990DA2078DA93E59A7676B5154B34FDA22';
wwv_flow_imp.g_varchar2_table(155) := '0480B068666E56D34CAA8D42525BC78C19E3885C6FB08981C5A452B7E55C93EAA799BFBEC13733672E68495033A254449525BB50CC2AC6916A2C5B58CE3C3190B40F1195848EBCE16A07EA1C220ECD22D200B4A1465A88340AED6E945FE297963613EC6C';
wwv_flow_imp.g_varchar2_table(156) := '2C550032771D60BBCD0C9188D15197E94CA14E9D3BA1D7061B62CB2DB7C6EF38C35E70FE859033EDA67137E1DA6BAEC665975C82B3698FFF955EF6BDF7D8131B75EF0954FBA8A4632E5E341FF1E93351FEE1075878FF7D9C59AFA60A3E16CB3EF918FA1E';
wwv_flow_imp.g_varchar2_table(157) := 'BED76B03E474EDC6BA72505D59892A32D992FF3D89B9A32EE72C7D0D8A5F7F0D393BED801E975C8CF67FFF3B2A294C5E7CE5655C3EE2325C33E60A5C7DED75F41F8CC1E8112371D9C891184E67DDE8B1D763CC6DB7E15ACEDE6327BC8EB19F7D8AEB7EFC';
wwv_flow_imp.g_varchar2_table(158) := '1137D07178635131C62D59821BABAB701DE1EA5814575557E3AA588C610C575213B999BE86FB62D578815AC8FB14148BF718848E7FFD0B72B6DC0A5F7FF38DEBBBCC18397A35D36B4C04E06166305B0E12C802B3441C93D49ECA23AD51E3295361DCB871';
wwv_flow_imp.g_varchar2_table(159) := '3437FEEB5EB99670D0F3DAC42DF8C26B896D3733C87125FB5A4CA9D9EC77BFFB1DA4B2CB7923D55F5FBBD100D6D73F090939B2A422CA79A7E5C269D3A6411E6ED9BE7A79E884134E70DF149426F0F8E38FBB5D77DA12ACD953F6B2B406114FDDF245185A';
wwv_flow_imp.g_varchar2_table(160) := '43D76619AD1248004925953F40DB8957C863CC9D045E0684C4C92BC60704D440841EF69C9C6CB73F62E34D36C1E07DF6C18927FE1D23865F86FFDCF27FB8EFBEF11877F3389C7DF69938EC8F7FC2AE037745BF3E7DD0A55D3E722A17A3FAC7EFB0880CBB';
wwv_flow_imp.g_varchar2_table(161) := 'F0C1FB503CEE5A145F7A19669E7E06A61F7F2CE69D33144B9E7E1AD6A1033A525074A4C692B7D34EC8EDBE217CDADD553FFF88927BC763CED9C3306FE47054BDF73E32C970BDE89CEB76C185306A1B9F4DFE1EA3782FFCE90B4273E6CE45595929B4AB52';
wwv_flow_imp.g_varchar2_table(162) := '33A984E12CAAFAB2A967CC98C9C58199983E63067E9AFA337EF8F9274C9E3615DF71F9EF9B92124C22937FE6C730311EC3DB8437FC6ABCCAFB17E2713C561DC31D140037238E17B6D912B9A79E8EBC1D0762D2E429B87EEC583C41C1A25596558DBD3438';
wwv_flow_imp.g_varchar2_table(163) := '698D12E29A0024A0759F919191407D3DBF122433D8D6F1E3C7BBFF25217F92C6B99EA46B14D59C12B5480120049A1967C208B43F5F33B7B6EC6A70C578F2E2CAFB8B3A87984F1B74640B4BAD9316210FB16C3D95A1F569AD3DBFC9652631AFECC8C71E7B';
wwv_flow_imp.g_varchar2_table(164) := '0CF23B48139096A032E4509209A2CF98D7A70988E94524DAF62AB55169645BCBA9A94D436AA7CA3172772DB03FBC859769C826D3E567E7A273FB426CD4A327FAF7EB8B81BFDE155A57BF9744F8FAF32FE1DEDBEFC0880B2FC27164D6BD761E88CDBBF544';
wwv_flow_imp.g_varchar2_table(165) := '0FAAE8B9F366A1EA93F75034FE764CA763EDBB430FC737FB1C8819BFFF231672FD7CC9882B5075D32D587AFFC3A87CFF3DC4CACA904FCDA1D7F5D7A3C33979A3C50000100049444154D0A1C81FB83B320B3BA392CB79D1A93F60D17FFE8D29438EC3A2D1';
wwv_flow_imp.g_varchar2_table(166) := '9723FEFEFB08DA7542E70B86A2FB356390BDF7DE5810ADC0AD77DE867FD04EBF77FC7D9020953F4438581D93E85912682B21D03B025C5188099C322FCC78003CF88107BD5815E75D05612935A0CCEE9D71CCD9A761CB813B61FACCE9B8FDF6DBF0E24B2F';
wwv_flow_imp.g_varchar2_table(167) := '62697939E2BE0F956D6630334727321FA5394A086B3958938434054D0043870E859CCEAB1302EA4F0985D3134F3C01E59550539C002DF810865B70F3E106378F7666565616E4F59F30610234DB8800EA764C8CB8DD76DB412AFDA69B6EEAD68EA505E84B';
wwv_flow_imp.g_varchar2_table(168) := '3F1A502DE145A9666AF64882EE35A3AB4CED5813F1E84B415A6DD0D251F794B71753EB1361A8DCA738B32ABFDA3790CB99C3698BEB7363112F02BD8AEAC190959985CE5DBA600BCEAA8376DF0BBFFFC3A138E1F8E370EE69A7E18A73CEC5AD975C8ADB39';
wwv_flow_imp.g_varchar2_table(169) := 'FB5EBCCFBED895CEB77613DF41F0BFC710BDF3762CB9F65A945C7A31669D7222A61EF367FCFCA7A331FB9813514E275AF491C79049753E8736BBCD2D427CFE424449C4B18887AC9DB64321D7F237F8CF7FD1FDACA1C8D874330A9E0C44C94C65CF3F8BF2';
wwv_flow_imp.g_varchar2_table(170) := '2BAFC49CBF9F8C12DADAF6C3CF309A037927FC0DBDFE75030AFF7C0CCA7C0FCF3EFB0CCE3FFF428C1BF72F4CF9F10754545638C6AB0FF758CD11F05940464560806E5C10C0E79F7EC1D041A087405E7E010E3FEC280CDA6D2F5446ABF1C4E34FE0E5575F';
wwv_flow_imp.g_varchar2_table(171) := '43F992A52E3B8BAB3DB58F443B33E51C3EFDF4D3DDFB1A7A9D5C669F84FEA851A3205F91560C34E6B5195771A1B19410D0CE44ADF698B1B1AB48DB12A2BD96D0C83569A399B97DE95AD691DD969AC7CC9CFF402A9FD47B2D7FE99F8FCA59A4EDA8F20C8B';
wwv_flow_imp.g_varchar2_table(172) := '68239188DB47D09B0EC5FEFDFBA30F55E84E9D3A4133839ECB13AC0F68CA91263F83CC0EF90CDAB56B07B3BA8460282929C52BCF3D8F2F5F7C094B3EFE18A08DBA5BA78E3874AB2DB12D05D6F619593860C38D71DC6EBBE2CCBDF7C2457BEE8E91BFDE05';
wwv_flow_imp.g_varchar2_table(173) := '17F4ED8B93F2F2712867E7819F7F860D49E01937DD8C0ACEC26554DD17D2062F1B7B03CAFFFD1F2CE1AC5BF1F893A87E7D02AA3FFB02F19F7E068AE6C14ACA00320428D08C6C1190E9D1B923B2060E44FB53FE811EB4C7BB9C7106F276D9057E86878AAF';
wwv_flow_imp.g_varchar2_table(174) := '27A1E4A1875174F928940C1F89C577DFEBCA0B820872F6DD075D2EBD10FA665E96D4FDEFBFC7B89B6FC6983157E2597AEEE7CC9E8D98FBBF0758F743CC6D09066773594E5D7CC2E1D8F33CF4E5B8ECFF9BFDD09963F3EE3BEFE0B1C71FC5ECD9B3287CC0';
wwv_flow_imp.g_varchar2_table(175) := 'C36AD3151616BACD4ADA4FA27D0E720A4A884BB3938928B55E825D664A920658C06A4F09F6D9ECAF0480560B62F44FD46660F3ADF6A6655CB41A01B078F16248FD9F465B5ECC5A17FD9A09F4DF8534738B79A5DA6BCB697200650BCA5177E9A5973A95FF';
wwv_flow_imp.g_varchar2_table(176) := 'BAEBAE73A14C05C5EBB99941C2454246C263FAF4E9D0178735C3484824EB34E80F24481F93C8C09F70896CEE8517A3F842DACB37DC8083BEFD1EE772B63B37E2612880D3E9603B9A4EB081EFBC8D1E0F3D88BC5B6F47E4B6DB11DC7B0F7C6A10B1B7DE46';
wwv_flow_imp.g_varchar2_table(177) := '8CCEB2E0C79F10CC20A1CF2D46505C02BF6411B07419505905232146682367F881ABDD27A380ED8D50B58EB52B40D6FEFBA2CB85E7A1EB5597A3E3B061C819B80B95EB00652FBF822279F3875F82852347A1E27FCF20F6F3CFF0975402FD3743C773CE44';
wwv_flow_imp.g_varchar2_table(178) := 'B711C3D19E5EFE32F370D73DF760D48891B8836BFA9327FF808A65CB1050E5E60F7B1210D6E35C21FB0A37358506C8CDCD761BBCB6A7205A545E8E8729B4A64CF90971F61F6A07537AECBB547E8D8D66FE2953A640EABE5E5A926358E6E19ACCF62C6AA5';
wwv_flow_imp.g_varchar2_table(179) := '53B425AD501A83844952709852F2C727706875572F34B7C85623006473EB251AD99F7591AC99BD3767752DE749CD1F3F7E3C978BA6905E7C37BBEBED3E2DFF6927980846AFF71E7AE8A1D0FF0AD0EC71F9E5973B87A0EC771197EAD09AFF830F3EE89C72';
wwv_flow_imp.g_varchar2_table(180) := 'FBECB38FFB80E9F27A49BC9CCD32480C8B962CC3E449DFA054FF20E4BD0F50FDCE447499F233768AF9D8911936E45253F6C75FC2FFF87380AA366617C3C8541E67548FDE7A2304226E32323435B268665BF924D5B9F7DB59A788105919B09E3D1139707F';
wwv_flow_imp.g_varchar2_table(181) := '7419351CDD39E377FCDB49C8E63A7F6CDE1C2CB8FF01CC3AEF02948C1C8E253403AA5F7D03983D9782A41A464D21FBE003D1F58A91E870F2C9409F7EF8F4ABAF7005F1A0CD4EF29194959539FCADDC90C68B11F3F5A04FE480030E70269318BA3E7F8F34';
wwv_flow_imp.g_varchar2_table(182) := 'B243397EF2DB28CDBDF7DEEBC6BB21BDF752FFB5E94B938196493534C99E73E89397CD3E6C1502406AD954DAB9DAF65B1FC635FB6BF94E0CFCEAABAF42CC2B2636336893CEE9B40DB53966CB2DB784FC092A43C4A65079152FD341C24182C4CCDCAA80CC';
wwv_flow_imp.g_varchar2_table(183) := '810913263807921C4C120ECA6348FC050C63A48CE99C9116CBCB4C13C3224439F3FBA49238139B312DE32C4286B508C05916C638A9C4CC1B00605230C601F80CF51C01D3FA7CE673A520D2BF2FF28F3C8C8C7F29BA5C311A1D8F3802119A14A5746ECEBF';
wwv_flow_imp.g_varchar2_table(184) := 'E62A2CB8E842945D7535963EFA18E2DF4E86472125E11228EF169BA390CEC2AE175F84827DF7C52CFA0CEEBFEF3E8CA4EF426BE2F2E4372423D5D395554669F54663B10BCD16D9E2DAA927153E3956CA28612F27AF84B8F6FC8BF94517A2113D6F08507D';
wwv_flow_imp.g_varchar2_table(185) := '82850B17422B44658B280C89FF80DA97DC151AB386A8271D65901AD3514DE3D62182946A271BBD6E4D66E666E7EDB7DF9E766A0C72CCC95CD000161616BAB7D6345BC83F50376FEABD36F21C7BECB1D0BE01CD30CA2F66D02CA07B2DF5796474E5110138';
wwv_flow_imp.g_varchar2_table(186) := '201307A488F97E1C8BF920605B00B132DC61241AC77816876F3EE29CC2F5855DF790CF02E315C150334C094980E4A13A74EDD215E4C3A3CAEE1D7C30BA0EBF0CDDCF3B0F7983F646846AF122FA21E60E1F8E3232F5D23BEEC6B2D726C09F3E0399F20FB0';
wwv_flow_imp.g_varchar2_table(187) := '10C99D8C2E5D91B3DFFEE83C6A043A52004437DA04133FFA08378DBD167A2760C25B6FB9FF17A07EABCEA60009E71D76D8C1F969647F7FFEF9E7900A9EDA16ED7AD48A90C6E4EEBBEF76AF4EAFABBA9F5A6E7DD7321F654ECE9C391B6EE5A1BA1AD5C50B';
wwv_flow_imp.g_varchar2_table(188) := '11AFA8E0E8D597A3F9C5D55056F36BD8DAB44802A0ACAC0CB2CFEBCB2762100397703693EDA68113B36AE947C42207517DF952E3CC0C3D7AF47036BF5612F44CF56A96D12CA4CD489AA1C8DF7A04318ACF1B2D5F9550002C21A325A9C2670AC7B4818780';
wwv_flow_imp.g_varchar2_table(189) := 'E5066470E3B5E71B73C0CDF88A878B0714B13C7B003DE32F02F88867526BE8DF077947FC099DAE18818DAEBE02990376C2D2C993B1F0BFB760CEB073B0E0B211A87CE679447F9A0A2C5A0CA3AFC000E6F6E033BBF5E98DBCBF9F9050F97F7B2066D39FF2';
wwv_flow_imp.g_varchar2_table(190) := 'C003F7E1E28B2EC13DF7DDCF35FBE9D05787D527666B92D32C21C8A501A81DF2E46B664F36C64C3D827BA558DA9E547FA5D11825D33464A83648B0A80D53E93389D364F3635194BCF402CAE9B3892F5B4AFC26DA048E9420016A85447FC0588DAAEE9B0E';
wwv_flow_imp.g_varchar2_table(191) := 'BCA6ABBAE16AD64048A5AF4FCD3333A7D64B08C8EB5B5A5A0AA557ED72DE6949CE2C39508A5D3DC85F2001909B9BEB12EA3D7E3913B51CA80D25E6583839B00C396B5753131039C435E4A66CEE87178178DB016FDCC9E4B5A1315F603E09C947C02C4CCD';
wwv_flow_imp.g_varchar2_table(192) := 'B401226C6FD02E0F99FD7B23EBA0FD5178D9C5E87CE105C8EADF0FD18F27D2933F12334F1F8AC5FFBE15C1C48FE02D2C45A43A4E7102E63750D140758444D83E1FB93B0E40FB7386A1DB5967234AFBFAD3CFBFC475D75F8F2BC68CC1871F4DA4A9C396AB';
wwv_flow_imp.g_varchar2_table(193) := '1D0434F1210D409A969C78D2BE14A636292727077A735402FD63AEBAD4A711A6A65FDF6BD19B3E65F6E34F53204193519087EA2F3F43D155D760D1E38F61D9AC198853F84B5804C23E7148AC732C03566D6E2C78D1A467AB1000C2A0985A88D6752A9819';
wwv_flow_imp.g_varchar2_table(194) := 'F2F3F3A10D40DA94230FAE9941B3B536F2C80CA82F5F6A19A9D719B4E5F5515095A9789527A1A27895A9B8BAE033A202647FE385C69E4192D179B9DAD3C8F946ED408463E45C3F3707FEA67D907FF451281C3E02DD4E3F03D21C16FEE736CC3FEF5CCC3B';
wwv_flow_imp.g_varchar2_table(195) := 'EB7C543FFA0CF2161423234E0F04FB0AFA1534DF58E0C3F7E28873D92FD2B53B0A8EF90B3A5C3D06857FFA13BE9F3BD779CA870E1B0A79B74B16965094A9C1AB6D5E833D3433482B13C88E4F82EE93209CCBD722B55FDA9C3439D41C1A43096109089983';
wwv_flow_imp.g_varchar2_table(196) := '12106250C5D7246994205A5585195C0D8AD3511B2082CC0E85B01F2663C1986BB0F09A6BB1E8EDF7105F5A017A4C29C83D6A8606FEB8B670685DD8943FAD46009811B1ABC0A488498FCACACA6A67FF2CAEC34B2B1071E9D99A829971292AD7AD1E288F04';
wwv_flow_imp.g_varchar2_table(197) := '8F0852826075C4E653FABB8167335904994BB97F1902A60C385B233F1791CD3745CE5187A1E35967219F2B0FB1794528FDEF7F517AF995587AFB5DA87EFB7D0425A514087112994E8FB38CA70BB018E808B2B391B1DD36687FF619E84C668F6FBA055E79';
wwv_flow_imp.g_varchar2_table(198) := 'EB1D5C7DE595B8F9E67190577BE9D2656C6AE040791A1BCCCCBD94D587EBFBDB6EBB2DB6DB6E3BE75895B6A59D9EDAB425C6961357CB7BC2B7846EAA00501B93DB7BF54C63BDBAF150FA8680EA68358AE717A3B2AAD2A1D8F20B60F405053366A0EA8187';
wwv_flow_imp.g_varchar2_table(199) := '5132EA72943CF8102A674E871FAF06A540A25A0B126113FF923A9AB8050D50BD993986AC8F99450452152BB9D69EDCD4A32AC5B08AD7F5DA82084FB34B329FAEE558941A988C4B0DC9F3C8601BF5D61ECD7C3225B046C3CF3CC8CC007AF542C10927A0E3';
wwv_flow_imp.g_varchar2_table(200) := '156390B1CDB658F2D69B28BDFA3A945D77032A9F7B0936751A6CE9124E3209A60D8C0280350422328299EF9A13A5A33087CB825DAF1C838E7FFD2BE656C770CDD86B3062C4A578F6B9E7B0607E095556A6651E97214D3F12C6F2ECEB85ABDB6FBFDD6922';
wwv_flow_imp.g_varchar2_table(201) := '0A5341EBF87A9F5F9A5C9C3E0C997C1ADBD4264A431048F5D7726FEAB3C6BA26C651115D8658B4CA094CA3B689EC2C5E037E4515629F7C8CD2EBAEC7FCABC622FEC30F880714026C8C502CBAE065939EAD42006886176128AC0F9B62740980CD36DB0C4A';
wwv_flow_imp.g_varchar2_table(202) := 'A7342222A9892216B3351F0A119E6CFE248149E8049CDD55968480AE55BE99CA2490D3DD04CE1197CA472D1E624C3E8193048C075573920B9894868241AB0196978B789F8D91B1FF6F50A8B5F876ED517EFD4D5872FD8D883EF322E25F4F822D28013803';
wwv_flow_imp.g_varchar2_table(203) := '8908C1913433687B71C0B9480057227F2359C0261BA13D1D7D9D2E1F85A5F415BCF0D604FC83E5DE75D79DF8F6DBEFB174C95212678C4DA10008D0E8879941E325BB5D2B347AC14A6F606A094F9E7E81AEF57AB73E263A68D020284EA6167808CF660E8B';
wwv_flow_imp.g_varchar2_table(204) := 'BC03CC1293406666A65BED9150461A0EB523E04A4B8CA0EA2AD98E6AE25D631D68BAD7AC4F5F40C5638F61DADF4E41E9134FA07AFE7C6A03C2F3F2F62B6F5300C9A629AA6DD83A358368A75ED231975ABA06484CAEBDFE5A099083484C2B012047917689';
wwv_flow_imp.g_varchar2_table(205) := 'AD29B19819E4F5D71294848AEA91409150D07B082A53710138B0140AFC8566FD028BA0C03CAAE601B9510048130864DBF35679A03C9108AC7D3B2EE76D8AC81EBB2177E0CE64F028963EFE2896DE7927A29F7C0A50ED376A3360F9A83D8CB2C423F3D3C6';
wwv_flow_imp.g_varchar2_table(206) := '97408187806DD5A54F9F4164D04074BAE422E49C7412BE9C371FD75F3F8EB3FE28BCFFC187282F5F4CB388C4585B567A2E342E12005B6FBD35860E1D0ABDCE2D279F19FB527D5C0C320000100049444154031AA72428ADAED53A5D0B5486EE05BA9690D7';
wwv_flow_imp.g_varchar2_table(207) := '58E84D518D8BE2D30111642062191A417CB4A41CAF476358C831300E004F0E153D38154B605F7F85922BAE44D1ADB7215A5CCC314A3FDEEBE2A35508001183185BF661DD0E8A30CACBCBDDBF14136188E0243014AFFDE0DA18A40D1D75F3D5772F26D7FF';
wwv_flow_imp.g_varchar2_table(208) := '06F8E28B2F38A801CCCCED0414D16929506526F2052EE0B0C378D523E2A10309C2E39D1118E54E3D9720D0529EDFB91041DF4D80FE7D11E9BD1162B4E5AB5E7913FEC4F710FBE61BC4396B18D79933584E6A19AE20FE0426A1624E1018058BE443D0BD3B';
wwv_flow_imp.g_varchar2_table(209) := '72FFF807DAFB6763DE665BE0B1975EC1C891A3317EFC3DF891EAA8ECD6E56D6621693ACDCC6962B2F14FA250D2CE3E8D9D99AD510BC4DCF5F96FA49569879EF602AC4D796B54E92A1279B4F7B372B291994D01C0F64F5ABC0CE32B96E109F898CDB1D2B8';
wwv_flow_imp.g_varchar2_table(210) := '00013C8E89F60AC4B96458F9EE7B88D349CBE855949ABE682F7D55355E4D66864D37DD14F210D7578B66EBB7DE7A0BF21CEFBFFFFED04CA3747A09441EEFA79E7ACAFD1B2BC5D5C71066E636C13CFEF8E3484DABC197E66166D07A70AA26211120C860A1';
wwv_flow_imp.g_varchar2_table(211) := '9B90E9DB137889044188240031BFF1271264C0CBCCE6E300199C19E2133F013EFD1258B810B67829BC988F4CDF635E0F31DA10BEA96426AF731A892C401C71F3814DFBA2E3D0335070EEB978A36411C6DC7823AE1D7B35DE7BEF5D2C5ABC882A689CB9EB';
wwv_flow_imp.g_varchar2_table(212) := '2F870F1AF594C0D60E4CBD1E7DF4D14743CE3BB335637E354C02400C9E3407142790F34F9A9EF66B6842D0F828BEB1C0CC2093A34BD7AE4EA00101E617CFC777F4C73C128F623C9700A75926E0791CFD0081C5A1A1F1A295801F039A06FD2BA0C35BE1AE';
wwv_flow_imp.g_varchar2_table(213) := '05DFC8432C8FB1CC00B3158949AAB9547D7DA5471A80368A480888D9BFFFFE7BE8FB6F7AA6F709349BCB99A73C72F66956993469924BA374D3A64DAB9DFD45689B6FBE39BEFBEE3B285D2AFAD484803FED3C433F36A7A0CE606BF66734E708C0B85C67C5';
wwv_flow_imp.g_varchar2_table(214) := '64F62953E1CF9809EAE58C2313936C7C4250034C09F1BE00750ECA05D2930F3F3F0799BFDE1579A79D869F7FB51D6E79FA195C75EDD54E70CD993597EA3E8950795539CBD5653A41CC2F5F4CF29F8568265F9BFACDCC7D0C463B37C57CA979B527E31B6A';
wwv_flow_imp.g_varchar2_table(215) := '4BF22B48BB5098FABC31AEA54D6EB4E18688D0F7B0B0A40445F3E6D12D538D221F789AE37A2705C137ACB89AED8EF801AF8C58D7E893FF8DB7B5A79ED5DEA4EDA255080033734B73B223B5B1A72EF6C4E8B20FF50AB0DE03D03FAE9020100169D61683EB';
wwv_flow_imp.g_varchar2_table(216) := '4B3F175F7C31F48F3E9EA0A3465B86155EC9E5B18B2EBAC8FD030F11970483CA9339D1BB776F488B507E9593ACD734C4017FCDC3C69685FE9CBDB3F99051FCE5C0BB5FE36F002A0084000167048F440344989BB33D9F1AF5F880B387F2F9119FF19C3518';
wwv_flow_imp.g_varchar2_table(217) := '0F5E21F530C0A7A0C9E8DC19116A3815C7FE054F962CC488B1D7E15F37DD4827DF37CE31E6488C3F2C16024A8CBA25A596DAA0D76606CDC8C299D4FEC30F3FDCEDCF30339819D6E690909710D1AA8E5922AF99B9CD387A514902595BB65597B404B3449A';
wwv_flow_imp.g_varchar2_table(218) := 'B5A9E397D29A996B7701BDFEFDFAF6456624035F7FF5B5FB6458226F802574EEBE1A8BE19E5835BE80989E402D00BCF61C8007074403C17BDE4063AD305DE0A5ABA2C6AE474CA9FF28B4933E6555B34B2FB54E31AE3688E8E510CDF0871C72084444113A';
wwv_flow_imp.g_varchar2_table(219) := 'DEB424A8D95F5FF0B9F9E69B317CF870483DBDECB2CBDCCCFFCA2BAF40EF80AB0E33732684340EA9A25A37D7BAB49ED5D667700399C7889DBD087A93898DD77083CC2B9E896B323ACBD375405D404C4C2D1EA9907846C22165C4CD438CE9631CB5548867';
wwv_flow_imp.g_varchar2_table(220) := '64007D36C1E2030FC4573BEC887FBEF71EFE49A7E15B13DE846625DFCD3C7087C8CD5DB81F0A1E17A6E7476AF991471E09BD5E2D3B5DE32010FE05D2BEEA82E293A0B43EBDED626AEDE2D446AE64CB93F897A6F7FAEBAF43DAD951471D056DF492E049A6';
wwv_flow_imp.g_varchar2_table(221) := '6BA850F599197AF4EC89BEFDFAB96568BD9B3063C60C981935B5C0C11204788B6D7E2016C7677406C78CB4419A30D21D9381899942917087F92E48DB0F49296D75356A456606D9E37BEEB9A7FB7AAF19915AA746119006E9AEBBEE8208E4B8E38E739F14';
wwv_flow_imp.g_varchar2_table(222) := 'CBC9C9E138989B41E4109430F8F6DB6FA1B0ACAC2C317B72CA3433C7FCDAB02215541A81EC4E11C30A55050059165D392BB48F64E2270EFC276CCE6716900852C1F039CBFC9CCF3E67F829C34FA8CB27C0C7C7BCFE98793E62691FD6C00700DE63F9EFD6';
wwv_flow_imp.g_varchar2_table(223) := 'C0C7595998D27B13CCDC671F3C9019C188BBC7E3A1871E86BEB7271366A5B6317F539C62426DF091ED2FDCCAF9FAE28B2FE285175E70F0ECB3CF426FF74908EBB36C49D0BDE2F5D295D2EBF55F6973FA608B9607E50B3023E26A3A25612CED4DEF01FCF1';
wwv_flow_imp.g_varchar2_table(224) := '8F7F847C3EDA1B60B63C4D4DD2F50ACCCC31FD565B6D050922391FF5E971D1830AE6F0303018B58025411C1382286EA9AEC0A7C8C48C6815A6CE99831933A663217D3ED5FA9212FD0592D369E67F4E3B6C666B39CD0C7AB947DF7D938D5F5FBF349B68F9';
wwv_flow_imp.g_varchar2_table(225) := '4FDFFF13831CC91949799233BA083542E9ACBCC96BDD8B88B48CD8BB776FC874F8E28B2FA05501CD484A9B0A9A577D32EC0CAE01FFB372114E229C50B50C43480043AA2B1956112A3024BA14C73BA8C0F1D5CBF0B768054EE4129F838A4A9C2420719C12';
wwv_flow_imp.g_varchar2_table(226) := '5D8653052CE334A639837026E12C96358236FF6D1B6D88E11F7F8A5BEFBF0F3FFCF8232A2AABA0B5E9D43635F5B5F024C6D42BD552FF8F38E208C80128D07F51D2BBFB0209657D4035097A03F32F7FF98B7B6B5369B55FE0C30F3F74DD91162741A07172';
wwv_flow_imp.g_varchar2_table(227) := '11FC91C0D3966F0979696D43B9C4A849419A8059C3090133832601D18FB419F986A64E9D0AF5536D504D1202CEE342ED4DEF83CCA526F81A19FDA96F26E3F68B87E3BFA79E8627AEBB1E6FBFF82AE6CC2E82514B60B1EC45FACE56A3010865427CAF5EBD';
wwv_flow_imp.g_varchar2_table(228) := '2022D2E612A98A8AAF0B627CCDDE52F7F51F62444422A6830F3E18DA91A66DA7D210B4E75F4E3E6D4F95CF400240338CF6024833507D661A6A90DDC123F59A6280D23FCAD8289FC6490DF1B841DFF588F3261E07E2248C38F5FD441C40673FAA99CE01F3';
wwv_flow_imp.g_varchar2_table(229) := '69CF9820CA7451A6AB6618A3D320A6D001505ABE04EF4E9C88CF3FFF1415CBAA00E677C0FCCDE914AE8477CDDE494855F7259805A971C9EBD478396D65C669E395C6441F6349F505A8CFCAF721858476162A9DBEDD78E8A18742B421A79D04865962AC94';
wwv_flow_imp.g_varchar2_table(230) := '7E6DC12CA1096AF9525A88CAFB9182570240FD547901C7DC3410D4E048095C0604368E18FA33BEFBB2A5E8FADDF76837E15DCCBBF50E3C3762241EBEE336CC2D9A878034A3FCE9825625008434CDD6F203688611C39AD53FD0F209C881A7CF883DF4D043';
wwv_flow_imp.g_varchar2_table(231) := '902DAF3849757DF25BFE01CDF6222E0DB03CCC722E49D2CBE31FD024507D2E7455781C5AD4A8544646E4F09349952C60C2804F0385FC09DCB5D2D4443070A7A244300E5C1160529D70079FEB465D12284E6DD13E0799373EFC1A020AF4A8D98170254836';
wwv_flow_imp.g_varchar2_table(232) := 'ACEE75EA7D324DDD50C2435F6C9E306102342E1A678DB7FC314AAB320412D41202FAA2B3B435098073B9242AE7A0968B65F6A50A03B3844AAF49C34C8856692B8399390D50CBCED24CB48A21B351FF1A4E4BC1CB7388ED79573314310EDCE7D571DCCB55';
wwv_flow_imp.g_varchar2_table(233) := '81BB6251DC5555897BAAAAF054C512BCF3D30FB8EFFE7BA1FF6FB8B87C31C7B02613B337F6E93576054D51BEEC42FD330E7DCE4BDE7AB3FA07548422C6D100CA2C903D2AC2D2471EB4DB4F20E2913D29C6D77E02A978F5F52920F3293EA09A676688002B';
wwv_flow_imp.g_varchar2_table(234) := '80109D043DA3D31E6E5AA09D5F1B527C5890855A4016022F931081C7328D44048F051B21F5949449BD6F85D766894E6BCC34ABDF73CF3D9026A6E53E697C12D6668934C9EE4B7390CF479A9EFE0DBB985BEF13E8BD02FDCB30CDDED2F4641E48D0CB9697';
wwv_flow_imp.g_varchar2_table(235) := '06F84BFB12645ECA8CD156653383E8438E47691E660633734DD08F9925EE0D5C15083023882580A6C04F5CF9F986AB0493AA2AF0FDAC1978E8D187F1DEBBEF860240885B573033480B90FA2EC2D0FFE6D36BA29A2D50CF2182D2CC2FF55403A8FDFCDA3A';
wwv_flow_imp.g_varchar2_table(236) := 'AC4D4352F3E5DC919010E32B6D3D45C0C89562D00E1CE4C1199938926BC2476666315C0E47F3FEE88C2C38E0F59F751DC9C65149F09896DEFC23330D4738008EA0A4389CFE883FF6ED87A37E7F080E3FFC301CF9C7C370C4618743339F6C62D9CD49D047';
wwv_flow_imp.g_varchar2_table(237) := '30654F1F45EFB79E4B086AC933DDA07A1B1A52FB20534D5A9A0480C6466680FA2E6636E320207168CCF45CBB34DF7AEB2DF74F3DF48F4BB41CAC78F9064E38E104E75FD07B082A53EF7948D0D71D6BB344B99AF165F70B2428443B027D6C56FF2F429F97';
wwv_flow_imp.g_varchar2_table(238) := '13C857B1229C89334E4FC0A9679C8953CF3C83703A4E39E30C9CC2F8934F3D1507FDEE20C877235A4CF4A0F17F359F347E2D4D54834C006901723CC9AE976058DFA624C860C552C8A7D8C08BE0CF59D938C732710645C269C4EC699EE154DA7D0A1D30E1';
wwv_flow_imp.g_varchar2_table(239) := '6902C6EBFE74866708485CB5212B38C381417167B7EF8011471EE1DEDABBF6FAB1B8F6FAEB31F6BAEBA08F73CAC6BDFAEAAB1D612BD4BD545E3DD3578D6FB8E106B7AFE1C61B6F443A21596F326C8CBAD55FEDFBD09E00ADFE1CC7159DD34F3F1D12FC12';
wwv_flow_imp.g_varchar2_table(240) := 'F6660631B140A32586978AAEFFE9A04D5F7AD3509F0CD3D66EAD3468A9577B4494469A83F2A48299419AA51CC643860C81848599218BAB307A5149FF2846CBC6975E7A29142641F7824B2EBD04175F46E0F34B0897F2FEB29AF012C65F76E9705C78CE79';
wwv_flow_imp.g_varchar2_table(241) := '18B4D79E6E7521B5EEC6BCF61AB3F0A62E3BC2D95303258FB2FE198876008A60920462464E5BAB462ABD47F65648E059C0BB015E0443229CC1A9F4F7E5924F67C675A1D3AE0B7D00DDE8B4EBCA50D75D5C9C87CEBC1724E20C5D941E1EBAD6845D74CDB6';
wwv_flow_imp.g_varchar2_table(242) := '75310F3D7A74439FBD06A147DFBED864A34DB0C9C61B3B90BAAABE89E05341F6ADE2F55CA0D50D854D096A4F4383FA237F8DD4FA08C759FD962624879FCC02ADD4D437B49A5DA5D5C9FFA3D95E4BBD0A752FED4FCF53F39919CCCC2D314BED171DA5BE95';
wwv_flow_imp.g_varchar2_table(243) := '68664E3048CB4C82F63BD4851EDDBA61397447F76E3DD0B55B777463D8DD85DDD08569DAB7EF00D1676A1B1AF3DA6BCCC29B43D9220E119F9693F4D96FA98A620A11487276589B7606F4EC0AB20DD822E2E1A8CC1C9CC1F5FE4319DF8D1E5C03671E5B5E';
wwv_flow_imp.g_varchar2_table(244) := 'A2DC396B0A94152EA33183CC7A63F9913E7D90B5D96630A3EAC0A7AA9B8F79159E7531A071D67F78D66C2CF55EEA7ADD3475EF7F89063CFA74B4BB54A682CAD512B31C8E8AAF5B56EA7DDD6B8DD972481D45C52E4F9D423ACB231BF1AAD50B00E1CECCDC';
wwv_flow_imp.g_varchar2_table(245) := 'FEF13DF6D80323478EC4881123A0D942CB4872124A186840CD0C66F5830489D4BDC276EDB0E3565BE1A8CD37C7D0AC1CFC2323829D0DC827F37BE0052B4CFCF2623D4E8A11787979F0B6DF0EDAE2EBB15D5C1780BE2520F2598FA25B655633839941CE3C';
wwv_flow_imp.g_varchar2_table(246) := '6D00D26E4EF97F345B6B8CA5299825D298D96A71205AD0586B46D7AEC54BA9AA6BE6D792B09EAD36730B7BE8B5B0F6AE5373CD960FB854452DDFC846939DAC7DFE1A646D2DD5004B3B10F4EEDD1BBD6B40BBBD24F98F39E62F18396A34AE3867184EDC64';
wwv_flow_imp.g_varchar2_table(247) := '130C320FEDB8A0EFB35501EBF0397507E66EF8B3F627B3BB4C012F029617EBD4111DF6D907919C3C1237C068CA0083FE101EF562C0CCDC6E4DD9E5625AF94314EEB5D75ED0D2AEFC42F2FA4B28A9B7075900000B5449444154E4E4E440B3B94279F6B5A1';
wwv_flow_imp.g_varchar2_table(248) := '47F4A189414EC7D1A34743FF14460E3F09035568660A5A0DB40901903A5A52F934E38BB9B591438E23BDF0336EDC38E7309399200D413092DAC255575D05BD2824D0FDDF4EFA3B76EDB5017ACE5F008FEBBA4E81E38F912D3DEAED460018915AE95A5C07';
wwv_flow_imp.g_varchar2_table(249) := '2CC7983EA0732973EBAD91BFFDF6006D5C464142C1E81F4078FC2206CC0C5DBB76855608F4DF9FE51CD5586AF94F4EE13FFFF9CFD0FF7694F75FA05513C56BB697D010F31F7BECB1D067C825207EB1C2169AA0CD0980D4713233F72EBA3675E84522ED1B';
wwv_flow_imp.g_varchar2_table(250) := '97B497862002D1329B96B34444DA6CB2F1461B21372382EAAFBF84CD9D4B8604D9317045267ECD5DAFEB4FC0EC6EF66701D6B1101D0E3B14286807CA042C3F12352DBF0FAF568501338359C22C902970C8218740AB4262F2EBB99AA295006D191668AF80';
wwv_flow_imp.g_varchar2_table(251) := 'E265EBEFB7DF7EEEFB1272189B25CA58551DF5C5B7A4B8362D005207CACC38D14620ED40F65F12643B26ED3E9F0E21BF64212ABEFC1A4B97962342DD3F80A1A10EA30410F8143219343F3A6EBF038C66464395DF96CB3133B7BC26955FEABE1C843205A4';
wwv_flow_imp.g_varchar2_table(252) := 'F66B3D5FF78AD7B8CBDFD35670150A80B518694380C59F7C82E8A46F905115838CF2A0411954E2248097938DACADB741BC7B4F50C540788418682C0C8402602D30EB2F29C7D237272036751A22CCE7735649D8FCBC698053020688239657809C1D764046';
wwv_flow_imp.g_varchar2_table(253) := '7E3BC9980628392C627518303398D9EA92B4DA67A100F8C5A1AD210C0615937F4435677F5455923119E1F2FAEEB7617E3C04910C64F7ED839C6D7F052F2B031ECD8286293B2C251D18686975840260352326879C05F4E913E2D531547CF515A2D37E7639';
wwv_flow_imp.g_varchar2_table(254) := '927C1934E0CC1150A6C4B2B3D161CFDD90D7BF3F7C8E8EA901088F10038D83019258E314DC1A4A15EF05F0E19B8FD8A232547DFD35FCF90B61FCA34CA016000768A023F0E3C8E8D11D593B0E805758C8D99F1A811AD140E587C58418A88B815000D4C548';
wwv_flow_imp.g_varchar2_table(255) := 'EA3DA7E4B8817E3843C5F7DFA3E2934FE1554699C208D40C1281BB5EDF9F800E46691C399BF543A45F3F802B0E5ED0B075AC6F1BC3FCAD0F03A10058DD985AE261505189CA8F3E46D5F79311A1CAAF68CA06EA017080F53CC4FCC60283CC2C44B6D81259';
wwv_flow_imp.g_varchar2_table(256) := '1B6EE8CA0D9C0458CFC2C3EC69C3404BAC281400AB19354EC088C481CA397310FDE463642E595A9B5ACFD60738B7D3B43090EF6B2080B7D146C81E3010D91D0A290012A55B100E512DD2C38B06C740BAA86B7183B73C1D050681FBC863F4A79F109DFC03';
wwv_flow_imp.g_varchar2_table(257) := '8C367A20D6A40AC0D3B5400CCC28AC2DB87C082041A0D93F1E3164EFB2330A7EBD2B026A196081E64069101E21061A05035EA394DA8A0A8DC5A2A8A6F32F5E540CDFF52BF1EB2ED7F327F1EE406208229D3B236F9701C8DDA067A2540A1F4A0204140289';
wwv_flow_imp.g_varchar2_table(258) := '88F0B78D61202D936682FADA1866D7B4BB6E262E5F84F28F3E447CF1925A66B400587F90FA6F5200A00D45D9BDFB207FDB1DE05904668CE7091E5A0A64109ECD1C032DB579A10058DDC8F93E6254FFABBEFB8E8C1A8397110132336B2083E1FA00CBC920';
wwv_flow_imp.g_varchar2_table(259) := '68B34F6E0E3CAEFB7BBD37425CEDA17431D9FE14028686D33854740821065231E0A5DE34E2F592462CBBF18A0E7C949796A2C3C08168FFBBDFA2E0908391F7FBDF110E22285C1F4896F15BE4FFE160E40CDE0B595DBAC013C307062D0952D140E2FF0536';
wwv_flow_imp.g_varchar2_table(260) := '5E17C3929B2D06D2C233E91200CD16CBAB6B98E7190A771D884E975E8ACE63AE248C41B72BC6A06B0341B731A359E615E83C6A240A0F3E185E760E350D4EFB298D0A640EA4DC879721061A1203691100669616874643224665058820BB6357E46CD20759';
wwv_flow_imp.g_varchar2_table(261) := '7DFB21BB6F5F64F7E98B9C06009593DDA71F727AF747CEC62CBFB01367FFB40C07C2A36131D018A5A58B67D24971D31A03518D5926157178167790417340FB721AC0FB0795A179DE0B8C224662264EC71F0152FA111E2106D2C62BA100580DB1053401C4';
wwv_flow_imp.g_varchar2_table(262) := '9E3E3C04467140E7DC6A92AFDD234A0079FF038681B17CD6E1B38EB52B244CDD4A31D02A05408B1B2BC7EF645083B1ED0D0D60A901C05F81313484478801BA8182A0F509802008DE0A0737C4406BC3404BEF4FDA4C00CFF326B4746485ED0F31900E0C90';
wwv_flow_imp.g_varchar2_table(263) := '57D236597AE9E8504D1D69536B6AEA0B8310032D1503699B2CD329005AEA6084ED0E3190560C9859DA26CBB409809A4EA54DB2A575C4C2CADA24061AA9D369E591B40900218B8EC0B44936D51742888196868174F3485A05009D1BF7B4B40109DB1B6220';
wwv_flow_imp.g_varchar2_table(264) := '9D18208FA4CD01A87EA55500B0C250032012C233C4C06A30D07A4D80D00FB09A610F1FB5280C344663A9FE8FAFE191C628BEDE32D3AD01809D4CAB8A536FAFC3C81003CD1303D3D3DDACB40B00DA38695571D28DD0B0BE1003EB8A81A6E08DB40B00AA38';
wwv_flow_imp.g_varchar2_table(265) := '12008275C553982FC4406BC4C0B41ADE486BDFD22E00D43B76345C0D102242689118688C469327463746B9BF5466930800362AD4008884F00C3190828126E18926110094765A0E6C920EA7203CBC0C31D02C3040C778DABDFFC98E37890050E514024DA2';
wwv_flow_imp.g_varchar2_table(266) := 'F2A8EE10420C34270CD0F9D7642671530A00690082E63416615B420CAC16038DF0700227C326E38326130042243B7E82C210420CB4550C90079A54136E6A0110FA02DA2AE587FDD6A638D9FE4D36FB6B089A5400A8019480A116204484D0E63040DBBF49';
wwv_flow_imp.g_varchar2_table(267) := '677F21BC3908006D80088580462384668D81866C1C3DFFA339F949036EC862D7BAAC2617006A3111319E6193AA42AC3F3C430CA40B03132291C8A87455B6BA7A9A850050032904422D408808A1D563A039D17A731200A129D0EA493FEC20997F30A1C955';
wwv_flow_imp.g_varchar2_table(268) := 'FFE448341B01A0061131E3651BE93A841003CD09030DD116D2F709846665EA362B012024CB360A85803011426BC200695A4B7EF27535AB6E353B0120EC707924D4048488105A0B06E4F46B963EAE662900A8264D0B85406BA1FDB6DD0FCDFCA4E5C1CD15';
wwv_flow_imp.g_varchar2_table(269) := '0BCD520008591202A139204C84D0D41858D7FAC9FCA349C3CD72E64FF6A9D90A80640389C0511406CD1A89C9B686618881240648B38345BBC9FBE61A367B0120C4119972A0F4E175B3F2A0B23DE11962A02E06F4765F1FD26C8BA0D5162100846122547E';
wwv_flow_imp.g_varchar2_table(270) := '81C152AB741F428881E68601D1A6EC7DD16A736BDBAADAD3620440B20352AB88E03E4476B35B5249B6310C5B0F06D6B0276ED6176DAE61FA6693ACC50900618E02601A91AD4D15A120104242682A0C38C66F69B37E2AB25AA4004876201404494C84613A';
wwv_flow_imp.g_varchar2_table(271) := '3120ED93B437B825337E125F2D5A00243BC1C148D508F48E758B70C024DB1F862D0203D3C8F8A3C9F456A37DB60A1A6B150220493E3582601407492F5CC83C088541123961B8D6186006C7F4A42BCDF67DC8F8CDE2155EB6ABC1CE56250052B1C2419356';
wwv_flow_imp.g_varchar2_table(272) := '502B0C787F0225B81C87AD4272A7F635BC6E300C3886279DB8999E1389637AD24EABA599562B0052498203A8578DC753829FC04175DA01E3B456EB8402073C29189ACD6B9AA9ED0FAF1B14031AE3091A73C26801694133BC91361CC3934E5ADD4CBF2A0C';
wwv_flow_imp.g_varchar2_table(273) := 'B6090150B7F31C70090481130A1C7027184400043EB6F6FC11F4629884CD791D82594BC14172DC5CA871AD813E0CB54BEF048EFB2801C7B5D5CEF07569BFEE7D9B1400759150F79E04B1B806E6324CC20FBC0EC1ACA5E020396E2EAC3BC6BF74DF569E87';
wwv_flow_imp.g_varchar2_table(274) := '02A0AD8C74D8CF1003F560201400F520258C0A31D05630100A80B632D2613F430CD483815000D4839430AA6D63A02DF53E14006D69B4C3BE8618A883815000D44148781B62A02D612014006D69B4C3BE8618A883815000D4414878DBB631D0D67A1F0A80';
wwv_flow_imp.g_varchar2_table(275) := 'B636E2617F430CA46020140029C8082F430CB4350C8402A0AD8D78D8DF100329180805400A32C2CBB68D81B6D8FB5000B4C5510FFB1C62A00603A100A84144188418688B180805405B1CF5B0CF21066A30100A801A448441DBC6405BED7D2800DAEAC887';
wwv_flow_imp.g_varchar2_table(276) := 'FD0E31400C8402804808CF10036D1503A10068AB231FF63BC40031100A0022213CDB3606DA72EF4301D096473FEC7B9BC7402800DA3C09840868CB180805405B1EFDB0EF6D1E03A10068F324D0B611D0D67BFFFF000000FFFF9CCF048C00000006494441';
wwv_flow_imp.g_varchar2_table(277) := '540300FFB92749772DE3510000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(85468556963309896)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801EC7D07801CB779F5FB30B37B8DBD939248AAF75E2D5B9664B9F7C489BB13F716F716277612A739EE2D71FBDD1D272EB1633BEE55B2AD62F54E';
wwv_flow_imp.g_varchar2_table(2) := '154A621325F67A757707F8DFC3DE92C7E349DC13DBED1DE6E62D306803BCC187EF0330BBE7BCF7C1FB04EF1307DE270EBC4F1C789F38F03E71E07DE2C0FBF1CD81433A12038981C440622031901898600C00C90098708F3C3538319018480C24061203C9';
wwv_flow_imp.g_varchar2_table(3) := '00487D20319018480C24061203138E013538AD00888584C4406220319018480C4C3006920130C11E786A6E6220319018480C4C7406EAED4F06409D87F49918480C24061203898109C540320026D4E34E8D4D0C24061203898189CE40A3FDC900683091DC';
wwv_flow_imp.g_varchar2_table(4) := 'C4406220319018480C4C2006920130811E766A6A6220319018480C4C740676B63F19003BB948BEC4406220319018480C4C1806920130611E756A686220319018480C4C740686B63F190043D948FEC4406220319018480C4C1006920130411E746A666220';
wwv_flow_imp.g_varchar2_table(5) := '319018480C4C7406766D7F320076E5235D250612038981C44062604230900C8009F198532313038981C4406260A23330BCFDC90018CE48BA4E0C240612038981C4C0046020190013E021A726260612038981C4C0446760F7F6270360774E524862203190';
wwv_flow_imp.g_varchar2_table(6) := '18480C2406C63D03C90018F78F383530319018480C2406263A0323B53F190023B192C212038981C44062203130CE194806C0387FC0A9798981C44062203130D11918B9FDC900189997149A18480C24061203898171CD403200C6F5E34D8D4B0C24061203';
wwv_flow_imp.g_varchar2_table(7) := '898189CEC043B53F19000FC54C0A4F0C240612038981C4C03866201900E3F8E1A6A6250612038981C4C04467E0A1DB9F0C8087E626C5240612038981C4406260DC32900C8071FB6853C312038981C4406260A233F070ED4F06C0C3B193E212038981C440';
wwv_flow_imp.g_varchar2_table(8) := '622031304E194806C0387DB0A9598981C44062203130D11978F8F62703E0E1F949B18981C440622031901818970C2403605C3ED6D4A8C440622031901898E80CECA9FDC900D81343293E319018480C24061203E3908164008CC3879A9A9418480C240612';
wwv_flow_imp.g_varchar2_table(9) := '03139D813DB73F19007BE628A5480C240612038981C4C0B863201900E3EE91A606250612038981C4C04467A099F62703A01996529AC4406220319018480C8C3306920130CE1E686A4E6220319018480C4C74069A6B7F32009AE329A54A0C240612038981';
wwv_flow_imp.g_varchar2_table(10) := 'C4C0B862201900E3EA71A6C6240612038981C4C04467A0D9F62703A059A652BAC4406220319018480C8C23069201308E1E666A4A6220319018480C4C74069A6F7F32009AE72AA54C0C240612038981C4C0B861201900E3E651A686240612038981C4C044';
wwv_flow_imp.g_varchar2_table(11) := '676034ED4F06C068D84A6913038981C440622031304E184806C0387990A9198981C44062203130D119185DFB9301303ABE52EAC4406220319018480C8C0B069201302E1E636A446220319018480C4C740646DBFE64008C96B1943E319018480C24061203';
wwv_flow_imp.g_varchar2_table(12) := 'E3808164008C8387989A9018480C24061203139D81D1B73F1900A3E72CE5480C240612038981C440CB33900C80967F84A9018981C44062203130D1197824ED4F06C023612DE5490C240612038981C4408B33900C80167F80A9FA8981C44062203130D119';
wwv_flow_imp.g_varchar2_table(13) := '7864ED4F06C023E32DE54A0C240612038981C4404B33900C80967E7CA9F28981C44062203130D11978A4ED4F06C023652EE54B0C240612038981C4400B33900C80167E78A9EA8981C44062203130D11978E4ED4F06C023E72EE54C0C240612038981C440';
wwv_flow_imp.g_varchar2_table(14) := 'CB32900C80967D74A9E28981C44062203130D119D89BF62703606FD84B7913038981C440622031D0A20C2403A0451F5CAA766220319018480C4C7406F6AEFDC900D83BFE52EEC4406220319018480CB42403C90068C9C7962A9D18480C24061203139D81';
wwv_flow_imp.g_varchar2_table(15) := 'BD6D7F3200F696C1943F319018480C240612032DC84032005AF0A1A52A270612038981C4C0446760EFDB9F0C80BDE730959018480C24061203898196632019002DF7C8528513038981C4406260A233B02FDA9F0C807DC1622A23319018480C240612032D';
wwv_flow_imp.g_varchar2_table(16) := 'C64032005AEC81A5EA260612038981C4C0446760DFB43F1900FB86C7544A6220319018480C24065A8A816400B4D4E34A954D0C24061203898189CEC0BE6A7F3200F61593A99CC4406220319018480CB41003C90068A18795AA9A18480C24061203139D81';
wwv_flow_imp.g_varchar2_table(17) := '7DD7FE6400EC3B2E53498981C44062203190186819069201D0328F2A5534319018480C2406263A03FBB2FDC900D8976CA6B212038981C440622031D0220C2403A0451E54AA666220319018480C4C7406F66DFB9301B06FF94CA5250612038981C44062A0';
wwv_flow_imp.g_varchar2_table(18) := '25184806404B3CA654C9C440622031901898E80CECEBF62703605F339ACA4B0C240612038981C4400B30900C80167848A98A8981C44062203130D119D8F7ED4F06C0BEE734959818480C24061203898131CF403200C6FC234A154C0C24061203898189CE';
wwv_flow_imp.g_varchar2_table(19) := 'C0FE687F3200F607ABA9CCC4406220319018480C8C7106920130C61F50AA5E6220319018480C4C7406F64FFB9301B07F784DA5260612038981C44062604C33900C8031FD7852E512038981C4406260A233B0BFDA9F0C80FDC56C2A37319018480C240612';
wwv_flow_imp.g_varchar2_table(20) := '0363988164008CE18793AA9618480C24061203139D81FDD7FE6400EC3F6E53C98981C440622031901818B30C240360CC3E9A54B1C440622031901898E80CECCFF62703607FB29BCA4E0C240612038981C4C0186520190063F4C1A46A250612038981C4C0';
wwv_flow_imp.g_varchar2_table(21) := '446760FFB63F1900FB97DF547A6220319018480C2406C62403C90018938F25552A319018480C2406263A03FBBBFDC900D8DF0CA7F213038981C4406220313006194806C0187C28A94A8981C44062203130D119D8FFED4F06C0FEE738DD21319018480C24';
wwv_flow_imp.g_varchar2_table(22) := '061203638E8164008CB947922A9418480C24061203139D8103D1FE64001C0896D33D12038981C44062203130C6184806C0187B20A93A8981C44062203130D1193830ED4F06C081E139DD25319018480C24061203638A8164008CA9C7912A9318480C2406';
wwv_flow_imp.g_varchar2_table(23) := '1203139D8103D5FE64001C28A6D37D12038981C4406220313086184806C0187A18A92A8981C44062203130D1193870ED4F06C081E33ADD29319018480C2406120363868164008C9947912A9218480C24061203139D8103D9FE64001C48B6D3BD12038981';
wwv_flow_imp.g_varchar2_table(24) := 'C4406220313046184806C0187910A91A8981C44062203130D11938B0ED4F06C081E53BDD2D319018480C2406120363828164008C89C7902A9118480C24061203139D8103DDFE64001C68C6D3FDC63803010622A89A21FAE5F3F4797902C36A05AC568315';
wwv_flow_imp.g_varchar2_table(25) := '74BD878D19A83E02EBE69B00EB0FC28A2AAC461435E85A30FA2DC679C037CA941B0072202A045E912DF91E1A36982290430C81AEEB60910CF74400C86701D40658A70A51A05E0FB93544DE23F7F4AB8DB19EF4EF0F775F3ED7C0D68D7990E3B0BFF048DA';
wwv_flow_imp.g_varchar2_table(26) := 'BF1FEB32DA673BDA673752F90F5B06FB708C67FF0F4649A00BD45D0905C1735092B0CF8E6400EC332A5341E383018A99141C1D6A2236490357408D6105AF8AEDDB515DBD1A95152B5059B502FD2B8955ABD03F26B092F5507D8663309C75ED1B44EF8AE5';
wwv_flow_imp.g_varchar2_table(27) := 'E81944FFB27B5059762F06EE5B869EE52BD0B362197A97DF8BFEE5CBA0F4BDAB56A2F2C02A0CAC5B8350A9018597C6A69D50A08007C7AB1141BA60E40D1CD80202BC019EBC1AB31B5DE58B9C7298533206C3D3D8A86C5A8FED4BEF4075F97D1858BE1C95';
wwv_flow_imp.g_varchar2_table(28) := 'E5ACFF0A8275AB2C23EF7455AF7ED67F6044ACC000DBB9B7A8B0DD037CAEC3F150CF7A60E54ADE973CAD5CC5E740DC4FACBE1F036B1E201E44FF9A07D1B75658437774E85FBB86FCAFDD1D0C57DCC36160DDCE7C15FAABEBD761376C5887CAC6E651DDB8';
wwv_flow_imp.g_varchar2_table(29) := '1EB5A6B16130ADDC5D516CDC8062E3C66150D87A86C97D38AC8FE5160F530FD5B38E75A8B28D11EBD7A2CABE5C5DB30655F2B703BA1E0115A611BF7D749B81D2AACC1AD30B55714E54D6AE85F81FE0FD07589706AA1BD6B21DC426F2B0790B8ACDDB516C';
wwv_flow_imp.g_varchar2_table(30) := 'D9068D35C5D66DF0DBB6A3B26D1BAA7DBD12A97D8A6400EC533A5361ADCE80058944069821C0A8B41CA4A88C33E452F776DCF3ED6FE157AF7A157EF6A77F829F3DE3E9F8D5539E824B9F3C56F034D6E519C43377E229CFC46F9EF434FCF2F14F89F8D5A0';
wwv_flow_imp.g_varchar2_table(31) := '1BAF9FF014FCFCF14FC6CF9EF854FCF4894F269EC4344FC2AF9FF0D418FE0B86FDFA494FC1AF19FFB3E73C1F3FFF977FC3D6AD5BC98DA3A2A6E207C810B53A463E0283C51D13E9A43100885D850932021C13396A7F328D1C018E0A77F9E7BE889FBFE065';
wwv_flow_imp.g_varchar2_table(32) := 'F8C5339E83FFBDF812FCE8894FC2CF1EFF24FCE2094F8EF8F91374FD44FCF41282E13F1D02A5FB39D3FF826DDB3B3C19BF7AD293F1EB61F80DAF7F3BD2F37ECA5371E953C93DF15B42FEDF3EF599F8FD33FE04D7FCF90B70FDF35F1C7103DD1B5EF06208';
wwv_flow_imp.g_varchar2_table(33) := 'D7D1BDEE852FC69EF122DCF0177F899B5EF10ADCF4CA57EE821B875DEF12FF2AA57D15629AE8E7F5AB5F8D5B5FF7BADD70CBEB5E8F5B5EF706DCFCFADD710BC376C51B71CB5F096FA6DB04DEF026DC12F106BABBE2F6B7BC0577BCEDADC3F036DCF1D677';
wwv_flow_imp.g_varchar2_table(34) := '106FDF0DB7BDE9ADB8F58D6F1944DD7FCB1B78FD06D583F7F9AB5D71E36B5E871B5E5DC7F574851B5EF35ADC4019BEE195AFC00DE4AF81EB5FF1725CF59217E3CA61F8E38B5F8C6BF99CAE27F6FCACEA69AF669E3FBEF825F8E34B06C1EBEB5FF652DCF2';
wwv_flow_imp.g_varchar2_table(35) := '9A57E3B6D7BE0EB7B10ED1A5FF96D7FF156E7DEB3B71DBDBDF8E3BDEF1762CFDEB77E2EEBF7D37EE7BEFDFE0EEF7BC0BF7BEFF7D58F21F1FC7EADFFC126EF30658952B639419EC83C3ED833252118981F1C38034135BE32919463F551267B90E79E6606B';
wwv_flow_imp.g_varchar2_table(36) := 'D7A1FFFA1BD07EDBAD3864E5721CC659E621C43CCE98C70696631E67C4BB8033E843A854173DF820167346B29833912338033C6AC3061CB569038ED9B209476DD98223B76EC1515B37E3D82D9B19BE09C750D11FC199D562CE94167196369DD7874E9982';
wwv_flow_imp.g_varchar2_table(37) := 'CEAE4E98191C913987DD8E3024C440956E110A95B2971BE8095C063078B8C158931B2AD874D79DD870D9E598BFE2011C41BE8FD9B619476D5E8F238923366DC4E19BEB388AFEA3366D42DDDDB8C33D92E187AF5F8F456CE35E61DD3A2CE00AC002AEF20C';
wwv_flow_imp.g_varchar2_table(38) := 'C57C5ECF5F219E9791EB21E06AC91CF60361AE5CF23E8F6133EFBD079DB7DE82B61BD96F6EBA111D37DE88F61B6EA85F2BAC29DC88D275D7C1FEF8C7DDE04608533A301C5729FD55B0ABAE0288187EE595287EFFFBDD50FBDDEF51BBEC77282E1D0197FD';
wwv_flow_imp.g_varchar2_table(39) := '1EC52EF81D6A4C57B9F4323485DF32DD6F2F456504F4FDFAD7E8FDE5AF76C7AF18F6ABDFA07718065406EF2B57A8A8EC4B2F45DDBFFB3DC21F2E072EBF1CE10F574437FA2FA7FFCAAB06B9945B87BBFA6AB4F1D9E8F90C85C2F4FC84F6A69ED70D28B31C';
wwv_flow_imp.g_varchar2_table(40) := 'E58BEEF5D7A38DCF3DBBF65A14975F89DA1F7E4FFC81A8BBD5DFFF01FDBFBA14FDBF609B7FFE336CFBE94FB0E5273FC6A6EFFF00DB7FF213ACFCDEF7B0E68A2B50F47205A0A313C84B08943FC9D2DEC2ED6D01297F62605C3120A5252070C66A04A8F040';
wwv_flow_imp.g_varchar2_table(41) := '45056CBCE926F4DF712766F4F5617AA58AF6BE017472C9BA9D4BDC630305DAB9873B1C6DDC2B2F0BDCEB2FD72AC82B03C8AA0374FB51AEF4D3ADC07156E106C3B281FEFA35F7E1F362008E0ABB7DFE5C9C78C1639097CBA871BF1D4E2A3B48C363C7C1CB';
wwv_flow_imp.g_varchar2_table(42) := 'E86FB8F18249385819F8A770E335153F685699DCC64C46E15C61597FC712742FBD1773185E642153750000100049444154EEDE860E3FC0FAF5A1C4BA65AC8F1515E4F497D98632EB9C57ABBC56D84E94185E629ABD02EF55663BCB5CF9198A3686B5458E';
wwv_flow_imp.g_varchar2_table(43) := '3DB9DE0985C538C513EDE4BB5D2E396FAFD5504735BA1DBCDE816A0D1D7B4027E3DBFB0750EEE945B9BB675730ACADA707BB81E9DAB7337C100D7F74639E5EE6D9894EA6EF7A4874A3AB7B57740E5ECB7DC4D8CE3259BF4EBA23633B3AB9E536141D5C0A';
wwv_flow_imp.g_varchar2_table(44) := '173A07DD0E2E910B9D5C26EF64FFD989EE98B79DE14207CB91DB401BDBDA4685DA36948BDE3E7451AE27719B6B28BAC8BF9EC19E9ED3D0F84E96D351A9A073A012CBECA2DBD1D70FDDB3DCDD8B329F995C3DB70ED665D2B65E4CD9BA1D93B76C45070DF2';
wwv_flow_imp.g_varchar2_table(45) := 'CE0D5BD0B9710B66F4B04EFD152C3AE4302C3AFA58D4F232FACC21190083834B721203FB9201CD4C2310A8A90CD47D70DAB8DEB819CB7E7705FA96DF8F5201EE7F1B822B2398208B7CAC800BE936425D90C1870C4503DC900F05DB40A0609C27B8FDE183';
wwv_flow_imp.g_varchar2_table(46) := '512DD3CF2510CFEB2AD3F594DB61C71C83F6134F82CB32647906B20333AB033C1440C70611130C86013B42415207414727A3780BFA026ADCEBB7DBEE402707F79C4AD2B37CD501AC935E3BA8C2A1CAB20A5E1BEBADFA7BCFFAAAAE43C13606D67DEF90C1';
wwv_flow_imp.g_varchar2_table(47) := 'F87C2D6BC350C0B50123F00B9458B37C08989F9B1AC6BAB0A3D0903418EB08C2583747B759285FC6E757E27D474299751A8E36D6BD8D7D3322FADB207F9961259F63381CCB37CB608E903B0460DC703833380332431330A671C8C8C72EB01CA6673922C0';
wwv_flow_imp.g_varchar2_table(48) := 'B8B01B744FC1CCE2FD9D031C03CC3998CADB810CE67264D94EE443FCE5AC8CE19C95C953C6E722BE776094CF6AF7676A505F8DE5B12F64441E7244880FFA333263E6017804FE7933FA1D8C7FFD350F377D06A69E722ACA8B0F478D71A48BF1FBE674FBA6';
wwv_flow_imp.g_varchar2_table(49) := '98544A62609C3060F57658A03812354FC1E46CAEFF9EBBD07FD71D68DBB6151995931492E360034AA38D2960B741532FE219DBA2A6091C2F21702C81F6DF85CC87980F814350210BC7A3CC0133947264F3E660DEB9E700B367B27083FE940E2AC0000482';
wwv_flow_imp.g_varchar2_table(50) := 'A7BC741A97D0B5A06896AAA818678CE16DF4E5020E7954E05C4109E479E0DE7BE1962EC52486EAF5C290E7F0B5C03A3A02848FB0584A806EAF016C3704B02DB69FF0106583F703F819EA60038DED32BA19E1025877B5C5C3D8D61D886918B64737406535';
wwv_flow_imp.g_varchar2_table(51) := '0FF00823237606C60D718D29631D3D58CF26C07459D30850FF120FC311EF19F909BCEF9EB1E39ECC93B1090DE443FC8DB05D5C0F64945321A7AB3EFFD05C7A723D88C6B3DAE3F3194CBF235D601902627F00C375CF0CAC87812A1F3BDAAB7A38AE24C634';
wwv_flow_imp.g_varchar2_table(52) := '34B0250B25034AE532D67055A2EDA8A330F3B4D3E0BB26D1D809286BF58CED67517B7DBABD2E2115901818470C34C644CAAB266BA0F4025C26DF70F34D68E79EF8642E419BAF309CC22D451405D103545AAD00633DEB50FD55EF820395E7604468B0637C';
wwv_flow_imp.g_varchar2_table(53) := '461234C777C6E1817B8E1D872FC6BCD34F05DA35FB6553799A7184924BE8AC5FC93704817EC2C413BD91CB98D0E865D92C3FD012A10F8E4BB9DB6EBE15DBEFBE1BA550E34A85674D1CEBE52065998502390DB1122DAF8CC64A601D41EE8D0F6A37C49C1E';
wwv_flow_imp.g_varchar2_table(54) := '6E2F5DB0ECD13C53E3FD8642795587A161BBF84DFC378FDDDAC9FAC5302A0F1B0690AFC0F205D523506934A0EBE1707C468E7C360FC0987E6F51BF1FF89C9B43E37EBB1A0EF5BCEA17C3E18A8008F619ADE4295EF7B4C89DFAFE30F019BA11309CAF87BB';
wwv_flow_imp.g_varchar2_table(55) := 'D6331E5A86EEE578BFA1D825CC7B3872E92453AC674E7FC6ADA301E6A9CD9886C9679E81761A0132889526D7B3E6F3C23E38DC3E282315911818370C040A1FE58EE26528281D3C619BB660C3F53722DFBC890BBD056ACEA3C8399C4A09999AAE8FD60387';
wwv_flow_imp.g_varchar2_table(56) := '46782A61AFAA53251BE1898CB390CC65E8E7ECBB3A692ABA8E3B11A5855A7E141B4030B5791001CC81780C0D8E01C33FC417C38C398CEA191987490E662AB5FBCEBBB0EDA65B609BB7C2550B040EDC8256217847080E01250F2A0B07CFE553CF0133B0AC';
wwv_flow_imp.g_varchar2_table(57) := '5DA0B07D04B01CC080A6C01A32A9B8190ACFB08742C0E80E633DDC08301633121A692D56888974C311616416F06C6FB3289876F4000A56B47918D33F1C1CE3051B55DD3D394404F6CB218A8716CC26C7BB0D751D1334A0F0403E3DD7050A1900F08C0DE8';
wwv_flow_imp.g_varchar2_table(58) := 'E6539973C6199879DE79F0B367A34AB9F4949BC0D20426DAEB5375D8EB4252018981F1C140A0C81146F1721C78288C56A9A2FFF6BB5059B214D9D6ED3086796F4CE728866A35D3D26850C8D880B15ECD014CE935F018E261812DA0DFCB02A272DECE7655';
wwv_flow_imp.g_varchar2_table(59) := '66CEC6F4534E43A0215068F061BC12077D1083972C89178D407A1B67231EB633B2EE35904AE6F3703DDDB8FFF22BB1F9F63BD0C1FA845A55774288B3583E0F07784DF958A8631D05A30BE606D3EF02E88EFB0A81A5350BF018DD7DD586D1803760BFC308';
wwv_flow_imp.g_varchar2_table(60) := '3086ED0AB0E60CAC270678650F030CA60B839E665D266FF6349669546CCD2256BED9C2954EE5370F759F40469A853143D31845B9F1FEC667C77E5CD3EA16E5CE5080FB6FA84D9F86D9175C8049279E885AA94C7908102DC13235789F80A2B54FCA498524';
wwv_flow_imp.g_varchar2_table(61) := '06C6070314446A1FCA59017DF73F6CDE8C15BFBD0CD9EA0791F75721D9349F7139DA7135C0A8D77C5DDCA92CAD4511AC00A076D0616B6A5C6AAF72A02E2677A1E3F86330E5C413D86C07335382DD10433936ED1E61088D3C83F1758739E8F1E44BDB0D7E';
wwv_flow_imp.g_varchar2_table(62) := 'C5326CBDFA5AF43FF0009C53291EFAAAA09E43C1BA3029038D35E4CC3F961718457384864AE41C01B6AFC1BAC5B247E582F5681261309DDC66002088B65180599A3E1D02F7C84787B86C4D7EF68BCBFAEC977207EB2B629AE69389493B651D4DA3E9B259';
wwv_flow_imp.g_varchar2_table(63) := '304FAE6A59BDEF18EF41FDDED796A3EBD8A331F9ACB31066CFE2C3AFA18DAB6519FB7C8832807D724471DB2725A54212032DCF8051088DC2C68670F699870AB07A05965DF907B86D9BA9746A288C836496D3CF64144830475096B102B05E4D82C9587BA9';
wwv_flow_imp.g_varchar2_table(64) := '4ECEB2597F5D077EA83DBD28D071D87CCC3BE74C640B0F41C11511369DB1239CCAF410C1F528154EF0829F3125BD1CE2038C0A7ED3CD37A3B4EA7E4CE51228C8ACB99CB31D07E34C27D75BD38583A3D1A5994FCD8175A18160345A1A150A2C725F8345C2';
wwv_flow_imp.g_varchar2_table(65) := 'C8E52810B3B01EAA9600FA1F124C1CA347593EB33575B2D8A6D2351205367674604EDDA459B07CF0D9360F43CC42A719777475B7F858D0ECC13A784272D114F650AEFAC650D4FD86CC72546BECDB6DEDD848199871F6B99874F4D183B37F19BCECF3006A';
wwv_flow_imp.g_varchar2_table(66) := '2424D0DD1727C5695F1493CA480C8C13062859416BD31CACF26A05DB6EB9096EF52A94067A61B2BE3983C8331745B0280A981907933184D10C544CCB93333F40AE07A8683D4A250E441DED9CFD1F8759679D09AFB78F732A61B69D49769EE42A5E58FC44';
wwv_flow_imp.g_varchar2_table(67) := '2C046838A0FAAC43A3A67C5C55301A56CA269046D8B6EDD870DBED286FDD8269E532BC064056442F208A65A834E50F8EC51934100B0AC27E3E02EF3D1A8CB63A6A43D360E1754501F6C33D839D12A33982FAF168314A7E46C3E5A8D3B20F8EA60DA3E272';
wwv_flow_imp.g_varchar2_table(68) := '90C810EF11BB21F6E47FB8F2551C8B921311F8E9E39843E5CF8CFD564265C1A19874EEB9C8E7CD437D2584F7A50860D0101F9A9FD91FF1A9221F71E694313130BE1888A2080959B556835FB701F7FEFA37984F7F1B959F2F021CFF3CAF834680BC044F02';
wwv_flow_imp.g_varchar2_table(69) := '28B34D0DCA632D1DE7FDE0188E5C6DE1E0EFA9A04B9C914BF9827BFFEDA79F81D2B127C41947166AC8E8C3E06174053A106B2A42AEAE05C5515D8BADC88D67E3F5467ADD000888CBFFDEA3B86B29AA772F45FFC675A8CAC862691CE300ADAE104C01CF51';
wwv_flow_imp.g_varchar2_table(70) := '4AE5BB10381882E53998CF011905D87F87B141A3816AC22C6C01ABA68B3D6034652BED1E8ADBAB6823B7A303A03A8D2D04D6A9396014C72369A30B60DF87C40B231D8C86FAB4374006AD10C200B2F61CDB5D09473DF3D99872CAC9F0E51CB90732CB5070';
wwv_flow_imp.g_varchar2_table(71) := '55002CB5CC6B1BA9D04710E61E419E942531303E19905416E02002EEB7D550BBFB5EF42E5F0557E1DE3F15A4844E90E00684984E83035AF4886DE1C05FD33035D83E97E7E82F95D1B57031A61D75348ACE0E144C632E632B95834E936780E3E0C62186D9';
wwv_flow_imp.g_varchar2_table(72) := '1ACA1BC818C641AF464EFB0770FF1FAF41F77DCB01FA0B1A564D169D922506C63E03A1F92A9A79386E2D166D1D70472EC2BC0B1F83B6B97310289720CC1CA589082CD3887D74523AF75149A998C440AB332041CB3238CE3CD1D38D072EBF12B67E238A9E';
wwv_flow_imp.g_varchar2_table(73) := '1E149CAD4AD96B9624E51F2884F1BA85DB6C6A8407671654D4083022E419D6736BA3EDA82331F3B8E3002AFE8C6BF5F1EB9161748D55F2C052C1722D302FEF173893090C2B733BC556AE886FFF0FAC7E10652E811A93A43331305E18607767CF7FF8D6D4';
wwv_flow_imp.g_varchar2_table(74) := 'FB7C00450296B7616B56C2FC8BA8FC8F5804944B0023BC9364025A55305E33F51ECB4593876B325D4A961818F70C48B0A80F61D52A8A65CBB0FA8A2BD1D9DD83ACCAED004552F8A4C89A11EC5620CB062BE96D7080A1A2AFD0DFBE70213ACF3803983F1F';
wwv_flow_imp.g_varchar2_table(75) := '5C100127274CC9A1A2FE8A3EFDCD9EF57211872B11682858BE7C5AE25F7FC38DA82EBD175D3DBDF1EB7F71EBA1D9A253BAC4C01866609731A22168C3EABB4B30B5FB00957F6DD66CCC7CF4F9C094C9DC70731C71DCA0F430350BE509EF10C38615F7882E';
wwv_flow_imp.g_varchar2_table(76) := '59D423CA97322506C6250305E54C33FE35975F853EFD2A5D5F2F322E8183A228301A3202C043C2189519FDAD7A9A199716D92AB5D165D806E0300E40879E7B2E6A5D93002AFD8CC38D990102467B9021660511F82103CB7135055BB6E0C13FFE1153B76E';
wwv_flow_imp.g_varchar2_table(77) := 'C164ADB870D581D1A32D3CA54F0C8C4906C260AD768C11ECFF83413B9C804145AE3873D8DECED9FFF98F42FB09C7C3264F0518665A196B144639F4119422E5C1DE1FC900D87B0E53092DC8407D497B87645112B5B0CF861415D4D6ACC1BA3F5C8969B50A';
wwv_flow_imp.g_varchar2_table(78) := '501B8034BE1BD44E1268ED671B0531D012D0355AF5E020A2EFD9675C62343814DCFBB7F973D17EF699708BB90449E5CF66C69F522541F26234078B2775FA1CE496F7919D911535F865F7A167C91294B66D4389DB013514FC1BF23C4673A3943631300619';
wwv_flow_imp.g_varchar2_table(79) := '183E36480A8CE2609203B9BC28D8F7A9CEE1F3126AB367E1900B1F0BCC9C859097293BA803A88F3E1C6F00A506462D8CCC32D2E9460A4C618981F1CE8099C1CC7634536FA507CE44F3813ED8F21508F72C435728601438AD0A80BEC0F452512E58144C3A';
wwv_flow_imp.g_varchar2_table(80) := '68E5430392CB3214951AC0D9FF76B66F12F7FD3BF5BBE39D9DD0D6401C20ACDE4AB5BDEE6BEE53D9943F90A85A0851C11B39C6403F565DFD47B8071F404E7F20CF058B1C6DF9CC92CEC440CB3060C6D18472E039ABD704A446597079069FE5A8754CC62C';
wwv_flow_imp.g_varchar2_table(81) := '6EBBB59F7506FD5D34C70D714B8C422419A2031DF267D4FE46E87A6FA1F2F6B68C943F31D0D20C4818D50009558D4BD20F5E7905DA376C04FA690C50680B42CAC953E8A8CB9494E68052476FCB7EA84D39671E81035191E7E8EEE8C0D4334E47D7C2C3E2';
wwv_flow_imp.g_varchar2_table(82) := '8B816A581C2034FA30719C8028B04928BD00F207CB62AEDC5781075663D51597A3B4793332DEBB465E91194C2B0E3155FA480CB43E03EAFB0DA88B0B71AC31C032078D25C178D1D68ECAF4595874D185C8E6CC862BB5C181E15C1DD02A2378F08A9FE0C4';
wwv_flow_imp.g_varchar2_table(83) := '23A0BE02897D72B87D524A2A2431D0620C48108546B5A9DFA88C020696AFC4F24B2F43D6D78D50A5B26284511853DA15E70000100049444154258802780D5E8387849B4ECB9E2118381941C619C8D61090EBE5BFB3CE82CD9D075EC68186C314D45C7120';
wwv_flow_imp.g_varchar2_table(84) := '605487D61808AF4CBC57B506EBEFC7D63F5E85DADD4B916FEFE1AA00A2B161F5210FE9480C8C07066CC4461832CA9A99C17B0A85A3FA258AAE4E14471D89CE33CFE2564099E2C6702A7FE3604311453C2490D1C39283A4926EBCDEBB0FDE69EF0A48B913';
wwv_flow_imp.g_varchar2_table(85) := '03ADC88019C58B421508D55F7ABDB6652BBAAFBA16FDF7DD07AE8B23BE80E32D0A64607AA5131824870A12686D23C0A09F1E755C86EC2FE558C025C8AEA38E41ADBD0B50ABC98D563DB402A2EBD1B6550653E04016AD098E775911A0FFADB0FC77BF4327';
wwv_flow_imp.g_varchar2_table(86) := 'B92E57AA50D95A0205E3503011D29118181F0CD8F06650808C4A5DC11A6F145FF0BAB754C282C75F0C3BE450D4B8222779519CD25990AF0186701C0A047DFBE44C06C03EA13115D26A0C4491A220491055F78CFEEEFB5763F56F2EC38C8262196A90206A';
wwv_flow_imp.g_varchar2_table(87) := 'BF5F68A453DA865F65E8BA5561C616081C80DAE7CDC59CF3CF47366F010A2A7FA395E3D850A9E41AD3D04B3E46DB52E50AD04BFFC6321D971BBAEFBD07EB6F5F82CEFE0194195DB0481FE398C2F3229D898171C680B13D82C613DAD47402746D598E502E';
wwv_flow_imp.g_varchar2_table(88) := '63F2E18B70C8E31F07EBA2E1ED7238467A6E8D31619C6018E5043AE806CA8AA0CB7D816400EC0B1653196398016915019052AB0B5340300FEA385429509E0ACE756FC7C092DBB075C9124C6172D38C14140F4AAC5183E907808C69590A74047D8C39B086';
wwv_flow_imp.g_varchar2_table(89) := '5C1EAC574B3514A8B7D968B557BF3666F06C453D9C84C09580817207669F7A3ADA4E3E11B52993A0D82C166200B9810E7A03CB91B77918345B298241FCF9FE6E6CBCF68F68DBB811B966FF1CE9546446C3C0F13E66D67CD1296562600C33E028679EDDD9';
wwv_flow_imp.g_varchar2_table(90) := '9B63DF37AE1606501AA09FC436F6F732E5D495DA51CC9D8F454F7932F2C50B11F21C4EE925078172CB1CE011584E1D2A41E18C64F8BE38DDBE282495911818AB0C18EA0A4F8A06837213151997A63D036210157C65F56AF45F791526F7F5709FBA025718';
wwv_flow_imp.g_varchar2_table(91) := 'CCB2C1141E129458C690868621FEB1E0358D12B1A680B1E60644574386A030C770B58511F056C097806D9C79CC7AD4F928CF998540C348BF7BA0BC810391B1BCBA31C0D62A10A33B4260266770B50AC2DAFBB1E58FE2B80FDC7B004350627C5EC8202362';
wwv_flow_imp.g_varchar2_table(92) := 'C5908EC4404B33203903C7174A0C82048DADA114C0D30D169003ECF70E95B60EF8E38EC7D44B2E01B8F44F518063BC631EC76B380785018139EBA7CA7175EF3EF9DC9765ED930AA5421203FB928140251628502A934637F42B5AD07530E474F593B4795F';
wwv_flow_imp.g_varchar2_table(93) := '1FFA96DE830DD7DD8076EE433BE5A195AE74661239FA02C6FCA1C12550A9D75D55B75E69C7B63A4E474C468D4860BB1513CC71CFB18CB0E810B49F72024043C071941A3A286830CB98D85886A0529B45603E4E7F90652CB4672BBA6FBC892B2C77C3F5F4';
wwv_flow_imp.g_varchar2_table(94) := '43FBFD2ACF9886AA1F413C0BCD169ED22506C62803ECD2F09651CA0C0EECFBECE445ECDB868CF29773E9BFC719B64F9D8C59E79C0970F68FAC2E751A6D041CA0A37ED70374B3749BC4C08166204431D45D030AF6F6825E8581A229D740F5B37E0D7AAEBF';
wwv_flow_imp.g_varchar2_table(95) := '0EDD4B9722D018A8E99FD25060CD8CA95BE7AC2BFEB0A3C281D567EB22038E034F109021B05D315556C276F230FFD1E7225F74186A6DEDD0B0A51500587DE06211E0F8357412B2A3FC3D7A781F3383F3550CAC5F8BBB7FF14B94376F43C6E57F951B973B';
wwv_flow_imp.g_varchar2_table(96) := '553B5646C6021DA42331D0FA0C6854C9E1D8A11D3B3625097A8FC65C065FADA19FFBFBBD5D9CFD2F3E0C873CFA7C84CE4E04CEF6CD241507B6F51C120FEC0DD3DD120307960176F120C1922A9428F2EEBCF60228A145055BEE5D8A07B837DDCE3DEA9C4B';
wwv_flow_imp.g_varchar2_table(97) := '77D44970B4D0F5067BA0009B293FF38DF133B6908ADBD836C0A9759057E1818D12BC39442388B454B9E768B3E7E0D00B2F809B3A05A041E0BCB19505F3F9085D0605098C19DD69BC2B90F56EC7C09D7760ED55D760066FEEB8E512C8AF99B1960633433C';
wwv_flow_imp.g_varchar2_table(98) := 'C87574D34762A085198872A69E4DC19129A08987671FD7580276F53EFA6BF36663EE458F45F99453502DB753D61CCC2CE24036DD1DC89BA57B25060E1E0312CB40AB5CE08496C216A4EC376EC0C61B6EC0DA3B6E47579BE6BF2156D15349991D78818C37';
wwv_flow_imp.g_varchar2_table(99) := '7FA41FA6BAB37DCC6FDEF409297FCFF0C2051499C1D30D5A96E49263854BFE0B2FBA18E5934E02A64CE3E0E388980D713501F5323C79F0F42A8CB14D9F9ED5E18E0AAA5BB761F375D763D2B6EDC8AA15DE3DD600608200D697E5D7CD95A68B4E09130363';
wwv_flow_imp.g_varchar2_table(100) := '9A81BAAC78F66EF5F07A5503C794BCBD1D98351D934E3B15473FE189081D5D8C74C4C1390FDE9D0F4E7BD35D27180312BF288C546046718C1D9E8A4934E454403DCB5662FB4D54FE5B7B50F640A0C60A9A89328D4505C8305D2B430BC05847A3B6A6CEAF';
wwv_flow_imp.g_varchar2_table(101) := '2FDD33804DA1D265041B9F73E64D1B00AEAD0D95593330E7E2C7229B3205812B03815B1F81EB033EE6716CBDD160021108CFF254121EF610777500D4EBC838E855D66DC0BAEB6EC40CCE886AD10010A78C27AF4AEBA1724353E5231D8981B1CE80848F12';
wwv_flow_imp.g_varchar2_table(102) := '2739E21003671972F6F5DC804AC615B8F9F330E9BCF3E08E3B1E81717A45865107A555EEA0DC35DD3431700019D00CD853C2A4F810A87C786FEA41B86A155BEF5A8AFE25776376E09E9D0785D510FFA8BDA49C945ED7CC32E64F8D3B4625ABFAD6012A55';
wwv_flow_imp.g_varchar2_table(103) := 'F09019C4C6052EED73FFD1D8F86AB90D5DC71C83FCD453E0390BC9E0503207E7C88F1164012A8B7C211EF208F1A2898FC07B7BB8AD5B51BBF156F4DCB30C6D15CDFE9995DC1ACB377A3DEF57B3C0E132F02A9D8981F1C080FA720DD4ED6C8CC151F4F4B5';
wwv_flow_imp.g_varchar2_table(104) := '629F65584FF9C3E24558F898C770F6CFBD7F1A0499040107E7A0F81D9C1BA7BB26060E04030DD99248062A1D1902DE2491C403AB51BDE966F855F7A3ADBF8A4A850A92690E44BDF6CF3D8CB5B75D8A96D12364665121FB5A15B01CDBF2361CF6A8F361F3';
wwv_flow_imp.g_varchar2_table(105) := 'E6A2280CAE103B75C55FF7293D068F00165C079A3BE26A0B07BBEE952B70CFCF7F856CE316E4D51A57FD03627D3823028BF52C8EB7879E0BED0D5EA53331D0FA0C388E319E06B739AA58AE2AC637FFB30CE5238FC0BC4B2E813BE628F4D3F02DC0435B91';
wwv_flow_imp.g_varchar2_table(106) := '740EC6C9DA1D8CDBA67B26060E0C0346AD62503717A8960CD4659EB3FF0AD65E7F3D36DC703DDA07FAE07D1585CBA9939800AD79346A5E57A82136C2B1B5C6F61BA723665C7E84A18FB3FFED73E762EA798F02DA3B91E90B918C038D04296471E6C81B4F';
wwv_flow_imp.g_varchar2_table(107) := 'C477060C54D02E02A339B66F43F7AD3761F5B5D7622AF3D5062AC8781F7DCBC06400B05CC0689810484762607C30606C8651FC0A2AFEB8BDE50CFDA50CDD336660FAD39E86F94F790ABCBE714379631428023858873B58374EF74D0C1C0806248CA02633';
wwv_flow_imp.g_varchar2_table(108) := '4A590405332A9F356BB0E19A6BB934BD14ED54FEFAD79C8806C081A8D57EBA476C1BD45C2A6E5061F33E31CCA0BD48CF01C7B79550CC9886798F7D0CF2238E601A07E328A481AAA00B1A0BFACAA0633E6A6616E0A313C8A1C080E64EE6AFAC5D83AD37DE';
wwv_flow_imp.g_varchar2_table(109) := '80D2A64D68E36A40ADA8B274DE2104184748192A2A2C0B0AB3781F5D2724065A9A81D89F1DB22C87E71FCA86EEB61C934F3B05F32F7C2C9C7EF3DF8C93901A3270FB8B7E1CA4C31DA4FBA6DB26060E0803944518EF6454601114385714587FEBEDE8BEED';
wwv_flow_imp.g_varchar2_table(110) := '76747677A39D429A6706BD0068313533B4E06983750EC661C7D4720528D4B1D5F47309327476C2E6CFC3514F7F2A4C5FFDB3FA10A0BDF8220E44BC26579092D6D2A49631E9CA20D851248B52E902BDBB9EBA1D6154F83DAB5661FBED4BB0A0A31DA85690';
wwv_flow_imp.g_varchar2_table(111) := '974A88DFAE600EDDA2E0AD40BE335E64DEE833A4233130F618504F179AAD99D1983564CE21B08FF7398FEAEC699879E163D075F249E8A5A1ED296B19E54A3F8815D8F371900E56EF20DD39DD363170001808527D1434ABD5508D7E03BA7BD07DF34DB015';
wwv_flow_imp.g_varchar2_table(112) := 'CBD01500672538FD287E31009A0107A056FBE91654A48E2838E0381A3552AA05F7FBAB346E9C1313864AD724944E3B09934F3C1E1CA1907120D2A67C74C88FB16A9A9D9308FA404743044379F282A58287A71B087A0BE360C7D5062AFC1A0DAB1AF9D4E0';
wwv_flow_imp.g_varchar2_table(113) := '86AD5B50DC761BFC923BB9C2524351D4602E036FC1932C07E66376FA780D7843741994CEC4C0D863C00AD6C913EAB18E7D952EFB2C03781A45C3D561067A50584051A982562F36777661DA851760F6C59CFDCF9E4D9973282959E6A08349E51C14D46B70';
wwv_flow_imp.g_varchar2_table(114) := '506E9D6E9A1838000C48D028AE522F55FA03A5B3B8FF7EF4DF713BDCC60DDAFD46954AACA042CA288914EB0350A9FD770BB52FA81D01D4EBC68148F06C75408561BD932661C6A3CE4198D485C09988998191D04090319E57201511A887D2AFD840576072';
wwv_flow_imp.g_varchar2_table(115) := 'A6539EA0BCF407AE1630065A3590DFB86AD0BDEC3E6CBAFA1A94376D46ADAF0F4C16616032022C80760A74A5FA0646080C48676260CC31C0EEC93A6974908FAE1CF6E8469F0DECCF02E8AA4F479472F4B67760DA5967E3B067FF093A8F93D15DE28E8021';
wwv_flow_imp.g_varchar2_table(116) := '0F00247F5C25307A0FD629C93E58F74EF74D0CEC7706B81ACE7B5060696D6BC9CDF5F761ED0D3762FBD27B61FD15809BE35A962E387BCDB4444EA16686963C0315B266D24EEBF91C88E43778E897F77C30F4B5B501871E82D9DC8B44CE590C079FD134D4';
wwv_flow_imp.g_varchar2_table(117) := '022023012C3B63790E40C8A8FAB9BAE058569E6734A80A64DBB660C34D376325516658340A182F5700F36384C358FE08C1292831709019308490B30EB1C7037150F1A81F019E1DD7A3FE17B4DAC87E9CB90C5B399EF42F988F85CF7A16A69E7E268A361A';
wwv_flow_imp.g_varchar2_table(118) := 'DDEAFB8CA7E430BB3C0DF0F2209C6AD141B86DBA6562E00031E03D851728287839FD78E001ACBAE24A0CAC5E83366AC8B8EF6FAC0B2125495FCB9E8D99B463BB101CEA7BEC9ECB8D869ACB1166CFC1FCF3CE4579E142780E501A7A46D358524416EB398C';
wwv_flow_imp.g_varchar2_table(119) := '991DC7C082CA9F5E98194DA74063A38662E50A745F771DAA0F3EC8701A1AE45D79EB39877D2A3383541E9D742606C61C0301066F19C15E1C3BAA07BB3DA43CD9ED59DF80601C6740303E98837EDE77DB8CE998F3A427A2EB8247A3367D066A81F903C024';
wwv_flow_imp.g_varchar2_table(120) := '4C0FF87819583A0EDAA1361CB49BA71B2706F637034661F4CE41CBFF5654B1EDA61BD177EB6DC8376D8DBFFC17AD03507171398E2BD9AC0EA5929FAD7BB22D1A68D800CD4C60055CE6507475A2FDF8E3B0F0094F40AD6B12BCFEDD6860A2519D46BAC40F';
wwv_flow_imp.g_varchar2_table(121) := 'C1BC46C238E4312CC441CDFB1AF4B2DFA6DB97A0FFF6DB314B4686947FE04D9856039F19F3F2B271EA4AE18DEBE42606C61A031227EE12EE54D8ECCFEAB7088EFD9ED0F8010F6701FC40A55CC2F69933B19833FF235FF07CE40B17A356E2EA1BC7212561';
wwv_flow_imp.g_varchar2_table(122) := '26842807067A8883D76277F06E9DEE9C18D8FF0C04CA982C6D48116DDE8CFBAFBC126DEBD66152AD40203C05B1E0B21DB558B4EA4119DEFFB5DA5F77081C5B3CD8E4C11BF09A0DAA50CA8B593330E9CCD3513EE554541D07230F38623061D34E9D4F637A';
wwv_flow_imp.g_varchar2_table(123) := '01F15E0E19405F9665B08D9B6864DD82EAFDF7638A96FFC53B396635A0C3AC9E4FFE84C4402B3040B3172E1411DCF1624F37787328D897031BA030C73184F600157D093D53A7A27CC1A3B188CABF7CE451A8B5B5512EC17DFF808C0679A01510544AA0BC';
wwv_flow_imp.g_varchar2_table(124) := '2853387832E158FF742606C62D03053C3C85B34C010E5C9AEEB9F30E74766FC724CEF8257681420C490167A88E426D14CC562543CDC1667EEC0000100049444154D0FB0CC180D82CB589B38E3E2A66BF601E669F7A327C4787BE790414014E89D0FCC185';
wwv_flow_imp.g_varchar2_table(125) := '4EA86C218E681CC81C8C7F802F0AD0A242EF923BD17BD36D089BB7C0F7F7CBAE8A49E35D2C7ED63FE88FE5D4AFD2676260CC32C06E1E95B77ECF5F95F4ECBB8533044222640194018781B6766C9F3615F96927E3F897BC08E5134E40ADBD0339B70FB4FD';
wwv_flow_imp.g_varchar2_table(126) := 'E8B442C6F18882C2D346960B1CD8C31DD8DBA5BB25060E1C03944B780AA9F3B4DEAB156CBCF126646BD721EBE981AF567728B3202966B59C0705192D7E0468E9DFB1DD19DB65DCFBEF6DE30C64D142CC38E1F8D8B61C0EA52CE7202486D0FC6118E487F7';
wwv_flow_imp.g_varchar2_table(127) := 'E02668D0B58AE07D1C4741A361B5E5F63B505BB93A7EBD521C33097498D1A7B40203061D0C1688742406C62A0386105F7E65178F5554BF0F0AA38C19D1CF0946E8E842CF94A9C84E3905A7BDF98D683BFB0C14932603A51272767261A70818438CF2C7E2';
wwv_flow_imp.g_varchar2_table(128) := 'CC2310F41D94D31D94BBA69B26060E000314315AD986AC3A80B0662D56FEFE728475EB51A24140B1A3A2448C8FE9A0436A4990BFF55068C65FCEA117F30AAE78808ABEC707E4871C8299E79E033F7F1EFA6A3564186CA346A451345303A0060CEAFE5842';
wwv_flow_imp.g_varchar2_table(129) := '61CC1C1C3420824BFDDD77DD1D7F5DB1F6E01A721CB82AE0C92F38D811BCA592E3218E878B7B882C29383170401808ECC19C4270C9DF71CCA0394039CB3986D8401F8C1389727B1736777402A79C8CE35EF15264679D8ECAE42E84CC71DBC010F5BB64CD';
wwv_flow_imp.g_varchar2_table(130) := '1C65C5C128339221590052FEDE0AB6231007FE7407FE96E98E898103C7803AB8D502B65D7535B6DF7C2BDCB66D1467A06044A04F8218051401A1EE397095DB0F77F254F86C160A2AE41A6727DBCA654C39F5541CFED80B10B84499E5393203B42D02C68F';
wwv_flow_imp.g_varchar2_table(131) := 'AE0ACC3898413E212A7FCE80D0D78BF5575F87ED772C810DF4C078FF525E5255606130D343382AE721A2527062E0A033A03E5E641A338C0600629F769433576E437FD724AC9D3605EDDCF33FFB0D7F85C9173E16035D5D302A7B0E3130A8F313ECE4C129';
wwv_flow_imp.g_varchar2_table(132) := 'C4511E7401D00380E30E41CF4139DD41B96BBA6962E00031905111858D9B71CF65BF431BDD52B5064F812B288C14C3B8B4E728E11451D4FFF18D7C07A872FBF8368E834E8DEDD3C67BC6D947512EA1934BFF53CF391B76F8E14096F1748091012A7FCECF';
wwv_flow_imp.g_varchar2_table(133) := '31DA43EC08DA2EC93C6000C190071F44CFB537C2AD5B8BB68CD7340A32CBD050FE4A87C183740FFA92931868110638EB97B2563F769CCD7BCAD27662F3F4A9987AF16371FC2B5E86B673CF4598340579DE8E8C7F8E4D338E358142A03E1F28298800EA82';
wwv_flow_imp.g_varchar2_table(134) := '510FA194008D701CD843753CB0774C774B0CEC030624882315B36B38AF6A5476F7AFC67ACEFEA7D40AB405A0203C331B853A23980A41424D0FA318D3A227DB52CECB5C7664FD9D618003D48CE38FC3DC934F82E76CA54A0321304D1C90D45081499B3D03';
wwv_flow_imp.g_varchar2_table(135) := 'F9116F72A1BC7A1B8A99198C2D4BEF43B86F053AFAFB38006AA80CA81535C6E2E1873695837424060E2203EAC00D8C500D4799C94381B8ECCF8EEF5D865EAE6E55E6CEC5BCA73E09C7BEE615289F7F362A5326C3AC8CBC6654FF060310E7F73400F45E8E';
wwv_flow_imp.g_varchar2_table(136) := 'A422420678047849F5EF337A0ECE990C8083C37BBAEB236440CA8B320850F94465C40B23E219582867FCC6FD39FA507099CE577AB1FAEAAB3075F35664950134F2976805E48C0FF008F10FFC94C80ACA3D36A02649E10E471C5D865451F16C3ACAA53202';
wwv_flow_imp.g_varchar2_table(137) := '3D3526A8764D46E98493513EEA1878CEC6338665CCA338C766CA00E265D3A77156EF3810FA5045E0C811683455C85AD8BE1D6BAEB906FD2B57A1A31A50AA2912F0AC076FB34BF9BA36366A0786C4C6385E8F15975549E73E6460D4CF55FD84F71F9A8F97';
wwv_flow_imp.g_varchar2_table(138) := '080C782450DE1D60D9F237CAE170028D03ECB5A000C1D841CD0C1E861A0D8060350657512A77609B6BC3A6398760DA739E83C5AF7A15DA4F3F1D7EF214180D8390B17214B2C07C4185D335817E16599FF8F31A110EC10C887E1C9483927A50EE9B6E9A18';
wwv_flow_imp.g_varchar2_table(139) := '78440C58A06805662578A22E5101750106C078C953A05C0504F84D1BB1F2F2CB31B9A717A13A40A3C0C351504B704A56CF47C96472CE9C2D86B194B1735ABD2A814E03F48E785AE6D04723C7D1ED66DBF38587A2EB84E311A6CF607ADBB1DD01B652C5C6';
wwv_flow_imp.g_varchar2_table(140) := 'B107CD1FC67C20B1B49BE8707024D725B0564BEF45375758A0F72B6A0145B54060E14156068B670A0C0583769C43C3C79CDFD89D1210F615077CEACD3F63A6A45CCA601F0E3E1584217FBA1E1988C3038BA16C83B04100EC9ED0613066253CA07E4D07C1';
wwv_flow_imp.g_varchar2_table(141) := '018D36D3073383CBB9DF5F6EC7DACE0E64E79C89A35FF3322C7CF10B50A67C159D5D08C8295F8EA30A627AC4431F2C1BC63FF987C2765CE85E3B2E0EB0874D3DC0774CB74B0CEC05032651321660A12E6CF472A88084482E18EA29B00567AA6EA0170337';
wwv_flow_imp.g_varchar2_table(142) := 'DC88EEDB9720EFED01B832E0A9B42C964105660C625AF0DA31338B04E8628C1D7BAA92DAAE2A1B156E3F8D9C8CCB937D9D9D9872C6A99876E2B1D09ABCDAD66863CE0C816D0ECA340A78E6F1E4D7424E3BCB78C5A2070670FFEF2F47FFBDCBB8C25281E7';
wwv_flow_imp.g_varchar2_table(143) := '5F0505F43E85CB1DAF3854F3E6C307F183715D7FB8812D4E38185C8CEE99035EFD8602C91EB4E313F40936E8CADF80C21AE043E6597FCE312CCA7DA001800863ACB107F316EAD13033384E0C5C29E78CDF6380DB5735785829836BEFC496D08E6D730FC3';
wwv_flow_imp.g_varchar2_table(144) := 'B4A73D1947BDE95538ECC57F868E638F44A11537643434541AE802B16A745AE174AD50C954C7C4C04E0624CE9431F65C63A05199D1814229C308FCE0EA3E8CCA3E6C5A8F553FF929A66EDE02EBEB467D598F4A89E342B4F659802702512F439FAD05D59D';
wwv_flow_imp.g_varchar2_table(145) := 'CD8120A3272F9750E580D4BE6831A69E770EB28587C193934C09D8347A917935588C316014A7B10CE5CC59489081655560ED6AACFAE315C0FA752817BC36CF81D4C541968F0850A658BB003EB596427DB529B009092372C1E7AA5ED40C1ED9B367777998';
wwv_flow_imp.g_varchar2_table(146) := '53FD4BFD516818B73B93D7CD06191105FB60FC6A2C13D59C87FCF574018AAB8261ECB7BC82151E25CA4F392B335D86011A04FD33A7C19DFF182C78C5CB7024F7FBA73DE17128162C408D69CCB3AF539E5834D908A03742E5B702C4612BD433D531311019';
wwv_flow_imp.g_varchar2_table(147) := '08D4783C2964215E43174463809262070C8E3353FDEADFFD575D856934067CB512939A639767D6F8321C10C3C06B7A1B8EBC63061CBBD89A9DD5D16017AF06EB1CFD831F9E4AB9DCD98EFE721BE69E7E06A69D7422AA5C09281AF11CA5BCFCFC50B9A022';
wwv_flow_imp.g_varchar2_table(148) := 'D7E568A0FBEBD61A2C831FC0B625B7A2B662053A06FA912B120EB9FEF43DCB6A80F17A4C80EBBAB11E0D77ACD4AB95EB212EA9006D4F50BA06F6617B3158165876A03F50712364146AC1D17023180EF6C2C0BEEEC12803A4A403A5DD53E917028D026F01';
wwv_flow_imp.g_varchar2_table(149) := '609A90E5A894DAB0ADAD039B66CEE472FF5998F6A2E7E1F0B7BD1E8B5FFE12B49D7E1A656A327C28D1C8CDE15818C58A795922CB082C8F3746AB1CAE552A9AEA9918D8C100851814E03A00E35F1442CAB0849CE20FBF751B365F7115B22D5B80DA008CDA';
wwv_flow_imp.g_varchar2_table(150) := '29309E32AA618299EA178E810695649C0D004117BC1E4BA7EAAC6A09AA97AEE5EE02469A39842C4365FA344C3DED34B4CF5FC0A57AC0F8174C2A1B71F0E3651CA31884D11CE246C6448D1E8D73E05EFF869B6E45C7F61EB4D1F222951C1859070E8A8183';
wwv_flow_imp.g_varchar2_table(151) := '3238F8CA1D13505D1A60DD9AA99367FA0487913808E4E611A149EEF7FC7C8C7D9B605F53FD0ACB28BF19EB9A41F5324AB9A331E0689C38DEB3AEA80D50E70F80E4C132079767D0165955DB66ED1DE89B3513DD8B0E43EDECB330F9797F8E056F7C0316BD';
wwv_flow_imp.g_varchar2_table(152) := 'F90D98FEC48B80D9B3B82A5046C62DB0B2CA94C1E05816079F408170BA3B8540630A80963858FD96A867AA646260270314E0C645901012D08064756174DCBF2BD6AEC7D6ABAFC75486FB9A87CB322A3D03E5944340DD5A070596430828BFB1B85856F48D';
wwv_flow_imp.g_varchar2_table(153) := 'BD0F0B83751A746DF01283D7721C07B15EEE7FE48B16223BFA2860D214B6CD218B699542E0C560E61D6532A89953B96500C8CD3C3FB776A37BC9DD68EBEE41996572BC05C74614BC61510AF0650E8925B23C56903F4C5D468A633BBCC213B01B0F0D6E86';
wwv_flow_imp.g_varchar2_table(154) := '3E5BF1C4EB50A254D1F511C6BCC2C3701FD33D4C3CCB55BF025D19F2021C3B1C4F4883B12307C253B8430394EDE8677CC878FF9243D19EA34654DBE83A8205565C19FD1D93501C7228ECD453905F7C21E6BEF8F938F59D6FC559EF7C27663CF9A92866CC';
wwv_flow_imp.g_varchar2_table(155) := '46D5B1C1F147B432384F69A1A20FBCBFDE75F1BC3743E219E2E812BD2DF1E15AA296A9928981210C50EEA2DC2B2850F8823C8382E729F8E8DE8A813BEF40EDEEFB90F757A1190057C7A34B31A6CEA472D240419FCA8AD9073F865F0F068F09874D652B51';
wwv_flow_imp.g_varchar2_table(156) := '078D1EA741906D0884D7809495D06325CC3AFB4C741E7138E22FFF71662421571AC7744EFCC482C49A80511C4AAFD18FF01E9565CBB1E59E65E8EFEB45357728DACAA871CFB42867D15F2DE7A8954B6302C5603DE40E472DD6937565DD55FF063CC33DC3';
wwv_flow_imp.g_varchar2_table(157) := '12720CE72072466E1A5C45977CD5C8B39E7B95AE78F66D2534A0B847029523F812CBA291EB69CC37A0152FA3627654F24EC2ADCE4EB9E0C41F35BAEA9755D6A1DAD581CA942E54A74FC1C0ACE9D83E7F2EB6D3501E38EE38B45D70010E7BF10B71CABBDE';
wwv_flow_imp.g_varchar2_table(158) := '8A93FEF69D38FC0DAF45E72517C1CF9E8D2A65AA8A128DE80C39571BA2E81860BA8F2E2853F5ED47E38A0465C08C2B1106B4C8A166B4485553351303A82B3FEA2193F94DE1A317F2CA552C4510FD0FAEC683BFFD2DB07E03B2811A500B701C1132E60E52';
wwv_flow_imp.g_varchar2_table(159) := '945482D170A020F392F9E9016854D44BA177CC9FF576B09A1C702070B0EBCF72382EFB4F3FF76C94E7CE418081A352047D5CBA240F0CF58E6612259FE3190B68FE345A51E6AB08BE4654B175C37A84A95350E340DA7FF8625417D2E82070D811B04309BA';
wwv_flow_imp.g_varchar2_table(160) := '61E11138D8C09EEA10EB59AF7B60FD05D0C56187B31D0976E8EE1C881BF1B41B0E5B0C4F0472B70383FCEFF1390CA6DBD95F767D26BA576DDE21A8CD3904C5EC43E0E962EE6170F316A27CC822B41FB618ED0B17A3CC67575A74241CDD7EA61F3864318A';
wwv_flow_imp.g_varchar2_table(161) := '238E853FF624D8C9A7239CF728945FF45CCCFFFB77E2944F7E10A77DEC0398FFD637C03DF90918E0CA59FFE4A9A85096343694B8D2D5C1F123A32B716A40F2443142E601A7014811B40A421C45285CCD8BD5414DD93A353DA834A59B8F29068C3A6DB042';
wwv_flow_imp.g_varchar2_table(162) := '468526AFD78705E49C8DF62CB9132BFE7005BA1867B51A64A14B3E3DAF25AB4169F961BC088C08BA669C0B7EC7550C1AAB1F1C99A201A04189753433B82CC3362E732EB8F002741E7F3CD0D9C5FD78101E60DBC096D551FF549B03F361148769DF33D08C';
wwv_flow_imp.g_varchar2_table(163) := 'E2AC28E46D9876EAA938E71D6FC1D91FF8679CF6E1F7E3B48F7C002773303DF1131FC0491FFF40F49FF2D17FC3C1C6C943EA20FF509CF491F7E344E2840FFF2B4E601B86E378C625BC1FC33918CE53FDFA5F7122393CE523FF86933FFA7EE2DF7012B917';
wwv_flow_imp.g_varchar2_table(164) := '4EFE28FB03FDCDF4859399EE64E63F893899FCCB2F57CFE9F80FFF0B8EFDE03FE1A87FFB7B2CFEA7F7E2907F7837E6BDF71D98F5EEB762E6BBDE4CBC05B3DEF516CCF9EBB762FEDFBC03C7FFEB3FE2940FFE0B4EFBD0FB71C6473F84533FFE519CF5E10F';
wwv_flow_imp.g_varchar2_table(165) := 'E3F4B7BE0D8B9EF9A7E83CF52C808644284DA651DB8EBC28A38D9385B660708EEB66AE8650A60C515602654846B3FE095604B56741C35B6072705111A5B5F2BA1400001000494441540228156899C3B54C4D5345130362C002E7EF801F14482977278518';
wwv_flow_imp.g_varchar2_table(166) := 'E30C7EE3466CBFF67AE0FE0750A242D72FD719F368C65FD08DFB75CCEB68A99BA496AE974141E935A607CB5251631AAABF73A043B0F2AC6CCE65D082B3F15917707633672EF971A8151E9E4BF58109050FA525023344BFDCE6616630E37D61A8588E8CAB';
wwv_flow_imp.g_varchar2_table(167) := '0DED179C8FD2632F80E332AA10E8F7173E0681C0058F011E3B3610580FBBF0B1180E77D185DCF7BD08A5C73D8EB87807F2C75D8CEC928487E22027372572B42B1E87ECE28B60173D16EEC20BA31BF9669F30F2DF6C5F505A631E4763B601BBE802967701';
wwv_flow_imp.g_varchar2_table(168) := '4A9CA5B73DFDC9E878D6D331E939CFC4943F7B36A63CF74F31F5F9CFC5D4173E7F10CF8BD7D39EF7E7E87AF633D0F6844BE01E752EC24927A2B67021AA73E6A0D23519B5B676F8F60EF8721B02F70F4CEFCF78C0D5F85150934B34D8DF7985C03EAF4B04';
wwv_flow_imp.g_varchar2_table(169) := '83058027EAE1F2EB0AF514F20A688DC3B54635532D13030D06285D54443E8A5B88C228690C8AAE15E85EB10A1B6EB8190BCB14EC6A85EA9D31ECE5F1C5342A79CF74146164146417CB405D900D30C6D3412B1C5A01D0028099C158E1BCBD1DB38E3D06A5';
wwv_flow_imp.g_varchar2_table(170) := '638E023ABA10387EE55C15C80832C036D2388A839945CE38B9892EB3367D9232E86606A0C472E14AB052076A84CF3B81BC03216F87CFDA01C2783D961058A791A0FA8E8482E90BB627A11DC33918892F85A1C467CFFE10043E7FF587C839791C755FC83A';
wwv_flow_imp.g_varchar2_table(171) := '06FB5407FB15C1323DCB09946D6BEF82754EAAF775FA43FB248436827EB475016DEC8FED04D386521BFB64997DB2849CFEAC544256CE115C40812A6035C615F09CBED7F282FD192832471972701C3832224E12D8F999252EF96714AA0C88E34BC64983FE';
wwv_flow_imp.g_varchar2_table(172) := '3B202F791FA0C8E56B0DB8D6A866AA65626090012E4353F6A8F3F949C19342AF1940DD867CDB56D46EBF03FD4BEF465EABA0A0D42A5ECAD2E877CCEB28C4CC4C85083ACCC8CF8C306A371F3828281E63E330D64BAB1B1A7454DB609E4A3B800E38590147';
wwv_flow_imp.g_varchar2_table(173) := '1F386700F72B9772AB63FE058F45FBA10B8172398667069819F4572F2700BC8239A83C954FCFA84EDD2F3740653B0D922CCB58A6A9689694D19F13F4223402753116A0FA8C0063D848700CA71A20CD2101BB7230125F0ADBF998D52106411E77868FC667';
wwv_flow_imp.g_varchar2_table(174) := '4CBC2BCCEAD7B1647DF0DACC628FD36D0466420C609DD5CFC1C304A6577CC67120D756966528983730B1F38E9302F5DC0CC63E0D6628321A080435BE2E8900F56981C5416519C70DB07740E5984A420C478B1C1A095AA4AAA99A89819D0CA8E31A854F22';
wwv_flow_imp.g_varchar2_table(175) := '47B18494D9C0CA95D87AF5B528F7F420D4AA1456865230E9A1501AE5D8E8221EF57C603E22080648906308BD63E4641355FD581BE3A7DA0D0D50CEC5E5FD1A97F8AB9CD114871E82AED34E834D9E026F4CC993C9779CBA6C80CDDD11FE483C6495D91AA5';
wwv_flow_imp.g_varchar2_table(176) := '18790559E353B0401783D7484762608C32601C078CFDD421A7CC3B0202E5C6D883B3680CC827F38146C060BFC6C31C61475C600961C7D558F7C4F164AC5732D52F31D060400AD151BE649883A226656766C87A7BB1F1D6DBB09C0640A9F0A8556B8CA510';
wwv_flow_imp.g_varchar2_table(177) := '332D5AF4086C97DA57180722C2057EB0556A92BEF6E7E4C9327473C67FD8F9E7A17CE4E140894B9D5C1969D126A76A27060E0003211AD58EB224656F54F89E77D54A221D1A078051E81CE5CD98865718AF871BAF0D4BED1A9F0C48E7811F34CA110615A4';
wwv_flow_imp.g_varchar2_table(178) := 'E37565E50A6CBAFA1A54563F8052CDC31705459711105A930BD53C18B84C490380AD315E04BA7AEB980E8CAB00817BFF03336760D1939F84D2AC5908DA1268CDE6A65A27060E18039EE342E0DD4C82145D704540219435232847C18C6184AC033477B45A';
wwv_flow_imp.g_varchar2_table(179) := 'AA6400B4DA134BF5AD3340592D28A0BA7003FDD872DBEDD87EF3CD98C1257157A3F2E7CC187AAB5F095A14C636460CD63F70B0529B0B4A6DE61CF4232803ED6D9872EA89E83AE514E8877F38AE211D8981C4C0C3336016A06F0469D61F284F068F2C70DC';
wwv_flow_imp.g_varchar2_table(180) := 'A0AB970315A68985DEB761525A040F5F5EABC6B2E9AD5AF554EF89C840D8D1E88082DACE84ADDB3070D7DD082B57621A157F286A7059066E92EF48DDAA1E0D42191B2D57131129FFA03613452947375700163CEA5CB8A9D311722EFF0F1A45ADDADE54EF';
wwv_flow_imp.g_varchar2_table(181) := 'C4C0FE6720D0949634790443043F79DB1011181B77D1F4351B0486F1643A7EEEE16CBDE86400B4DE334B35A630166441A2E928A95AFEAFDC71273AB66D4746E52F0529F1E61C99A2CC842D7AB2999080C66F297020D2DBC7813314E34C051C9C2A54F8C5';
wwv_flow_imp.g_varchar2_table(182) := 'DCD99871C669B0C1EF328306809972B668A353B51303078001E3B821C35A905F8680DEB709F484224061A0AC6925405095F46D22B9E3091A5FC6537B525BC63903EAB0B4DB21A1CC29A0795F2FD65C7F3D36DE72333A6A55E8DFFE1A97C70B2DFF2B3115';
wwv_flow_imp.g_varchar2_table(183) := '67CB526201816B9074382051A953B1AB491AB464E0F472F63FF7CC33513AF20804BDFCD7B20D4D154F0C1C68061CCC1B9C0409066DAD057300880054CD63807F0835A6A31C161A7518FD30672B46B1B5AD58ED54E789CA007520020554EDCF7D01BF7C19';
wwv_flow_imp.g_varchar2_table(184) := '365E7D35BA972D47EE3D4D02639451A40D83C978DD9AA7EA5FB01571E6C1869B191C031DDD4A5B19D5F973B1E8F18F07A6CD84E7960783D96EA423319018785806343648F5594C4591A2EB285B026014B22A957F35F4A1B6713D362CB90BBDDBB773DCA9';
wwv_flow_imp.g_varchar2_table(185) := 'A70C1C80048C83432C8C8366A4264C1806287C516C6B1E56A962E38D37A27AD75D9824E5CF65718652900D9A2507AA4301AD7AB0A1AABF00B52500503B9DA1983E15534E3D19EDA79F816AA903058D2168D58349D29918480C3C340341B22418058C2768';
wwv_flow_imp.g_varchar2_table(186) := '646B2BD13CF3700C7194A58E5A3F3AD7ADC7EADFFD1EB7FEF467E8DEB8094ACE14F1348B19A3BFFED19A9FC90068CDE736816B2DF18516EA10366DC6BA1B6F46F1E01A4CD58FE15078152B61D66F7A7909A9B52E55B47534367178B2B8B2A1EFFE6B142A';
wwv_flow_imp.g_varchar2_table(187) := '4A198AD9D3B1E0BC738019B35003AF3D972A99AA755B9B6A9E1838B00C04DE4E70943047D991DFD3880EBDBDA8DDBD1C9BBEF5035CF7A5AF62765B8E2993BA287A3BD5655A012079E94C0C1C680682943C35A3CB7374DF7B1F7A972E85DBB21556AD5184';
wwv_flow_imp.g_varchar2_table(188) := 'A5ED1DB4AF97C178CDBDBB035DC17D78BFFADE3FD81207338B707986A2BD8462DE4CCC3FF334804BFF5C10405BB904E340162D06A423319018683020C5DEF0CB357E48B65C7439EDA7F1ACBD7E1F06D0BF691D365DF607ACF8C07F60C5A7BF8E69EB3761';
wwv_flow_imp.g_varchar2_table(189) := 'D159A7A263C634A6AE9F660633AB5F0C7EB6AA230E5AB5EEA9DEE38081289C54E846CBDBC01D6FAEC385285B06A3C7FCA04B7F200ACE76BD51688B1EF4DE7C13CA2BEE478796C5F566BC05E6A1D2A770160CD33FE9B0105A9625CFBA672E43894DC868CE';
wwv_flow_imp.g_varchar2_table(190) := '202FB8335943775B276A471D87B0F00854CC21677B1DD3180CA3396430881FD216B3915E906E9A112C47173BCAF3E41504C36358F3AEB19C66C13B00A32C7F7FA66FB6DE3BD245E6025BD01C30CAA3B952E3538D25D77DCDE58A1958738C113438557D76';
wwv_flow_imp.g_varchar2_table(191) := 'B480DD8EDD094311FB2BC31198929303F567F042E17AB14F6E8D4BFA9E61CAC74E0C8057942D9E286A351403FD08DBB761E0A69BB0E2139FC4D5EFF91B745FFE1B0C0C6CC5E28B2F40FBA2C3615C61D46D98795C9DC90018578FB3051B23A91228A08DDA';
wwv_flow_imp.g_varchar2_table(192) := '3706AE786D52E840145E0614444663012B96613B97FF8DDB001905BC56ABC66D01E595D00BB158A66FD5D3ACDE821A0D9E4A6D006402955219E5858B70DAD39E8130690A8265F576D310E0059B5ACF43CF1ECFA0C13E268F1F4C1F762206F18EBC77D8E5';
wwv_flow_imp.g_varchar2_table(193) := '190C49833DFBEB7955CE9EC1A7BCF3FE4D943DDAF4AC014B1DC5676C37D337EB92CF300AB0B14C8DA6001E7A24CD82C9D9D6D132D47C7A95DF7CEAC0E4A383E45D6046C8B88DF080A392171A8A9E4F87D306C01B109C43A01C1819CD98368B1ABE88F2A1';
wwv_flow_imp.g_varchar2_table(194) := '25FB6A51A060352A74ABBE025FE9E5EAE166B83BEFC1E6FFFA1FDCF28FEFC7E6EFFF1F66AEBE1FE5FE5E54A64DC6FCB3CF46690AE58C65AA2E23A375435DEB563DD57C5C304081543B24B881A26ABC6E08B7AC75EF3C855B600498822381151EEBAEBB05';
wwv_flow_imp.g_varchar2_table(195) := '5B6EBF13C5D66D5C1330CE8233308A62CA21814ACBF3220E20A6D25B13C6D668F632400E8ACCD808B671FA4C4C3EF5544C3EF9648E78E203509AA0C672F063A2A64F31EA9927A868E68ADCC3D3D78052904FF2EE192965CE9B32BE1EDE8C5F799A4533E5';
wwv_flow_imp.g_varchar2_table(196) := 'ED551AB6417DAA59345BEF7A3AC0D3606B168169C1E78B260F3D22C945B350B1BA47B3F5A957A5F9E7CAD6F216A3493FBAB4754E87E409F4AB5BD26177DCF10859095E061424485034022FE8311A0B190DE48C7D5CD075E0D851623F28FB1E142BEEC003';
wwv_flow_imp.g_varchar2_table(197) := 'DFFB2EAEFBA77FC3928F7D1A6DD7DC80E96BD66272B5C0365A0A534E3F1DA5934E46ADD40E1910BAD778831B6F0D4AED692D06288BACB071F07404055723910418543C54E4FC6448A0720F147AA1065BB71E6B7E7715FCAAD5405F2FAAD50A320ABA315F';
wwv_flow_imp.g_varchar2_table(198) := '606975E893172D7C8A0D0D3CD58CED6F2B71902B213BE450CC7FCCA38169D3A0AFFE39C7543C4196C0F6635487716063065225EE2C38F29CD10C73E49A60998D70D01F083076345099CD42E5369BF691A4739EEDDB6F30D04E6B1A16009EECF3680E503A';
wwv_flow_imp.g_varchar2_table(199) := '63DAE6003E2B637F70DE58A726318AF4C6BE325AE8F9360BE70123C0838F0CFA05CC5A06BA1C279C63A883EE9F31A244CD5F2A6AC88A0A5B5D23471E15CA457FE6D04FB746E8DB33252AF5D2966ED46EBA1D6BBFF09FB8F5BDFF827B3EF519D8955761FA';
wwv_flow_imp.g_varchar2_table(200) := 'FA7568EBD90C547B506DCBD1376B360E7BD21390CF9E854CEFD744838DB71DE16CE520D7CA954F756F6D068CD5377018E4492F7DF5104A31381629089CC81346611780CCD7D0BFF46EF4DCBE04A5DE6EB4E5F52E4C639FD90CFC00A002057A5BFCCC3878';
wwv_flow_imp.g_varchar2_table(201) := '39635B38E8D53ABB901F7514A69E7E1A02B7023CC3004FE307519137386BB6C9E25E50BEFA0CDF933921403330964A3A03553EC11998669F0A1F0D54C668309AB2479B969D08A3C1E8CBF72CBF190480CF0D51C331BDFC7B82FA80D2EF70992F5E8FEC06';
wwv_flow_imp.g_varchar2_table(202) := 'C5A94CB94D83F58AE5EFD90D4C371AD457E4EAFD6ACFF9D807553EAD80C0BA1BDB617289C8195D9517FBAC639944C34828988FF600243325EF511E1840DED30B5BBD1ADD3FFB296EFDE00770CDDFFF03567EFEABC0E5D762CA836BD0D9DB03ABF6C1872A';
wwv_flow_imp.g_varchar2_table(203) := '8ACC61A0A30B334F3B0BD3CE7D346CD22414FC9321CE8736EE4E37EE5A941AD45A0C68AC018598B5A6EC52E1805775300816D845A5A1620C28A815ACBBE946D8DAB5C82B146ECE0A32E728BCE03001B038E893A600DD163FA97433E75062DB2BB4708A19';
wwv_flow_imp.g_varchar2_table(204) := 'D3D17EC2B1B0C30E055C0EE71CD872646C75C1C18EC9319AC3C898F28BDE3AC41E9F051F04278E8C351657E79F41BC57E0F3181DF42C9A066F12C614A4884603B69433C5B00B184616C32ED015C8A56074F70C3E62D48F7ADEBA7FC8A7828761D8652C22';
wwv_flow_imp.g_varchar2_table(205) := '86ED523FC38EFAB2B860AC6FD3A8F795669E19EFC27686A680305807F67B0C56C8D1E54218E2BE3E785FF64E2F43600700360B19EDA1BC5A45BEBD1BD9DA7508D75D87FBBFFE755CF5777F871B3EF06FE8F9FEF7D0C1B0CEE52BD0C5EDC3768E21812B07';
wwv_flow_imp.g_varchar2_table(206) := '3E14AC9B4391B7A13A791A165F70214AB3E7A3923968080239C188476B0752BA5BBB01A9F6ADCB00E51C943A8A331D7E4619A3A0074A5B000781F8C1A18361946BD001366E42D96D810000100049444154C4C69B6F4179DB56E4A10670E9CFA4F998594A';
wwv_flow_imp.g_varchar2_table(207) := '4B83114596AB06CACC425AF8D480168A02658E40FD6C7C7EF842CC3BFB2CF8CE4E92032A6444A6D47EA5E5054675B04C914ADB81C3A921A84486051219E87A16EA631887096F00A75646B7598065A89CE150F86E60E5755FB0FCDDC072AC49C4725986CA';
wwv_flow_imp.g_varchar2_table(208) := '12545660BD05CF70CF729A81F2064E2B87030C7B28D4F31886BABA7FAC13EF3BD4551AC519EBB4673818EFFBD0E91CFB83C06734EC3E43EF59F7533A06F9102711AC831798B7196E9426D69FE9EB65EE7ADF119F15CBDF517FE6DB2DCDD078FAA17FD3C7';
wwv_flow_imp.g_varchar2_table(209) := 'E5FDD86EF67FDD4F752C7C605BA1DEA29E49E3D7224A94936CF3165497DC81CD3FFF25567CE14BB8EBFD1FC05D1FFC08367CE18B287EF633B4DF761BA63EF820A66EDF86AC36008F821307C1732C7128FB1CBEDC85B6238EC49473CF816FEB80CF72C41B';
wwv_flow_imp.g_varchar2_table(210) := '617C1EEC35E3B361A955ADC100C7028E21146A56D7E408D16F300A3E9840E381002ED1F55E7B03FA97DC85B6FE01CA654051ADC1715030E66152E609043840C47102012D7CB05145086C43069B3E039DA79F8AAE934FE2B0950FB6D1C3226988AB01A36E';
wwv_flow_imp.g_varchar2_table(211) := 'A90823C785077CC1DCBC36C251F13B037882970819955A3E08F99B0098062A64186CD8F58E34BCA7E24684E29A84533A67708330BAC6BA3822FA15DF0C98AF51C6503796C1B891DC7A3AC071546DC098D68D04D587883CEDD1052C23588ECADB1D01CE09';
wwv_flow_imp.g_varchar2_table(212) := '46F7E161AA1BCB7243A1B04128BE1938A6373398ED0A37ECDAAC1E1F1CFB0FDB19FB92FCC3201E621CD3C86F745547633DA17BD1759987B302AE4AD9DFBA156EC52AE0C65BD1F7CB4BB1EA4B5FE3F2FE8770FB073F84FB3EF1096CFCCA57D1FF83FF43EF';
wwv_flow_imp.g_varchar2_table(213) := 'A5BF4376D752CCECEDC7543818C78A9AF7A0584186B3A3A70ED0E6C8B0A5B31D875E7401EC8885284A399C11C1C130F2D1EAA1AED51B90EADFE20C50B20207899DAD0814B6C04BA36B908FF20717A8A1B66EC1F29FFD02B6FA01B8FE7E6AAD4021663A0A';
wwv_flow_imp.g_varchar2_table(214) := '3513332D07C10079E947CB1F9E2DB07219BD1C053BB9F73FF3DCB3E167CC8C83973EEAEC9852116C383F477532AB564CC051C06906D5DB87DAF265F077DC01B77429ECBE7B81E5F711CB60746D05DD95CD0183E91CF30C452C43652DBF97658E8065C3C2';
wwv_flow_imp.g_varchar2_table(215) := '747DDF3DC07D4B9B8631AD807B9722DC73377117C2D2BB6077370FDC7D27C21DC492D16009C2925DE16FBF1D35CE3CABB7DD8A5D710BC36F46EDF687C16D37A37AEB4DC48DA8DC7203FA6FBA0E03C371F375A8DE7C03AAB7DC88EAAD37A2769B70135DE6';
wwv_flow_imp.g_varchar2_table(216) := 'BDED16DE735714B7DF8270C76DBBC1DF713BFC9DACFB9D77204457FE25C05D7790B73B7703EE21A7E416F7DE0D90676B704E77F767754FFD59AFBC0F16B17B1F6AF49718BF82E9F8CC03FB61FF8D3760EB959763FDA5BFC29A5FFC146B7FFC43ACFECEB7';
wwv_flow_imp.g_varchar2_table(217) := 'B1ECCB5FC6BD9FFE0CEEFDE4A7B0FCE39FC2039FFC776CFCE297D1F3A31FC15F7D0DCACB97A38B33FD495C212C050F4F2B578ABFE058E369BD64ECF45911A0C9434E63A42865E8EEEA40C62DB6D98F7B2C8A491D00D3669C79384FEB0314168CBFC38DBF';
wwv_flow_imp.g_varchar2_table(218) := '26A516B51403C1A26819DDA8B50D90576D904A0BECA19ED353ABF6A38F337FFDE7BFB6DE5EA056A30E34645909C6298BA790C33CC53A40873E05F95B15B26B427B1B7ABB3AD1C199FF0C7DF5CF329022D43FC0C391AF8CAECED1B5D85B40E10A0470CF34';
wwv_flow_imp.g_varchar2_table(219) := '5430B0F40E2CFBCFAFE3EE8F7D0CF77EF46358F6B18F7370FD245670805DF5F17FC72ABA2B3FF1EF68162B986705F30C8706ECE58C1B8E151FFB14223E4AB781C1B0E574F708E659FEB17FC74E7C0ACB3FFA492CFBC82770DF873F81E5A3C4CA8F7C142B';
wwv_flow_imp.g_varchar2_table(220) := '3FFA915DF1918F60C5473E3C22567EE463D81D1F67581DAB3EF271082BE57E987ED6E7FE0F7D1CBBE213581DC33F81558A53BA0F0DFA79BDEA431F6378032CE383C42EE12A8FF1CAC7FBC47BD16DDC57D72B19B71BC8D18A888FB36D9FD88187E24C7C46';
wwv_flow_imp.g_varchar2_table(221) := '5E3FF249F2FB49DC17DD4F916F62E8B38ACF84617CDE2B8660A43EB44BFCC73F8995EC832B3EF451ACFCC087B1FA031FC5836CEB1AD6712D95FD9ACF7E1E0FB0AF3EF8C3EF61EBEF7F8B8EFBEEC3A1BD15CCAB7A4CA5B277950AFAFB69D072A1BF46044E';
wwv_flow_imp.g_varchar2_table(222) := '201CC788DCD750D278C26BF57FCFDE0FEEF357DB4AA82D988B639EF65464471E45B9C8B41011C16C1C94245FC3D1FAD7AEF59B905AD0CA0C5007C11A1A9F9A2D50208586822B786D4515BEBB076BAFB81A1DDBB7A3CC6B1AED0854FCE6728016BD66B286';
wwv_flow_imp.g_varchar2_table(223) := '00AE84F213F0B4DED5B9AD85C9096C643FEB5F5A301F934E3D056EC1A1D1E8715CB6F4347602E3101C972E8D74850805350BD15E7039D4384B427F2FEEBFF4B758F6ED6F63E537BE81FBBFFA35ACFCCA5739D3FA0AEEE56CEB9E2FD3FD12C1BDD57B4781';
wwv_flow_imp.g_varchar2_table(224) := '7BB8FF3A1CF77DE9CBB88F650DC5B278FD55DCC7FB0CC7B2AF7E15CBBFF2B53D83755E3E042BBEFA75ACF8FAD7B1F2EBDF886D5AC176358B95DFF82FACFAEFFFDE1DDFFC6FDCFFCD6F62D550FCF737713FB1FA9BDFC2703CF0AD6FE1C1EF7C076BBFF33F';
wwv_flow_imp.g_varchar2_table(225) := '583314FFF35D5E7F9771DF1B86EFE2816F7F97618CFF9FEF61CD20D67DF7FBD8F8FDFF237E3404FF870DFFFB43AC65DCDAFFF93ED6FECFFF62ED77BE47FC2FD67C87F987DE8F7ED5E1C16FFFCF6E75549DD526B56115DBD140FDFABF3122675FFF4F2CFF';
wwv_flow_imp.g_varchar2_table(226) := '1AF925967F8DCF86BC2FA3BB8CEE2ECF8AD7CBD88FEEE3EC7C67BFF92276FABFB4D3FFC541FF97BE84FB58D6CA6F7F131B7FF0030CFCF2D7C8AFB80A9DD7DF84AE5BEFC4D4652B3167D366CCEDEBC3ACCA00A6704BA0AC0941AD40958ABFCA6D41CF51C0';
wwv_flow_imp.g_varchar2_table(227) := '65348EE95268281201728D8EF18A1700C7088D1D9ED3865A4707DA8E3F16F32EBC08A1A3FEBBFF8E326604B8E916D363FC1D1A23C75FAB528B5A8681008AA334111D5A029037B0F68166B784D8D39F534961CD5A6CFCE3359854AD32598182F181022C03';
wwv_flow_imp.g_varchar2_table(228) := '4169403F9491E9071DA6A38F2783C6D43972954400AB3924322B95B0B5328049C71E8599271E87A29CC726EE3000D8E610B3E8D3D85EE3954E5D8798563E858C8860D0F2661B07C062D90AACB8EC0F98B2690B8E29B7637129C761B9C302EEFDCF2D1BE6';
wwv_flow_imp.g_varchar2_table(229) := '941DE6961C0EE15269D3609E4358E7E198CF32E6B3ACA198A76BA69F5FCE301C73997E2EC39B02CB995BB258D7B92C6F1EF3CD6F6399C4DCF61CA3C1ECB63266B7B5ED86390C9BDBD68E1D686FC71CAED4CCE2BD7603EB3E933C4EE79E760333A2DF611A';
wwv_flow_imp.g_varchar2_table(230) := 'C3A7EE1119A6B18CA9C4143E8B294C3F140A9F468E85E97C66D308854DCF33CCA00214A6D36D407599C5F4C3319B759F4DBE866216AFE7307CEE08BCCD6F2FE1106201E322DA722C20C77A7673956708F40C16F0B92C60DD17B05EEA3F0BA2DFD5FB13C3';
wwv_flow_imp.g_varchar2_table(231) := '161087086CE702C6CD615B67D09DC667398956BD14BCA32CF8BE7E547BFAD0B7BD17037D03089E7D386F43352FA337CB282365B87209398D6747C3B6CCB1A34C21C8CD0196A1C2BEDECFEB228A4AE09571FDCBC1CF9C85598F3E1F58B810212FC5F02254';
wwv_flow_imp.g_varchar2_table(232) := '2943051C9F571C5FB0EB311EAEC8CA7868466A43AB32E029A894612A2F4AA51A6146E173544C064FE1F5E0D13F80CA12EE51DE7D2B8A4D9B805A80E98F33E1C03481AE93326358C1FCA0ABF8C09230C60EAD540417B842A136B08601F5DAB2DECE381005';
wwv_flow_imp.g_varchar2_table(233) := 'AF00981982E5E82FB5A174D289281FB9989310CF16319E698C3EC4232043207FC62B21009CB504C273BA13580E82815EE80860B90488A070AE9E60A01B6B2FBF0CDAF76EEFEE458D33A8DE4A15D5FE2A8AFE7ED408F4702DA27700B55E5E378982E90B3E';
wwv_flow_imp.g_varchar2_table(234) := 'BBE1F00C1B09C3D335AE474AFBF06115EC8C97BF818118DE28B719776739F5BCBAAEE7EB8FDC14E4A68E011403D5DD411E3D11C8E9AEA822D098C5A850C348E9558EE059D6AEA8F11EBBC2576ABBD791F5F67CD641A03F0C811FA890B391C0F6F2391654';
wwv_flow_imp.g_varchar2_table(235) := 'C2110D3F5D3F0C81697CBFCA186059CCC7EB98876EEC4F54EAC50E304D5F0581E98DF541A5A0920FF081E09E98645DC8D8AFA5D463BFE618905326B4D7EF8A02E03593225046041FFB3A780470B889D00B874C18E5703B0DBDE2E8A3B1E0711773F6DFA6';
wwv_flow_imp.g_varchar2_table(236) := 'D4C83D60943FB88C1E02E3F34806C0F87CAE2DD5AAA89228E081224BB9A35C1AEB6F30091F05BBD8DE8DD5D75E8BF6AD5B50E2404ADD46E1643C5335CE381050A149C1018CA35F6E1D181387AA14EB17C01AF2237EB2F58CD000073346E83A403C6CE55E';
wwv_flow_imp.g_varchar2_table(237) := 'E5BC33CFC0EC73CE829F3A9D6114573594C900FA055D3346A561C851BF369052804EFCA807D62F07FD8E236558B70E6BAFBB1E53A9D83B185BE859B02ECAA6A12FE375C63A66B4D468BB6034C8D8903101B657F5165D729B81DADE4CBA039546751F09FB';
wwv_flow_imp.g_varchar2_table(238) := 'F2FEFBE359EDAC9F35DD7732F635C1B1DF1901F6CB40C8B5C0CFDD105876184CC178F9948F30023C285994180F19010565CB71B5C173E5265F7828E63EE67CE48B38FB9741CCB4609F37388A0F2141C0F0637C5C6B14191F2D49AD6849065C0005B75EF5';
wwv_flow_imp.g_varchar2_table(239) := 'FA92BF87990229AE74ADAF07D5A5F760E595D720EBE5021EA3AC9EBC653FD5E68CEDE0098E73C06083D47E8D551E405E2AA3AFB31DB32FBC00534F3C11E012A733AA2425E020E56326E3CC9E3C31BD774061D4F7042F19EEC8ABC554BA96873A3D0E69A4';
wwv_flow_imp.g_varchar2_table(240) := '15462B4A5FA9B2DA007A6EBC15DD4B96A2C4597E080538E702134087D2AABEC6A190A52BA8A561AC7D3360B274B614037CAAEAE0B1CEC6FE6FECFF2002D17003C311BBB1FA75C84AA8744DC294534FC6E24B2E849FD48922966150FF779235C4E4FC1C9F';
wwv_flow_imp.g_varchar2_table(241) := '27878DF1D9B0D4AAD660C038C3874005132895143D0834C0A1A5BC9C06C0A6ABAF46E5EE7B51E2726043285BA375BBD632E8928D73F438CFE6D12F0320B0C54678CD4AA8DC8D8ABE96E7282F5E84D299A721CC994776320E5E0670500A719002AF058341';
wwv_flow_imp.g_varchar2_table(242) := '476054808C081F432C0E7CA41401CC36F889486CE055607C15BE7B1396FDFC3798B47E2BDCB61E14352E33D70B8CA5C4BAAA0096D1D227DBA0668D0624A9A59B3C912A1FF860F988D9D12DCAC5CEB62B54885190BC797894B21CFD856160C62C749E7D16';
wwv_flow_imp.g_varchar2_table(243) := 'C2D14762C01CFBBC6080648CD9D4FF31C2315E82DC7869486A470B3340610B04C58E4A89ED089A6F0658AD82EAEAFB71FF95576232F75AB55C2D85C6142D79AA7D522A1A540C36D88686EB19C2369307C799C9F6DC61EED96760CA9187A3E06A806C2447';
wwv_flow_imp.g_varchar2_table(244) := '5E943A30A7043772C10B858931C7C2AD5E0A53D44F8B0E153E133329AF94926044E8EFC3B6ABAFC2C66BAE47DBD6EDC8430DBC3D8C7F2C0ABC1DD383CFC4E8D6CBA0A7754F12401AA282D8930BA66DDD864EBC9AD79FA7A9E7B2F146D4FB6B54F88CACBB';
wwv_flow_imp.g_varchar2_table(245) := '4041C129D8C91D95FD76BAE5638EC1FC33CF44ADDC8E82CF5C398D4672A3EFAB1F300BCB1B9FE7786EDBF87C62E3AD555138435C7AB3E09051F22887A06C22D70B482B56A267E9DD98DD5646AD2868BB2BB67549D00013D438C867F153AD316E4C664615';
wwv_flow_imp.g_varchar2_table(246) := '5EF3E0FA3FBA277561CA69A7229F3307051304EED57BB61FAE9E87B4714AC3089620DEB4A2E038CAC94800C3EAA827A933D6F83430196450149BB7E0DE9FFE1C58BD1A45CF76B471D521631D8CF732D4F38265B97A560405A2758FD1547F34695B9791F1';
wwv_flow_imp.g_varchar2_table(247) := '5473A36157877AAEFA6AFD1F06F1CA08D0206073635776469932F4767400C71D035B7C387A076A28230777C6065305BA83E7106F3D64FC7CBAF1D394D492566480C6368511115133513B497841E7C4AA6900001000494441540D57DBB2199BFE780DDAB6';
wwv_flow_imp.g_varchar2_table(248) := '6D0306FA10A89C0215522BB653756693D42C7A039B1A38B316105BE4C1A3F0C85C8E1E5EB41F7B34DA8E3F06983485F1C67007CB1C8040806140FCD0E066FCD005893302430F469905E8CDE9FAAFA1057D890259A50A2CBD0F7DD7DF82E92CD3B902558E';
wwv_flow_imp.g_varchar2_table(249) := '7E4C4E230CAC1B5847630C604074EB77E6453A1303639C016D277A76DC280E948F40C3DAB1273308E0365B2FFD0B1FFD281CF5C4C7C3CD9C8576AE00942877B40D185F6F1CE723750F0DE2BA67FC7DBAF1D7A4D4A25662C0A02E6814471006CA20E1E12A';
wwv_flow_imp.g_varchar2_table(250) := 'FDE85D762FEEFBCDA598E43DB6F7F546256668E543B5671BE9E82B7A9CEFD320086C5080E794BCE26B407B3BBABB3AB1F892C7611267269695A232D647C8988E79EB39A894E98F831C996321F59391D4F7F4373C74A9BE8D692CCB10E9E6BD8A9E5EACBB';
wwv_flow_imp.g_varchar2_table(251) := 'EA3AB43FB81EA5A28282CABFDFD328A04596312D0B88A706509530242886A78FC4C0D86220404ABF014A07AB179051A3B36B736E9F110EC6E5B49095E1E7CEC5541A00534E3E09C695AF9263AF67DF0713D7CB0065A25E26EA02C5F2EAE778FA74E3A931';
wwv_flow_imp.g_varchar2_table(252) := 'A92DADC900458F7AC910950C7BA451E08A4D1BB0F5BAEB30B07C394A9CADE68C74B4E4D1E2075B09296D2D4F6A90525B35E038B58F7BFDFD6D25948E3E1C53CF7F14B299B3E3D863A80F4452C43BC082A49C4507E942F4338CC5282822A655180736A501';
wwv_flow_imp.g_varchar2_table(253) := 'F9E389BC3680825B2B0F5C711526F5D33F300073BA0B6888F05ECACDCC310F186E04C318C4CFD63D4753FFD1A46D5D46C64FCDEBFD9F4F8D0A1CA0CBA6C5BD7C6E9B19271079E6E0B9C99FE5250C944A289F783C3AB9C516A64C05A3A39CE943E578F579';
wwv_flow_imp.g_varchar2_table(254) := '824540B2A930F9C723DC786C546A530B3140597514368740C5483820A3D0F62C5B81B57FB81CD3F4E326BD7DE828B57105C0B750C376AFAA3188CDADB793EDD540E5E9B2D5A0FE45CED9FFE60C9875EEE9282D5C8450EA609B4908F331193F8D4C35A092';
wwv_flow_imp.g_varchar2_table(255) := '02AFEB088C8D039501322AEA2A1BF583119CF4C3D310003CAC7B0BBAFF7815B62DB91DD6DFC7C505867199536F46C31C0ADD4CE5801F84B7BAABCF7A81ADFB197962F5F7E432493A5B8401766FF558F6EC9D4F55CA3F1AB0ECD76A86E70727FF08798EEE';
wwv_flow_imp.g_varchar2_table(256) := '728E8ED34FC6A4638F857725CA8551CE9457D2089655EFE94E41ECFF21F67F0C1EE3CB191C5DC657A3526B5A878120CD47C56434C3A57824A4D8B61D034BEE42F7ED77621A85CF716FDC8C424AB90C144FB4F811D40E816D69CC3024883E77E8EB2A63E6';
wwv_flow_imp.g_varchar2_table(257) := '39A721E7CCA466193C15B29ACBE4882FF979A38B78340639E3E8A67871A3F2E4275B9AD07034E35560E9046906B8CCDFBBE67EACF8F52FD1BE65336AD501644CE2B8475A0AB43EC8336F11CBD700A84194C5C76BF9A3277D2406C6120354D4EAF711AC97';
wwv_flow_imp.g_varchar2_table(258) := 'FA29BB347D80192581634C959D5FFFF1AFCF794C5EB80053CF3A05D99C39519694B6460B59BFD0C9A20030841E4741B060F0BCE625C6E3C19161F4CDD20B450F954B71C243C5A7F0C4C05006B4174E19A38881EAD008A0BA761D7A6EB915E52D5B907335';
wwv_flow_imp.g_varchar2_table(259) := '20770E858C000A724C38B48016F24B41ABBA191BEC080F87C0012A23CC0CDBB84C39F5F8E3D175DCF1706D1D222436D7F85907A252376087CBA90BEA074B3742179E1F41A93098CE3888A938CE707ABBB1E5965BB0F6C61B300583470032D645DF83A217';
wwv_flow_imp.g_varchar2_table(260) := '0DEC2C7B305D721203639001638F7554F016EBA64F829DD828372173F074F54FAF7C9E611B97FFE79E7F7EFC71AD1AFDC615020D2B1294401904D31AC04F4860144CCFCE73BCF9DCC335488ABC81874AA7F8878A3313950F159BC2130394310AAA0FEA27';
wwv_flow_imp.g_varchar2_table(261) := '19959021AFD6D0BD722536DE760B3A393BAD562BA0EE275514F3A0F50166E055AB9E1289DC3B643E8766F8E0505302E039FBDFD4D58585173F1EF99C8500972A330E5D8E4A5DEC3009E268C40BCD74C023302F5420C378C9B3EE31CEF601F2C54B7E2200';
wwv_flow_imp.g_varchar2_table(262) := '281C3F35CB59BF017D575C830EAEB2948A1A3947D4F3C1B9FAD23F53AB48DD438F4560F6780EF5C780F4911818030CB09B23A70190F900CFCE6BECFB8E9D552868D86AEB2B573D1D3F0F5D88F6F32F40791E658C69BC03980599A387698D614651810E17';
wwv_flow_imp.g_varchar2_table(263) := '20397008305D8F43A8D523366BA862975FFF984509CD0C8E6499D52931ABBB183C14279819079630189A9CC4C0C80C38F613CE4BA97C808C92671B37A0FBB6DBD1B37C053A28D081DADF8C2268545414C4914B698D50369515A54CC4930D72469D1EB8BA';
wwv_flow_imp.g_varchar2_table(264) := '51A0D25646E7514762F65967239B34191A78EA7BF9CC3278325B0C1FBC8C0EC72B86C9CBB2E40CA291562EC7355064910FF4A3B262257A6E5D82690CF0030380078C7FE0A1B2E8EC381BD7B62324791203639381C03E2C700819ACA0C5BD7DCFADADCC1C';
wwv_flow_imp.g_varchar2_table(265) := 'CA6DED1828E59877CED9E8E22A1B3ABA98C320D900021DA32C12CC6DBC1676F4FFC0C0788EBF8F8734001A4D353334143A78C818A033A272579CD0886FF8753D146624FA2130345DF28F7F066864B391066FE07E9CC7F6BBEFC6DACBAF806DDE0657F514';
wwv_flow_imp.g_varchar2_table(266) := '4A8A27A5BAD0ECDF98B495CF389050E1AB3D6C385B0D29F922CBB8F73F198BCE3907D9918BE13BCAF08FA09DF5770202B49729E28CF7A398B12C7A38FBF7DC5AD972E5D5D8BE6C25320E8C32EA631A4637EB3E826AA52C8981FDCA806727D76A9A374745';
wwv_flow_imp.g_varchar2_table(267) := 'EE21B90A1C2B3C8DDC9C9ECC32D4A8FCFBA64DC1BC73CF41E7DCB954F101CC16EB65C6C4D137F13EDC484D6E286EB91A240AEEC3CA6DA455B8FC66461249B7F750BCA0B48A37ABC7295DB350BE66D3A674E384010FF621400A0BDBB761C375D763FDF5D7';
wwv_flow_imp.g_varchar2_table(268) := '633AA8F86B5CC0A3F0062A2F294AEA4C18C35BF5A46A8E55F71965864390F902997354F85DE8993E13873CEA51C8A64C42D5519ED8D040198A199AFCA82BF1C0D514DD89031CF37996A3EFF8A3A862FB8A155879D91FB8FCDF8DA27F00CE654C91CEC440';
wwv_flow_imp.g_varchar2_table(269) := '8B33104023971D9DA383FE73252F515076BC3994A9F8AB8CDD4C99EB3AF144E4279E8062F264F860B1D16675375EECE1633C468F6800A8A152E61B366CC092254B70D75D7761D5AA55B8FFFEFBB165CB16F4F4F4A0B7B717FDFDFD1152FACAE3389809F2';
wwv_flow_imp.g_varchar2_table(270) := '07EEC9C81D098A53F9C33152DA1436CE19603F517F7054887ED5FDA8DDBE04E52D9B51AAD528C4146C09286554CA8D7A111814DC566545AAD9434354404ED77390AA7475A283CB9276ECB1086D6D086A330733446074878A863E481AF3178411A54D1BD0';
wwv_flow_imp.g_varchar2_table(271) := '73EDB5D872EBED98E403ED2DD684F21AAC4E69B3EEE82A935227060E0C03ECC6882F026A3CE14541C03C7BBE47B59CA367EA541CF2B8C7A173E162147909EAEF664A7460EA3756EFE246AA9814B306E55B6EB9057FFDD77F8D8B2EBA088F7DEC63F1F4A7';
wwv_flow_imp.g_varchar2_table(272) := '3F1D6F7BDBDBF0918F7C045FFBDAD7F0A31FFD08975F7E396EBCF146DC73CF3D78F0C107B169D32674777747C360807B8C0D542A1554AB55D434B00FAE2834EEA37BA91E0D57FE8409C28033EEFD031967C39BEF5E8AE2BE65989BE7F09501149CA15603';
wwv_flow_imp.g_varchar2_table(273) := 'E0A824F5B6AE713A6B68DDC38CB5D7C84305ACD58C8CC3D300C3BABBBA70E8631E039B3317FDA04872108B6D66FCE85ACBF2998725F0938A9DF7F22CC03803EA5FBB069B6FBE156EFD7AE4450DE572197A339AD1E94C0CB43403EAF59AF9CB0050433C7B';
wwv_flow_imp.g_varchar2_table(274) := '3FBB3EF57F81815A05C5A42EB8230EC7A40B1E0B377336C71B878C6994B6798CCF941A2B766B59C63DC99C83F009279C8033CE3823BEA4B47DFB76DC79E79DF8C10F7E80CF7CE633F8D77FFD57BCE31DEFC0AB5EF52A3CF7B9CFC5939FFCE408F915F696';
wwv_flow_imp.g_varchar2_table(275) := 'B7BC05EF79CF7BF06FFFF66FF8C4273E812F7CE10BF8FEF7BF8FDFFFFEF790617137F77A57AE5C89B56BD762CBE0AA820C84A14681FCC2F00ACA5010142E5790BF81C6B599C57715742D98A9AB34523DBCDBB8AFF235FC0F95C3ACF9721FAA8C89181ED8';
wwv_flow_imp.g_varchar2_table(276) := 'E85AEC811ED8BA15DD77DC89DE7BEF459986A2D130288840E82DDEA8102D436861C1A55E67FD01AD6494D48EAC84FEF60E140B0EC1DCC75C002BB7C35C8E36B653FBF9EA7BA4A8F9D30C9EC6856EA215134FC51FC035804A2FB6DF7B1FFAEFBB170B3913';
wwv_flow_imp.g_varchar2_table(277) := 'AAD100D03F1782EAC04A292D0545164384018AA9232086ED88E7653A1303638D01F67CF6D7004FD9F1F465ECB7650A42D6DE86DE499D389193D7CE430E837E080851469860AC35E220D4270EBFC3EF6B6694F780F9F3E7E3ECB3CFC6E1871F0E338B3378';
wwv_flow_imp.g_varchar2_table(278) := 'CDEE376FDE8C75EBD6C519FFEAD5AB77B8F772F0BEF9E69BE3AAC0AF7FFD6BFCE4273FC177BFFB5D7CE94B5FC2873EF421BCFBDDEFC65FFDD55FE115AF7805FEF22FFF122F79C94BF0A217BD082F7CE10BF18217BC20AE36C850F8DEF7BE873FFCE10FB8';
wwv_flow_imp.g_varchar2_table(279) := 'E38E3B2023613D672DDA76F09E8F96F530B3581F3383E332A66056AFB3B62334703660B6338DF2838799F173E4D3CC62D92A5329E4CA2092DFAC1E67B6ABDBB897D2248C8E815A28D8D73CB6DD765BFCE95FDBB2155678E8673B01F28CFA11E82FF8ACEB';
wwv_flow_imp.g_varchar2_table(280) := '572DFA496306B1EF043620A0CF1C6AB366E188C75D8CECB0436134BA1DD8E6605C07A0CBB418C5C10512F83C03586E011D016578E4EB37A072DB12F42D5F89BC5225DF01058DAC9CF7E20582E48A559221C0BBD615BE064961D04050B8A052131203638B';
wwv_flow_imp.g_varchar2_table(281) := '81000B1EFA4D919AA9975A34B28D7254993409D9A2C5987CEEB9085326A1A6FE6C80193FD0FC315E53BA911A26252A6529E577D45147E194534E894BF76DDC9F6CC429BEB19CAF30F9B5DCBF953339CDEAF5CEC0B265CB20A340FE356BD640D07B042B56';
wwv_flow_imp.g_varchar2_table(282) := 'ACC0F2E5CBB174E952DCC681FF9A6BAE8946C337BFF94D7CF0831FC4DFFDDDDFE1CD6F7E335EFAD297C6D585673FFBD978FEF39F1F8D877FF8877FC0BFFFFBBFC72D88EF7CE73BD1C8D03684DE5578E0810720E344464A5F5F1FB4EDA07A36DAA8F69819';
wwv_flow_imp.g_varchar2_table(283) := '1426487137E2E45798DA2257D76606B90D28BC8146985C9561963A9478681691370A230986DBB60DEBAFBE862B004BD0A625BB9A8C0283AC7847C116B3018027E4D269C9D353A106F613F543E40E950ECEFEE7CDC782479F0FEB6C87F62D73C66BE01235';
wwv_flow_imp.g_varchar2_table(284) := '6AF7681AAA9592A04C2C83231C07C500C7EDB66DDC5AD978EDF528F7F4C0570780CC60AC8B83C1D158507DCC1826003BC2868683B3A93A98209D8981B1C680B177B2FF06423F1C2683A028E578D0391C76C105282F5C88A234B8F7CFBECC917DACB5E0A0';
wwv_flow_imp.g_varchar2_table(285) := 'D4C78D74573383841F3C162C5880534F3D1552FEE5729921880A541E0DE282E70C42AE20BF8C012DE74B01CB28905F8A55E1BAD66C5E5B0ADB38F00BBA96D2D6FB0352E2320EF4E2A18C036D175C7DF5D5B8F4D24BF1C31FFE10DFF8C637E276C2A73FFD';
wwv_flow_imp.g_varchar2_table(286) := 'E9F82EC2FBDEF7BEB872F0D6B7BE156F79CB5BE23B0A6F7FFBDBE3F6C4DFFEEDDFE2C31FFE30BEFEF5AFE3A73FFD29AEBDF6DA6874C810D17D552F338399C5F66AA62FA8ED027898193FEBA7DA27D4AF76FD34DB996ED79874359C01712848F997C95BB1';
wwv_flow_imp.g_varchar2_table(287) := '7C05B65D7F03C07D6ACD580B6A79E7321A001E12D43A30E847CB1E6C16D8D120055C75406DFA144C3AE138E4C71C8D5A8901F10CA425B0AD6C662046713A72C922A019BDA7E1C492806DDDD878DD4DD870D32DE8A49CD68A2AB43A90719B8F09110C503A';
wwv_flow_imp.g_varchar2_table(288) := '1F3F038DAC8082790B5A2005DDC0704F04960D6114F54949130307820183B187D601F6515FAB82562CFADBCAF05CBD9EC915B682DB00320A048955808DA26AE337A9C68BDD5A675627474A7B1297504E3CF1441C71EB9074DA0000100049444154C41190';
wwv_flow_imp.g_varchar2_table(289) := 'F28E030773C4019CEED05361C2D030F96514285C0680CA94E29571D080C2954E69142F284CAEF22A4EF7DEB87163FC36828C835B6FBD15DA6EB8E9A69BA262BFE28A2BF0BBDFFD0E975D76197EFBDBDF4685AF1505BDAFA055857FFAA77FC2BBDEF52EBC';
wwv_flow_imp.g_varchar2_table(290) := 'E94D6FC26B5FFB5ABCF295AF8C2B0A7FFFF77F8FCF7DEE73D06AC2CF7EF6B3B8F5A0971A750F6D6FE8FD047DDB41F5513D1C2D4AC1CC60B6138A33DBF55A61090FC340005C2D60FDED774246402767A7812AA8C8EADD52BFEC155700A88C24DE8EE91FA6';
wwv_flow_imp.g_varchar2_table(291) := 'B4311F65666C1D15AE050C18D5EA94C95874D69908DA977706FDF80F4311F8076373043ACD9E469EC4916306A3F2D6372BFA96ADC0F6DB6E4789C676576628974B00EBE1728323CFC6FB82AEE3D6819071D65447065D23CB10DFC300C045037EA6333130';
wwv_flow_imp.g_varchar2_table(292) := 'F618B0C0DEAE25341AB9DC0443609FAE4D9982939FF134B41F73140257D8324A9FE42318D38EBD261C941AB991EE2A452C981972EE4B1E7DF4D1F15B005282BA6EE4716EC4EC8DE887745576034AD4F04BD94BE90BBA57030A176438342083407E850B32';
wwv_flow_imp.g_varchar2_table(293) := '26B48AA02D007D7DB1012971BDBC78DD75D7C56D86DFFCE637D138F8FEF7BF8FFFFCCFFFC4FFFB7FFF2F6E297CE2139F882B0A3216FEF99FFF396E43BCEF7DEF8B2F3B6A1541F15A75F8FCE73F1FF36945412B138DF714649C34B61D547F33E338FBF050';
wwv_flow_imp.g_varchar2_table(294) := 'DB05B55F6D10E4579899C9691A663BD337CA683AF33E4D282D1D606167A1F20A7AEB3C803E2A27505951E5015B37C59FFDAD719FBADDE540301AEF8A613AD48F864FA1F59031F439D850B16FA8FF812E060F36474D428861063DE31A07A96A5B3BB0F808';
wwv_flow_imp.g_varchar2_table(295) := 'CC38E32C70798D7C05B65D9958860628D325C314D42CC429B3C890905EB78101ACB8FD76DC75F7BD58CF325690F7D55C6958C5817005D70156651EAB331016F140E6F00033AEA5BB9ED844FF76B6AFEA3264DCFE6BEB688763B88C0B538B181FDB473F8B';
wwv_flow_imp.g_varchar2_table(296) := '879AA8E72BB0FA6A00D2911878640C0476A7309855BDA90105319CFD32F63D0607A6F4BC30BAFAE19F82C66C6F5727B2138FC7FC273C0136790A2C2F43CADF699C14544C9318CFC9DC4335CECCE0A8E0CD2CBE0C78E185176221F7514ADC473123D50446';
wwv_flow_imp.g_varchar2_table(297) := '71349452C31D9E5503E343C529ED48710A533E295C19039AA96B3B41DB0BFA9D021910663BEB6A66B14D599641868CF24A71EB5D0419085A459081F0E31FFF38BEBCA855016D1F7CE52B5FC197BFFC657CF18B5F8CAB051FFFF8C7F1FEF7BF1F5A55D03B';
wwv_flow_imp.g_varchar2_table(298) := '0982DE5B78EF7BDF0BF93FFAD18F4623E117BFF805AEBAEAAAF89EC37DF7DD0719233250544FDDDBCC60B6B34EAA578373F030337E721CE5C0AEB6EAC2AC1E267F038A13077215265790FF60C0585FD69A4A6DF0EEACB284948D6580A7C32B8699E3C73D';
wwv_flow_imp.g_varchar2_table(299) := '77A276F712149CA1C2E77002F31B38176634206BDDA28A099C35AB5C163266CEA09A703092331C1C93EAF586C5283D133DDFC251EBCE98852952FE871F019FE5E0EE245B6A3073E027D3AB6481DEA64F03339339405B00A0C29F347F01163DE5A938FC55';
wwv_flow_imp.g_varchar2_table(300) := 'AFC1EC57BE0A735EF56A1CF2DA5763FE6B5E8979AF7905E6BDFA1598FFCA9763DECB5E8AB97FF91798F7929760EEF39E87B9CF7C26665DF238749C7E1AFAE7CFC33ACAFD5A1A2EDD941DA321601C64E37602EF117853B54D7DBAA06121BFB1F16A09D291';
wwv_flow_imp.g_varchar2_table(301) := '181835038139EA608FA65F9F02BD83122523532FFDB19B41F01A4B98444E1FFBEAE6E9D331FDE28B006E0184721B324A17F809F555A4A3C1806B7886BA6606330EBA1C8825CCDAFF3FFEF8E3E32A40C60140CAD3CC208137ABA71D9A7F6FFDBAE7DE96A1';
wwv_flow_imp.g_varchar2_table(302) := 'FC2A478AB10119095A39D06A81FC0A571B6428E87A68B8F2EB5A06858C04BD37A09719F562A35E38BCF2CA2BE34A82BEE52023412B03320CB48220E3405F9394AB6B1904827E3F41AE5612BEF6B5AF4523432B11FAB6840C0FBDCCA8F714F49B0A321674';
wwv_flow_imp.g_varchar2_table(303) := '5FDD5FF5505BCC4CD58ACFC6CC767315A974720F2A5837DD5F822980B26C44E65C544E5A82A317A856B0EEAA3FA2B86719DAFA2BBCF6CA06B0DF51FD2B1BAF0D6C286239187B87048835049B17DBE6A1ABC17A325057C658A5733E20A7B20F6D1D68E3C0';
wwv_flow_imp.g_varchar2_table(304) := '74C8F9E77169B223E6736CA0316F8818CC3F4A47F963612A838644516EC7A1679F8373B8E5753AB7BF4E7EF7DFE0C477FF2D4EF9DBF7E2A4BF792F4EA0FF8477BD1B27FC35F1AEBFC6F1EF7C178E238E79E73B71D43BDF11B1F86D6FC59CD7BD1A1DCF7F';
wwv_flow_imp.g_varchar2_table(305) := '2EDC131F8FDAC92761DB8C19E829737FD53298C5BBF291053E37C0F1BEFC60353844DB281B909227067661807D285EB36F5186C05E25598A60901B447C5938F6B500FD6E487F6717B2A38FC49C8B2E8075762250E694D62C26DA5162F4ECF1637C27D0B8';
wwv_flow_imp.g_varchar2_table(306) := 'B45B0B1B4A44AE14A412CC9E3D1B175C7001DADBDBD1D1D1A120C818889E16F930B3FA804557551EDA3E3353101A46812E34539702D6D6825E1AD4FB005A5D90C1A0B6EBA5C8061F5D5D5DE864675398F2E8DB0F9AFDEBBD02BD8BA0AF424AF1CB20D0D6';
wwv_flow_imp.g_varchar2_table(307) := 'C23FFEE33FC6ED05FD4EC2073EF081F87B093218E4D757261B5B0EFA5AA456206464C8D8D0FB0D7AEF41E50F37125477338B8699DAA6361C78184595209DC128A1B102C6D500FAF5761FADF00A6792A1E05CF1FE955871C5D5281E58878E2A556751E3F3';
wwv_flow_imp.g_varchar2_table(308) := '018C667CACBF61978325EC727DB02F54BDD84456CCF342A01E87A0BA9105B61BD0E0E368D4E43080696B5327A3E3941331F5E413A0040C65B844913978A1DFF2A7A3D418F5C1FB38E63497035CF60C932621CC98063F633A8A59338959F0336723CC9C03';
wwv_flow_imp.g_varchar2_table(309) := 'CC9C073F673EFCDC05F00B0E4171D842148B16A138FA6814A79C8AF0E80B30E9D9CFC6E2D7BD16A7FFDD7B70DADFFF1D0E7BFD6BD1FEF4A7A27AEC31E8993A1545DEC62A3A64E6A4F791E9DEACBC67A3B92DCBB87426061E290394070A4C304E07085DB1';
wwv_flow_imp.g_varchar2_table(310) := '6BA9871190E80C22C0F9029A54F473ABAAB660018E7CEA53D1C93E8ABC544F0B1EF5CC702C535E864CF8D38DC4401C7C192157A0175270279D74121671809092333394B8D4A2B8461AF9C73286D6D3CC6066B1BA43C363003F1A6166F53466C60EE6621E';
wwv_flow_imp.g_varchar2_table(311) := 'C5C930D2AA81F6FDA5F06524C8D56C5D8A5890A1A0345A7590DFAC5E86C2644CE81B0FFA4AA45E38BCE1861BE20B887AB740C6820C00AD22E89718DFF8C637C617175FFFFAD743DF7090F1F0B18F7D2C6E49C830F8D6B7BE051919BFFCE52FA1950AD50D';
wwv_flow_imp.g_varchar2_table(312) := '3C544F3A07F894980251190EB9B3C1001A00FC84FE4357A80C60C3D5576360E9BD28F756509251A0DF04A046254D70FAA0B28C45448DAA9CF16ACC7DA87A6AAF10587FC40126B0C575681EA3F7935CEE30C025733F6F2E269F7E2A30753279E2E0159B66';
wwv_flow_imp.g_varchar2_table(313) := '4CAFA60578FE85E8357D360FDDDB799643904BE3723CA4883945AA59811ACBD5FB07F15D0CAE46044277D0960D9321E3B57E51CDE8AA28C5171E08A576E4D367A1FD38EEA9FEF99FE1C477BE1587BCF265C0F9E7A27FDE7C0CD0F0F5A51C6A7B5154410B';
wwv_flow_imp.g_varchar2_table(314) := '14199F9FCA6EBEF2296562A0C1807A8E2180AA9AFD48B2A02B8582C2A670CFF0620742ECF33ECF51E54475EAB9E762E1D39E8E822B6DDE38660780270A756AFA648CC7B21AB77B1877BC47B9911AE8644A31420AC48CD46B56C1B0430E39048F7AD4A3E2';
wwv_flow_imp.g_varchar2_table(315) := 'F7EBA5FC1B8A86495BE6549B86E2A12A6E56EF228DB46A6B038D30B96606B33A472A4B6143A1304179A5F80519095A5158B76E5DFC4125FDD0910C82C67B0B32B0DA68C90AED5C71D1CA82561C94462F1D6A55414682560BF4DEC11BDEF006BCE635AF81';
wwv_flow_imp.g_varchar2_table(316) := '0C051910324A94DECC74EB0308DE4F9206BABCAB3EA3CCD1AFD38C21C1D0C6BEE4366FC19ACBAF4079EB5694190C2A46CA3B0A2AA94063C0318382E940667EA0E0322BFD1833879A1AD8560D46AA9B9AA7C145D090A3304F023C1BA2C1A7C67DF39ECC21';
wwv_flow_imp.g_varchar2_table(317) := '5BB410334E3A910A19B289D8BC0028333330295BEAA1FCFC68FA3453CE7A2E83510167A4D3B16CC07110CC5D8EDC32949CE0E032831152DA4C8EFAC17AD023FE039F87734CC33AD3D287147C8DDB7F550DB2F3E661FE9FFD29CE7BF7BB31FBD9CF42ED98';
wwv_flow_imp.g_varchar2_table(318) := '23B16D52076AE51C59CEB2D9824023C2132C2E9D898147C000953F3B66208CB94DB21132F62C076F86C21C18447F80F6FF6B2E4377A90C1C75240E7FF29351CC9E4B633BA3FD6B5106D4CF258301013A2358EE443FDD480498590C36339859F4EB6306F7';
wwv_flow_imp.g_varchar2_table(319) := 'FE2EB9E492B80520C5D498D59AED4CA374436166B10CE738300C81593DDC6CA73B34DFFEF0AB0E663662D181468E221A69746D66B1EE0A1F096606A513CC764D6B66314B232E5E3CC487EEA9284FC5274EB5F5206340DB0D0D48A92B4E068420BF20BFF2';
wwv_flow_imp.g_varchar2_table(320) := '69854686C44F7FFAD3F8EB890A539907159435231A75085428D2094EED5CB60CFEAEA5681FE807383B2D1C13E6C6C9A34760BCF2090CADCB6A9D4E8CB543F56BD4498A5F751614A6380D5260DDE5F651DA2AD3A6A0EDC823912F3814154EAF5DE6384029';
wwv_flow_imp.g_varchar2_table(321) := '251331539C8DD35588F2D0BBE3545F121A01F2EB39AB1F6895A9A7AF0FDD7DFDD8B6AD1B5B376FC396416CDEB8155B376DC13662EBA6CDD84C6CDA4C37622BB66CDD82ADDBB7625BF77674F77663A0D28F5A758086FE00D4BFB46200F567C273A01D2877';
wwv_flow_imp.g_varchar2_table(322) := 'A27FCA34F833CEC4E16F7923E6BFF0B9C089C7326C1207660ED25CE9D128CBE48DAA263731F0081830187399042150E1C351E10B0CE549C161AC474143B6B794A167E634B49F753AA69C79066A14A0525666127AE0E1CDD7C7915822B335758EFF446EA4';
wwv_flow_imp.g_varchar2_table(323) := '266A6051B8A3C23613D3809945C5AF6D00FD6320F050BC06207A63BC9941616616AFB32C83502E97D198CDEAFD01190F82C2B592907356A174C3A1B21A61F20F07861D66F5FB9A598C31B3580FB3BADB689759FDDA6C575799D41EA533335D4698EDEE57';
wwv_flow_imp.g_varchar2_table(324) := '1A459AED8C6B84297CB8BF712DB701A5131AF794BF01A569F81BAEC2945618BAC520BF7E8151F13200F433CCFAB68159BD6E0A571EB966F5B04699FBDA55E9D2E58E422BBFCA97EB1D38DB2DA81788DE1E3CF8C7AB91AF5983A2A71B55EEFD17145089A8';
wwv_flow_imp.g_varchar2_table(325) := 'D14830B328AC9E19590C4057014EB22C60EC1CB13AFC50DD6CD055ED547733E30084380B716CC8B6A2C0ACD34FC331973C1E6EDA4C94CBEDC8180E1A9F6A7B7C3ECC6C6C306D2005478348CF4ECFB80129656D39E91737F50D16FD26865E4AFDF9CF7F86';
wwv_flow_imp.g_varchar2_table(326) := 'EF7EF77FF0F5FFFC1ABEF0C52FC46FAC7CFAB39FC57F7CE633F8F7FFF80CFE83F8F74F7F069F223E497CEAD39FC5E73EFD397CFE33FF0F5FF8FC17F1952F7E05DFFEE6B7F1E31FFF04975DF67BDC74D3CDB8F7DEFBB0F6C135E8E9EE4151AB22671B3AD9';
wwv_flow_imp.g_varchar2_table(327) := 'B8362BA1EA883933B1E0157F81852F7D31B2E34F40A5730A425EA62110E0F9C7A6F0D1911803CCF4817424069A6020B0BF68254C0800BB0EBB1D0A8E236646B9F171DB30E78C2250CFF4CF9985394FBC04A7D2180DB367C07576A0C46C5188D80F35A238';
wwv_flow_imp.g_varchar2_table(328) := '1542230282211D64C0114D9F668699336742AB0093274F8E068114B4D94E3635880952F45A3168A4D3B566A972A5FC6510080D2340E5C8AF1F1E9A3E7D3A66CD9A05BD78A8FBA91C4165298F0C064179CC0C660619076675BF59FD1A8387EA33E8DDE134';
wwv_flow_imp.g_varchar2_table(329) := 'C2CCEA7914A13033DBAD2C0C3BCC2CA6C1E0A17B0F7A1FD651F98D0466D6F0EE70CD2CB66547003D66BB8731789753E50ADA5A1027BFFAD5AFE2BF7096C250B8129BEDB91CA5DB3B48E258021DA362137845F10B5121705D1AAEDA0F7FB5778A98000010';
wwv_flow_imp.g_varchar2_table(330) := '0049444154FF0A2CBBF20A54376CA042F1549081300211E0C1EC90C0075854A259408C33C68DA553F531D6CD5861A34BA75E6F1ACF9E8353C6994BCEA5CB9C0A334C9A8CD271C7A27CD45180E580A7C33C60A6C0E7131B0A06D046624C3C3D2D01297CCD';
wwv_flow_imp.g_varchar2_table(331) := 'F2E5D7EA90BE89F27FFFF77FD0EF55E807AD5EFEF29743FF80EBCD6F7E13DEF9CE77E0EFFFE1EFF1C10F7F009FFCF4A7F0B92F7E0E5FFCF217F065E22B5FFA02BEFAC52FE26B340E84AFD0FDC217FE1F3EF3D94FE3A31FFB28FEF15FFE09EF78D73BB995';
wwv_flow_imp.g_varchar2_table(332) := 'F406BCF6B5AFC12B5EFE32BCECA57F8977BCFD6DF8CEB7BFC995A51518A856E06A1EAE12B87563A896CAA8B57762DE139F82B97FF21C548F3D0EDD9D9DAC7B06ADF4C4FE17C071981F484762A05906281C286056009C1C6809DF53C0822F60A1400960FF';
wwv_flow_imp.g_varchar2_table(333) := '02F2B6767497DB503EE5642C7CCEB3812316A3C83389962489890298018E4E89038A01A0C3CF3D9F1321851B4D233D0723296FAD00E837011A8A2F0A390B6AB89AD54B619F7FFEF9D04FF46AAF5ABFDFAF1FDDF9F297BF8C4F7EF293F8977FF917E8BF09';
wwv_flow_imp.g_varchar2_table(334) := 'EAC536FD2320FDCE807E71F0482E8F1E7AE8A151F94F9B360D53A74E858C02190E0DC808D0BD651C28ADFE69D19C3973A2D1A0FB2A8F8C0DD5B5CCD58706945F61CAAFB08611A1B204294F33DA8A9C91A92D0DB069EC8816D10893AB7041BCE8DAAC9EC6';
wwv_flow_imp.g_varchar2_table(335) := '6C7757E9866268FA46B8C284C6B5DCC6B599E97244288DEAAF7AA85DFAE123BD2BA06D04852B93D234A0EBFD074A9A444F0EC8A5AA4D04F9B5AFCCA5E5EE5B6E46EFD2BB61FD7DB4E4415814500B4659651EA6F56C6F20C0C302180E1EF4F0732C9DC6CA';
wwv_flow_imp.g_varchar2_table(336) := '0C856AE8192097E3168C17CEE5A8D12098BC7811A69C761A306B2E820C03731C8D02025D3D1BB0A17A866619F4DCD80D593A90390719779AE9EB9B24FA875AFA55CBFFFAAFFF8AFF59F381071E805680B66DD9866D9BB7D0BF0D9BB76CC5BAF5EBF1C0EA';
wwv_flow_imp.g_varchar2_table(337) := '07B07AD5FD587DFFFDD0FFE1587DFF4AFA57E1C155ABE8AEC4AAD5F4732566D3962DD8DED3C36D806EE6DD824DDA2620562E5F819FFFEC6778EF7BDE1B7F39F387FFF7436CDEBC11ACB5766EE0BCA1C8DA1166CCC18267FF09663EE369E89B3F1F7D5909';
wwv_flow_imp.g_varchar2_table(338) := '46A8014A2B17CC5577D36762E0E11890F434E2EBBD479F3202322EF71BC7915AB54A455FC2562A7FBF7831663FE1099874E699F0251AA4CC6E141EA3D60FA65E67142D9327A21ED6287F62BB6E34CDD720A5D98866E6E79D775E1CA4A44435589919CCEA';
wwv_flow_imp.g_varchar2_table(339) := 'D020B69E838F962535487DED6B5F83DE56FFEFFFFEEFF82F816FBFFDF698F7F4D34FC7B39EF5AC68247CEA539F8ABFF3FF8D6F7C034A2F43415F7F13BEC8598B7EAE576FC6EB6B74FAF95E0D802FE7CCE7B9CF7D2EFEE44FFE04FA77C4175F7C717C49F1';
wwv_flow_imp.g_varchar2_table(340) := 'E4934F8E3F5DAC7A4AE1AB7E0D48C9CB406940F56F4069CC8C4BB36568B5418644035A959836C420D18B7932241A79E56284C3ACCE8999ED8835B3C85523C0AC7E6DB6D36DC4C915EF82FC23C1CCA850D8EB19A97706366DDA04FDB091140383E2A9B609';
wwv_flow_imp.g_varchar2_table(341) := 'F1627F7E182D772A32DD4235A27E006B07D07844A50ABF7913565F71253A376D85ABD29AF7018E12C996D78594A9410442AEE25C008F40CB3D5085C40B5E8F8D53B511C09AEDAC115BCC76A94D81EDA86519FADA734C39EE184C3FE61804CE5A2C26567B';
wwv_flow_imp.g_varchar2_table(342) := 'A2078E9C79CD6EF82C555451783E534FDA3C6E5FB204928FB7BDED6DF1572BF58D11BD44AA7D7FC9A394BF5011BF05EF4D705705BE0A78F9895A0154F90CF4154CB982F6F63D07CA1A135739B3D78A9157BA6A4077771F36ACDB844D1BB7A0AFB71FDBB6';
wwv_flow_imp.g_varchar2_table(343) := '6DC7F5D7DF887FFAE77FC5FB3FF661DCBBF23E6EE954D1C6FD7ECDAC6A791B028DF0C5CF780AE63DE9F1E89B3D1B35B6537DCE6CB0B5816D15E8A43331F0D00CB0BFB0CF04CA0E470770784050627E300681B2E1DA3AD043F42F5C88C39EF75C1CFAD4A7';
wwv_flow_imp.g_varchar2_table(344) := 'A29834159EDB4FB9CB505F03F08879CD31B7A0DCF436754E8C4462A5E9969A19A438359396B2957235AB93DA5050723590542A15E8876CF40B789A8DEA1FFB5C7FFDF5DC5BBC0CFFF99FFF097DD75D5F717BDDEB5E1767165A25D0FEB5F634A5C434BB3F';
wwv_flow_imp.g_varchar2_table(345) := 'E184137026ADBA473FFAD178DCE31E87673CE31978DEF39E8757BCE215D01BEFFAE73F5A45D03FFDD1AFF2C9389091A095061911DFFEF6B7F1BFFFFBBFDC17FD6EFC9A9CC23590EABBF7EF79CF7BE27F1C7CF5AB5F8D17BFF8C5B1EC73CF3D178B694D6A';
wwv_flow_imp.g_varchar2_table(346) := 'C5A13170A93D2248AE0C1B41ED6B2CC99A1994569CA8CEC321C341AB116D6D6D90919051190C87F29B19CCEAD0B580511CAA9FA0BA55691DFFEE77BF831485FC2ACB8C8A8183FD288A7C0449A9D0A8C864A9C350173E042A7820E7FD335A0355CE2837DE';
wwv_flow_imp.g_varchar2_table(347) := '780B667219B9C3E500C3039816AC9FF2D0AF534ABF0116090972CD311DD3287EAC40F5E2641EF536D46BA52A0ACE1C0267EFFD99A17F4A07DA8F3F12ED871D0A3695A7A741436DCB385E408A58E590222A6D2067BE6D5BB741DFF8507FFDFCE73F1F67FB';
wwv_flow_imp.g_varchar2_table(348) := 'DBB66D83E4A3F152A89EB999C5FFD659AD55E0B96C8ACCC35C01B3021C2D018646A85284EACC40182BED68A838D6DE94864BAB46C42AB1AF548B2AF47E468DF1FD342EB66FEFC603F73F886F7FE77FF0EF9FFD0CD66CD00F0C07642A87E92B7C60E1C845';
wwv_flow_imp.g_varchar2_table(349) := '58F49C6762D64517604B5B99CFDDD1B87130FEE99E8165C94D480C3C1C03018E3D526ADCB1C738261DEC41EAAF9AE597DB30307B160E79E6D370E8B39E866C01E50A6564DE415F65CD988319E1786D14ACC219F4A2B1C6A6F8B2AEE213C8F2284990F232';
wwv_flow_imp.g_varchar2_table(350) := '33E86540296729BE8682691465C68745E85A8A520396560456AF5E0DCD4AF5F537F9B5972985AF7F07AC3D4DCDF2B535F0EE77BF3B2AE777BEF39D71ABE03FFEE33FA202D7AFE429AFCA95629D3B772EE6CD9B87050B16E0B0C30E837EA3E088238EC0B1';
wwv_flow_imp.g_varchar2_table(351) := 'C71E1BFF83E139E79C036D573C81CB434F79CA53F0CC673E13CF79CE73A02D07AD1EE8EB736F7FFBDB210342FBA9321EB4F2A0550BAD44E8AB765FF8C217F0D9CF7E366E5BE8BBF73232646CE8A77FB50AA17F2CF4FCE73F1F4FA5052A23453F9674F6D9';
wwv_flow_imp.g_varchar2_table(352) := '67C7FB1F77DC71584C83425B145A3D28733B427537B36848C9989251205790BFC1AFD2CA10696F6F87F855BEE168849BD5F96E2803B92B56AC80FE578178563E8509F2EF3F180207FA3A400513002A861A45D9B86C87813E6CBAE6BAF85FFFF2817E780A';
wwv_flow_imp.g_varchar2_table(353) := '33A39910F160EAE81A3F23181958A214563D2E8632766C9CAA93C02AB2D56CAA346AAC1A79B00C2400466DDAEB6BC8B8EFDF7EF2290853A781CD069823B061313FFDF5328C8ABC80CB2DFED74AFDB2A494BF7EFC49FD5EBF33A1770064E43520034FD0B3';
wwv_flow_imp.g_varchar2_table(354) := '8D46040B923F827E23655A5DD02DB0E36020FD8A03D3D0BBC3A97B582BB6A511EF8B029E6D902CF7F5F6600357F77EF47FFF878F7FE2E3B88B5B397A39D0B11C676C73DE86B6934EC682E73F17531F7B01367775A1D6DE06CB8C749007A6E398CCC15877';
wwv_flow_imp.g_varchar2_table(355) := 'B5380099912FD4EF4C279DE39001DA8610A48005EDE7EB89B39BB15F80DDD3007E86418047C67EE1088D014A14C7100ACF80CBA0FF5B31E3A2C760C1539F045BB80835FDE00FD3B27B3129FB530880AE31E4D02D9880B1430247F64E945099564DB7D52C';
wwv_flow_imp.g_varchar2_table(356) := '3218959796D7B57CAF3DF738D888709624A52434C2E46AB0D28A80962C055D7B2E476A401134806966A3D502FD273E1904975D76599CFDE8A772B50D20C5DB583178D9CB5E8617BEF085F19FF7E8F7F66FB9E516E88D6895C52AEC38550F295529532958';
wwv_flow_imp.g_varchar2_table(357) := '29D32953A6407596F1D0301C0E3FFC704859CBA0D16A830C0629F4A73FFDE9718BE2D9CF7E76341CB4DDA0FBFEE55FFE657CE94AEF2FE81D87BFF99BBF815614041906EF7BDFFBA2E1A2C15B2B1D321C645C081FF9C847E22F00CAE8D05EAE5EDE7AD18B';
wwv_flow_imp.g_varchar2_table(358) := '5E14B7319EF8C427E23C6EADC858104FDDDDDDD080AFBACB1890ABC6655C45905FDCCA2F57E1728506BFE252AB2F8D30A5D9FF501F110224684295974605E2B76DC5E6EBAE47675F1F8ACA80CC0220F6A9000D06FC88677D50A88769B0A09E64B8710031';
wwv_flow_imp.g_varchar2_table(359) := '0A37C6DC61AA112B195DFA034CF3700E35816D2CD09F39CC38FB5C4C39F11484AC04FD0A2293C159C69406CF59B7942C1DB6CF70E96597E2C31FF930BEFDED6F41FBFE5BB66C819EA9FAB71006654D65488E04F9794344785E05C4B2C123A6579E8818C0';
wwv_flow_imp.g_varchar2_table(360) := '0F25B5985CC11C5765AB017C1E9EC65AA1BD0046F092F5443C02C3AADC2AA871756FF3C68DF8DE77BF8BAF7FE3EB7860DD1A66332EBB8A0187A26B0A269F731E0E79E10B509C7E1AEE63FA0A5703AC94B11D556E1D14D0F683B1FC5801D48F58CFBA377D';
wwv_flow_imp.g_varchar2_table(361) := '8E4306EABD0D88CADFD841D9C6D863243B04C014EA70023B64C1BEA6E530472DE5291C8E89CB5D93B08E9E054FBC048B5EF43C94B84A5C94DA6166D09E3F0C088CE70582A93CF008942B018C66183F918EC800A98DEEA83EA474A4542FBAE8221CC5998D';
wwv_flow_imp.g_varchar2_table(362) := 'F6C915A64202855A30E39350C008F054FE8D01ADCAE56A0D6ABA6E40D7527CDACB5EB972256418E8D7F2B485F0FBDFFF1E3FFFF9CFF1BDEF7D2F7ECD495B07FA073C320EF4A338FAF7BFFA273E3FF9C94FE23FE2D14FE6AA1C2D99AA5E8DEAC82FA82E82';
wwv_flow_imp.g_varchar2_table(363) := 'FCBABFDC461AB5498AB68DCBF7DAF39712565BF50D05BD74A899FDE2C58BA3F1A0F70E4E39E514E8BD06AD3C48913FE6318F895B173226B4F2A0AD066D5FE8CD6D297E19006F7EF39BE3AFFB69D543F597F1A0FF3EA87629EC2FFEE22FA01505DD577511';
wwv_flow_imp.g_varchar2_table(364) := 'EF6606D5D9CC38688788469D557FF1E72835FA9F02328E645CE95A69944FEE7E43B0285EAC192531F036EC6274425F3FBA69A86DBEE32E94A8108C020E861B53185D3A0F7936A2F794EE210BD84F11AABB66356A87EA686C3B62EB431C704AE512063287';
wwv_flow_imp.g_varchar2_table(365) := 'CE231661C63967A1CCD52A453B0E507C6ABB3C3733E3BE7B0F7EFCE31FE3339FF934FBF84FE34B7B920FF54B017B384C850FA619EA07CB1E0CDEE104FABC6495AE39178D7AF57341AB7A425ECAE3EA5334A24B25C88056B88C15BD84A57EF5DB4B2FC5D5';
wwv_flow_imp.g_varchar2_table(366) := 'D75C8D6DDBB7C1C0C31CCC657053A762EAF9E7E3C857BE1C873DFB4FB075FE7C6CD13F112A9551E27DCB34261C3C6A162264B3A05E02D231FE18D0F65D35530F3164DCE7CA0BA3410F1E066F02E8AA57068A5380978C7056EFD49FB80255629A90E758C3';
wwv_flow_imp.g_varchar2_table(367) := '22A65F700116FFC58BD176D619F05D9391D3F4CCA2ECC5E2F8C193E9F9B9E364B651F4AE1DD9C6BDC78DB6856606333E302A71BD812FE53479F264380E2282CA33ABA791FFA160F6F06934E049696BD953B36195DD40C619B0062519077AD150EF0EE8E7';
wwv_flow_imp.g_varchar2_table(368) := '70B5C7AF6F18689F5FB36EFD94AE96F6B5AD2085AA6F22E89D006D2568895C336C338B75373334CAD57DCC2C86838794660352B043C1E8A88C15AF3A0F7587A653991A4065446886AF1508190F471E7924F48F964E3DF554E81D046D23BCF4A52FC55BDE';
wwv_flow_imp.g_varchar2_table(369) := 'F216680B442B057ACF41AB0F4AAB3A96B995206340F7363339519998EDF4CB08D0CC71C99225D03F31D2FD95D0AC9E46FEFD82BA0CB368A320EB5E861247F781F51BB1F4273F45E0F2715E2D28B28CA312800C01A66EC5932D8010EB4E45668D41882D2F';
wwv_flow_imp.g_varchar2_table(370) := '690D800AB4BBB303731EF3684C3DFE38043E373087D98E5C9C111730B3B8AFFF5DCEA8B5ECAFF737366DDA0CAD9AE939AA1FA19983C59AF183699547A037F663F597867297BC0AEA8B0A53DF50BF95B1A17B0A9239F56719BEEAA79273AD50FDF99FFF39';
wwv_flow_imp.g_varchar2_table(371) := '6492463BF10000100049444154946A154EAB5F5A119331DCB89759FDFE9E1CE8FF0F4C7BFCE370E29BDE88F93464C3A9A761FBE429F0A532EB64D0D64491793215A2327048C7F8654003036818035970303804E36A9143DC0E8AAB02503FF08C63EF31C0';
wwv_flow_imp.g_varchar2_table(372) := 'A853AC08C85D8E6A5EC65ACA4FE7058FC1D1AF7E25B233CE407FC7241492398E214C8E748C9E01D23FFA4C0D61D7A0A23D6F0D241A44A49C1AA5694069A46B84355CB3FAE37AA8F846BA86AB74820628190582FC0AD37D1AE97A7B7BE3AC49B35EFD231E';
wwv_flow_imp.g_varchar2_table(373) := 'FD36FEB7BFFD6D682F5FEF11681BE1FDEF7F7F7C01514BF182DE3B905170A96632575F1D975C972F5F0E294FDD4703B0CA57FB043383D94E284E505DE49A19940E430E338B574AD380EADDF0375C0DB882AEC5ADDE73D0FB0CDA8AD0FB0A7A61514682B6';
wwv_flow_imp.g_varchar2_table(374) := '31143F94EF78037E98D5EF257E7889BBEFBE1B3202E41786D74D61FB12F5BBD74B0C14E0C0FAE4031554962EC5AA2BAEC0642EEBB95A2D72587F19A73E30D473B4DEA7B1FAB1CDF4047A78C946041A381EDD1C988A797331F5BC73519A330FDE3301F960';
wwv_flow_imp.g_varchar2_table(375) := '825D4ECDA47FF4A31FC5152DAD72E99D192961F51133E6616AB3BA4BEF1E4F338BFC9AD55DF52733830C5029FE1933664006A8B6C064C41F7DF4D1D0F6D725975C12B7BCF4A2ADB6B9D4DFDEF4A63741DF3E9031AAF765648CCA28D5EA940C00BDC4AB15';
wwv_flow_imp.g_varchar2_table(376) := '2F8D01432B1678BF6A9EA19F2B01F969A7E08817BF180B5FF67294CE3A13DBA74F431F8DA382033E08F5835200391B5A42F28F2706323EDFBC08D1D0A397B37D1006CF46060304801E8069028D040F2BAAF0EC4703E54E6C9A3C0D9D173E16C7BCFE3598';
wwv_flow_imp.g_varchar2_table(377) := '7CE10528A64EA73C65E06E1502FF580273EE9B732295322A0340034903523E1AA0B4ECAD19AC06002917333E54EF9BE250659919CC0CF20F850AD0B55CC1AC9ECECC74C9874F2B3184E84AD969C014347369AC1A28A1EAA472A4C8376DDA14DFA4FEE10F';
wwv_flow_imp.g_varchar2_table(378) := '7F18075B19035A76D7D70AE59741A0E577AD22E8AB877A1950DB091A9C2FBFFC72683F5D2F31EA2B57BA8FCA6DDC437C086616DB63B6B34DE249691B501E3393B30366160D87467D6508289F6066F16B8DDA42D0A0FBA4273D29FE20935641040C1E2A5F';
wwv_flow_imp.g_varchar2_table(379) := '5EB3FABDE5D78B96DA47965231B3C897C2F72B28E17C3A3B96768BADDBD173E34D98BC79333AB8FC0F2EE90106C7FAECCA025AF2300E40025735A1814C6DCA5C86CD340A269F7822CA54B0A1BD0B8E7F8AD37312F46C6568FEE0073FE0B2FF67E28F3789';
wwv_flow_imp.g_varchar2_table(380) := '003D7BC59B293560C6D2D9D7318A43FD482B4D3220B51DA59525BD042BE5AE9760F5DE8994BC14B814BC6440EFAC4806F4AE8A56D1B41AA1175EF57F26F4BE8F5EA8D556970C06FD5F107DBB4586A80C0BF543DD533033E82F93EB1C2ADC3E902134EFE9';
wwv_flow_imp.g_varchar2_table(381) := '4FC5E217BD1055AE7AF5764DE6CC2FE3608FA8F849559C1D8EA28929698B31D0789F87C3039FB5818B3F2879B981D7018AD7DBFA9EFD86AA1DB90CC8AE2E6C9D3B17D39FF8449CF49AD7A0FD51E7A1C655A48CAB48397B9903471AF3FC6C4EE7201DBB30';
wwv_flow_imp.g_varchar2_table(382) := 'E076B9DAC38599C5140D21D720A597013543D57EB8221B7166F5B40A1B0EE513CC464EA3B8461EF987A2112E5703A50651C5EB5A68F8E54AE96B5540CA4F68A4573A0D5819B71214AEF704F4E26163C5406FFD6B30D4E0A797FAF4929F0C05AD20E81D03';
wwv_flow_imp.g_varchar2_table(383) := 'BD94A8DF34D03717B4D2A0F713B4A5B066CD9AF8D547DD534689EAA67B8913DDAB015D9B19CCEA509AA150DDCD768D539866FEFABD037DFBE0CFFEECCFE22C4E8370994B638D321BE5E85A75D04F02DF74D34DD06F2F988D5E9134CA6BDA0DA031E751E5';
wwv_flow_imp.g_varchar2_table(384) := 'C26E2D708EC765FE81F51BB0E6FA1B3097629AD5F4F21F505381526A4C2F6FCBC240B51E38807110721CC410A8D40CFA79D2BEA99331EBBC73D076E8A1B0721BD3187CC1743490F53CA5FCF5353F199D32D2D45F6558AA9F2A7E289AE147E9954EAE99C5';
wwv_flow_imp.g_varchar2_table(385) := '975DA5B0A5FCF51ECAD39EF63408EA435ACE7FC2139E10DF519181A0176165C4ABCFC85096A1AB3EAD1524FDB09456915447F5A506B4D2A630C56BD54CFD5FF2A4323C9F7B4E2ECA9AA21950C91C0A0EDC532E7E1C663FEEF1E89F3D1BA15446661C8268';
wwv_flow_imp.g_varchar2_table(386) := '35E99FBB14ACB3EA9F30FE18F0EC037ABE72F9B83548504EEA7243A960833D7B0BE587E93CFB8177197ADBDAD077F86198F9ACA7E1E437FE153ACEA3F2EFE884E28CAB6B6522532E635EE66321FBE09C584550FA46D760B39D4CCBFA37336830D177F6CB';
wwv_flow_imp.g_varchar2_table(387) := '544466B643B199D9C316AE81AA81E109153E344CD74331344EFE469C94AED0B8565C030AD7E0AA014A03AD20BF5E38D432ACA04158E9B59AA02D0085E9AB747AD740BF5F2023400A58B322BDD0F716EED5FFE33FFE63FC9AA0560DBEFEF5AFE3475CCED5';
wwv_flow_imp.g_varchar2_table(388) := '3EAEDE35B8F9E69BA10152EF2BE87711B43AA1B2550FDD4730ABF36466549E140ABA8E3327C509663BE3C5B9565CB425A0BD580DDCDA2A50784683C6CCE2BB0CF2ABBDE0A1DF60B8ECB2CBA0B6A95C338BCF8851F17EE24AFE7D01160DEF8CAA1E300A67';
wwv_flow_imp.g_varchar2_table(389) := 'D6DB83817BEEC1A6DB6E43D6DDCDC080C2026A54FE01AD7DA8FE9AB518DBAB254E0D6C7AB35D1C775B8669279F84E9E79E0D9B398B7B951CF3A8144938CF00F52B6D3BE9BD14294F3D2BF50BB96245CF4490FF91C0CCE27B0552D07A6956AB599AD1ABAF';
wwv_flow_imp.g_varchar2_table(390) := 'BEE73DEF8196F0D58F05F9052DEDCBE07DDFFBDE0719BF82FC7AC9562B048A9331ACB40D288F8C65AD9A693B4DEF31C898D62F0F0EF4F5A1644089866089F5A99113908B639EF3A7287315A068EF884DF34C53CB1D7CE6E275FA187F0C4459E1871B84E4';
wwv_flow_imp.g_varchar2_table(391) := 'A646A1A9BA02DE0A1AC73E1A046A79AD54C6F669D3D17DF43198FE9C67E1B8D7BF0AFEA4E3504C9E8A2C2FA3C491A5CCF1D16580A3ECE5EC578E61CA9B303A06DCE8928F9C5AFB89FA37C10B172EE403717180534AE7F649F12AEA804103B00662CDE235';
wwv_flow_imp.g_varchar2_table(392) := '13D20C5A4A5BE15A3510A46CE5EA2542CDACF58D83AF7EF5ABF8E8473F0A0D92FA9122416FF86B795583A60649FDA680967BF5BD6E19079A5DE9E75965184821E89E324A641CE87E5200821A6F46754AA5A970412B2EFA168106E0D34F3F1D5A0950BD32';
wwv_flow_imp.g_varchar2_table(393) := '1A014AAF3294D7CCE2AA846670BA97F22A5C503A338399C9BB4FD028179CF959750061ED83D8FC87DFC1366E4099B3DF0AC14E0217EF19F6C93D0F5621AABDA791A359BD817F7C3E81ED2ADA3AD0376B168E7FE63331898A4E7BE13578788903E3F58CFF';
wwv_flow_imp.g_varchar2_table(394) := 'F0873FC45FF753FFD13391212A177B7998B11E848C3DF52BFDCE868CD0061AB3777D45547D50BF152163F5B2CB2E83FE8784BE56AB5509BD582B57D75A19539CFAED15575C8106B42DA676A8FFEB7733D4FFF58E80F0B9CF7D1E37DC780BAAB58050F3D0';
wwv_flow_imp.g_varchar2_table(395) := '3F6D019F7D352F0187CEC711175F003F632A4229E7526F0E7D23A160FC5E363F651FA30C38F02F1850001A23240B8579586E5C05123897CF4AE86B6FC7F6B9B3913DE6D138F68D6FC0F12F7F19FCFCF9A8E6390ACA0F4BA0B1001642B04C1081B28708EC';
wwv_flow_imp.g_varchar2_table(396) := 'F531D10A20A57BDF64338B2F11E96D6029FD325702E243E652E7DE977E604B30B37A0765DD35200F8506690DDE82FC1A64A5B4B5ECA9F702E46AD54086C1860D1BE28F1E697B4083A77E60E87DEF7B5FFC1543EDA7EAE78BB58AA0AF2F6ACF55DF62D040';
wwv_flow_imp.g_varchar2_table(397) := 'AB2D05BD6BA037F7F5DB06324254B6EEA37B4AB10BAA9766FE5ADA9511A017B1F4554119026606C58B393383EAABE55C7D9D5206829E8DD088373379F70DD8A38CA0718F72DF00B62DB903CB2FFF437CF98F4B10947FA3C8BA28AE0183724CB735CFC076';
wwv_flow_imp.g_varchar2_table(398) := '188C46578DCB915A96F4DCB7EC9DD481B6534E41DB39E70253A6C3488806BA4A51C5008D22297D3D6FFD5CB399C5B7FD1BCFABC143E3F934AE9B7595AF01F513F5514146ADA0BEA0152FF553B9820C5CF5D986AB7EDCB85698FADED0F4CA23284C90F12A';
wwv_flow_imp.g_varchar2_table(399) := '34EEA715A7CF7CF6B3F8F4A73F8BA5F72C07B21C52FE6D1CC443C667DED98679A79D8CDACCE9186098A7116534189D35DBCA94AED518509F049FAF715268F1417B362100949B2A8D825A47177AA7CF40F7C2C330FD294FC0496F7A3D6671A5C8CF9A8B01';
wwv_flow_imp.g_varchar2_table(400) := '97C31C0DC76860331BCB810A8B70001C7B109D748E9A01B137EA4CC333E8E16A0B40FFCC67DAB4699001E0F8A0153E3CED58BD36B35835D5D9CC6056470C1CFC509CBC1AAC35D8C9D5B520BFC2944683AC560E1E7CF041E817DCA4B8C5474645A1597A1B';
wwv_flow_imp.g_varchar2_table(401) := 'F7B634C86AF6A599967EE6552B07FA6D8097BCE425D0DBD79ADD6BF540CA5D2F64E90791B4B4AAF71554A60673DD4FF7D657B4B48FFCE4273F1953A64C815627743F41F53133A82EFA6960A537DBD936C50B0ADF17081445D5CBC180ADDBD17DF32D1858';
wwv_flow_imp.g_varchar2_table(402) := '7E1FBA38C0D78A1A82CBB9D4E79015412950FF404B1E6C21682D726E6FF07CB645AD86A2BD8C07CA8685CF7E06DA0E5918FF65AE0B0EFAEE7C5ECE71EF3DF742CBF19A45EBF9A8AFA8F16606B33AF6E67928AF59BD1CB3BAABF215DE809E4F03320ECC4C';
wwv_flow_imp.g_varchar2_table(403) := '49D0E89F9261BDDB338BAB187265D80FC5BC79F3D040235EAE0C52E555BEC99326E3E61B6FC697BEF815ACDDB01EC11CB9E219808AF163E1A1C80F3B0C7ED2946814E60828D5AB11EB923EC60F0381CFD56740C1D97E2D0FA84962A8FFDB42863C6B4795';
wwv_flow_imp.g_varchar2_table(404) := '7D60EDA449A89D75064E7CCB9B7002E1B875D6D7D10E9FB7A15C6A43C6F1C345C3817D47D4983ED89FE8A87C0A0F7D7B7B4EBCFC94CABD6FB406137DB5485F23D27786A59C34B8ED7DC907AE040D8E8DBBC92F9819FB95C5605DCB237724284E509C8C01';
wwv_flow_imp.g_varchar2_table(405) := '417E4183AC067ACD9634A312E4D72C4A86805E06D34C5FD0CA8166EB5A05D07B07DA53D5DEED5BDEF216FCE99FFE299EF294A7404682B614B4F4AA17B1F48E82DECAD63EAD5615F4D52EF1AFE7A2FBCA551A191C321E54CFFD067296C19017D4FF2B1FC0';
wwv_flow_imp.g_varchar2_table(406) := 'EAEB6FC4A46A85A3FE00E0D8DDCC416FFFE6DE98CAF65B350E44C1C616388E470567310567B946E3668006C011975C88A9173D1A4663D865193203DAE8AE5EB50ADFFAF6B7A06D20FD34B6E444CF467DA5515FF597867FB4AE23BF52E2CAD728C7CC6066';
wwv_flow_imp.g_varchar2_table(407) := 'B453689A69064528BE01A5D3FDE5CA3895A2D737036494EA65D8CF7DEE73D0EF6B7CF18B5F84BE4EFBD5AF7E15FA3F1B7AD745EE5779AD70BD1FF3CD6F7E33FE9F0F857D8BFE2F7FE10B78C98B5F80BCB383069243AD5A43560D70FA55988EA9705367A3';
wwv_flow_imp.g_varchar2_table(408) := 'D6D6C9E55D07EF3C4D0092D9A85872C70D03B2F71CB777AC5AE542500D963B58673B06BA3AB0A20D587FEC6138EACDAFC039FFFC1ECC7AD69FC0E61F8E2CEF403B7B84B1BF1A67F8E63218270D1A3BD89B637FD16F487816CEB3BE2D80748C960137DA0C';
wwv_flow_imp.g_varchar2_table(409) := '23A5CF38B8295CCBD0FA419B76EEE3683052D8509859BC34B33828C50B7E98193F11C3CCEA7EF030DBE9E7E58ED36C67B899EDC867663BD20CF798D5E3CCEAEEF0F8A1D76616CBD4A0280C8F6B5C9B59C31BD39B59741568C66ECACEDB185C1526A83C85';
wwv_flow_imp.g_varchar2_table(410) := '09BA960290812057715A2D9072D07E7DE3AD6A190C52E44AA77D5D7D575CDF44D077B3F5552EFD2F02FDBAA07EF848BFFEA7721AFC9BD5EBA4F2F59540EDDBCAF8D0B5D209AAC748509CD0881BEA1F1AA6B634E20AB599D63A7ABAD1BFF41E0C2CBD0FB3';
wwv_flow_imp.g_varchar2_table(411) := 'CB1D9005CF29264D76F1C2DC545680019C0DC03C5D2A287D2A48124D3F18EF6930144C5BC49E4A25C1F8C03685E802BBBB2C27E69732911FA0ADB1038DF4788823C633CEE8E12DE8AB9701DD13ACBB428C6174750686AB6A4265EA14F41F71040E7FE9CB';
wwv_flow_imp.g_varchar2_table(412) := '90CD9D8F827211DFFBA2406EF80000100049444154E3E02743EF7FFFF7FBF1172CF57CC5BF60663063B9E4ADC1A1CA35AB87CBDF2CF41C5466A31CB90A936B562FCFCC76146766503F31B358879CCBF1FA6756FA56C0536868EA5B028F7FFCE371F1C517';
wwv_flow_imp.g_varchar2_table(413) := 'E3A28B2EC285175E08FDEE877E2E5BFFEA5BAEAE15AE6BE513F43ED039E79E833339A3D3CAE014AE0604F689BCE450E22C50BF9068A5328C2B61FAB680631C9F123CD702406E8723306C24E0111DC65C6305ACCA7E3A47E2AB11369CDFC6B591E7DDA10A';
wwv_flow_imp.g_varchar2_table(414) := '061A90943D3EA11021D9AACBAC99C1289FEC404C03282680FD5930636A850538C694B93D967574607B5B3BD670A572CB71C7E2A857BF12E7FDE33F60C18B5E0077EC31006528B05F3039570AC152004F035B5D24F6554051FCDCE9C68B7DF031118BD0B8';
wwv_flow_imp.g_varchar2_table(415) := 'B5D7ED36B358865E4CD300A097013DF7D065189819CCEA081CE494B0E12A5E0F55EEF4E9D3A1D987961267CE9C097D25493312C59999B2ED568E593D5CE535A08466F570F905DD43303376D2A0A05D60663BCA36DBE95799BB24E4C5D0B0E17E5D0B4CB6';
wwv_flow_imp.g_varchar2_table(416) := 'DB7D142E28AE81C6B5DCA1D0202E4340905F8A5FFBB0DA9795F2965FAB059AD56B5F5F7BCAFA8964BD6BA037CBF5EE80F2A84CDDAB51868C037D8BE1E52F7F79FCDF059AD5FDE637BF81F66C559694949E9B599D03712698D5AF5596CA145466236D234D';
wwv_flow_imp.g_varchar2_table(417) := 'C1675E0B06B80CB5B50FA2EFE61B515AB316E54A0D1260A5D78C191C300A16A6728C4384D010E710C53BC0186FFCD4D051F0FE81A8A7518AC0585DC9DD1DB6A38C465C4C3EE4A311BED36DE45108E2BD2CA60FD151A84445177568A0E4A8C6DA83035481';
wwv_flow_imp.g_varchar2_table(418) := '600E1B39781DF9A7CF41DB71277156DB0506726C2D9071C6F3BBDFFD1E3FF9C94FB1FAFED5D05641E3F98813F1106F36E44361C290A047EC553943D1284861BABF195B3F289B8A6BC89D0CF9360EC643512E97311C8A5798F2090DBF7E4AB854CEB9B49F';
wwv_flow_imp.g_varchar2_table(419) := '817A1F46051F5C0133034981310E9C153AAE0C38921960E058BF1B54CFDD01045656D56E169E0FD333D350F0B25E0EEF1D8681C5EFD733B074DF249436821FCDB67777CE283BCC3CB4FD0DFF43A7651ED6D128B3C63E0E180285D9CCE843ECCBD54A0581';
wwv_flow_imp.g_varchar2_table(420) := '05E5342073BDE4C9B882F5F44A5F2A21B0CF605217BAE9AE01F31C730C8E7AF18B71CADFFD1D0E7DCDEB31E9FCC722CC3914BED4016685B19F189F4A80A3DFE00C040B5498211E168C0602011DF538F91246C7801B5DF2915307762A2904C59E76DA69D0';
wwv_flow_imp.g_varchar2_table(421) := 'BB001A043430284EE1432185D1B89E3A752AF413B7FA2F7E5ABA9611A07D6C0D3E393B94CAD18B6D93274F867E875CD7827EA25469740F4169CDEABD63E83DCDD895583F0D74BAA799C1AC0ED5C3CC140CE5F9FFEC9D07805D45D5C7FFE7DEF7B665D30B';
wwv_flow_imp.g_varchar2_table(422) := '8124103A0808A234B1A0E22756C082A808A8A0A87405E9604794DEB1D041401054B0600144547AEF25841020A467FBBE77EFF7FFDDB737D984A020A0A079FBCE4E9F397366E69C3367E6DE3718CAFC2446445166707EE2FF5D005EE0038D710104080A02';
wwv_flow_imp.g_varchar2_table(423) := '2EA6E4B973E70A8B01821C8B016522A240113F403C4706DCECC664CBAD6D2E2172E7806305AC093CB9C0F10297162FBBEC32A150A060502F9711B1445017F44ED3B4A8BFC42B22C4EDDEACB75373EFBD4BB36FBE5123BA3BA5DE2E25DE0A27F5BAAAF57E';
wwv_flow_imp.g_varchar2_table(424) := '9731243525169F28042C6629E435DD00E50ED595E475550C3C3D50B17291389EB834AF39DD1075C9758421013CCED407347A2E5532A9C9D90AB0BF6246951A12D7150619F2C8942599F28182990BF79BEBF427127E37A2C4BBF83497716E403892EC15F7';
wwv_flow_imp.g_varchar2_table(425) := 'B95E6DD2DCF6360DF7B9E5B877BE4359538B64868942E44EE8AF7FBB41E79C79A6EEB8E556CBBB7E9B41DD967175158A089CFF28309E2502F881328CBB6498B87F0E161C2610B4256F14839B288AC3E054CA9B9454DA4C7D0B88ACDA083B2E55552F0412';
wwv_flow_imp.g_varchar2_table(426) := 'E75354E44AB4D04D06C2CFE786DB8DC4F91741EE709EA4CA13CF8841A0249CCF5F9C5700E43AE5765F28E4F4B584E7EBDFA0F8307D9E17F28A620990F3D346E63A0A705B59786C54F1183520CB4D278F4E24CDCA4DCB2C49245B7592AA3BE3F59CD57B95';
wwv_flow_imp.g_varchar2_table(427) := 'D77A54895CCDCD558595815EE7EFA834EBE99163D5FDE6CD3579CFDDF5BA230ED4F8CF7F46ED9B6FA674C28ACADB4648D4A98AEAAEB71E89B241EB22B4F4CFF3C52F3DF7B2D8A55120595AE48B8D8B08259E0C08A695565A496F7AD39BC4A381C4C99F92';
wwv_flow_imp.g_varchar2_table(428) := '814434868C30407E808B435C644308219078773F3B559E3FE6321CEF1BE76543E4C1CA50B55689D02B052042907A9AAC61A23C604D40B140714050198542C047842216013894409E1288C31FD1C85B867101D2FEDD30B85DFC25D06F00210C1D00C2257E';
wwv_flow_imp.g_varchar2_table(429) := '118BFA403C7463A7CF5D008E0410EE1C2970290D0BC2A5975E2ACE7739FF4541E0B9F1F259719E1FE785481C35A0406075E0F1422E18629D48DCD610256A9A335FB3EF7E40B3A64E5734B76AAE15B99EB621CAAA2D5EE289120BF3CC82BD9686EACC1B97';
wwv_flow_imp.g_varchar2_table(430) := 'CB0D1E9C02ED3C6406600112991955A6841D472E338750B8FEC48C28F2C469A9640623C7A90887E3422E2518482D09D72F436EB01B2AE273B795BB26B95C1490BA5CAA244B8ABB0B69A62255FE44EE5C79385D8D3897CD9417BB54B9CD2CA9AADBCA69FA';
wwv_flow_imp.g_varchar2_table(431) := 'C60DB4D68E9F56D38A2B2A9A5B8C553857AEE9CF3CADF32E385F37DF74B37ABABA55EBEB17E3207F22C2FFA58886AB57C127CFDDE1013C221A7845448163C48B731BD5B8BE90699148D160ECD6C7A43451DAD22C552B32B9957B4EE456ECF2B0B5684990';
wwv_flow_imp.g_varchar2_table(432) := '2D2C4B8054F3980CC060BFEB88E783E8773F9600399CF7B9AEC5A1C0C59865AF107806992875B7FBC22029FB58BACFD7C732DEF40AAF1F19FFE700F14B4084F17019146CD69B474A85DFF9F8CD0679BD02E1B528FB6BB5BAE7B194A415A5E6C789796F78';
wwv_flow_imp.g_varchar2_table(433) := '3CF9E9E73995548F4B7A62F850651BBF519376DA416B7D755FADF9D5FD3471E79DD5FE96B7285B6945D5381A72F9F0FA4AB3F0316114AB31222440CB3EAF34059297A38192A12184DADBDBB5E1861B6AB5D5562B1E6F4228D3068C0528FDB889993F266D';
wwv_flow_imp.g_varchar2_table(434) := '04114288DD26CF15F3D21C76FC2812DB6DB79DB894C47BC8F9611F5E38C2EB4A114CC471F6CD637528075C841BE6B325AC03CD365DA6033B541406F04221C08A40983400058170A5E289ECFCE014119E7F21F005C0B5742382E0BF1D2216B51B11057E11';
wwv_flow_imp.g_varchar2_table(435) := 'B1543C22A24827B1C41B3F4098F12A5DC68C30C0A544EE1870AC80A580E7C4FFF6B7BF15CF7DF388224F229C7FFEF9E2E800E5804B87BC1086E7BE51127892E187A79CA24BCEBB50BFB9F67ADD367BAE6EF56EFB66A5BAB7D2AC699516F518E4DD85BCE0';
wwv_flow_imp.g_varchar2_table(436) := 'EB21D58D6BA6B08070C08C006620BB4E769AECCD0DE1ECE170E23149252B00B22A91BB5E9965E416C4A20ED7950F00E5B3C85D6611106E40A3BEDC65281779285C00D79B56333E2D8494B4DC4D7AAE66AE3B53AE8CB0E3B3A4A2F969559DE397D32ADB7C';
wwv_flow_imp.g_varchar2_table(437) := '48C337DD58B5B676A356353393646679E555BFD2F5375CAF59B367A956ABB96CE684C6973168F8FEB3FF07E3811F28318A88D2FB22DD6850D77432C94420775D594899FFB00C44532235559434575461275991F2347F2E541DBF0478C35A4CA324955E30';
wwv_flow_imp.g_varchar2_table(438) := '54C26592170489F3CA4737AF24441AC6FD8541BC987E3A6F98962C8F30DD5E0890D7535C49C8902BF142088F05ED0258C7C23BFDF03809686D517DC8107559D99DE59DFE8CA6663D6B6BEEDC152628F50670D227B7D79AFBEDABC9077E55CB7D71572DF7';
wwv_flow_imp.g_varchar2_table(439) := 'D18F68F4669BA9BAD264656D43951941D611732324A647016E7660ED799169D9E795A640F2723500D38808458478531D0219E11F114513110D97404414F9F0C314B914C5236A3C128780E15631B790B97DCC2B7739A74641E0D13AEE17F0B81BE7D87BEF';
wwv_flow_imp.g_varchar2_table(440) := 'BD77F146330411CFD82380B8188719FB4B5FFA52F1CC3DD6830F7EF083DA72CB2D054EE08615A1D90A02420F00F71212AF028E16DAADC800F85110882FF380F77F022262B166C1A78CC05F0271F8C1392284BF8CC30588A3EF28008301AB0A5602003F69';
wwv_flow_imp.g_varchar2_table(441) := 'B81C1F7004C0DD035E138BE5800B851C27FCEC673F2B6E869F76DAA93AFAA4E375D4B93FD199F7DCA2CBFA16E8ACAE05BAA8BF57977475EA9AFE1E4DAD56D56D4B80CC5512EF3659F021FEE4851FDE8127AA7A279ED8546C3664461112E979F0DF61A9EE';
wwv_flow_imp.g_varchar2_table(442) := '42199CA38480592C0EE134EAC7E40FA416C64901B9EBC924A72384B2A026835DFC98FD6B5E151975868AF6B20811C745C4DCF1D45DB1D4E9F5EEA573CC688D7EDB5B35F69D5BA8D773A6DFCC303767CB6AFDFADD6F7FAB0B2FF8A99E78E249F5395CF331';
wwv_flow_imp.g_varchar2_table(443) := '48842B75EBE5977128FDAF467749FC08BF5090C74CA6B6063EF43CF1983316E1E3A03E9FFD77982E9DDE517639B1CB793BADCC752D095968511CFE0674B8FE052EF382C1F52E783E50A225D33A8DEB2B0752472EB7192F0006707B117DED306D3A9F073A';
wwv_flow_imp.g_varchar2_table(444) := '3CFD3B4CD3CE41D0E5B84E439771A21CE581050ECF33CCF518CE75FBB3EDEFA836A9B6DC72CAD7585D4D6F7CA3866CB185466FBB8D96FFECCE9AB8C797B4F257F6D6EA7BEFA1C93BEFA4E1EFDA52BD6BAEA9EED123556B6EF29448957A0C784A88A3386B';
wwv_flow_imp.g_varchar2_table(445) := 'DECA93C6FA938C80D7680EB8BD65DF579E02C9CBD10482867A70732F1A2EF2F1C321BCA18E3069254478A50F041040A44734E2F073C6CC63700817CEA051064E3EF9E4E255BBFC600FC29E9FF6C512C02B771F7DF451B1E3C75AC00F9D70648002807500';
wwv_flow_imp.g_varchar2_table(446) := '658023050065811FD2E1D97AD2C8C3D9370A023F9202BE6BACB186B03C546CB24E6D0D88086BC20D124584CFB59A8B37EED11E0A048A01F9E87744286211E8057C22E21FE68A88A2CE3213F40108972EFE12CA38DC12CA34DC326EB01BD1682322C8B210';
wwv_flow_imp.g_varchar2_table(447) := '22A2681B05804B872800580850D8CA71A3DF25103F6FDE7C311EB73FF4A0EE9C3B57B759105EDFDFAFBF19AEEBEDD1D5BD5DBAB6BF5B4F7AF7D06D26D2646692DAF42B79D767C08D70BB66106190422A40560E64E52024338B7A78276D53686EC1219846';
wwv_flow_imp.g_varchar2_table(448) := 'B87CD867A81BCC46949BA1CB4A466E269853C7809B07E21B7019E72AFE27B904B89ECC8A40EE3A0330FE913BCDF1725B8905786A7C53D7A13451D7905635BF6943ADB2DDC7944F98A49EBA5B4D12239269DAB4A93ADBE7FEF7DC758F3AE777BAA590BCBD';
wwv_flow_imp.g_varchar2_table(449) := 'CAEDD3121FC66389A8FF5870302E4BFA07875F0882A65C912D8AFFFEE708FC8C81D25075C509AABC717DE59B6FA2DADB3655B6C55B955A982486F41D5B287DC73B94BEF31DAABCF39DAABEEB9D6A02ACC8B7BCFBDD6AFEBFFF53D356EF316CA5A6F72E82';
wwv_flow_imp.g_varchar2_table(450) := 'E6F7BD57ADEF7F9FDA3EF8010DF9D0070BC0DFF6A10FA86D203C64EB0FA984F6ADB7D6D06DB6D1D0AD0DB82558A00DFBF04754C0473EAA61C04078B8FDFF2A50DFD06D3FA2A1DB6EAB76C350B73318DA1D6EDF666B0D018C675B011F30EE06F7A9ED83EF';
wwv_flow_imp.g_varchar2_table(451) := '57EB071AD0E27E02CDEF7DAFE837002DAAA64BF53DEF56D3FF19DEBDA59A4CB3EA96EF52E55D0DC00F5DE31D6F576C3100A6B54CEBDC8A2C10CE9FBEE7FFD4EC36866CBBB5466EF7518DF9E42734E6333B69CCAE9FD3D82FECAAF1BB7D4113BFFC45ADB2';
wwv_flow_imp.g_varchar2_table(452) := 'D79E5ADDB0CA1777D3A49D77D6708F41B6F6EBD43F7C842D70A972AFE5CC6B30F3FC470164A9D9B8E025E4B5E2B89C4901788A5827B182AFA5AC12272EFBBEEC14F008BCF43A1112D412D118C5C44CB0FC111284256677D24B80910C06040A7520440076';
wwv_flow_imp.g_varchar2_table(453) := '9C2802C41366D7C96371BCBEF457BFFA9502CB43CB000010004944415478A52E4A00BB7E8E05F0F3B21CCEAEAFBAEA2A61B69E32654AD1DCA449938A9D3F8F2A718F805F42E33DFA580B38CBFED6B7BEA5C30F3FBCB8158F299BE7E8F9A5B46DBD38DFFF';
wwv_flow_imp.g_varchar2_table(454) := 'FEF78BDF39788BCFACF8B9547EF990C79A565E79E5E289058E1450002242A5D240DF2342C4633DA0EF280BA497691AF84434E8351054443C2F0CCE03ED9E2F5CC6E342BFC179895B12482F61705A19875BC6E32F81F12AC78931228C9BF7D694F45AA3EF';
wwv_flow_imp.g_varchar2_table(455) := 'B308F52EBEAE543D0ACDF3427FD8C2F40FDD1DBAC19680275BAAEAF70E3A5C7914CB3D37B3A8AB66018C10B7AC7029A7BA4C6E619C7B571016BE72DE7034C0E4050AF9EC7A7297C8E598481DB26BC653F35CEC072251BF71A8B960667FDD79EBCE25BB40';
wwv_flow_imp.g_varchar2_table(456) := 'D88D08A54EAB387FD56EB5088718B7C4E95812AAB9E408753685AAABAFA415DFBF95DABD0BCA2B4D4AFD5731BE755B3C2EFFE5E562BEF675FB6CD91DE275C1B9D3FC7505AFCE6F03BF5CB82F07868C2B208FD9A2FAC20C3E516E2570DC5B37D71A161A93';
wwv_flow_imp.g_varchar2_table(457) := '6D2A5E7EFF7D3561FFAF68E2D7BEAA49077CD5EE7E9A6877D2D7F62BC29388B77F45BB2B16EE7E5AE9C0FDB5E241FB6BA583BEB6080EB4FFE003347900563EF840AD7C88E1A003B48AE3567178D541B0CA218BE2492BC0F971271F72A8563EEC70AD7CE8';
wwv_flow_imp.g_varchar2_table(458) := '61054C3EB4E19F4CF8B0C334F905C3E1CE7B785107754D3EF4504D3EE410ADE2760ADC06B98BE20E5091669C271BF795718DEB64E33ED9FE951C477CD9F7C98BD1607FAD7880A1A093DD03F6D38A5FDB5F0D1A7ED5695F33EC671AEF6FB0EBBC130FC4DD';
wwv_flow_imp.g_varchar2_table(459) := '4F135C66A2C393A02375BAAD550F39486B1C7A88563FFC50ADF175F7E3E0833461F72F69B91D3EA9111FF88086BEEDEDAAAEFB7A65CB4D50BFCDFBFD4955C5D3409954F5226BB362DC9A875787E75648B995BFDC6B2C8FC4732D71440372D6AED79900E7';
wwv_flow_imp.g_varchar2_table(460) := 'D3B2CF2B4E0153FEA5B73198614484103C23478ED47AEBAD27CEE51182118D111D9C77692D478460B81121840ABB4E4CCF5C5C23DCD4D4543C0D80F04531F8EB5FFFAA0B2EB840C71C734CF103265808500CB016F01213D2501A3842E0B21A8A85FC4128';
wwv_flow_imp.g_varchar2_table(461) := 'F3F2222E2DBEFEF5AF172F31FADCE73E27140A5EBCC3EB7979BB1ECA053F8A82158163859DADE1F2233C580EB87B8082C0AFADA124ACBBEEBA42E1183A7468A110D08F52F0BBC9E28B62003DC01F0B02FDC1256F91C1FFA011606FF1C50F1481A5FC8B08';
wwv_flow_imp.g_varchar2_table(462) := '45C4C29488457ECA012446C462F9887BB9217385758559BEC1423B8FBAFD75F5DBDFE9F88723D1EFE6CDD68D36FD4EAF36A9B7D22C5950272EE712851280895F6612C65632CE4E569EDA6B9019496246915AC817E9662E61B061C0A645A962010DA459AE';
wwv_flow_imp.g_varchar2_table(463) := 'C40A83F71F4A1329757D893D5149154D15A5164095B621524BABB8B5DF673C7AA2AAC20C6D1C3BD3541D860515BB49AA5E9F71762715F5D89DEBB3E1CEB12335EE1D9B6BC2DBDFA2CCFDC8A3A236CFCDBC5ED36D77DCAA732E3C5FCFCE9AA5BE5E2B00C6';
wwv_flow_imp.g_varchar2_table(464) := 'C57A8D64DCF42AFE4444B1765F5614ADF144D1F146E7C395A7A6AFD2AA46ACB88A266CFE76ADB0C5BBB5FCDBDEA5E5DEF64E8DB53019F3D6B76BCC5BDFA6316F799B46BFE5AD1AB5F95B35F2CD6FD188CD36D7F04DDFACA11B6FAAA11B6DAC616FDC58C3';
wwv_flow_imp.g_varchar2_table(465) := '0DC336DC48250C7DC39B34E4F51BAA75BD0DD4B2EEFA6A5EE7F56A29607DB5BCCEFED7ADA7E6B5D72DA069AD75D4B4A60177ADD7A9A98435ED07565F4DD555575D084DABD9BF1A71ABA8B2CA2AAABE48A85097CB37BBDE665B1B9B686329D0BCF63A6A31';
wwv_flow_imp.g_varchar2_table(466) := '8E2DAF5B57ADC6B7CDF8B7BA2FADEB6E20A06DBD37B88F86F53754BB813EB7BBDFB8C34C8BE16FDA582336DA44C337D9740036D3884D37D328D30F18B1D99B357AF3B7699C693DEEED5B689CE93DF62D6FD758BBE3DED6088F79F3E61AB9D1A61AE6FA5B';
wwv_flow_imp.g_varchar2_table(467) := '4C9F74D5D5A51526291F354679FBB062CDD4BD36B224F5887A8165212F755532F9082F5793C7BDE2714FC211912B71D88E9C4D993C233CD75CD0F112F1E213728A9466761BD345CB3EAF2C059297A3FA8A4DE68935BAB22E0435716BADB5963806C07C4C';
wwv_flow_imp.g_varchar2_table(468) := '3822141165B617E496C20B977A11E0D407A01C70564D451151FCFA192668DE7877D1451789270930F7B3E3E7D2203F58C29935F70D78261EAB024A04F5B07B05E8477373737114307EFC78ADB9E69A42B8F3163E843F4A0017DE500CF825377E1E98E308';
wwv_flow_imp.g_varchar2_table(469) := 'AC091C2FF03A5FF272A4B0AE1582D5575FBDA803ABC1F2CB2F2F00A503E091479E56A0BDD4C286B60743D92F6807901611050D231A2E748968F8231677295F02F94A28E35E0937330E190CDE8B5F5EEAB2E00F3784D9AF9E279AE7DDC1039E2B7F983F4F';
wwv_flow_imp.g_varchar2_table(470) := '373BFE996AB37A1D1796F04D11AA90D91CC15EEB00614814CE6F8F94264A0C79841505A99E84320BE3DC71899911340CE5CA6CAECF5C479E3A149209A69C7CD5AAF2B616F1B291EAF8E55499B882346982EA13BC7331744F585E731C3FCFEEFCC993D4B1';
wwv_flow_imp.g_varchar2_table(471) := 'EA6475AE3C591D2BADA8CE155754D7A4895AB0FC78E719A7968DDEA8B1984C5DAE9EA6A2AB595F4DD39E98A6134E3E498F4E9DA26E1F7BD4EBFD0242FC257A2D7C7233EB9705CF3C5C4DB8E7761817C6C46ED8CDEC661EBF9CB1F4BCA85981CA3CCEF07D';
wwv_flow_imp.g_varchar2_table(472) := 'F37FC8590061F214407EF278BC7368EE705179B8FE01C8ED16659C9003AE3FB35B77966C30B88FD6CB8C850CB901771138EBC0B7C0D4E9A59B0FC4BF1887FACBF26041D86D19D76C2900AE0BC1E97503B816E06633F76730E44C2BE771B41AE0796FDAE4';
wwv_flow_imp.g_varchar2_table(473) := 'CF8144D0DCFAF2006DC123B73F17ED5167EE0A0A1AE6F23A921A79C923E56E27A74EAFABBAFD3549C53A0B67669D0356BA0B616F8A21D973E793C7203748E15883FDB9F14D5CCC8EF0535FDDF5388A628A4CCB3EFF060A303C2F4B3325D38808C1888189';
wwv_flow_imp.g_varchar2_table(474) := '1327EACD6F7EB35A5A5AD4E4DD91FEC927228A1CD405108808255EF480063E118D7CB41111C5B3D53C4DC0A368280608720466D92697D6F8C53376F70868CEFEB91F808270CE39E708A580F7ECF33402CFD3531775503F7860D15812886F6F6F177D44D1';
wwv_flow_imp.g_varchar2_table(475) := 'D964934DC4638CDC8A3FE9A493C46B5179A4EEFCF3CF17619EAD4771D871C71DC55BD65010A00D470B5C4C44D1C005500EC68C1953583AE807F46B6D6D5D4847F0821E580E80321CE1C565C6066E902AA24127FC40442822F0BE72C06A360E523EF0679F';
wwv_flow_imp.g_varchar2_table(476) := '577538BE9A58502AD495267AD078FCA6AB53B74B9A5D6D51DDBBEF8AB940933962C5696059828B17CCC8BC4530AAFE44B61C483D2D15F5B435199AD5DDD2A4CEE6AA3ABCB3EF1CD6AE6EEFD07B278C53BACACA0A1FD96493272BF3EE2B5EBF9E2A9B6CA4';
wwv_flow_imp.g_varchar2_table(477) := 'D87463E56FDED4E7A26FF779F1561AFED1ADB5DC8E9FD0EA7B7E596BECBBA7D6F88A61DF3DB4C63EBB6B8DBD77D7F29FDB496377B4C9D367A1E3B7DF5E2B7CF8636A597B3DD523513DABCB7C51F3E7CDD7A5975DA62B7FFD6BF5F5F0B85F4DB995918830';
wwv_flow_imp.g_varchar2_table(478) := 'FE99819ED02B77FA55FA65EE002F177AB9C7BB0068E0AE67E6EC35D59499FB67155989CB0B7FEED922048832258320EC8FAC668160C80D85BFAE305D73E7CF06A03EE012A7407A2C827038225792B86EFB93A817FED45B4DE2C2714B0275E41ED4CCBC27';
wwv_flow_imp.g_varchar2_table(479) := '072251E1E20708BF1020AFEB29CA0EE4A74E7752B411C6654928F073FC60378A1728658AC80DB88B20F7FC2BE950BAD06149906916A673C5B42F76E6AC53D32DA0B16920B79903AA4B06DA0487C2EF3CD427E7072A769B0DB8419A699B79FB0FD47DC05F';
wwv_flow_imp.g_varchar2_table(480) := '5C9A2DC6DBA91EFBDCE0A5ED7AA5300E2809B29BBBDD0CB03FD3C0C7E572C3406899F30A52C0ACF4A5D79EC1995D4DEE0905D82BE2860D1B260423AF0C251CE1A1771ED2970665D9D2250F7ECA0211A1C40B4A031FD200D200A27111DE9C4FA3107081AD';
wwv_flow_imp.g_varchar2_table(481) := 'B41C603DE038811FD44121E05DE698F7510810CC28053CE2C65307580878A31EF95108A88F7A682FA2313BF1D366442822F08A38140FDE6DC06E9FC7217945F2D65B6F2DAC07DC3DE07882471939A2F8C94F7E225EEB8B250125811FFFE11E02F9B9D8C8';
wwv_flow_imp.g_varchar2_table(482) := '9102C729580AA0E7D0A1438B4B8F281F581048E79D0BB487A280C21011059D52EF92A057442CC44FFE442C1E76D4CBF60D330380C51DAE3514FE6F21E999564B6A52D6E3B951B31210BAD3BBE33FF6CCD7ED8E9F3974886AC3862B460C53327A8462CC48';
wwv_flow_imp.g_varchar2_table(483) := '69EC2869CC28FB472B1963183DCA26F816F5B4B6AB67D828CD1B3E42CF18A68D1CA5C7C68CD5A3132669FA3AEB6AC1165B28FFE847D4EA239DF6AF7C45E3BEFE0DAD75DC095AEFD4D3F4BA934ED1EA471FAB558F3C4AAB7FFBBB5AFDB06F68D5037D1EBB';
wwv_flow_imp.g_varchar2_table(484) := 'DF019ABCF757B4E22E9FD7844FEFA4E53EF1498DFDF82734EE139FF259E70E9AFCC5CF6BE57DF6D41A3EAF5E7FDFAF68FC7B3FA4FE31E30533AF9AC1D7FAFB3565DA13BAE297BF527373ABEA36FD9B0F8AEEDB06A0BA699E3B9F5EE51FE6EFCB85220C3F';
wwv_flow_imp.g_varchar2_table(485) := 'B3B0C195099198AB57F2C4E6E150C50C3FD8D27A8B993ADEB2589E3A8E4D0A50A42EB238E4969A99F366B9AC7439BB5DFC006C25775A1EE1F280EC0E40248A826FB83E513FAEB50F63215B1E1AE0B8C16D2A556452E2CA13E358B80361F00EF3BC1706B9';
wwv_flow_imp.g_varchar2_table(486) := '2CB31BF55017E0FA220F2862703BB4F53C20D36B21B81F8A305D1A90DBEFDA4DB690AB5D0C9C49725F8BB21E801CC8C30431103F08C2FD0E8783B6C86770F704507FB8DDDC6D492E6B3797ABB13F37CE1950A4A78E4D1D9B2A713D691E02925C8ECB0D2A';
wwv_flow_imp.g_varchar2_table(487) := 'C2D611941AD99055BEC8454D1CD935655293DB4D5C2EA70D8313977D5F610A242F57FD308E8850C4E2C01BFE3EFAD18FAA145011F10F9BA49E324344236F4414F59256027910F6C0E038FCC4911E119EC459219411FE1C17E0F2D3A5DC29C0F4DFD7D757';
wwv_flow_imp.g_varchar2_table(488) := '5810788B1E960084307701C0994B81DC03F8E94F7F2AEE1A70BCC00B74284B3DB453B657FA070B5D70208C502E0571D566E8661F31B4B5B515BFDC37DEC70C581036DB6C33F17823EDF2B40277102EB9E412F1FC3D171BB9CB809280C2B2CB2EBB1479B1';
wwv_flow_imp.g_varchar2_table(489) := '1E6039E078A15404500AB877B1C20A2B68ECD8B14279E0BE016DA220D02E7EF028F102B712221AB406F7170A11F13C59C3CBDCD058E7C55824CE0A63E93613E83053BED382F30FBD5DBA6944BB1E5B730D3DBDEEEBF59485F853EBADABA73778BD66BEE9';
wwv_flow_imp.g_varchar2_table(490) := '8D9AF3A63769CEC61B6BDE5BDEAC749BAD35F2D33B6AE52FEFAE0D0F3A58EFF8EE917AEF8927EAFD3FFC913E78F659DAEAC73FD2DB8E3B561B1E76B8D6D87D77ADE0DDFAC80FBC5F95CD3757ACBFBE62D5D5A4152658A918AB18355A31D28A86158FDCD6';
wwv_flow_imp.g_varchar2_table(491) := '9CBC6D8834C4E0B1C910E2CD2DAA97D0D2AA7C489BA27DA8F3B4178F34653E76F0E4524F77B7A63DF9A4CE3BEF5CDD7DD75D9A3D7396FA7BFB55AB79EE9932B941EEB7BFF61521BBAFBE2F73192597B90C76844B20BC24FCA334F2E666F066F3780B2898';
wwv_flow_imp.g_varchar2_table(492) := '8DBB9F79EC2DB5945870001121E65FC4C05C91C582F3E5259878B9414A1449DA804844D93449940EF823C2B91A7550560EC971F28770010A8706E5C907DAB2002AD207C2CEE4AF0394071C2ABE14C7435C098481323CD8F50A204945BB52E15087AB1EDC';
wwv_flow_imp.g_varchar2_table(493) := 'DE3FF5BBE0A23CA66A1990949A260D480A9A409780268AE24FC627027FE2DCE1759817E080BFC11416E321390FE50C695A715DA963AC30E521010EE146847DA1451FFB49370450A486151FC3C24CEEF0427FC3E3ACF6C4A0BAED75CC73733A72D9F715A1';
wwv_flow_imp.g_varchar2_table(494) := '0033E225571C118A88E7D4038360D7BAC1061B1497E358E4EC63E7AE2900001000494441548E2316CF1B11CF5B9E4AA90728FDB84B83320F69F833248D03F8ED2CFC125F5A09B0100CDEE5B3DBE7188147117929114704BCFD8EC70B77B4F99EDD39C219';
wwv_flow_imp.g_varchar2_table(495) := 'C1CC5BF0783741C934A9173F75E32E6CD09E8810FD8F08F1212F809FF8D4BB75003F009DCA4B8A28089BF88881A30370E0A223C70ABCAD0F2B028F4A624520CCDD04AC08DC7BE0A2E2165B6C219430C6A114FCD48DF0A73D94021405AC08B487858174D2';
wwv_flow_imp.g_varchar2_table(496) := '2242B880FC8988629CC06F304434E223CC4C9CAF5CC0B9F8336785BB9861C11CB262D547B1D26B79A639CD896E8E9AAE19DAA2DE6DB7D6BADFF9AE363CEA07DAD43BF68D2DC8DF74EC312AE098A3B5FE71C768ADEF7F4F2B1E768846EDFE650DF9D40EAA';
wwv_flow_imp.g_varchar2_table(497) := '7E686BC53BDF5998F493F5D651B2DA2A4A965F41C988518A21C3A4D636F9FC495C5862179E25666803E0CE184350C9559A4E0B6CC1D19D08258AF22FCB15DE2DE66955AA542D744269AD66375177778FAEFBF3B5BAFCE797A9CFE7FEB9E75DE6FEE672DD';
wwv_flow_imp.g_varchar2_table(498) := '03FFB81C98DB54EBA857E53722C49C4549C605C908F77E000813BFB474E24BC8E8BBA15873DEE9AA2E0B02498ECB3CDEA84499E95B37A1EBFE979926F57ACD3BFABA212B70A8D5EAAA99B625D4EBF5227E696E56D49129739E129068E1267173A7F3F6C5';
wwv_flow_imp.g_varchar2_table(499) := 'BEDE5ED7D9EFA8AC80CCE6F0DCF3321F980191C8E3BB08E40A8C622322F1BC2EC203B9EDD7A0386F5C953B4C1CE0EE1535BB25D599079E03C49127373D1BA017F4890845189C3B164268F09F3BA406C8F10D205C601BB95CBC80C6400C0A0FF4DD85070A';
wwv_flow_imp.g_varchar2_table(500) := '69E12737DE6520EC590C72428E747953C6D5BACE017F5197FDB80D05907C25182317CD8D1025227740AEC14E9137C9E5CA882940CB3EAF38053CED5FD9361014EC7239066001235C966CB19C6C119E094B26BEC261DA8669952EA67E940080BB033C39C0';
wwv_flow_imp.g_varchar2_table(501) := 'DBF178173E47075802D889236011C6BBEDB69B10BA9CF7DF7CF3CD223F65615ED4499F7197EC067401689BBC653EE210B8B86519C20071087184397704A02BBB7DEE0CF07822C2FE231FF98876D86107A1A8A0087051114B024F425CE6F3699405AC08BC';
wwv_flow_imp.g_varchar2_table(502) := '5D912718502E5000A8937B06280600470CD48D62409B25A030900E3E257E4BEB5F9936D85D329F97BBBAFA33CDB5A0B8F991C7F49BDB6ED513160643565F4D4D9326AA3A6182AAB66454971BAFEAF213948E1AA52660F87055BC538F56EFCAB95B62085B';
wwv_flow_imp.g_varchar2_table(503) := '56B818569CB5BA51EA0E73F588B0EC2958B902C16FC606ADA179095873B006A10C62DD013A3B3A05747576A9ABB3B378AB256355962D18ACEBA22CC745D0182B12752ED94FA3F39AF88237F8337F5907D004818F9F78D2197B5CE2E83B79C88FD2CC911B';
wwv_flow_imp.g_varchar2_table(504) := 'CA344AF1CC9933C511DA745B46A63EFEB8583B28CCB7DF7EBB6EB8E1067104C79B3F79FDF46F7EF31B5D79E595BAE28A2BC41C652D414F2EF22E0D2EBEF86201975F7EB998D758C8A887A33B5E4FCD3AA42DEEF4B06E79D1183815E3EAB1045FFAC5580E';
wwv_flow_imp.g_varchar2_table(505) := '1E53FA48BF00FC11E161B6D0F2383377221A61CA000C6AC4229E451CB48908B15623065C2B07118BF29107D0B2CF320AFC8729F08A2B004C744CD0DCA44768B1E822162D86B2FFE403CAF0BFD38D682C6CDA2C716031832B2ECCA0646E30388E10787A60';
wwv_flow_imp.g_varchar2_table(506) := 'CA9429FAF39FFFACB3CE3AAB780411A1CA393F267C842C4C8D2303EAA0EEE7838846FB11A1884580908591500EBC0070824101F889C39C0F20A4DB6CBE467823D031FF73248082B0DE7AEB09258C63067EF487E30DEE2170E701A500EB0156052E461E70';
wwv_flow_imp.g_varchar2_table(507) := 'C001FAEC673F2BDE9BC0D1C4EAABAF2EC68E36C0059C22A260722874C4836B440377FD830FF82E4CCED92784FABC4BECE8AFE977D75FAF1F5D78A1EE7BEC31E52D3E47AF3629F76E3B4B7C629CA48A6AB314C922A62C2D46AF08B72F2D8C2BDB8A08F121';
wwv_flow_imp.g_varchar2_table(508) := '8C104049E34910040E2F99E25E064F70ECBDF7DEE205514B02F18C27E37CCD35D7E8FEFBEF174A2174603E2078EEB8E30E211C199788467BB4F96A878806AED086798A404768D2477E251261FA97BFFC457FFCE31F0B61CBBD19DEB9C153355C6A856E00';
wwv_flow_imp.g_varchar2_table(509) := '731E3AEDB9E79EC25AC63AC0654DA08C72CF06659978E248DB638F3D4459EA39F0C0038BF7717051977773F0540DC771000AF660E00E0DF158C228C723BA3CED030E8C1DCA396D956DD20EB891067EE4A31C7532A62820BC3B84FE3EF1C4139A3B77AEA0';
wwv_flow_imp.g_varchar2_table(510) := '03EB2B228AF9C4384634FC8C3B401C7403F04734D63174245CC6E35F06CB28F06AA4C02BAE00B0189ABC43E3253A28013049164F44BC0AE8B1088588C6E265D10211512CFC88864B3F5004600A008C1EA5004100D300D8F1C02C510A481B3D7AB430A9D3';
wwv_flow_imp.g_varchar2_table(511) := 'DF452D357CB40190064D521F01503F028ABA786F013B1B7E748723078E216060303718280C0EC60A23E5477A7877018F39C2CC78873FF715D8F55027F5B373A70DDAE34221BB7E2E28AEEF73F10D37DCB0500EB0086CB7DD7685F500868A2200B3454100';
wwv_flow_imp.g_varchar2_table(512) := 'B026C0A061A2EF7FFFFB85D581BB1DF4887A231A3424FC8F807E03451E2B01B8DD7D7D9AFEECB3FAF92F7FA953CE38430F5BB95292AAB7AFA6306D22129B55551817C91F11388A8802085027E384BF0418393B41769B3CAE09CD781914F4C342821254D2';
wwv_flow_imp.g_varchar2_table(513) := '8DB74F62E161878A9FDD243B5584DF59679D25041363B0F3CE3B8B3A1024D09DDD2AF380B6225E180D4AFCFED32E348B08317ECC1576F22885D087B986F064BCE92BF44230F3CE8D333C46DC8D61078E02049D98F7D08F276A9883253097EFBAEB2EDD77';
wwv_flow_imp.g_varchar2_table(514) := 'DF7D7AE0810784C56469F0E0830F16CA15CA07F94AA05C0983D3B02A00D4F5D0430F157597E9B828652830E0C478F278302E8A394FE7A0F4A204A040A098A0F4623D630D00C4730788BC1CF9D10FDA41816413000F60BE4534E66044838EF28778F8042E';
wwv_flow_imp.g_varchar2_table(515) := '34061C5D7C231AF98BC0B27FCB28F01FA4C02BAE004484D821B283DC669B6D8A8B6FFFC1FE2EB5E97271463416664414F988078AC0C03F16340BBFCF028B34842B10119A3C79B23EF5A94F0946C9453D76DDECCA078A2E7422A260B8D4C56E0B01C3B102';
wwv_flow_imp.g_varchar2_table(516) := '0206A6C36EA514BE087F7E1701268469F4673FFB596126C554CA8FF310C73D05EE02208CA863FFFDF75FB8B362E78AE0C65C0AF32A85545A08D586B082F9A3A4A12460394039C0FC8FE5608D35D610970DDFF18E7788B723623D4030F0F644DA6327C51D';
wwv_flow_imp.g_varchar2_table(517) := '03EA8868D04D2FE293580148156222F6F7F7E9E9679EB639F8573AF3273FD6CC1933D45421D582DFE7C7E17CDEFEABFC4444E1651CF0D02700C507A68F90427182A6282EBC41120589DD3F02020B0E66FBD25CCD7B2106034740007930239386C061A788';
wwv_flow_imp.g_varchar2_table(518) := '9280E007105CFDFD5CFAAB81C66B12A021F3917EA03CF216437E100A533AF38638142968003DA0194A0F4A2F34621EE302A463F9220F161200818952CC310B8291F600FC281E2510FE4750E6C30557F2524F44141618C69F34CCFCB4C76E1E6B1DB8823B';
wwv_flow_imp.g_varchar2_table(519) := '006E84C19DBB3E8C2963485F991BCC1D141A1EE54519620DB2AE9847AC4D14221464E6169608D601CA0473012583FA982FAC3526434428E2B940DA32584681FF2405E0BBAF78FB11513CBAB6D1461B0993323B630406C0820522E215C763C90606876122';
wwv_flow_imp.g_varchar2_table(520) := '84714B58321CD1C09174042667E6304D1EF76307819081397CFCE31F17160F76FF2807D413110B9900CC875D08A667769430128415C21CA18E9062F709338109B3C381B1520E8606432D0161C78E843CEC7830655E63333567A25810A8930B82302ADA62';
wwv_flow_imp.g_varchar2_table(521) := '270753233F4A0CB4671C609AF40B5C7161AC007E00258EFEA0C8F1C4019603940276C2985AF991A68828141BF913110BFD7A9E0FF502B270CF0DB57AADB8A8F5D4F4E9FAF9CF2ED5B9679DA5AE8E0E27678EAF898B425C248B88A26E682F7F22C2FF2598';
wwv_flow_imp.g_varchar2_table(522) := '391613FA890285520453E6E90E983A7D66874BBF80B23C2EB4406820A07061DE8321F73930405E5C840F4C1E6B0DF98803CAF402A1D7C83FF02E01FCA10DFD634EE0276E30D0AD8886F2483EEE0200D0613010473A7550177EE83CB82EDAA53EE24A7F44';
wwv_flow_imp.g_varchar2_table(523) := '146B8579495A098499AFCC458EB938E242C11E5C376D327E8C237ED61FF3164B15E5CA3A70690FDC00DA2F813065511010E6B70FDC5BC08AC4BA627D62F940A9667E614162AEA124A07C6335C1D2841585230E9403CAF1035AD4098DE85344A39F118B5C';
wwv_flow_imp.g_varchar2_table(524) := 'DA06AF884571E45D1A908FF888C02960705C44239E7E95F1A55B645EF6EF7F9E02FF36058085C8CE1205803B012CC6571BF5975C1C300920220A86141142F0833BFDE125405CBA636780299E5702AFBAEAAA85B2532EBA8806A364D7C1AEF1273FF98930';
wwv_flow_imp.g_varchar2_table(525) := 'A31E75D451C20F23C154CA0E64EAD4A942C0C32861043036003FF501E05802E1C1403E00BA520E25819D193B387636BFFFFDEFC5A52A4CB8471C718430EF6349C0D48A608C68E04A59EA29EBA63DEA0488238D3800650E25601B5B77B01A401F68131164';
wwv_flow_imp.g_varchar2_table(526) := '2FE856789EE75FAEBCB829CD6DE9CC42B69E65AAF5D7F4C4D42774C9C597E8AAAB7EAD8E8E4E7183BA465AA124D48ADAC003E507B36EC98031F3A3F4701483D918210DC385A6F40BFCF10384A9837E1415FE837F94232FE500FC25501EA078E9E27FAD02';
wwv_flow_imp.g_varchar2_table(527) := '7D853625D0DF1288239D7E022FA48F118DB940DE8828E644C4227769F1CC21D61E2E96295C202284D08797B0D65044DFFAD6B7EA7DEF7B9F3EFCE10F8B79C8D332BC688B276736D86083C5DEC489858B7AC11D65823A09D327C6139738DA609D93465EE2';
wwv_flow_imp.g_varchar2_table(528) := '01FA8F72C03A4529C78AC4FA620DA1AC3317B1E85D75D555C54545946D2C08DCAD414140E92FAD6728AB28FC1CA1A0BC639D60CDD206342921224AAF06E3426419C6058803C015C01FB1A83CE165B08C02250592D2F34AB8E5848C6808161614E6641617';
wwv_flow_imp.g_varchar2_table(529) := '8B3A228A1BDA65BE570287E7AFF385A5C024C8890B6300572ED6715E8E291C13386671940118034C048153968149707E88191E0B01678EECC8D9DDB3D8A9176067C4F93F75C000CAC54B3DFF0A50073BA10EEFA0C127220AE505FC513650043876C07C89';
wwv_flow_imp.g_varchar2_table(530) := '75808B5DD75C738D606CE0435F23A26038110D0642D9882876DFF28730C0D308DB6FBF7D7154800200D3747251163FF5115E3AD086416E2392A20C8F76D5FA6A7AECB1293AFBDC73F597BFFDB55012328E0BD2AA2242D01585863E803F67F9175C708130';
wwv_flow_imp.g_varchar2_table(531) := 'CFD30E730C9AD27768411C00BEB8CBE0DF4301E8CD5CC605223CCE6E3A22C4DC903FC403CC137804809F72119E1B560CD934F06A6D043DEB0D8B1BEBAF34C573211040C06251C38FCB0E1CE51C2B15F929C7F11C67FD28EFEF79CF7BC48BBAB8E88A52C1';
wwv_flow_imp.g_varchar2_table(532) := 'FC65BEA0F0B09601F000572C7E2810CC2DF0250F96069467E61A65C11D17C04F798E4FB0E8A198967769E0075C403DFAE8A3C5FC45394049603DA2C46255408945C1A08D8828E63D78401BDC1207F08B58946E922EF68D68A4913F22164B5B16F8DFA640';
wwv_flow_imp.g_varchar2_table(533) := 'F2EFE83E130F60D272710CAD9CC5C4448E78F54F48F0043025AEB3CE3A42D861EAE3B5C29CF3B3D0611AE4A18FD094F34F2E4571EECC4522CC8068FA988C61162C5A1808421AA10F7D221ACC0E3F75BC9C007E0843DAA25EDA4039E0AC97CB5C58056040';
wwv_flow_imp.g_varchar2_table(534) := 'DC27E01217C70DE4A14F65FED2251E28FB0A93830EDC11607C511E80881731B616EE52147FB9253D75C2F86EBEF9165B4ACED4EDB7DEAEBE9E5E3D3B6346F118198C14BA7274025DB17440CFB29FD038A2414FF91311FEBFECFB9FA2404483FECC9B1298';
wwv_flow_imp.g_varchar2_table(535) := '5BAC1DE60A401817618F30E6922AAFCBE669949D77DE599CBFA3700308755EBD8DDE8D319F000010004944415410471967B78F35800BAD94E1C7BD28C78BB5781FC6673EF319717996B77DA21CB00BE7AE0EEB182581A3319403DAF9D8C73EA60F7EF083';
wwv_flow_imp.g_varchar2_table(536) := 'C52F81F2E40C8AC7E4C9938592CF711FC7601C41803B6B0017814FBF58D7CC3D003FE911B1F03D06D09F798A650ACB013B7F9483CB2FBFDCF3FC27C56BC3B1CC717707C50085004501E596797EF3CD370B059EF2F00EE63B748B08453C77BE83136D2E83';
wwv_flow_imp.g_varchar2_table(537) := '6514581A055E510520228A36074F42842882A2B400442C9AB445E67FD3BF17DA4C44142FC38121C154601430A24D37DDB4886731B3D0E50FCC8BDD00379ED1E031F5F3681D9A3CF1F4993C2C5ACA4444B10B2A99C4603A4544B1A0F52F7ECABA221AF425';
wwv_flow_imp.g_varchar2_table(538) := '1CD1A8133F804280908D88E2397718113B6918108F7BA10860118888020BCA80372E8090C68D8882161FFAD0870453E6E2200C11C6481E20A2518796F814D1913BB6040DF43B577FADA6791DF3F5FB3F5CAD534E3959BFFCF9CFF5E31FFDA8D83141578E';
wwv_flow_imp.g_varchar2_table(539) := '54B85C1611852509BA96F8E0D7C02762E96D0F242F735E210A44C4C058AA7099E708AB721D3056003B6A842B4A244F0A318F78C706773978C205AB19D633E616829EA326EA618C995B83E76496670B852D69D42F7F4A97B610E05C5CE59E0EEDC18FB010';
wwv_flow_imp.g_varchar2_table(540) := 'D016477358C300DA65678EC281728022B1CD36DB88D774638978FBDBDF2EF800779BD8D4D0075EA6C5BCA7AF110DC10F7E845913F41DDC11DEDCDFC18D685C60240F7959975CB8E4DE00475BE0C59D161EBD84A7A0AC73B48045012B18D6448E0F580B94';
wwv_flow_imp.g_varchar2_table(541) := '8F68D03DA2E1967D8F88C2C266722CFB2EA3404181575401A08588459330220A4181868E46CD828808959F8845FE32EE3FE54644219CD1F4B9F4C6F9228B90C783D805B0D0585825A008B008B920C4EE82DD2917CF10FCE465E78DB0255F5946833EC411';
wwv_flow_imp.g_varchar2_table(542) := '8C888259120688FB5781F24044A34EEA210C805344147D04372022041381A9C00861363FFBD9CF8419B2DCD14434CA4434980975C91F982D3B37764E9CC1622A85D1014E7EDE6FAE01C15F28019943999438D6508F9AFAB37E757475E8F2CB2FD361871D';
wwv_flow_imp.g_varchar2_table(543) := '22CE533967E5B884B6A127B8210C682422700A201D0F2E807F19FC7B281011C5DC42A8A1F4020846E6C8881123C4311A4218C1C9DD194CF2BC9B02818B02CA5AFBC2E73FAF2DB7DC529327AF24CA3186CC5BEE8968E01311C57A1908CA1368A197B69D58';
wwv_flow_imp.g_varchar2_table(544) := '083D148388457396BA00EA03F0939FF58E828092C1CE9FBB049FF0F1D65E7BEE2504F111471C513C0E7AD4F7BFAF1F1CFD037DEBDBDF16B872F10F8B201689B75B3178E3866F14D6C2D5D75843CBAFB082468F1E6318AD1123468A36E07DB4C7FA0863CC';
wwv_flow_imp.g_varchar2_table(545) := 'FA4119E8E8EC285E4DEEA8E21B41AA346BE64CDD79C71D626D62A5637D1E72C8C1C2A2015E28C4BC1C89633CEEBEC08B3862646DD0372A8B0845127897C1320A141478C515005A890895931D97B7CB6DB5D556C245236711C89F88F07A5D1C1C5D7C23A2';
wwv_flow_imp.g_varchar2_table(546) := '70F91711453EFCFF1A2C5E0A9CC021220A3C09C3B058A86BADB556F172182EFAB14361E14684F8900F40C873F6CCE37A087F4C7598D789479B6771B3087111B408AD92E9E002118D3AC907507F09118DB432FC42DC884565A80F28CB0DF6835319464141';
wwv_flow_imp.g_varchar2_table(547) := 'B0920FDCB9F5CC2E881D0717156128A4812F65A0191011C5785017BF41C0B92A3F64040DA1579987B22F04A81F869D44A2CC56007E680778E6991982494253DC52E883CB60A07CD94E4403B788865BC62F739F9F02115124464431AE45C0FF221A61FF57';
wwv_flow_imp.g_varchar2_table(548) := '22FECBAEC1F189A152495535A449A24A0AA4C5853D042ABF5781499F2322EE01619E47707244C66558D60D4FCFB09B1EBFDC78B536B72A4D52B7928B7A91ECB975459F0E894FB5A9EAB62A72B362AED4B2BADDDCF82445B9C4657945AF63C5AFCD29A448';
wwv_flow_imp.g_varchar2_table(549) := 'FC4FAE898AEC2EFC06F1280712F74F787DB02B136FAACD6D51E0482A1CA826553537B568487BBBC62D374E6BAEB5B6B880F8011F17F0F8EF81071CA0E38F3D5E179C7781CE3BF73C9D74F2295610BEA3DDF7D84B1FFCD0D6DA7493CDF4860D36108AC59A';
wwv_flow_imp.g_varchar2_table(550) := '6BACA9D5565DCDB0AA78DC160B232FF14AD38A2AD58A923415F3B89CE3CC7F9E88E9EFE991351AE5EE2F6B74C6B3338A9791716F803B0E1C75C0AB4E3EF164FDECE24B74DDB5D7EAEEBBEFD2D427A66ACEDC39C5FAA1DF11F4B9F029373D4A206630105F';
wwv_flow_imp.g_varchar2_table(551) := '8697E62FE34AB7CC8BBB64DC92E1A5E529E306E72DFDA54B9E65F0F250207979AAF9C7B53070118D0917114A92A4781C90499F7AA203C4C91F5CC2118BF2478422A22817B1B85F2FF153B6870BD0766B6B6BF153BCFCD00E1A36E6489415D2698EFE6459';
wwv_flow_imp.g_varchar2_table(552) := '5668EA9C95A3757366C7AE1FCD3B228430254F991F7749A09E326EB0BF8C2BDD7F9456E659D25D5A19E28032EF603FC2BB0C970216FC797A813B02EC32CE3BEF3C7187A15460CA7A281B1142E04744F10B903C068579149367B97B2BF34744E93533B3D7';
wwv_flow_imp.g_varchar2_table(553) := '8C5D4B405ECFC5454065CE627F4F4FAFBABABB0B06563245F005475CD7527C97F4131E0C45A665FF0A0A442C1A878828D618091151AC350D7C229CE6351B0667529A24457AE2F8AAD76F4B5355CDCD55EF6C87A87DE850EFD6DBC4237A13274D143F6FBD';
wwv_flow_imp.g_varchar2_table(554) := 'C5165B14EFC740E0635A4751E6F21B267D76C9E44DD384812E20DC6EEA7AED38CC04C86856FC4BD25491388785962C9C19FFCC7ECB67A7338932E5C5EF02D42C406BCA73C07116988E5038AF2B757CA6CCE5734FBCC2757C84EB8D44B921B33753DD7ED7';
wwv_flow_imp.g_varchar2_table(555) := 'E9F8A2EF5AF4C9947B6A66AABB8EA2BC351357A1B452D1F011C36DB598AC8DDEB491DEFF810F68EF7DF616021A65873B2BA79E76AA7E70CC0F0A8BC297BEFC657DDC168677D9D2B1BE958355575B5513264E141692E1C3476868FB508DB43B62D8080D69';
wwv_flow_imp.g_varchar2_table(556) := '1BA2A6E6E682FE7D568C177476A8B3ABCB9834F04A3C2ECF5A21B8F6DAEBC4D1C1A1071FA23D77DF533C9AFC8D6F7E43E75F70BEFE72C30D7AF891870B65A0A7BB4799E9D2DFDFA77AADDF34C99F03112846A6819B883051EC965FD6156B9F31181C4718';
wwv_flow_imp.g_varchar2_table(557) := '207DB04B5ED62E2EF1A58B9FBC007EA04C1B5C2F71651897FCA54B19FCCBE0C551C0ABEEC51578397233709C1373F3160B0075223C8088F0A464C1875216BBC3F227A2114FD9885838519DF4A2BF830B3071985811510830F04101E07C909D2F960AF0A2';
wwv_flow_imp.g_varchar2_table(558) := '5D161865D9C5F75813E7E219E63884236669EA62675A9ADD22C23C2B28F29A828806CEF483FE702C8005800B49DCBAE77C9278E846C71827E843FF09B3EB676704834771229E3CA42D83570F051833B089587C3D95F1CC77E63E63C78CC8E5FFDEA1F22B';
wwv_flow_imp.g_varchar2_table(559) := '88599AA8D2DCAC71CB2FAFD163C66AE8D0611ADA3E4CCBAF30519BBEE5ADDA71975DF4DDA38E122FB042E0B32B6587CF453DE604BB5D0D7C225CAFEBB6F8714C264B69E59129F3315096487527E716CA0E2A7572527716BB754B5CD295CA9F9AB25A97B2';
wwv_flow_imp.g_varchar2_table(560) := '9E79AA77CC5236E759C54CC3B3332560D66C65B31DBF60AED4DD21F575296ADE4DD77AA5FE5EE586CC82B0BFD6A76E43571D819899CFD495F9282A8BBAEA46009CF2C8AD4338CD9B80BC5E20E27CAEC678BA94785C95399F18BF8A158426F7A1AD39D5F0';
wwv_flow_imp.g_varchar2_table(561) := 'E1AD5A6EFC48ADB6C64A7ACB166FD6769FFCB83EF785CFEBC0430FD5C9A79DA60B2FB948975C7AA95012BEF98D6FE8739FFDACDEF2E6CD3571F9091A336EBC46DAADB60F975A5AD5628560ECF213357ADC724A2A551923E3905990D7D4D9315F9DDD9DEA';
wwv_flow_imp.g_varchar2_table(562) := 'EAEBD3ACB97375CFDDF7EA67175DAC83BF76803EBDFD27B4F30E9FD609C71CAD3F5CFD1B3DF2D0FD9A3777967A7ABA859501DE869006CAF51D11A6AF0ABE4C5C09F491B99124C96269C493071E89459117313DFBECB3E205516C20B8FCC88BB878749277';
wwv_flow_imp.g_varchar2_table(563) := '73C04F88E71D09E4A54C8907750020403BE5DCC4A50DDA8A0891A6659F174D81E4459778190A30789C11B343C4AC8E8990301704D931B67A070E836072D15C4414138C410618F4321EF7A500F54584174FAE6AB52A70E0DC8FF36F70231DA520220A1C68';
wwv_flow_imp.g_varchar2_table(564) := '9B7C3CDA73DC71C7891D0D939749CAA201C027A2919FBE127EAD00F802E01B11055DE87344884B4BDC46FEFAD7BF5EFC980B0A02694044148B30A25166C89021C5EB85B7D9661BA11000D052CB3EAF2A0A44842262319C18A71222A25817EDEDED1A3AA4';
wwv_flow_imp.g_varchar2_table(565) := '5DED2D6D1A6E413F72C4084D983841EBACBB8EB67AEF56DA738F3D6DFE3E4EE79E75B6CE38E5741DB8DF01FAC0FB3E20947CD6146B993A71CBC6F003118D39238147D21066F6E6854F4A1C9F64A122889348F554AAD91FDE7957FBFA559D335F71FF439A';
wwv_flow_imp.g_varchar2_table(566) := 'F7CB2BF5C0D1C7EAEEC38ED0FD871CA6FB0F3A54F71F7CA8EEB3FFE16F7D574F1E7BA266FFE84C755DFC33D5AEFCB5F23F5D2BFDF5EFCA6FBE45F9ED7728B9FF3E353DF6A89AA73FA9C44A43CC9BA7E858A0C40235E9E9526A2B54DADBA74A7F5DD5BA54';
wwv_flow_imp.g_varchar2_table(567) := '3176799E58E81BFBAC665DA4AE8AF1B24C34BAB97986D1B67922774A12CDCEDD6C5F8BAAF63727A95A80B4A221D5268D1F3D466BADBEBA85FE9B8B574D1F72E8213AE3C73FD4C5975DE22385B375DAF1C7E907DFFE96BEBAE71EFAE4C73EAAB76EB6A95E';
wwv_flow_imp.g_varchar2_table(568) := 'C71D8371E33462F870B5DB5A3064E85035B7B5A9A9AD55791AEAE8EED2FC051DEAE9AD199F54DDC6FDAE7BEED56967FC487BEEBD8F3EB7CB6EDA77DFFD75CA29A7E9FABFFCA578BC165E568E15BC80F58D9B7A43069006108710EEEFEF172E564F843C77';
wwv_flow_imp.g_varchar2_table(569) := '10383E3CEBACC6EBB37954930B9D3C85C14FAD734CB1F3CE3B0BCB2A40F8F39FFFBCF6D8630F710F84A734501AAFB9E61AA124CC9D3B57F01A9402F9033EB4070E0078004E5AF67D9114485E64FE97253B932822C4AD5A5E8671A9B55E4C5698DBD939A2';
wwv_flow_imp.g_varchar2_table(570) := '0030E04D4D4DC58FD00C1932A4D89D47442190408249F0AF0D3AA51701F54444513FBB9D37BCE10D42C0713909258438261B25986C84B91D8F82C00539263D002E00F9708188582814F51AF944448129F80304A0114C815D3F8B91F71A60CEE52546C491';
wwv_flow_imp.g_varchar2_table(571) := '0F1AA1FC90173A11E6B2240B9E458ED28422451A752E83FF2C052262E1DC64FC22A210F4AC4DD61F4A3937DA59838C25D0ECB3E9B5D7585D9FDD69279D78FC09BAE0FCF36D6A3E55471EF95DEDB9D75EC563736BACB69AC68F1DAB51C386ABB9DAB470BD';
wwv_flow_imp.g_varchar2_table(572) := '526F448839227F6893B942BDB811CCBB44994564667FEE3C7C034FA6A21E3B8535A0E6488B56556DBE4EFB6AD2A353F5ECC597E96F877D537F3FFC5B9A7FDE4FD5F2DBAB35E4777F50FB1FFEA4B6DFFF512D57FF410B2EBC484F9E7E86EE3DEAFBFAEB41';
wwv_flow_imp.g_varchar2_table(573) := '87E8F77BEDA35F7F61375DF5B95D74E5673EAB2BBDE3FEB5DDAB77D9557FDCED4BBAE33B47EADE134ED263679EA5677E7E993A7E7FB56A7FFB9BF23BEF52FEF0A3CAA73F25DBD2AD1474A9EA1D74C5CA4162506FB7B02A24560812F7288C67D48CBD8FB2';
wwv_flow_imp.g_varchar2_table(574) := 'E840DEEFFE18F02BCBADDEA8188B8A15018E549ACCF7B8E3D062213E7ACC684D9CBC92D67EDD5A85C0DFFEA31FD5BE16DCDFFEC6D775F20927E8EC33CFD46F7EFD6B9D7DF6D93AE8E0837DE4F0414D5E75B5C27ADA6B3C32E3403DC3478E508BF9A81364';
wwv_flow_imp.g_varchar2_table(575) := '7D4473E7CFD753CF3CABBBAD0C5C77DD0D3EA238513B7C6A077174C71D26D67B417F8F45B966193BC62B220A7C2342C4B119BAFAEAAB5DC7F185E2C2C54DAC7F471C7184789DF2F5D75F2F9E54B8F9E69B75F7DD778B5DFF9429538AE344DEDE4998D730';
wwv_flow_imp.g_varchar2_table(576) := 'DF74D34DBAE69A6B74F9E5978BE3D41D77DCB178E41AC581C77E512C38720507E693FC611E458422C243C143B20000100049444154A165DF174B81E4C5167839F297838680E525323CBBCBCD71B44076D428049C97F1ACEFC61B6F5C3C7F4B5E04082EC2';
wwv_flow_imp.g_varchar2_table(577) := '840910F1D2073D22BC26D2E2ED7D9B6CB289D056399E68F78E07C604AE2C005C261E6FF9C20CFE176BCB08432EFBC91FF2463C171FCA01CEF2AAFE46C4628B28625198FE4373FA8F160E7340D3E788849BC75C0E643CC847274B5A10E6098A4F7DEA5385';
wwv_flow_imp.g_varchar2_table(578) := '3580F123EEB5400FFAF1DF0A118DB14599653D31D711FA081EC2C4B36BE7FC9E1F7D624DF01E8B0B2FFAA97E7CE68FB4FF01FBE9831FFA8036F099F5A4492BF9CC7B94DA2C5CDADA87A86D68BB2ACD559F8DD72DB4B3624E31DE00635FAD560BE151D2B6';
wwv_flow_imp.g_varchar2_table(579) := '9C37B923EAC66BB0F0B7C55D482BD7A27E9FFBF7995B65CA95DAEC9EF6D7943CFAB0669C77B66EB1B9FCC1134F51F5DABF68E213D335E69919DEC14F57F6CC53EA7BE619F55AD0F5DA045DED9AA7B6AEF91A6613F9589F9F2FDFD1A1891D9D9AB8608126';
wwv_flow_imp.g_varchar2_table(580) := '7A9739DE79C73EF6B846DC73BF46DC749BD20B2E56FEA39FA8FBF893F4EC37BFA3C7BE76A0EEF1EEFB8E2FECA2BB76FDACEEDF6D573DB2D7173575FFBDF4C411076ADAD1C7E889134FD213A79FAE672FBD580BAEFF93BAEEBC59DD53EE57F78C29EA99F7';
wwv_flow_imp.g_varchar2_table(581) := 'A4FA7B669A2E1DCAD35EF5576BEAAD64EAF39946CD9D45B1E98FDC7A41288B4491A44A92AA52804B913E6649D9E10F1BA6B691A334DC8AD6F88993B4DA1A6BEA2D6F7B9B76DA79277DEF7B47EAC2F3CFD52F2FBF54179E73A6BE71F8C1DA6EBB0F6B934D';
wwv_flow_imp.g_varchar2_table(582) := '37D29A6BAFA1E55718AF4A3555A8AEF6D666A56E6FFEDCD9EA323DC68E1BABB76FF1F6E235E6ADB6C23266832122C41862A24790FFE8473FD201071C20F8369B373671F7DC738FE00F5C50E4E8903B44BCE19437766241846796401881CEF100E67F780A';
wwv_flow_imp.g_varchar2_table(583) := '801F9E421DDCA9E2F1E4F2CE081602F8CEB5D75E2B8E0BC04FCB3EFF3205927FB9E44B2818118211A43629458460384C382E03ADBAEAAAE231C16DB7DDB63009F1320C94029EC5E506311A6744D8DCD52E040A68302901FC110DE6867F49A01DF2452CCA';
wwv_flow_imp.g_varchar2_table(584) := '435C4414AF0BDD7BEFBDC52DE4328EBCE504C365C7CB39384A0093B7CF676CE083C0231D18DC26616070DC92FE88581815118A68009111A1924611512C3E70D2523E118BCA2D257961BD11B1B46433A57CA940DFE823405F4A2580C589E6CE62BCE28A2B';
wwv_flow_imp.g_varchar2_table(585) := 'C4A21E8C5B4414B833CE08929D77DEB9F82128F20C86882870D3C02722067CFF7B4EC40BEB7BC4A27C252D4B6A118E58941EB1C8CF5870D4C6CE1E41CFD8C2ACB1E2B0F6DEFDEE778B35C023659860195B1ECBC334BBF5D65B6BB3CDDFAC35D75D5BE3C6';
wwv_flow_imp.g_varchar2_table(586) := '2DA7F636AFBF4AB312FE22F11826CAED2AB5BF92C89245813FC26951A0C7FC293CFE17110BE31D54F85FEA5D726248ED4F88717D79925A18864DEC36BBE7BDAAF8DC3E99F6A4E65CFA0BDDFAF56FEBE1534F57ED86BFA9F5E9191AEAB2CDCD4D8A21ADD2';
wwv_flow_imp.g_varchar2_table(587) := 'F0A1CABC830E5B2DAA561E9A7229F55FE4A1F04E3CEDCF0A337EDAE73A7B7A5435B4DA5C3EA4B74BC36CEA1FDAD5A1EAFC79AACC9CAD98FEB49227A6299DF2B8522B08C9438F29B792D07FDB1DEAF9EB4DEAF8D3F59AF79B3F68E665BFD0B3175DAA693F';
wwv_flow_imp.g_varchar2_table(588) := '39570FFCE004DD71E83775CB7E07EA6F5FDA5B377CFE4BBA6EA75D74DDCE9FD35DFB7C45338F394EDDE75FA8EC8A5FAAE9BA3FAB72FB6DAA3CF688AAB366A9327FAE2A7D5DAA64EE73F4AB224392897E40DA8AE993669912438356B95AAA4D1A69ABCB84';
wwv_flow_imp.g_varchar2_table(589) := 'E557D03AAF5B579B6EBCB9DEBBD507F5B9CF7E41071F7498BEFB9DA374FC7127E8F4D34ED7A9279FAA23BF7BA476DBED0BDA669B0F69C337AEAF77FFDF9682C7EEF8E91DC5EF7A243EC38830AD062035AF669EC0FB10C2BC1701BEFCCB5FFE52BC0299DF';
wwv_flow_imp.g_varchar2_table(590) := '4C4078A31C908F8D023CA3047825470584E121B8007E8034F200A59FB909A048A044706F8097ABF1D4082F6F625EFEF4A73FD5CC993315D1C095396DF214E172BE450451057F2BD38B8865FFBC7AFF434488886290CAE6192C803002B8DD3BF015565841';
wwv_flow_imp.g_varchar2_table(591) := '3C32F3F6B7BF5D9FF9CC67841688E99D47883051C2D0B833804B99269BCE7023826A9E030C7E4488C92D7F9A9B9B0523C4CAB0FBEEBB178FF41017D1284F7EF23241997830454C594C482626F896405E57F9A2BE11514CCAC185CAFA06C74534F029D322';
wwv_flow_imp.g_varchar2_table(592) := 'A2A05D4488851911E2437A441469E01DB1C84F3A401EDC17039429FB57FA59A8583F5898C71D779C588868F983EB8D8822C8F870AF028B0E1601C616FC8A44FFA34E3B0BBF118D720B23FE073C118BE642C473FB1FB1785C442C9CC725FD22A2187BE604';
wwv_flow_imp.g_varchar2_table(593) := 'EB82B90CEDA1373B7AFC28DA58DD36D86083E26D77ECE060E4CCED6F7EF39BC2DC8AB0E7288E3C3CBAB7FCF2CB3714EEA666A551F19C95729BAE95CB1E838CBB21B3B788CAFDDFC249B88E7B21DF70A6701D5114CD5573D95A9E5958D7955A48B7583857';
wwv_flow_imp.g_varchar2_table(594) := 'A63CAA39575CAEFB8E3B56F71C7FBC7AFFFC67B53DF9A42ADED1F7DAAEFE6C73AA69C3DA3575F4283D3E76B4A68E1AA927870DD593DEE93E554D34A7DAA405CD2DEA6C6955A777B85D56167AD2AAFA226C89CF9544A2E64AD55051050198A60A43254955';
wwv_flow_imp.g_varchar2_table(595) := '355E69A138D4AD84D494F4F52BF7D97A7DE62CD59F7E467AF229A58F3FAECAA38FAAE5D1C734F4A14734F49EFB35FC8E7B34FAF6BB35E6E63B34E6C6DB34ECBA1B54B3A230FDF41F59493846775910DF72C411FA9B77D2D7EFBBAF6EF8CABEBAFDEB47E8';
wwv_flow_imp.g_varchar2_table(596) := 'FE1F7C5F534E3F554F9D7F9E665EF63375FEEEB7AAFFF5062577DE69CBC7234A9F767BB3672959304F1C3BA4F59A029ADBC5DF5449D5DAD656BC7B60E51557D43A6BAFA50DD67BBDDEBCE966FAD007B7D60E9FDE49BB7DF1CBDA6FFFAFE9C8A38E12F70D';
wwv_flow_imp.g_varchar2_table(597) := 'B6DA6A2BB13E23A230ED4784873017BBF85FFCE2173AE49043C4AB9651F811FA53A64CD1F4E9D3C5660061CE3C8457E2C72D798687B6F8925E785EC03FCA520750FA294F7BF01C8E1DB867C051016F733CEBACB38A3724929FEAC101B704CAE28F089C65';
wwv_flow_imp.g_varchar2_table(598) := '30408164C07D55390CD66048BD08C78D1B277E4888F78033E0BCC693093B7CF8703141C813112A27C0D23A94E77931A123A2B03A9017E6F6E10F7FB8F8311118268289C943FBF8A9FB965B6E11471298BDD06E117EA4D346E9E27F3110B168224684221A';
wwv_flow_imp.g_varchar2_table(599) := '8B6DC93A68BF6C0317189C87700911B130893802118DB888C55DD25E0A503FF4435B67417246C7D921F721A05B44A33DF0676CCA1F0DE22D6F08A7C18A5A4414FD8F584483887829E8FD57958D8885F4A163D03EA2412BFCD09B7B32AC05E630718C0DD0';
wwv_flow_imp.g_varchar2_table(600) := '64A59847ED3EF6B18F15C29D27560E3FFCF0E29E0BCC9C9D1C6B8A37DBA16CB31E50181833DA62FC00FC89120B64E3924BE15D7566695D57A62C64C8E4FFE2E6BB7391538D47EE1CBDC4372216EB0FC9B9DC1FD7594FA4DEBCAE7E83838AFE7E25DE75CF';
wwv_flow_imp.g_varchar2_table(601) := 'FDE5AF75DF3127E8A1134ED0BC2B7EAE218F3EA064EE4C75D7BA95AE3056CB6FF936ADBECB8E5A63DFBDB4E67E5FD5EA5FDDCFEE7E5ADD0275B52F7F51AB7C7627ADFE89EDB4DAB6DB68D2FBDFAB516F7F8BDADEF80655D75A43D98489EA1C3A4CB3938A';
wwv_flow_imp.g_varchar2_table(602) := '66D4723D6D4BC2740BF839EED29C5A5D736B357519BFACA559497B9B92B61655DA9AD4D45C515599AAFD3D6AEAED54D5D0D4D7A9B65A8F86D4FBD4EA5D7C4BD702B57677684877A786F7746B7857B7DAE6CD5775BA05F8430F28EEBE53F92D372B6EB841';
wwv_flow_imp.g_varchar2_table(603) := 'FAC31F94FFF257AA5F7A996AE7FF54BD3F39471DA79EA1B9C79FAC69477E5F0F7CE39BBADFF0C037BFA57BBFF56DDDF1ED6FEB96238FD4DD679CAA472EFEA99EFEE3D55A70DBCDEA7FE441E9D927A5CED9527F8787A5C763D1E731A9AB6AC5A0CD169251';
wwv_flow_imp.g_varchar2_table(604) := '234789C70D575B7D2DBD69A34DB4DE7AEB6BC488062F65BC197F147C7EB5145ECBE68BA3595E1D5E5A3FE18340C92F99778CE52B095816C00FBE83D511AB009659945836873FB545808D48A5829D64714C221AF3EEDF81E7E22DBF7A435E6EAF5EE40663';
wwv_flow_imp.g_varchar2_table(605) := 'C6A0478427E9087167E0E31FFFB830037169851D3C3BF98810031F11838B3EC7CF04A856ABC58D7F8E1BB87F00F324BECC4C7BF811FA9C6D71E6C4B914130FC61AB1781B83CB52EE9F41993F22841FA04C4428A201F405068EDB6C6BC5109FB302F4959D';
wwv_flow_imp.g_varchar2_table(606) := '5CE9C2B089272FC280FCF40FFFD2EAA59D970A1151285E2C7EEAE2FDE43C12C9DD08E268171A82031011C2F48C2042D0801FE500F24634FA5C8671FF9760300DF02FD977E2A02374639C61D0CC01C63D22441AF301459917ED40E7BDF7DE5BBC9F825BD5';
wwv_flow_imp.g_varchar2_table(607) := 'BCC21A9329C27E9B6DB61156351EC9C31A4039F9431BCC6DC6CDC1E21BD1189788686CF843B215DD62AFAEDCA6E9482CA0ED5623538567EE7BBBD5D7D9A95A6F5F31AF8B4A5EC0BFDCB5D50D3C6257B562D1E27AF4F8143D7DD595BACBE7EA8F9E78AA7A';
wwv_flow_imp.g_varchar2_table(608) := 'AEF8B5DA1E7854D5B973D59726EA5D7B5D0DFBC8F69AB4E7DE9AB8CF57B5C217BEA4093BECA4F11FFB84267CF4E39AB8FD2735E1D33B68C22E9FD5A42F7D41E3BFFC252DB7C71E5A61CF3D3571DFBDB5E2FE5FD58A071EA0C9071DA8C9DE81AF64656185';
wwv_flow_imp.g_varchar2_table(609) := 'BDF6D0E82F7D5EC377FD8C866DF731357B57DCB7C9269AB3E61A9A618BE4B3A3476BCEF0915AD0D6AE2E5B0B7ADDB7BAAD21268B794F55155B14120B9FCC9CB5EE7EA0D060C9E8ABF5ABCFCA4C8E15214FD4A454AD51555B9E5A599086598B1A55934676';
wwv_flow_imp.g_varchar2_table(610) := 'F7AAEDD959AA3EF184E2A18754BFFB6EF5FB78A0EFA61BD57DC3F5EABCE68FEAF8DD6FD4F9CB5FA8F3E73F57C725176BC68F7EACA74E3E45538F3E5A0F7DE7BBBACF0AC29D871CA6FB0E39428F7FF728CD3AFD87E2A9872E5B1116FCFDEFEAB29522EFEE';
wwv_flow_imp.g_varchar2_table(611) := '516EC526B795458630EDFBFB6BE2C3F8C3F7B8F7C10E1BC1CFAF897256CFFC0010C4B8B92D35940122A2E05DF85F298830A66E93F6E13300C70E3C2D802270DC71C7151708B99408BF060FFAB3249EC42F0359297C0D5021A231E889CD720C2628C3B436';
wwv_flow_imp.g_varchar2_table(612) := 'DA6823EDB6DB6EC5A323303CCC953048F2C120C9371898040069C0E69B6F2E1409EE1D502F71E48F68B4F7B84D7A679E79A678FD26DA26BB5B148088209BA8ABF0FC8BFF06978F8882898303C21E977426380C9F73394CB25C54E4FDE5307000D3FAA69B';
wwv_flow_imp.g_varchar2_table(613) := '6E5A1C95C0CCD95DCB1FCA5207611402C28E7EC9385307407D2540179801B77C794C10664198F48806AD28033EEC463FFBD9CF8AFB1C98A589238DBC4044233F7EE2FF9701DA307E00F31A5A40178039B1F2CA2B17F7655060B7DF7E7BEDBAEBAEC5193E';
wwv_flow_imp.g_varchar2_table(614) := '67B958C938AB45E897BBFB95565AA9B88741BDD4C1DC629C98FBD45D0261803C659C14B28C52DDC383B00E0B8D5499303FC753D335F3E65BF4C0D57FD014BB0B663C6D13B245A3F36A691F3370EA2E217358365F27594DD58E054AEF7B40B37EFE4BEFF6';
wwv_flow_imp.g_varchar2_table(615) := '4FD194534FD58CCB7FAEEC9EBBD53C679E6A4945F92AAB6BD8FB3FA89576DF4BABECB98F466FF70955377DB3EA9357566DD42865C3862AF711626DE87069F43869E26469B5B5259F8DEBF5AF57FAC637A9EDCD6FD3F077BD47A33FB48DC6ED6025E18B5F';
wwv_flow_imp.g_varchar2_table(616) := 'D04AFBEEAD55F7FB8A2D075FD55A5FDBDFFE7DB5DAFEFB19BEAAC9FBECA3895FFEB2C6EFBA9BC67F76178DFFF4CE1AF7F14F69F4361F51FB56EF53F33BDE296DBC89FAD7DF401DABAEA619A3C7687A73AB665821981389BA0C3583CCC3200B47283672D0';
wwv_flow_imp.g_varchar2_table(617) := '6DF5F767AADBEA407C98CEBCC8A86E0B44BDCF4A941587BCDEAF4A56B7B290ABD54A446B579786984E236C4918336B8E4621183D5D00001000494441543E3E4D43EEBE4FC95FFEAEBEDFFE419D57FC4AF37F7AA966FDF81CCD38E5477AEA94D3F5F029A7';
wwv_flow_imp.g_varchar2_table(618) := 'EA8E337EA8877E7DA5BA9EB275C0CA5ADD6318A95B84FEB9049FE03C9D5D3F829463218E3C39EE44E002CC17C68D618D089C7F3B3037CB46F1C393C10BEB2C4F13C083B8BFC293113CA24D7A4408BC81B2EC3257AF2D0580C183794584174E560C28420F';
wwv_flow_imp.g_varchar2_table(619) := '06C76E0706C8EEA7DD8B9FC98C22500E724428A20108D8C993278B8B869C75464499AD70234268953CC2C2D917A6B09AB565261B19C0037730442C5EC7E0B47FE6074F183C4C1D3FF871FF0105E5C33E9EA05F30F2BDF6DAAB782D31BB39AC1FB8F49B37';
wwv_flow_imp.g_varchar2_table(620) := '7D918E4BDE8F7EF4A3C57109B4A14EEA06A0C93FC3E5C5A447443106D08645D66786C5B91C4F06702C407B25CD22A2603008337E2F802703264C98505CE4241F34055E4CFBFF35793D7518F788509A248246AD2D2D36D7568A3063C74E1F018EF2F7118F';
wwv_flow_imp.g_varchar2_table(621) := 'EFE73FFF79716F8539818916604E60D2DF669B6D2CE75E2FAC01AC17C620B78085BEF8E54F92A64ABD53A55DB97DD23C988A88022C0FBC27CC1D95D97C9C17C0A5B3C40228993F5FF5A9D334F3A6DB74D7CF2ED75FCE3C578FFDF15A754C9DAEBCAF56E0';
wwv_flow_imp.g_varchar2_table(622) := '5DB1A959D8F0DDD692DFCC11B4074E281289CFAD93DE1ED57CC6FF944DE00F9C789A9E38FE34CDBBE062556EBD55A37ABB94B6A49A3BB25D61A57F9C05F01A16FC2BB99F2DDE9967366967AA4B1692A98559EF8205BAC93BDDD34F3B4DC71E7FBCCEF00E';
wwv_flow_imp.g_varchar2_table(623) := 'F8AC9F9CAD8B2EBA5857F82CFBF736B5FFC5E7E937DE7C936EB9F516DD7EFB6DBAFB810774FF93D3F4F0ACD97AA2AB47B39468968F17174C5A41F97AEBAAEDAD6FD188F7BE4FA33EBCAD46D9FA38F2D33B6ACCE777D5D83D77D7A87DF6D250BBC376FB82';
wwv_flow_imp.g_varchar2_table(624) := '46EEF2398DF9EC6734F6939FD2A8ADB7D6A877BF5BC3ACA0CBFC6681F9D2BCA6AA3A5BAAEAA9A6EAB3F0AD5712D52BA9159B507F244249C8D28AEA9136C2C6A3666B41BFCD2E352B09595F5D596F4D5977BFD4D5A7B4AB5F6DB62AB45989189649A39C77';
wwv_flow_imp.g_varchar2_table(625) := 'B461B924D588ACAEA6AE4E75CC7846D39F7C420B2CF45B565E49ADCB8F53D694AAEE3950F758481E7303E7EA679D7D9610FE9CF373039F71626DB3C6239C6F00E40F69768A6F4414EEE0B822E215FA473B4044A3DD12479A63E7CF0F85A1C0F006463626';
wwv_flow_imp.g_varchar2_table(626) := '2831118DBC9423DF329092D7021118B088504428F5A42D989654F84923CC6B7B316FC210DFF39EF768B0F0235D52511E61D362E6FAAE77BD4BEC9E31A35287FC8139024C162EFD9D7FFEF9C2EC55EE70C90738EB8BFA4644D1F6E0421121F0021F008B06';
wwv_flow_imp.g_varchar2_table(627) := '3F8E02837FFFFBDFAF5D76D9459CD7F2EB7C3C0901B3C7CAC1193AFDDB72CB2D8B1F4AF9BFFFFBBFE23217021501C039183FA6425976DA2847580878B4911BE0B4090D01FC11CFC54D2FF01311161079911B0D9C1D023B087E1009731C9725A11734C505';
wwv_flow_imp.g_varchar2_table(628) := '681361869042C1E1E80501073E541411055D2242AFAA0FE82C047BC24BC71006C9E1021C673731EEC424F6375C150B2D911C63BFCB549B9A546D6E5252AD0893715808C89FA66A93C68F5B4E6BADBE86365CFF0DDAFCCD6FD156FFB795B6DFFE13FAD2EE';
wwv_flow_imp.g_varchar2_table(629) := '7BE890C30ED3F7BE7794BE7BE4F70AEB5739BE28B44387B45BC9AA2AB7493AF7EE4E16E10E14C2DB28B9ED5C111EB3245156B8F873E7CA9D359343059E9184943A4F922BABF5AA3E6796BA1F7E489D169A9DBFBD52332EFCA9A69D7D9E9EBCE4323D76DD';
wwv_flow_imp.g_varchar2_table(630) := '757A7CBA77A02B4DD27A5BBD47AB6EFE160D5F7EA22ADEFDE66E2393EB353E91856440E06032CFDD9A5B106FE7EBBEEB0ECDF9CD557AD2D6B6874E3C51532FB8504DF7DEAF89DD7D1AD25F57ADAD4DFD16F4C33FF651BD6EEF3DB5E20E9F52BACEEB546F';
wwv_flow_imp.g_varchar2_table(631) := '6DB5A094A833DCA75A7F9F1E79F0415DF1F3CB7494CFC60FF0EE7D5F1F83ECBEC79EDACB3BF8830F3944871F7698BE7EF8E1FA96CFD28FFCCE913ACAB4E4877DBE7FF40FC4133EC71F77BC4E3CE1449D74D2293AE5D4D374929588134F3F4327FEF8C73A';
wwv_flow_imp.g_varchar2_table(632) := 'E9EC3375D2B9E7E8C40B2FD0C93FBF5467FCE16A9D77DBADBAEC918775D5534FEBCF1D9DFA7B2EDD6BC561EA2A93F5ECFAEB69E61BDFA0E9EBAEA33B7D7C70ADF9CE9F9254D7A74DBA29A9E85ED3E711E3FDB815B1A986279CF664A47AC647033393AAE6';
wwv_flow_imp.g_varchar2_table(633) := '46B3E6272DEA4C5AAD2C34ABEEB8CC1086346952EA3A92F0ACAA67CAAD44C926FCB0C54056A6642B4193C3D0A667E8508DDC7823BD61A71DF53A1F6BB44E5A5199DB12E36C1C30FD63F23FE3F4D375F249270B0B1E3C90358D60CDAD544578FC24E1B753';
wwv_flow_imp.g_varchar2_table(634) := 'B8118DB8328C1BB1288E700911A1882883FFB25BB64F05F84B80C7802F9B10F8103C1B0586B72A723F009E3463C68C62E35896C52D817A4AFFFF92EBD9F3DAE86EE2851211C5C40363C2B811A1D44A01038880C31CBADF7EFB99616EAF09DE613699D122';
wwv_flow_imp.g_varchar2_table(635) := 'F0C95F02375D11FE98D59938C44734262793889FF3457BE4B1969A77FEC4914FFED04E090E2EFC12B73030C813112AEB8F68B44118A1076E08438433421DA17FC4114708F315665C843C386211A07DDA0034E8439834700457141ACA501625E0B8E38E13';
wwv_flow_imp.g_varchar2_table(636) := '67C03C45016DD65DD7BB1933546856424403AF41D5BE202FED92111C0070007824E8673FFB99786488C508138908D1E788107950D050D8B8BF81C58634F0A13E2062E938115B02F99E17CA4CA53B90B10C2ECD1DC8D2709CA140C1AE06431160D9842242';
wwv_flow_imp.g_varchar2_table(637) := 'FE574062660A34A212057F8EAB9AB157D28A2A9EA3CD4DCD0208A769D5F4685653738B46DB5CBCDE7AAFD7666FDE5CEFB642F7B18F7E4CBB7C6E17EDEF79FCBDEF7E57C71F7F9CCF358FD2DE7BEDA977BDE31D9A3469A29AAA0382DEC235B3000044E366';
wwv_flow_imp.g_varchar2_table(638) := 'D69641921229F77AB19B3B1E333BC2C0A242F9C05FBDC89BB858A2C479CC1DA5EE2E25B3672BF36E7CDEDFFEA6E957FE4A532DF01E39E514DD75D4F774BBE1112BC673EFBE47638CF7BB3EF1717DF28843B4F647B7564C1CAF9A159A5A925A28A75EAB52';
wwv_flow_imp.g_varchar2_table(639) := 'D1AE71ECB705A26EA58439C3D973327B8EBAEEBA474F5E7EB91EF1F9F543DFFE9666FCF00C0DBFFF3E4D4C8CBE6B986105A4CFC71C6D56E857DAED8B5A7BDFAFA8F296B7A8D6DEA63C327731375D8DBB42B36D0AFFF39FFFA2E34F3A49DFB272F43BEFF2';
wwv_flow_imp.g_varchar2_table(640) := '9977A9E99E65FDEAEC5CA0A98F4F112F93B9E9E69B75CD35D7E8B7BFFD8D5054AFB8FC0A5D62EBC0B9E79CAB9F9CF9139D6E3C4E3AF9249DE0B573C2B1C7EB78BB471F738CBEFBBDEFE99BC6F3B0230ED3C1871EA4030E3C405FF118EDFBD5FDB4F757F6';
wwv_flow_imp.g_varchar2_table(641) := 'D79EFB1DA02F1F78B0763DEC707DFEA8A3B4FB1967682FD3EEB03FFD51273DFCB0CE9B33573FEDE8D64F1774E922BB3FEFEED1CFBBBA7585DDAB7AFBF55B0BECDFD7EA02FEE4DDFE751ED7BFD4A5BFB9AB7F37DCE4F1BA35ABEB2ED3F141D3688A95C669';
wwv_flow_imp.g_varchar2_table(642) := 'A6F7D32D4D9AD3D6A2D9CD5575B4B6A8A3B959DD568E16D83F7FC408B56EFE66ADFA999D35D69B9EBA9590FEA4AA4079707DF5DE5EF162B3134E3C411758F1E2B97CD62CE674D67484E790F315E3669738FC8C107EDC120803115144458422164111E97F';
wwv_flow_imp.g_varchar2_table(643) := '11E1FF5A6A9A063E118D3C03C1C51CDAA71D227101FC83E3E1859D9D9D62FCAFBAEA2A7DEB5BDFD2A5975E2A2E0892467E80B294C3FFBF089E46AFDD6E473426098358F6A2D9937FC30D372C2E086EB7DD76C20C8A9045D856CD34F1638246F010C7E053';
wwv_flow_imp.g_varchar2_table(644) := '1EA00E1600E62FDE5EC50462B29016D15808E4793190248B488C9FDD3E78B0F34550832B568B934F3E5998F43992E04792C857B6030E2C4AB472345B8E27008E2608A3F592C6A285E94544A1745007FD47D9A10DAC09DCFCE61EC19831638A1F3C220F78';
wwv_flow_imp.g_varchar2_table(645) := '453468A997F841B8432F94A8F3CE3B4F2803B411D1A01F6D01D09D0B9898B279FB224A00E341D91296864AEEC812ECFDE7DFDCFD0264D7901720E52E09D829BEA43252E174198232CE102598012373C24C5066C0B29B5BA8C907B98933A52E6C7E5CD05D';
wwv_flow_imp.g_varchar2_table(646) := 'F62B8982F93499E1565A9A553543E6BDED93569CAC15264CD20AE397D76A2BAFAACDDEB4893EB6ED4775C4A1877BF775927EE49DE691DFFF9EBEB4D71EDAFAA31FD6066FDA40CB2D3F46AD4DA9C2CAA80AA82B2C080A1CC043EE8FE9EB0DB6B2A267A207';
wwv_flow_imp.g_varchar2_table(647) := 'CADC87BAA1E6344CCBFDC6BBBFAF4789857CD502A8796E87E2E959EAB739BFEB9147B4E0EEBB34D7C26ABE77B7B38F3F5153F6D95F77ECFA65DD75F0619AF6B34B34E789695A307E9226EEB4A3D63FFC104DD87B77B5BEF39DCAC62EA73C2AAA9A4615E3';
wwv_flow_imp.g_varchar2_table(648) := '13A64B56AF4B3529CD2BAAA7A19E7AAFEABD0B943E3B5DB5FBEED5829F5FAEC7BE7D941EF8CE0F34E3B22B944E99AAE19DDD1A627AF7F328DFB8917A76930D35F6CB9FD73A871CA4E57D14A6F12B883B0049244ADCC3BC9E89353065CA9482B9F374032F';
wwv_flow_imp.g_varchar2_table(649) := 'A779DC61C686B5207F984F764CBA9A88EBF35115EB89B55302EBA704D611C0FAC7259E32CCED88103C06458E3AFB2C408B3C7DBDEAAEF5A9B3B75BF37D04317BE62C3D3DFD694D9BF694A64C9BAE69B31C76DA74D3E1D15AB7EEC8BAF57BEFD6AF32FCA2';
wwv_flow_imp.g_varchar2_table(650) := 'BF5797F675EB221F759CDFDBA9B37A3BF4E3BE0E9D6E7A9DD43357C777CFD10FBAE7E9BBDD0BF4FD9E0E1DEFF4D3EB5D3A4BFDBA30C9F40B1F2B5C6DA5FE8F2DADFA73EB10DDD062B015E2BA91C3D5F9B6CDB5E6AEBB6ACC3B3C4E4EAB7B9C42B9322B1B';
wwv_flow_imp.g_varchar2_table(651) := 'DDB658DC74D38D3AF6B86375D5AF7FADD97366ABEC273403F4223F89F95D4428C2AD782E94C559EF657D83DDC1F9C91B11389EDA9E0885EF5FFF473B5821A9010B079B3A143E2C01A4018C296E44A35DF2FE2F41F2DFD4D9885838F1468C18219E3BE747';
wwv_flow_imp.g_varchar2_table(652) := '4830AD631DC0CC8E399CDD368291C14743C46582B290B9F4F2DBDFFE564C4C042F692F8546D4CB04A31D0421428E47E2107A5C603CDE6794BCF212FCC8475BB4CD4284013159F9F10CB4741EB3439BBDECB2CB74C92597E867DE655F7EF9E5C525C59B6E';
wwv_flow_imp.g_varchar2_table(653) := 'BA49F7DF7FBFA64E9DAA9933677AC7D329F0A77D807AC78E1D2BDEA180A91385005AA0888013B84504D95E12D007DA8369DE7EFBED025F68481C6940490BE2DFE11DED473EF291C25A431ACC155CF0BF34445CDA3C841E851A7FB22B3EF433EC31388BD9';
wwv_flow_imp.g_varchar2_table(654) := 'A12C3855B8F9C2FFA4388FBFCEE6F92059A6AB281A4EB33690A4A14AB5A980482B52A46AB6C047C96C35431E6A263C72D4682D6FF3EF3AEBAEA74D37DB54EF7DFF7BB4C79EBBE984138FF18EEB1C5D7CD1053AFEF8A3F5FEF7BD47EBD9543C7CF830E392';
wwv_flow_imp.g_varchar2_table(655) := 'A966936EDD42BE6E269AE75EA69566256E2B4B12D543AA1B99CCD119F84634F0725E59C8CBE5C2E5530BA46A5F979A16CCB5E07D4AC9135394DD7FAFBAFEF6772DF8FDEFD579F9CF35FB47A769CA91DFD1C3871DAA3BF7DD47371EB0BFFEFEAD6FEADE8B';
wwv_flow_imp.g_varchar2_table(656) := '2E52D7134F6AF4722B68F94DDEACD53EBEBDDEFEB5FDF5FE6F7E5D133EF971E56BAEA63EF7B5374F55CF52B75F95FF1977D3264D84C5C3E829312E550BBEE65933D477CBAD9AF1E373F4C06187EBD6A38ED4EC3FFC566367CFD2F2561C9A6BB97A5B9B35';
wwv_flow_imp.g_varchar2_table(657) := '6BD40875DADCCF8EF52D871EA2F156E2B31526A8DF16939AE91DAE3BCF72D5DD3FD6C6EF7E77B58E38E20871ECC5B3E9CC1DE63D825DFE308F4A7070E197B885017BCA306E0911E114CF0BD39538E6307533B7E115B8ACD38632D1A9B90BE669DE82F956';
wwv_flow_imp.g_varchar2_table(658) := '00E66BC1FC05EA30CC9B3B5F3367CFD5EC8E0ECDB7F236D7E333CB549AEBBA3B3C960B2211304FA1D96E6DA661960937D33003300ACF189E72804F92700000100049444154FC74C3A3CE778FFBFFF79E7EFDC975FE7AFE3CFD6CF64C9DFDCC533A67F6B3';
wwv_flow_imp.g_varchar2_table(659) := 'FAD18C2775FEDC99BA78DE1C2DD8F00D5A63A79D3462FD375819F4BC310D5D54491EAAF5F6EA265B78BEFBDDEFE89A3F5FAB3973E7AAAFBFDF2D4889F1028AC08BFC079D008A45048E22A2A833A2E152779AA60234F08988C5F24434CAEA257E688BB940';
wwv_flow_imp.g_varchar2_table(660) := '5B3CA9C4930D175C7081501AA99AF982CBB8823740F87F0592D77247CBC18A684C96328CCB8023681B67E3FB8A9BFEDC3AE77C7DCD35D72C261F0BBAEE9D0A93242284A03DE79C73C41BEE58D4A497F4A1CED2FF625CCA01555B1F9A6D9D186EA1C0B9ED';
wwv_flow_imp.g_varchar2_table(661) := '913EA3FCE217BFA8D5575FBD98F8E0407B3096D936C1A2B1A2AD928FF7E9632EE78217770110DE9CF7EFBDF7DEC54530CCFB3CCD80C503A5076B028F2D7206C6E48749B1F3A14FE0C27931F9609A2843CB2DB75CB1AB613144346859F63162F17019FF7C';
wwv_flow_imp.g_varchar2_table(662) := '6E448836A0FF5C33156E14A3B810074498F998114644D1EF261FD160914111607CC8C398443C4FBB44FF33D0A24F236BEE8801407823341D537C1B1924BBE68B858B1F28C3E15512E10C8013D224B1804B54AD54D53E7498C68C1DA761C34616E6FCD6D6';
wwv_flow_imp.g_varchar2_table(663) := '36B5B70FD5AAABACA2776FB9A576FFF29775CCD147EBACB3CED4E9A79F6241F54D9FE57F515BFEDFBBB4FA1AAB6AE4E8114A2B8931CA45F5552B1215A54A69548932A516F8A919B8C4E3647991B3AE7E76F259BF2AF53EA53D9D0AEF3A356FBE62CE3CE5';
wwv_flow_imp.g_varchar2_table(664) := 'CFCE506DDAA3EABBF756F5FDFD5A75FDEE4ACDBCF05C3D643CFEF6B503F5C7BDF6D21FF6D95B7F3FFC104D3DED24755C74A19AAEF9A3C63C709F5698334743FBEBAA79AE666BACAE493E6FDFE83BDFD12A071DAC215B6FAD6CF555D5D35C554FA5624C12';
wwv_flow_imp.g_varchar2_table(665) := '35D513EFFC138F79A82F520B6AFCB9A2AF5FD1B540F599D3D579FB2D8599FF2FFBEEAF874E3E5DF98D376A8C85D658E3DF64FC3377BC6FD808CD5B79158DFCC8B6DAFCF0C3B5C617BFA4E6376CA89EA1C3D593D88A607A84A55758A1E8EDEBD6C38F3D6A';
wwv_flow_imp.g_varchar2_table(666) := '53FD0F75C821878AB7D171F18B39CEFA913F1121D6131011625E4584586711615A8796FC906769403EE2719F178AEAACC978C464212F2B0D2690C27F329822AADBED97548FA4809A2D2575E72DC099EBA419C8D367B72F977AEDF618FA8C739FE7429FE7';
wwv_flow_imp.g_varchar2_table(667) := '4497DDF97667199E719D4F1AA626A91EB5507DCC8AE7BD6DCDAA6EB2B1DEFCB95DB5D29BDFA6FEB676D57CFC94397FEABCBDDDDDBAE7EEBBF53D1F69DC78E34D32595577FBD08AB597BA1EE854829B7FC1DF8810E534F08908C15758E7B855F3413662ED';
wwv_flow_imp.g_varchar2_table(668) := 'EDEDC54BD806C7D32E742E61A08A97E49475C1FBE8DB638F3D265EE57E8937504F3FFDB415C9BAE837B84578B40C2FA9C1D758E1E43586EF62E832B84444048ED75C5E00012621930DA1BBD5565B895BD21FB61991A704860E1D5AE48B6894232F429773';
wwv_flow_imp.g_varchar2_table(669) := 'C11BCD9C981000F5478422822A0B8858E42F22FEC9BF8850ABCDBFEC0AD759671DF1E6354C959CC533E19978689F98F4798405B339771876DE796721E079C10ECA002FDFC09CC5AEA3C4AD6C1AFC89E3F882A30B2EBDA0147CF2939F149702E9179719E9';
wwv_flow_imp.g_varchar2_table(670) := '4FD9267E70E03971140A1ECB034768467D65DDE42BFD2FC4253F409F503E38733DF3CC33C5FBBD231AB4A38D8828C600BCB90FB0ABCD94E0CBD14499FE42DAFB677932189BC133C35973D9FB8FC1B9F8464431EE499A2A928A2AD5E6E2CD6A8C65FB90A1';
wwv_flow_imp.g_varchar2_table(671) := '1A3B7A5C71063E7CC4504D98B4BC77F71B69871D3EA1EF7EE75B3AFFDCB375C94F2FD0E9A79CA4BDBEBC9BDEFBEE2DB5E6CA93357CC8309FDD0F51A5324469A55549B5555CEAAA99A147A5C9A203E12959C629B210B8E61612F26E37A9F50E08FA398AD9';
wwv_flow_imp.g_varchar2_table(672) := '33947AA7577FF87ED5EEB845BDECE0AEB84CCFFEF8C79AF9FDE3F4F411DFD423FB7E55B77FFE0BBAE9B3BBEA9EBDF7D3F4238F57CFF99769D8DF6ED78AD36668359BDB97F3D973D3820EB5D8949E590ACCE9AD6941FB7035BD6923ADB7FBEEDAFC07476A';
wwv_flow_imp.g_varchar2_table(673) := 'C2977755B6FEEB541B3542BDCD2D1614A99A92AA5A9CBFC9423E316ED0B63F2CACAC5CE5F53E45C71C654F3CAAEEDF5FADC7BF73A4EEDC673FCD3FF7424D78F4518DEB9AAF562B06A9CFBED35AA8B7DAA6051327297BFB5BB5DA57BFAA55BFF215E56F7A';
wwv_flow_imp.g_varchar2_table(674) := '93EAC347AABFA955552B15AD1EB6E67A4D7957A79E701D679E79963EBDD36774E28927E9E9A7A60BC1CFFA61CEC91FC299E9161185302AFDB808015CE6A8FEC927C29D1A94A72C13B1289EB8024C0FC68B14922391E70F94692805C4DB80A18AE41D78E6';
wwv_flow_imp.g_varchar2_table(675) := 'F1CD24E8E57C19101EEE01D0121F473BC644482CACC2E051C83C5B80DC754412AAE78EB7D2917ABE8E1C3546DB7EE4637AE3669BAB6A852092543E29506A1CFB4CF73B6FBB4DDFF306E4B6DB6FF3AEBF4FF095DE9E1ED14E92248246007402DCF80BFE42';
wwv_flow_imp.g_varchar2_table(676) := '0B32C37711F4AC9721438688574D8F1E3D5A236C99C51D6B6B24C086887CB8637C2C895BAD56A9E26503708A08313FE049F0522E785F642B177C9FF6C8F362FBFAB221F81FAC28F90FB6FD929B8E60CAAA10245416118A680061263302166DF39D3EAB44';
wwv_flow_imp.g_varchar2_table(677) := 'A022E8522F928810E9A51FCD9097473049FA7C46882B7F981880BDC577B0BF8818F42F228A3AE50F932A228A47BAC081DBFD871C728876DC714721F0CAB6596898ED31CB731EFE1DEFB63882001F76D0087C80B34E162A8C0E3F809F384CFE4C648E0CC8';
wwv_flow_imp.g_varchar2_table(678) := '4B3C3BA2FB7D24804241BFD9F15F7AE9A5C522A0ED88107D67F7BFFDF6DBEBE0830F2EAC1168E42D36ED8273C4225A6AE053961D083EC7813E00F48311B32343B1F9C52F7E51B44D7C994EDFA980F05A6BADA54F7CE213E25E006D33661121FCB449BE88';
wwv_flow_imp.g_varchar2_table(679) := 'F060DB675E08B35D1A4444310611CE2B7FCC1C85177090E88AE3527B98FC25A44E232E75E62633C16143DA346EEC180D1D3654AD435A1515334633D8F661C3B49177573B7F66677DE3EB5FB7903F553F3EE3873EBF3F59DFF8C637F5C94F7D4A9B6DFE16';
wwv_flow_imp.g_varchar2_table(680) := 'ADB2FA9A1A622196F85C16D37D549B5C474549240533362F57F4D755A9192CDC2A36D727FD3D527F97CFFA3B95F72E50CC7C5AE9C30F2AB9F966C5EFFFA4AE0B2FD1E33F385EB77CE5405DB3CB9774DD17F7D4F57B7D45371E7890EEFCF677F4C029A7E8';
wwv_flow_imp.g_varchar2_table(681) := 'C99F5FA639BFFF83FA6FBA4D2D8F4ED38899F335745E975AE777A9C502BFD9E7CD898F05EA9DF3259F3F47538B9E364E53868FD050EFF0D73DFC70ADE7BA96B3E9387DDD3ACADA8729B7F253CD1335FBECA1626995214892505F5362016E3194F5A9C9BB';
wwv_flow_imp.g_varchar2_table(682) := 'F2211DF3D57CFF7D9A71CE59FAEBD7BEAABF1DF175CDB8E22AB53DF2A85A66CE50B38F02729B996B59457DED23F584CFA4F3CD37D15A7B7D51EB1FF2358D7FFFFBA4D1CBA966CB0AF4AE24B97C58AD2CAFA9CB67E3BFFCF595FAB2AD17477DEF077AE09E';
wwv_flow_imp.g_varchar2_table(683) := '078B63AE05368333C7B20C3CB2427879288B6FEEF1229E40E9E27FA140F925F312072C194FD8B2D8F8DA67D9EE8DBDF196B022A1CBD5955B481B3FBBEE55E33F1E27A2EC853302B2BB103C17F1E7A6BD06FCB84531C92A00104AAB15C9F3B9B9B549B963';
wwv_flow_imp.g_varchar2_table(684) := '3FF2916DF48E776DA161C3DBDD665D021943E25476BD3F39FB4CDD72C76D826E7D3DBD4E264F2EFA85C2892B7F70017B8B6F44B89928FCFC635D4634C2A9796A93AD79C36DE11CEA0D5644081EC8BB2A3EF4A10F15964A78DB99DE0CF07C3E7735B8A14F';
wwv_flow_imp.g_varchar2_table(685) := '981D39779376D965176DB1C5164211A0FE9703CA71C7A52FB8F047782EEDF38657364711D1E8BFE70CED9217C04F99D24FF8BF09E07FFF4DFD596A5F22A210C42BF82C166D33A2316919D48828CECCD939F39A4B042B8289B4A556F60F222903B0307069';
wwv_flow_imp.g_varchar2_table(686) := '0BE08C9B5D3D931B6DB8AC821BA9679D75963EFBD9CF8A05C185B9E9D3A78BB34D34D55211011F2621E5A81720FC7C407ECAA21C30B969E76F3EEFFBBA05168B8C7B0ED401B070478D1A252E0AF2E4011704D1DE89A71F110D5AD1364019DC7F04E401C0';
wwv_flow_imp.g_varchar2_table(687) := '0F2500CBC435D75C53DCC0A51CF1D44D1B4044A30D943368B5FEFAEB17CA020C84BC1121980B65C809248E4B93A410A8D4094438C5DC91B6CDCE0A6615118AA431FE2D2DCD4A93C40CB1C8AD24A9B8DE16355B48576C221D62D3FD38EF428678D754B110';
wwv_flow_imp.g_varchar2_table(688) := '1AD2D6AE55575D4D6F79DB5BF5B5AF1DE031FAB1CFEC2FD269A79CAAAFEEFB156DF7B18FE9AD6F7B9BD658732D2D377EBC607EAD569E9A2A15A5210BFABA2A66C889776CB2700F0BC0B4B74B49D73C25739E55FAEC338A271E57DC7B8FF2BFDEA0EEDFFE';
wwv_flow_imp.g_varchar2_table(689) := '5A337F7AA11E3BE564DDFAED6FEADAAFECA3DFEEF679FDC64745BFDF7F7FDDFABDEFEBC9B3CE53FEBB3F69B97B1FD4B8FB1FD1B847A768ECD42734FE99191A336B96D2A79E54F6D4334AE776A8A5A7AE6A6FAEA4B7A69497C958902661CA981EF56A9316';
wwv_flow_imp.g_varchar2_table(690) := 'B4B469C6E8715AFE031FD466877D5DABEF7F80DADFFF4185CFE06BA3468B6380DCA44AEA399B5585FF3297651C12F7ABAA9A9AB14CF8EC39BFE9263D7EFC89BAFE2BFBEBBE134E52F34DB768FCB3CFAADD470A43AC78B498EE7DAEABC70AC7DC2143B560';
wwv_flow_imp.g_varchar2_table(691) := 'A595B4CA6777D25A077C4523B6FDA0D29557767BADAA47623195ABBFAF57752B28DD3DDDBAF5AE3B7590958983AD60DD7CEB6D8DF5D1D9A19A2D10CCF562BCCDB871DDC47FF01B6E3B8CBF1DBE047101FB4BD96E992FFC44D35B4A0C064B2235801C2E88';
wwv_flow_imp.g_varchar2_table(692) := '5314C03F189C4D562CACFC0C696F5312A1B7BC75736DBBED365A79E59554CB6ACA0CCE61AB524D8F5A112B2EC2FDFA377A66E64CF5F4F699C6358F6D4E456ED273C36D4147C05E45C442200E8868C4B136990BCD3E2E82CF01DC65C2CACAA6831FED61A7';
wwv_flow_imp.g_varchar2_table(693) := 'CD6F4C6CEF4DC69B6CD969B292F0C4134F88FB1AF0A1EBAEBB4EB7DC728BD8F0B069A13EEA61EDD3FE2B01F4012560DAB469BAE28A2BF4F39FFF5CBDBDBD453FE95344A37F1161FA6502A788782550F98FD7696EF81FC7E115466051F50C64192AFD3090';
wwv_flow_imp.g_varchar2_table(694) := '9BBDC3E24C880988C0222DE2C50F78442C9C2C4C60263BE7DB98E337D860834223963F4C32CEE8510AD07E31F1B383A77D262738E102E4C575B1E21BF1CFF1227F44231F3B6E34FD72C2FFEE77BF130B128503C5804A698F45C7AFC1712F81A301043340';
wwv_flow_imp.g_varchar2_table(695) := '5DE40122A2C124CC6C09BF10A06E14112E04FEFAD7BF56DF20EBCAE0F2B4030EBC9F813B0FDCD3807EE01011A21EF284F87349E39067391E910760DC1C31F035AE2E47EE3452A5492A847A9B85FA9061C3D532648812EF9C7224B5DDB611C3B5FAEBD6D6';
wwv_flow_imp.g_varchar2_table(696) := '7B2D0CBFB0DB97F5AD6F7D57279C70A24E3AF1641DF3FD63B5DBE777D307DEFB5E6DB4E1869A3C618246B98EF6B656B53455D55449D59426AA564208FBF02E3B10F80BE6289E7E52B5471F56C77D776BE65FFEA8272E3947F79CF47DFDFD3B87EBEF871D';
wwv_flow_imp.g_varchar2_table(697) := 'A49B0F3A50B71C70A06E3BE8503D70C4B7F5CCF74F50FF0FCF51DB4F2FD7F03F5CAB9177DEA9B18F3FA6E5A63FA951339ED6289F9D0F9F3B5BCDB366AA69CE6C557CEE9F76742BB590AD98B6957E0B7BD3A8BF96A9DF92A62E9976FD8EA9ABDA5C512D91';
wwv_flow_imp.g_varchar2_table(698) := '169816E9A4C99AF8C1ADB5E12187DAECFE358DFCBFF72956594D1DC3877957DF244B059B8C6BAA58B884778F3CCED753C9D595D69444A66A9FDD47A7EAE94B2ED3EDDFFEAE6EB1709E7DEEF91A76CB1D1A37ED590D9B395715EFCE73D38135D59F5435BF';
wwv_flow_imp.g_varchar2_table(699) := 'D2A2AEF12B68F90FBE5FEB1EF0558DFFC24ED29BDEA86EEFFAB3A63655225DA834A55630A6D8DC7FC60F7FACFD0F3858975DF12B4D9D365D73E7CD539FE99B5B9971911C950000100049444154C99D47AFA20F323AF79C9312630584DDA57CCB68BBB993';
wwv_flow_imp.g_varchar2_table(700) := '07838383BEA4640E0F80E7BC17A0C3E537F1B8A204A76E31D5B871E3F5A94F7C5AAF5F175ED3ACF038D75C86D2CF5841BCE8E28B75DEF917687E47A77AD8F9BB9ACC6B288C07E0E073BEC59A736292245E3F9585FC2D22C47AC5C4CF3A5DCB163C2C9858';
wwv_flow_imp.g_varchar2_table(701) := '328F3EFA6871578927AD6659293DFFFCF3BD9EBE55FCDA206FA8E45E13FC87F7F6237C11C2975F7E79F1482647B06C8032CF3BBD829F8850BFAD511C51721480F53722141185D0A7FDB2EFAF201AFFF1AA93FF3806FF660422C26BC83A71BD5EB4CC64BB';
wwv_flow_imp.g_varchar2_table(702) := 'E1861B8410466833F045C2BFF88F49C3A260716CB9E596E2A63F1A315A328B88FAD90D1F73CC31E215C38F3FFE78618A43C0D1242E79A8877009110DBC978C2FD39774C9473D0075227801940C141E2E0A1E77DC71420B8E684C7CEA280530BB70163634';
wwv_flow_imp.g_varchar2_table(703) := '211EA04E5C202270960A11512C24F203B40B9D2FBCF04271C192380A821B7EDC884619AC115C4C64C7C05921741C9C57DEF138A79248142498C1F13818CA00F540E3A6E666559B9A94A689867A573FD43BCEC8A3D0F2FB6B352566666D16DE6BAFB5863E';
wwv_flow_imp.g_varchar2_table(704) := 'FE918FE8B003BEA6D34C8B538F3F5E5F3BF8207D71AF3DB5DDA73EA977BDE7DDDA78E33769AD3557D77263466B988F025AABA912EF7CD5D729CD9BA598365571DF3D8ABFFF55F5DFFE569D175FA279679FAD47BFF35DDDFED503F4D72FEFA51B77DF4BB7';
wwv_flow_imp.g_varchar2_table(705) := 'DB54FFE0A1DFD0B4E34FD6DC732E50DDA6F1EA9FAE53CBDF6E54F3AD7728EEB85BE9FD0F2B796CAA34F54969FA536A9A3D57ED5D3D6AB5704FBBBB15DE15238CC3F8BBDB167F89A9917A3E574C968A65B62952EBB3E0EE539305645AEF5193CF8C5B5A9B';
wwv_flow_imp.g_varchar2_table(706) := 'D56B4565AA939F993841433FF261AD72E0FE5A6E9F3D34FC83EF51BAD6AAAA8F1CA6B022D3EC8A9B7D9E5CB5D04F3D2610B966DA65F613D7D6314FC99D77EBD9B3CFD35D877F4B53BF7F9CF48B2BD576DBED6AB525A2327F3E45D41BA9BA2C5C525B56F2';
wwv_flow_imp.g_varchar2_table(707) := '2123346FE848E56F788356DB6B374DDA67378DD8EA9D6A5E795555D321AAD652A53E5E707665EEDBDCF90B74D555BFD1A1871CA6D34E3E5DB7F938E3D9E9CF88F3EB9A857FB84F79E4EE3B13E05508A6738195E9268351D59250A49B52B9E95A007E4722';
wwv_flow_imp.g_varchar2_table(708) := 'F2ED145FAA190C1E64C793633084AD581E5F1F276DF1CE2DB5C9A69BABC54A2EAF17569EA892562413F6EE3BEED46FAFFCB5165861ECB5F0572462CD24119E47024D2DED13112AD728EB8B3C155BB8E071F851D411EAF0B3BDF7DE5BF03CAC9C5CFCE558';
wwv_flow_imp.g_varchar2_table(709) := '91D75123EC7927087C1681FBA8153B8E27797F3FFEC7CD039FB05500E08882CD0A3C8BFA5F29487D64417F5002CA47969101F4158047E0463002AF1416FFF97A93FF3C0AAF2C06836B2F073422141162126076BFE38E3B8A49CE64903FE4B3F3A2BF4C9A';
wwv_flow_imp.g_varchar2_table(710) := '5268F2881DE676CCDA9CA9474471D9066DF784134ED05FFFFA5731D1D99D33D9998CB8341AD1C02F2208163018A78828F08F8822ED1FFD2BCB513F401B1C2F20F8D1BE4F3AE924B100B014B0B059BC3C2AC8D313ABADB65A4123E2FF511B83D32216E114';
wwv_flow_imp.g_varchar2_table(711) := 'D1F0830326B67BEEB9477FFAD39FBCFBE8F1AEB4AE828D59E0E0825B86DFC0239A3CADF1BEF7BDBFC8C73851870749D408E0877935559B34A46D887723AD42592984A311CA2CC0AA4D4D9A346945ADFBFAF5B4C53BDEA1EDB7FF84F6DD771F7DF3EB47E8';
wwv_flow_imp.g_varchar2_table(712) := 'F81F1CA563BFFF7D1D74C001DA75A7CFE8C31FF89077F76FD41AE397D38A435A34AABB4B2DD39E5462C699FDF97ACDFDF9E57AF2EC73F4D8E967E8018FDF7DC71DABFBBCD3B9F7DBDFD61D471CA15BBFF94DDDF383638A77AE3FFEC31F6BD68517A9F357';
wwv_flow_imp.g_varchar2_table(713) := '572ABBE6CF6AFADBCD1A72EB9D6ABBEB7EB53E344543A63DA3A13366A975E66C5567CF5165C102B578F7DE54AF59789B2E99C17D489528CDC3BBE25C30EBCCB4C924F3F3DC20411347150CBC6E5A67A64E6E011A8EAC446E25A8E273FAAA9EAE563467E2';
wwv_flow_imp.g_varchar2_table(714) := '248DDB7A1BADBBE7DE5AE54B5FD2D0ADDEA3748D35D43F6C98FA6CB9A8A72E6D7371533D737BAE3BAC5824A95B0BA57D3DAA9816F935D7E9490BE4DB8F3C52537EF443F55CFB27353FF290FB3153CD1D5D6A2A8E0A42BC6FA05E4D546B6ED25C1FAFCC5F';
wwv_flow_imp.g_varchar2_table(715) := '65B2267C6A7BADF5B5FD3476DB0FA962C5ABDF8A59A6AAE863616548A41E2B3837DB1C7CE249B6BA1C7BACFEF0C73F6ADA13D3D4DDD565737F9F722BEDEE9664BAE4EEAB3DAFAEAFE9EE415101203A001EC2C65C2FB1CD5528048DC8707E83F49C1E395B';
wwv_flow_imp.g_varchar2_table(716) := '91458B7D1A791B51CEE13672E75A75D555B4B5CFDA593B6992A8C2D879178D727CE38D7FD739564AEFBBFF5ECF9BBAEA1E6770845F5116B45D859EEF13D1683322AC6C3489722BAEB8A2D8F11F72C821C262C7DD1D2ED79D75D659C58BC7B0045C79E595';
wwv_flow_imp.g_varchar2_table(717) := 'C5C60AC1CE25608E57E1B16C0800FC00BC673030AF9F0F97972B1E7E433F22A2B84B82E5018BC4DCB9731511264F5EF4F3E56AEFD55A4FF26A45EC95C28B81A7EE8828840BCF86A29546849894A935C3973201298B90DDDE675E1B6DB49110FEB48700E4';
wwv_flow_imp.g_varchar2_table(718) := '721F6770087F8430939F3629035E948B682C36CA108F3B1822A298A011514C5026B19EE71311459EC1F5D00E8B8DB6D89573F4C1B3B1D081BE531F3776DFF7BEF715BF271011C5A28F080DFE0CAE7370FC627EF327C2E4A55DAC20BFBFFAF79A63B3609A';
wwv_flow_imp.g_varchar2_table(719) := '842AE63C89213538686120B376A9E2315863D555B5E30E9FD43BDFF656B55A800D6F6B538BE35B146A352EAD91881DA9FAFB54B3B0CE7C86376A68BB36DFE88DFAEC27B7D761FBEEAB132C9CBF7DC4613AFCD08375C84107E8409FA9EFB9D38EFA9CFBB6';
wwv_flow_imp.g_varchar2_table(720) := 'DDC69BE86DCBAFA0152DB8E2AE7B35DDBBA33B4F3E55371C7C88FEB2DFFE86AFEAE6830ED69D5FFFA6EEB589FB110BF7674E3A555D679DA3ECC28B955D7489FA2FB954DD57FC52DDBFBB5ABDD7DFA0DE1B6F52EFADB7ABEF9E7BD5E473F86136B58EF039';
wwv_flow_imp.g_varchar2_table(721) := 'F5505B1DDA2D5887B89FDC9E6FB6A0AC188A0B7116FC759BEDDD2D2128322B2E99158070DE01F229925469925819307D483324DEA587F3E6AA2B8B9AEA869A85419654A5E656F518A6B9829963C76AF8D65B6B15F76995DDF7D00A1FFEB0DAD75F5FD988';
wwv_flow_imp.g_varchar2_table(722) := '111606529A25A67745DE2CFACCB85F8C533850402D53FED4743D7BD5AF74EBF7BEA3DB4D8BF9675EA0CC968BB8FF7E55E7CC54535257E6BFFE4CAAE7A992D442DD8A57AF958A054387A8D9E3B7D257F7D484CF7D5AA3DEF57669ECF292057FD443F455A9';
wwv_flow_imp.g_varchar2_table(723) := '14CD8966CF9DA99F5FF6337DD76376F69967EAB6DB6ED3828E05AEB3A6FEBAF18A4CB9DB8948946521196F4130BD7A3EC64AA1BC00D96DC0007E24DA9B0F027B8BEFA23272592DFE71B9B28C8A5447289106FC845A5B5BF4E16DB7D6466FDC50436CED09';
wwv_flow_imp.g_varchar2_table(724) := 'CF8DDC42BE92269AF1EC0CFDF257BFD4EFAEFEADBA7ABA0A258BB2459DFE977A6E057545E81F7D92242978191B04AC843C55C571217C022B1DD6BDC30EB3C5E6B4D3C46B7739E3C7DA489DF01AF81F7C07201CD1688F7AC9038F00F0FF3B20C254F71A83';
wwv_flow_imp.g_varchar2_table(725) := '0703DC95BAE69A6BC45D29F000C00317C0BF34A017C0D2D25E0B71CCA4D7029EFF228E8B178B680C3A031A117AF2C9278BDD2F66A752109356C2E2A5178522421151444444E18F88E259FA3163C668E79D77168B64E8D0A1C5B919931F13182FA0B8C53B';
wwv_flow_imp.g_varchar2_table(726) := '1C76FE2C842C3353F3242CDB8B88A2CEC16176B54D66A8ECC24B880833C1AC5060A823B560241FE9A51B11A21E2A8C68D41B1105AE9461D283179A3967F3677B87C07B102242E0C66B943F62F338CFE797F5B2588188463DD4FDBCE07E254E0C0B93DC50';
wwv_flow_imp.g_varchar2_table(727) := 'B730E9EFE9D7FD77DFABBF5DF767CD9B364DD933D3559FFEA46A1E879A77987D4F3EA1BE27A7A9EFA92715F3666B9D89CB6BE70F6FA335BD2B1F65F3F40833FFD1212D6766B4425345EB2CB79CDEBBD9A6FACCC73EAC3D77D949FB7F6957EDFFB99DB4D7';
wwv_flow_imp.g_varchar2_table(728) := '36DB68B7B76DA11DD65C57EF696BD29B17CCD13A8F3CA0E5BCC0EBDEC5CF3CF6783DF9BDEF6BEA77BEA327BEFB6D4D3FFA7B9A71DCD19A7DCA899A7FF659EAF45145D7A53F57D7AF7EA58EABAF56C775D729B3404A1F78404D8F3EA656EF4ADB9E7C4A6D';
wwv_flow_imp.g_varchar2_table(729) := 'CFCC54FBFC4E8DECCB34AA966B98CDB0ED3E1B6F755F9B6B759BB6332576730BF8BACF1BB35ABF94F57BF75797474789E992A8A2245285FB26F72D8F5CC835934F99FFD58834BD13E54ACDD8530BFF8A0561E2FCB9D3EACE9C25A954B1E04D5C575DEAAE';
wwv_flow_imp.g_varchar2_table(730) := 'B6AA6FB53534EC435B6BE29777D7CA7BECA915B6FB989ADFB081EA63468937F3659212FFA50853DED6673CB26A55B91589983343BD37FD4D33CE3F4FD36CED78FAD45334E76717ABEBAF3728B5A9766447B786F5D6951AEAF5DC8A43A6C438367B1ED6F3';
wwv_flow_imp.g_varchar2_table(731) := '443DAD6D6A5A6F3D8DDFE1535A692FB76DA5235D7DF5E276BFE8AB12632E553D8EF316CCD5B5D75DAB934E3EB978ACEF6A2B53D33C17989BCCD19A95A7DCFDCE8BB592992699F2CC34326DDC8557EF37376A83C1C1E77EC9C048E04A8DFFCFCD55C64484';
wwv_flow_imp.g_varchar2_table(732) := '2280464C9A261A61456EAD35D7D43656F2468F1EA54842F297BA10B46C36AEBDE65A757475AA660B0A6B5FA62580DFA414A40C174A3C1E40844306F91311AAD8E40F0FE2B1BD8F7EF4A3E2EED2C73EF631610560F38415F1B8E38EF3B1CD55C2A4CFE686';
wwv_flow_imp.g_varchar2_table(733) := 'B6193F00BFAB7ACE17FE040ECF49F83744D036730BDC70996FE07EEEB9E78ACD1071A415F8412008BA045E5EAA8D41735A2C91F65A0926AF15445F2E3C99E0D4C504E02C9C05D2D3D323069C38061D1720DFF3414428228A64EA4CCDFCD8ED630AFBCA57';
wwv_flow_imp.g_varchar2_table(734) := 'BE22160BF14CA0BFFCE52FE29113B4CB6E9FE5D216F1148E68D411D170898F88429968F659764478AD666257BE9E992A8F33B2F878661E33FD0E3BEC200435AF102E1F2F8C08A1080011E1059E17B8826344234CDBF4155C30DDF10B7EBC7380C94FDFC9';
wwv_flow_imp.g_varchar2_table(735) := 'CB93013CB63879F2E4A23E9800E5221AB8E25F12CC9ACDC8F2229AFF454EFFAB99E970D171EECC59BAECC767EA0FA79DA1BB4FFFA11E3AE534C3297AF0E493F4A08F231E3CC5AEFDF79E7882A6FCF8C75ADE3BCDAD5A5AB46592EAFD162C5BB70DD5D63E';
wwv_flow_imp.g_varchar2_table(736) := 'E37C7F53ABB61E324C1F1F334EDB2FBFBC3E6A65604BE75BD58A45FCE98F7AF682F3F5C84927EA31D7F3D8F1C768EAB1C768BACDCA4F9D70929EF9E18F34EB820B35CF66FDEEDFFD56D9F57F56CB1DB76AB9694F68650B9CC93E375DD967E62BA489C69A';
wwv_flow_imp.g_varchar2_table(737) := 'A18EB43B34F598B86735CF155EA1DAD3D9A3FEDE3E6162CD2D0401CB6525912835386B41838828681F61D7313CD906C89C173A97F9106A1E28057900E7AF189AEC0FD3AEEEFC3525AA9B0EB8D0B36ACB48534BB36A2ED4616BC0EC36FB5FBFB6867EF883';
wwv_flow_imp.g_varchar2_table(738) := '1ABFEB67F5BAAFECAB953FF739B5BEE10DAA3B5F9F11AC950DDA6513DD9F660A73B28ACF8593295335EBF77FD0A33FF9B11E3EFE584D33BD9E3DF32CD5FE76A396EFEED10AA66F62FAF4D16F852A49D50A8EE99236A9DFE199C6A37BD20A1AF29E2DB5E2';
wwv_flow_imp.g_varchar2_table(739) := '1776D5EA5FFAA246BEF5ADCAABCDAABBB1C4CA4AD1470B9A88100AE779E79C2B7E90E7D4934FD3EDB7DFE17C59017DB69C184533D85CD08A728473D3C211A64A66709AFFBF5ABE6053C2737022E139918D08920042A58BBF80C522723156269D85725AF0';
wwv_flow_imp.g_varchar2_table(740) := '88F6F6F662B3B1C61A6B2AF1DC68C82A8F8D95B9C7A64CD1D5BFFD9D1E79F81155AB1E238F9D87480D5AE6B2A7D84494E164605C9CE0BA12A5E669C4C18756596515C173F6F6393F3FCAA3A39B0000100049444154430ECF64A78FE0E73E11C788F02E04';
wwv_flow_imp.g_varchar2_table(741) := '3EC2943A80628EDB830BD85B7C4B3F2E5044FE1BFFC1FB6837A2A088C01D3EC8D3601C8D7674741471E4216F41A37F841FE4743A0ED3DCDED7C437794D60F92F22B964B188C66013CF2E1C81CCB9346126002E10115E688177A9C0A42081C5810BB048D0';
wwv_flow_imp.g_varchar2_table(742) := 'C63FF4A10F15CFB192873AA74F9F2E842B136BEEDCB9C5A4223FE940C4E2ED44841777A558DC087DDE14882046D8F3C21E5E24F48D6F7C43DCB4E59CEDA8A38ED211471C5168E59CC9D1FE861B6EA815061E792C1771892B6DD27E09E0D8673334C701DC';
wwv_flow_imp.g_varchar2_table(743) := 'D665F2CFB2899EFC5533118E31B066E007221A0AC492F594F5C1A4F1B310BC57B3C831A30E4392298BBA7A7A7B74E75FAED78D679DA729A79FA3193FFC896622907FE87373C3EC332C9C7DCE3EF394D335D342A1F79CF3B4C5D3CFEA9349459FB620F964';
wwv_flow_imp.g_varchar2_table(744) := 'B5451F4F9AF4110B942D9E9DAD4937DCA4ECFC4B34FBE41FEAE9E34FD6B4934ED3D3679DAD3957FC5C9D7FFE831658A8743CF8A8FA9E7C5A31BF432D46AEDD16955676356678D548C44EB4AAD43BF23043CCC52B51BB7DA4D063E8E58881DDBB774FB985';
wwv_flow_imp.g_varchar2_table(745) := 'F04246E0618BF03F017A819FC4BBFFD49034F29B2EECB865BA84857098730008CAC49C9C2392260BBCD4C4CC8C5F7F54D5EFBEF727A96A69A8BF9AA86748937AC68D5465DD3555F9C0BB3574AFCF6BC503F6D60A3B7E5CCDAF5F47597B9B8F07A4CC03C3';
wwv_flow_imp.g_varchar2_table(746) := '9885EBA5F5C4B8E77D5DCAE63EA3DEBB6ED7DC5FFE4A4F9FF6234DF9FEB17ACCE7FCB37FFD3BC5A353D46A45A709FBBEAD1C795F5D1E46D58D50BD22D9E26FAC12D59ADA346FF418756CB0AE86EEB09D56D9EBCB1AB3CD8794AC3041266831E7DD5C2150';
wwv_flow_imp.g_varchar2_table(747) := 'C0014590F570E289270A0182756CD6EC59453E1452E6648340CBFE2F8D02D090F509CF69F3D1D8965B6EA926CF69F24684A7A8E7B0D7344FFC406776E4CC69D2298BFBCF2022AC345445FDF020361ABC4B648D35D6107C8C577CC37B2EBBEC32CD32BF60';
wwv_flow_imp.g_varchar2_table(748) := 'DCE023AF95B18B587CDD8237C0068DBEA19C6AE093DBF5D2F4FFC5BF459CABC12D806487715E2B002F78ADE0FA92F164F2A3CD454461FE6790D1F4526BBA541ED1183DF201C4FD3360210268E208EA77BCE31DE679F582D9D116E6759E7765625127932C';
wwv_flow_imp.g_varchar2_table(749) := 'A2B148A99BB88828F2636A43C8F23C390B8DF335AC09FC880F6F0FE475C05B6CB145F1C21E76FB5819965B6E39ADBDF6DADA6AABADC4AD5B2E187216C782E5B95BF2C01C221A6D4634FA18D170E54F89D3FCF9F38BE762518C601AE0BFBC77D7F40B731F';
wwv_flow_imp.g_varchar2_table(750) := '8B3C62F17A5C7CB16F582022C0C2B180C584059E9790058F5CB63FC9D51BB92AFDDE51DA243EC9827582CFC7275AD04D324CB47F9261B2422B7BC73B8E37D67576699C61EC820E0D9B3F4F433BE7DBECDEA5D17D3D1ADBDBAD0916D2936D6A5FD9426A45';
wwv_flow_imp.g_varchar2_table(751) := '9BE097B7297EACEB1DDEDFAFE679F3D534AF43A94DF5D1D5ADB050CFFB7A95BB0CA679B95CD47209E16E3D45C6C1E859B0855B0FE31E324735C8E07C76F83AD64EE3BF3D2FE89B2B2C8C2D30AD78E42E614ABA8D4C896983600D7311C049CAC24CDCB4EA';
wwv_flow_imp.g_varchar2_table(752) := '4A13F51B2A9544AD769B1C1F767BDB5A35CB26DFCE755EA7A136CBAEED33FE8D0F3A58AB7CF423AAAEB492F2E616D5ACC0F5472AE4B7ACE8345B896A721F93B9F3D5EB5DE1FC3F5EA705E75DACA9C71CAF078EFCAEA69C7396FA6FB951633BE66A9CEA6A';
wwv_flow_imp.g_varchar2_table(753) := '358D528F455352359E89FA7CAEDC9FD65125E47FCA2B4DEA6A6BD7DC15C66BD87BDFADD7EFB38756FFDC67D4F2FA0D546B6E57DDC701F48579C4DCC6E5E6F705175C205E0A73DE79E789E3B7047A9806CC43F22F83E7A700FC82545C14804D37DDB458FF';
wwv_flow_imp.g_varchar2_table(754) := '84A12369F03376E4BC22F9C1071F14EB16202DE29FCFD9885044144A057C68C71D77148F3273BCC94681977AB101E1F2343B7EC6F5B53A76D0ADA40B7D804F4F993245F06DAC1CC4317723826CE27F09447839B114BC5E1D22C14E1181FB1A80E43580E3';
wwv_flow_imp.g_varchar2_table(755) := 'BF88E2D28B45344689C7509E7AEA29B158581C118DF8A5977A6E2C1307888862A17066CE2241E052271387C577A1CF9379C9050B8538CA0011A18845C0E21D326448613DC0CCCFE333477867CFCE9F2709D0C42907504F096036D88F62F0DEF7BEB778E6';
wwv_flow_imp.g_varchar2_table(756) := '96B76B6DBBEDB6C5595D9377084C64F203D41311050E84C18F74942270E61216F130195E618CD98F748078CAE33E17F2222AFC7F2138CA966685C548BF197D87A4A73BE66B414FA73017F6F7F4A93608FABBFBD46BC1DF6D81AFFE9AA29629A9CBA543FE';
wwv_flow_imp.g_varchar2_table(757) := '27769E7925D49FD76C51E8569F8F55EA5D3DAA777429EBE856EEBA720B76CCF24DB55C2D36D13759B0A7369327ACCE90C242274D12F1E79065BC237329B1A04C8CA9FC0987D308A549AAC471F11CD08BFA70DC5E777D308D70C984FA2DF413835CB7FCC1';
wwv_flow_imp.g_varchar2_table(758) := '5B4FA4BA3B5C4B42350BED7AA45292289A53D5DA5AD4357AA4FAD75D47E3B6DB4E1B1C70A0D6F9CAFE6AFDE0D6CA5759C3827FA8325B09EA863C126A14F706AADDBDD233CFAAE7DEFB35CBE7EC8FF908E6F6AF7F4B0F1E79AC3A7EF12B0D7BF4518DEB5A';
wwv_flow_imp.g_varchar2_table(759) := 'A011B51EA97381329BFC19E3CCE3E54A14C6254F72E355531EA1BA158C05EDC3D4F3BAB53569A74F69EDDDBFA851EFDD4AF9F213554B9B9DA7EA1E258A088A6BE6CC99C5932F3C2EC673E0FC78150C96793778E718110BCB140597FD7B0E05526F58D828';
wwv_flow_imp.g_varchar2_table(760) := '6071C42CCFCB7758DF6546E8899046D9221FFC8134C6137769401AF54634E8CF3A9F3871A238F3673381F0C744CEE37D286F3CCE4B3B00F547C4D2AA7D55C7D167108C68E04E98F9C8E607E5095E48B8912A6F062479CD2E0407F9E6CE40347E78868378';
wwv_flow_imp.g_varchar2_table(761) := '5F1390BC26B07C9990648011B468AC3CFEC78EB7C5E79A2800A401655311CF3F8C118BD25834A3478F1667F09B6CB289A89FC5889993D75CB2506074B459D68D1B110B191D6510FE93274F2ECEF311FC9CEB23CC9980E46721831F8B0D97B888461D11B8';
wwv_flow_imp.g_varchar2_table(762) := 'C4E416648DA948BFD8B91F78E081C54B39502258D4D4437B45EE01E68E1FE8ECEC141A30A6437E88889BB1B43561C204BDEF7DEFD3AAABAE2AFA1B417B4191E700ADB37BCD9C9C797601644A1516448EC853754B7AD426CAA9166A5D49EAF5E4CCC56E31';
wwv_flow_imp.g_varchar2_table(763) := '69F89D370C8AC4DF8A328B5F7B8AB4C4718E55EAB88ACB465073A2C46E6261D98054A9CDE5A977AEE17A438D7AB3080BC744B8792492CB03451DC6450839D3A4A0B177BEB99506D932105AFC13CACD080660F1A47F186A98DF73555CD4B2D475505308A5';
wwv_flow_imp.g_varchar2_table(764) := 'A0E646EA46A91699F1F32EDB7E28D3ECBC954AB3BA870ED3EC0913357FE38DD4BEF34EDAE4FB47690D9FF137BF7D0BD5C68E558D4B7C867A54EC4F8B7950B1A5A33A7796EA8F3DACCEEBFFACD9179CAF47BFFD6DDD75D0419A7DD6991A7AEF9D1ADE3B4F';
wwv_flow_imp.g_varchar2_table(765) := 'C3A3A6D4D694DE05DD4AFA6D69485A947A9C220B85E992A9AEACDEA7A690AA4A556B1FA2AE49135479D7DBB4CE7E7B6B82F149D75D4FBDCD4354B3C215A69BF53385B96197E7146B80E3A53DF6D8A3380E83C172431CE1B1E45C64BE01FF9090FF838911';
wwv_flow_imp.g_varchar2_table(766) := '26FE40BF2342AC6F9EC1DF60830D4CE7461A748B08B183C502505A37EBB6869106AD231A7907AA5ACC4119271FBC88C7093FFCE10F6BE79D7716FC0DDE8025F3B8E38E131BA7628D0CAC152AA11CEE6B15C0BF04F8F5145B0150A2E087F4C95319673120';
wwv_flow_imp.g_varchar2_table(767) := '0E6A2E04AFD5D2BF58C65771207915E3F692505B5AE18828160B0B03D3234C8889BCB4BCFF2C2E228A9D3F42154D7CB3CD362BC2A9B573EAC43CC6D9266D31B1A8AF742382A028CB42468367317FED6B5F13A67ECC6E2C56A0B5B555086D0A4484880322';
wwv_flow_imp.g_varchar2_table(768) := '1A7594754AA18844833FE081128106BFCF3EFB884B8494A54DDC080B202FE2881061EA2A9521163B207FB03E70CC8092032EE0EDE8E7FF7A21280FA71B229165B0321199394EAA396E9E7D33D326759B5E79382DEACA0D0AE731E4163ACEE95C352931A4';
wwv_flow_imp.g_varchar2_table(769) := '75C9822A719A2C607CCEE2AC99C551AE50EEBFBA4B64453B9943997D9977FC72DF5C5099DBCC94583086941B6C15902D0B61415FD4475E68914B89CB400F40E1EC8ED7C0C7C101DF8B77C033755D892B712F4D07895D7EBF31A7EF89CF015012C2BD4A2B';
wwv_flow_imp.g_varchar2_table(770) := 'ADCA860ED39C51ED9A3979BC9ADFF32EADBDEFDEDAECDBDFD1DA7BEFAD841BFD2347A82F0D6516D251A980A852D3A6A9BB433163BAFA6EBF59CF5E7481EEFDF637F5F7C30ED15D279DAC057FBA566366CDD67236EFB7BBCF5C64ECEBEA53B59E6A68A5CD';
wwv_flow_imp.g_varchar2_table(771) := '02BE4935D3A6E631A95B53A999F635D3BE6689DED3D2AAD9C34669C19A6B68E5CFEDA4371CB8BF86BDF31DAA0F331E4A141ECB249532F7A73FEBD7EC39B3F5FB3FFCA1B046715F05A68A9041F1666ED62D9808E332F7002DFBFC430A448452D3194B2367';
wwv_flow_imp.g_varchar2_table(772) := 'FFA3468D12F314DA4153808BCD53A74E15BC0761267F22C2733FF75467E649115194D3C0873AA8B7B9B9B9E0375811B7DF7EFBE232339B102CA6BC379F8D133C82BA078F1BED0303D5BDEA9D7F846BD9AFABAFBE5AD0919787C96BB6E894E9A601808D14';
wwv_flow_imp.g_varchar2_table(773) := 'F598678406E8EBF52DFBF51AF924AF113C5F1634591C54C4391603CB2E9D5D08714B4231B04B463A1CE1A136D85B2C2684293B63DEF647FD000BE4FAEBAFD7DCB973C56EA79C509489089CA22C1E842BE7EBEC8E58749CFFB3182342118B80BC4B838858';
wwv_flow_imp.g_varchar2_table(774) := '5AB4689304FAD1DEDE2E5EEEC3EB39B91C483C423C22163201F2C91F70A70F1C5F700CC0654947174F21702110FC6012C42D0D9850A9C2E2402A04AD1787BF0264D1201EE972528761865750977160E79B59E0386AE09B2B8A706EA695B9AE5CB2B0F212';
wwv_flow_imp.g_varchar2_table(775) := '13F9721A714E7A8E977879E1E1BA4AB7E5141729AA10B1E1FF5A0889D30A901CE7804BB801FFC7EF383B4559BB8E24498B7F4232DE05E8857F22C2E7E299FAEB35259554A98576AE4C55FBABD60A7A6D15495ADB948F1CA5394386EAC9512355F52E7BDD';
wwv_flow_imp.g_varchar2_table(776) := '83BEAAB50E3DD067FD1F5166937B6DD830D57DFE9EBBBEAA114C2DCC93DE5EC58279CAA63EAABE3F5FA3C78E3F567FDA7B2FDDF8AD6FAAD726FF7116086367CF567B4787521F99D47A7A957BB79ED8449366561EB2D4B849FD5642EAA98584857EEE2316';
wwv_flow_imp.g_varchar2_table(777) := 'E89AB9ADDEB6215AB0DC7855DEF6766DC4532E1FFFB8925557F191C4104553B598CFB9C756265C9FF1E1E6F98F7FF4E3E25E0A1625D65A29F8996B4049B9C1FE326E99FB5C0A4444B169C0C2387AF468ADBFFEFA9E829EDF9EFBF00C001AC37B9E7CF2C9';
wwv_flow_imp.g_varchar2_table(778) := '8131C917E6296B8CF0FC756030DD59F3F032E2B06462FA67231211E2F1382C383CC2CC8E18A5CDC5FF6BBEF4B9EC4CE9870F7274CBDB010B19613AE4265BEEF5B6104C77CA4538C1F1912402F87967E25F0B90BC16907CF1382EBD44040325B1FBE7E62A';
wwv_flow_imp.g_varchar2_table(779) := '933EA211B7F412CF8D65820011512C3076E8BC3B9FCB78C4530213196FBC6331968298F812C8C74E9A05C70EFD0B5FF8426162475033F1482FF3FEAB6EEA5D42593622049E98F1BFF7BDEF89F77623C44B25807CD00206121162D7C099ED75D75D279809';
wwv_flow_imp.g_varchar2_table(780) := 'F8802B560A2E05920FA0DC7321C45FEAFF692E856589BC72FC1567C8524D61E9DB15D233DE01762A511615E5B2D9DA266C617A2EA0A224075225164EA905156EE67C352FB47A8472B711B9DB70E561900137B19B584B485C46C52757E45271D9CE8BB651';
wwv_flow_imp.g_varchar2_table(781) := 'D211CA9C9AB95826140BA0B04638F6F9BE941A0CCF976F69F1B6A82BF34EBA6EE877DFF35A4D5547A6B644547C665F193A42B3BD039B376905ADB0DDB6DAFCDB5FD7FA471CAEA11FFA80FA579AA41E6EF44118B3A100001000494441545BD8A69128EDEF';
wwv_flow_imp.g_varchar2_table(782) := '57A5B74F49A70F5466CED2AC9B6ED4E3E79CA57BBD2BBF65FFFD35EFDC0B34E9BE87B4F69C4E2DCF0F03CD9EAFA4A74F32DDB2A666F537B52833BD9B6BA92AC621F340F5546AEAACD81E51AD9B5E75B5FA18A5A53A547D957669A5D5B5F2A776D41B0E3B';
wwv_flow_imp.g_varchar2_table(783) := '4CCD5BFE9FFA478E517FC5470591CADAA6D2C4656CC19939EB595DF9CBAB74D0570FD2D1471D2D9E82616E6142CE4DFB976B7EEB7FF003FDE8360A008A3CB7F3CB38E2A13396478416E7F584895F1A500E888822197EC19A5E69A595B4DD76DB09659FB8';
wwv_flow_imp.g_varchar2_table(784) := 'B9DEC4C0CB3087633165FCA897B245C1FFC27FD0813EA2E8C0FFB076D0CDCCFF32E55E378BC051928F09732C890E14C23F69D0D4C157FD3779D563F80A208880665023C21B1CD8F90B6F24A25106010E8C1F3F5EECFE11B04C1CB4450427E79E08D272A1';
wwv_flow_imp.g_varchar2_table(785) := '0C7623422C6294069E1AD876DB6D3564C8900217E223E28523F43C39CBF6CA64701B3A74A8D0EE3FCEEECD4214A14E7C9987054F98C98F1F0BC095575E29163E61F04509209D7C11CFC533735CDDD1B562A134968C3B260717429A48FD6E7476DEAF6E4B';
wwv_flow_imp.g_varchar2_table(786) := 'E6DC65722B02B95CD0F1B961F03777741167D7D45762337778190208ECDCC22BB7F0C92D843243E3025D2676B275D79F19720375524F6E648803EAC62573BDB431D03CD95E114019A4FD966A93520BF19A1BCE870C53F7A8B1BABF52D1B44913357E87ED';
wwv_flow_imp.g_varchar2_table(787) := 'B5FE77BFA9895FDD4BEDEFDA52D5F1ABAAD2344A95B4D5E67DA3E59D7ECAC5480BFF6CEA34CDBDFC0ADD7DE821BA73AF3DF4E409C72BBFF166B53F35432DF33A145DFDB28E21DECB5F73FD79128A7ACD8A438F9A7DE6DF54EF7785756536F3E7D1EF11E8';
wwv_flow_imp.g_varchar2_table(788) := '576B56574B7FA8B93254F3D2363D3E6C842AEFDB4A6B1F7EA096DBE533AA4E5E45752B0F152B11499AAA3FABC90555B5FFFE3BEFD2B70FFF860EFCDA81BAFEC6BF8B63844E5B1C30213367989311E136977D5F2C05A01D6570E115DCE9C10A4038228ABB';
wwv_flow_imp.g_varchar2_table(789) := '3BD099B78D4E9B36CDE35E5349F3320FE54B8808458497665E445127F3930BC8BCCB8470448817FD5C7EF9E5C5A37E89790699A90FF7BF0D2242F4111E8EF0877E3C1185C558FE44844C34730F159FC4A40B1F9785853FBF9869822B719ED7127D92A227';
wwv_flow_imp.g_varchar2_table(790) := 'FF65FF9EAF3B111E4027728EC5A032E10147BDE82F9A308050E4963C1387BA78B31EEFFBC754463A930118DC007949A3ECA73FFD69718720A281DBE07C2F873F223C67A3A88A766993458E864F38A2911611027F7005F063FEE7ECEFDE7BEF150A007715';
wwv_flow_imp.g_varchar2_table(791) := '50762887F25354BA947F5E172A04AEABF6B7C8912B6445B9F0F3521B44CF9C5ABFFABC2B542EEF381BA0818FA3885E08969502C2929ADD7D28516E9C892B8132657B12625E6A54ACC667616238D5104CFF01C8ED02C6B39179D07F97CB9F0796967D50C9';
wwv_flow_imp.g_varchar2_table(792) := 'C5BCD00D1CEB6E3D6F6A528777FBD3DB5AD5F9BAB5B4CAE73FA78DBF7184267DE94B6A7FD3264AC64F54CDCA415EAD164C3AFAFAD5D4DDA5A6A79F2EDEC1FFD071C7E9F66F7C43771F7FBC3AAFFEBD464E99AAE133662A7D7696525B050A25C138679544';
wwv_flow_imp.g_varchar2_table(793) := '35B757B7D29418D98A214C7327490934309D2213A4B0BD45D5BCAA9A958D9943DAD5BDEEDA5AF1B33B68AD3D7653DB5B36573A76B4F2D626290D655830FAEB4A9344B366CFD1D9E79EAF6F7CE33BFAF555BFD1CC676768C182B9EA58B0C02D4BF49BF903';
wwv_flow_imp.g_varchar2_table(794) := '2C46906581174581D262C78DFCCD37DFBC380E80A61151D0984BBB98E9D97810AF7FF0618D931C11455994078E22B9E743FDAC7F7824F798B80B845084A72114F55FFC29E94217E93316AC5B6FBD550BE62F5042A41770146B484ACC147894B8BFB3475E';
wwv_flow_imp.g_varchar2_table(795) := '42929581DCCA00D95E2B50F4E9B582ECCB8127829797FF30B08307FB85D64D998828160D3BEA95575E5993274F161FEA460160C24484582CE4270DC00F338C88E2463D97F35EFFFAD71775110F90EFE580882804076D525FE9C244301DF2D220167D4414';
wwv_flow_imp.g_varchar2_table(796) := 'EDCB1FF200F6163B8896969642F3E787326008DC57E0F8003F799606C102B18021CDDE4200C86DE46181CD12B2DB6F4DA0DF89732C447AED4604298A466EF109FE19BCC60AC19F39821D7B38172027586CD9A1149034521C1F864249B0EB0CE802AEC95F';
wwv_flow_imp.g_varchar2_table(797) := 'B725E7CA0D729BF801EA0358D0916BE01376013B451CFF4A70DCC0B78819C85644D95F365B84FD8F3CE09EA58992B636757837FE68AD579DABACA875BFB88B5E77C8015A79B75DD4FECE2D149E4FFD08FEACA254A1C4168DA4BF4BF9E38FE889CB2ED5F5';
wwv_flow_imp.g_varchar2_table(798) := '5F3F5C371E71B8E69F778E5AAEBB56A31E7D4C6D33672BB579BF62D34BCAB97E2D53E2FE858573AECCFDAF2BB1021030A7DCC1A462EB485575D2E9B07196DBCA92AABAAAAD7A3812259B6DA2F5BEB68F267DEED36A7AFDEBA4E1C354979427B9BCD9F78E';
wwv_flow_imp.g_varchar2_table(799) := '3F54ADA6BAEBF63B74F08187E898634FD07537FC554FCF98A1DEDE1E65407F5FB106580725B88A65DF7F9102B9D7153C66F8F0E1C5855EC21121D623EB9A336BF84F29A8CBF4C4E35C36B934C500659EBCEF7EF7BBC54BC4381EA44E843F2F06A34D803C';
wwv_flow_imp.g_varchar2_table(800) := '653DFF8D2EFD034A1AD1E75E5BDCAEBDF65ACD9A3953F2DA917997196BA3FBA6EBAC6766E88E6BAED5BC071F128A75B1CE3C4EB9D7530964668901F881DCFF8046A50D9FA3167ECB18CA000B138C04FC6551F8A5F9929756FCD558FAF971820971198973';
wwv_flow_imp.g_varchar2_table(801) := '2D067AF0C278FE524B4FA1ECA449938A85C8E22317029533388E17D0C2892B212214116271214811FC5B6FBD757114405D11215CBD8C9F88469B110D97AAE937E63D7610DC09809994ED421FA0CC475EEE4A709C8135807EF278103B04D2C83718A20830';
wwv_flow_imp.g_varchar2_table(802) := '750DFE122C262BFE9CD3B39CE92B7B558F44B36D3E9EEF989A459DD78C7DCE6301232A7299283CD4D2805209A016164E383A8A7C6AE4746379E10BD7A5E253A4E7F2E2D4C027770E831B64C10E86A24ED711B6042C062ED940CBE53400CE27F7214B682B';
wwv_flow_imp.g_varchar2_table(803) := '57421E037401CF7A84E0156126915A5066D5445D3EFBEFF0CEBAB2E11BB5DA5E7B69BDEF7E476377DA4943377FABD2C9AB291B3A5C99EB4C53D797752B99F6A8FA7E7795A61FFD03DD77D0217AFAF813957AB7DF72DF7D4AA74D57327B9ECDF97D3EC337';
wwv_flow_imp.g_varchar2_table(804) := '4E795D617A56DCA89B56DDB8D48D2BDFC471C5D3078ECB0D75F7BD9E1B3FE35E8BBA2ACA1449AA794D1575ADBDAA56DB7D57ADB9EF5E1AF6AEFF5375D22A5273AB4C34E56EA35EAB7BF79FEB89694FEA9CB3CFD6115F3F42575DF92B3DFCE0039A337B96';
wwv_flow_imp.g_varchar2_table(805) := '7AFA7AD5EF63062C0E8C13F3099A0C062DFBFC4B1448AD79C173B0C261FEA712E88B0B70F60F0F427001C40DA63BFE327F04AB871C2A78108FFABEE73DEF11560014FFD9B3678B7735F02C3CB928477980F07F33D057FA871254B1B2FEA76BFEA4C71E9F';
wwv_flow_imp.g_varchar2_table(806) := 'A25A7F26C11B5854918B35D1EA9556BDFF1E3DFC831FA8FBB75729663D2BEEF6D49D0C1F7009AF1B07BCE6ECA188E4FF39F4F71084EB0172E20CF227777CEE74E2943BE08A9C8D14B191C89529F79F235EF217BEF5922B792D55C0AD7C0698C51461E21A';
wwv_flow_imp.g_varchar2_table(807) := 'F988866BEF0BFA4684C7321726F1F1E3C717652242087DAC0B2C3E264F4428228A74164E44C34F1916316E9138E85F4423CFA0A87FD91B110BDB8F58E447E08F1831422C782E1E36DB141D118BB503BE3013CEFF3953E4563134E3F5C4EBADB75EC13422';
wwv_flow_imp.g_varchar2_table(808) := '6261FD456187BD4296323573270F000B8190F37A9FA86E6B03FDE152804B0E9ED88D49EFCC03DFA585892B6120DB628EAB15B058E43F0AD896971BB2027265C6B301C6B12CE73E84320BDCBA414ABCA3F63F21F47384AACFD653D5D4DCD6A45E0BFE27DC';
wwv_flow_imp.g_varchar2_table(809) := 'C759CB8D53FB96EFD2C42FECAAC9FBECA3553FBFABC679C7954F98A02C0DF178631365E65988FEF5063DF2C31FEAF6A37EA07B8F3F594F9F7791FA7E7FAD5A1F785823E72E50BB4DEFD5BA54F74EBFEE1D7FB88798F673D3AFC0C1E1249352E7417191FB';
wwv_flow_imp.g_varchar2_table(810) := '50375EFD0E702E9FA4892AC6292CCC9B7C96DFD1DCA2A786B5ABFD1D5BD812B1ABD6D875170D7BD346EA6F6D93048B00EC4B532D58D0A1DFFFFE0F3AEAA8EFEBC4934ED21FFFF427CDB6E0EFEFEB313E1CEC80C5205AB98665DF974E8188F03086C68E1D';
wwv_flow_imp.g_varchar2_table(811) := '2BAC704D3E42A2D688B045262DF811B7F5FBFAFAB4E487B55CC6E18F8822C87A4EACA06201D878E38DC5AD7FEA258E63525E2454ABD50ABE46B912281CD1A803FF7F13D0C7B23FF823424F3FF5B4A64E9BA65E2BB7269790C94066C6D3DED6A2F15E57B3';
wwv_flow_imp.g_varchar2_table(812) := 'AEFE8DEE3DED344DBFE452A50F3DACB4D6A7B0222C2BCD3557C851A7F570FBA4807778FDB14AB24648014F01940FF293C33088D46E4A40B89C5E864F6365BF0C15BD5AAAF8677860D241B0A104947919E8D2FF42DC080FA14DAA2C1676D0948908B1F830';
wwv_flow_imp.g_varchar2_table(813) := 'C1111FD1C853A64544B150699B5DF4BAEBAE2B3E4BE2F16271A18E1703115164679173910825060610118A8822ADFCC7E2A74FEC061E7FFCF1221AEB45C9802216E58F084FDD228B16C536C2CFFFDF34CBEA167BD6682DA0CA82F940015C6020582697C1';
wwv_flow_imp.g_varchar2_table(814) := '57C0CD9579756536BBE7DE197B05AB00F1F152C91333DAB277B9F1C9E5CD7AB120EBEE3DBBE93C952ACD55D5BCEB7FD60C62EEB8311AB2C5DB34E1333B6BD2EE5FD60A9FDD59C3B67CA734718272B715FD3DAA74CC55F2E8039AF59B2BF5E0E9A7E9C163';
wwv_flow_imp.g_varchar2_table(815) := '8FD7B3A79DA9F9975EA98EBFDFAA983E4343FAFAD58C09BFDF42B6BF66B15CB61D45FBAECA1824AA998E8E5125331EE63891CB7D0AD5AC64D41229B75BCC3917C8D38AE645451D9356D2D88F7D4C9377DB4DE33FB08DD2092BA9965415AE31B355813959';
wwv_flow_imp.g_varchar2_table(816) := 'B7A2F1F8942774C92597E8F8E38FD745175D240444B99EEAE026D76F26467E37EB50492B7B977D5F120510D6D095DD394FE25019E318D1A0314F59700480A58E78D29F0FA887345C7815756FB4D146C5A3BE118DFA780CF871AF79D26A5602C81FD148C3';
wwv_flow_imp.g_varchar2_table(817) := '4F59DCFF46A06F250DE17FF4F1B1C71E5147C77C85D710612F2F8B71CFF296AADA468FD4B06A459D77DEA529E79EAFFB4E3D5D9D7FBF41E99C5956046AE61959B1394009CFBDA664E19F1810FA995719108E0FD7E81524201CC6B53620B39D620DCB7923';
wwv_flow_imp.g_varchar2_table(818) := '0B15A097E733D09D97A7B2577B2D115168B30C2A83FCAFE21BE14130B07BE6451CD4437D08F73973E68845CA04228E34842D2EE6A46AB52A2EE2716FA04C8F089255868BC02BF8AF6C077322A63FF08B68E040B311A1084FC101668E1580F72690461F60';
wwv_flow_imp.g_varchar2_table(819) := '40F423A29187F80897C1F322A1D702A62F722F9046417B1B1EC580ABC257864A57AFC027774B4058BDC7645EB192D7805C6926A7B25C522FCD4A0161E10943A8E7FD5EBA7DB23C55BD92687EA5AACEF113D4F2D6B76B854FEFA875F6DA53AB7C66670DD9';
wwv_flow_imp.g_varchar2_table(820) := 'FC2DCAC72FAFBCB949CA6BAACF9EA1B9B7DEA8A9175FACA9A7FC50D38F3949334EFB89BA7FF7470D797C8AC676766894CFF65B7D0E299FA9D77DA66E8A5B914C8C8BF1C981DCCA805DA95004C03D8A7837E15CEE8A7133DBF1584601526625A1D7F3B073';
wwv_flow_imp.g_varchar2_table(821) := 'F4086983F5B5C2A7B6D7DABB7C4E6D6F799B7A478D515F61D1481589DB716573E7CCD6357FBC56A79E729A4E3FFDF4E2D1501E7165BE33CFDDF4C26FEE36160696795E360AB046535B60468C1851FCD0177406680097479B59A31D1D1DFF948F4484E750';
wwv_flow_imp.g_varchar2_table(822) := '2A3EF02A9E6062F70F3F8B08C1C350EEB827550A7FF2FE2F40845798E73034A5BFCC712CA48F3EF288383A26CE04F6FA37CFF27F3555948C1AA16123876BAC857AE5810735E3E757E8B1D3CFD013975EA6FA430FA9C96BD74B840C6DDD00001000494441';
wwv_flow_imp.g_varchar2_table(823) := '544999EB2E2C7476E5851996EC092EEB34F1BA0C831BF0F22546E1FAA45C59014E70AC282BE348F0650037FB32D4F2AAA9E21F2312D1500098D40C70442822FE71A1A5A4B2182B3E1BE21220405D30428E17583C98FF892B8B96FE8810E530E3A104904E';
wwv_flow_imp.g_varchar2_table(824) := '5D110D1C22E25FC2877A5E2CC04CC01D4B4444A3DD8858AC9A084F342F86993367EAC1811F1541F0730C40F9B25F141AEC27FC42A1D716803E26384D33F3ED0FB729C2C0404596435E100E1479ECBE025F9A0B2FC8C40B333524F6136611E6E1855880C4';
wwv_flow_imp.g_varchar2_table(825) := '42CE94980F502257A4B9EA4DA93A2CD87B961BAFE64DDEAC313BECAC75F73B40AB7DF14B6ADFE21DCA971F2F57A764DE5CE9E18735FF0F7FD2941FFE448F1D7BA29E3CF1543D75FE45CA6EBC4DA366CED1289B719BBCD34F6C724CEB7D6EC946C4D41DAE';
wwv_flow_imp.g_varchar2_table(826) := '44A12865DED91795398A6FCE3F43A24C159B1C65B7669CFA5DA66E1413D3B3C93BF4A68C40459DAD6D9A376EAC8F24DEA9D5F6FC9256DD710725ABAFA6FE9616D59354E1B99DA489FA8D07A6E08BACA07CDF679CE79D7BAEEEBFEFBEC2D2C51A2A1569C6';
wwv_flow_imp.g_varchar2_table(827) := 'BE84885044181B993E25664570D9BF974081344D8B5FE6837700D03B41AAB84EF80DC77428EA082C472D1C03FC4B42442C4CA72C9B18947A78137911FE00D6042C3CC401B4890B4404CE7F25D0CF8846FF326F02DA86B4E959F3401E6995A7344213DEE0';
wwv_flow_imp.g_varchar2_table(828) := '65654B5945F9D0A1CADADB9498970DB5923E6EDE02F5FDEE1A3DE4E3BBC7CF3E473DB7DCA2EADCB9DE44D45D3C548BD4E592C2CFFD1C20332533B70978701C6A7CC1C26CC701F88F443AE08897E54B5F5E968A5E0B954484605C0C6A448805140189F5A2';
wwv_flow_imp.g_varchar2_table(829) := '3E11210421E670B443161175B26030970F5E3454CC84C2255F4408C1CB453CE222A26094E48978F1B850C78B01DA213F8B9D3EACEBA308DCC1B420CF6040A9292F024644C188221AB846345CEA74470AE785FEF35A52BF174D4D99108E945B589B3DA4CB';
wwv_flow_imp.g_varchar2_table(830) := '2EF1C0202FC15704522312860CB1CB424D13EF887343A6CC66802CA9293744E1CFD59384BA870E537DD5D5946FBC89DA3FF231AD7FD04116AC7BAAB2D926EA1F3B5AAAD7954F9DAEEE9B6ED6CC5FFC42D3CE38438F1E79B4A67EFF44F5DACCBF9CD34676';
wwv_flow_imp.g_varchar2_table(831) := '75A9D9C2BB6E8B48AF21330E91A492EBCF8C035037ADB3CC8C006E61C2388BB29069971720658EAD2B4BEAEA4F733399CC4392A962E15F71C67A5255F7F091EA5B6B2D0DDDFA835AE38BBB69E4073E209BA4C4CB81AAA668B3771D4D76E7CC9AA93F5F77';
wwv_flow_imp.g_varchar2_table(832) := '9D4E3EF9141D7DCCB1FAD39FFFA4F95D0B7C0EDA27E67766C638788EB888228C8C3DC4DBF99FFD4634E810D1705F0E42A45600E0195CFEC385FE891500680D5F61F70F6FA32DE2709F0FC88FA21011C558F29A6F9400CA512FEFFF40F1A3FE88A5F781BC';
wwv_flow_imp.g_varchar2_table(833) := 'CF57FF6B39BEEC176E44087A0073E7CE2BACC732392242699E28AD3B202B002D43D4D7D6AE1E497D1C9778C73FA6AB474D0F3EACC77F7AB11E39ED0CCDBCEAD7D2635354E9EE9197B0FA5D51CDC5739709AFA5C48BB9042F66C75A34BB9D5CB912808C76';
wwv_flow_imp.g_varchar2_table(834) := '69B2EEA422E85C2FF5EBAA5E6A15AF9EF22F041306B3CCC72097FE17E34644B1932F052765A98B4B8073ADE9B1B808130F947E16284A038B18014C3C409E8830B3F670E72FD7D052EB73212214110B134ACD3F6251DCC2447B2242F4877EC1F81D557CC1';
wwv_flow_imp.g_varchar2_table(835) := '3B62F132FF0AE6750B1C8B29192983E439EE7F8BEA2DEB2426CA8073BC52DF5C75D523B3F0CCC57BF66B5E21991B0E0BE78A056C9A64522AD5AAA18E21CD5A3061A2EA9B6CA6E11FFF84DE70D0217ADDDE7B29DDF88D528B0B76CC51F6D07D9AFBDBDFE8';
wwv_flow_imp.g_varchar2_table(836) := 'C91F9FA3878F3A51F71E79AC1E3BEB7CD5EFBA53E3A3AE512D15D57BBA644EACA4A7574DFD75357BC9471AAA430CE68339465ECFBDC30855CD70AA912A4C00C88165C2BCC3397359C61B7033A7D7955AB9AAB87C5EA9AAA3B555B37C56996DB881D6D86D';
wwv_flow_imp.g_varchar2_table(837) := '57BD013CD77BBDFBD1A27AD224B9924499EAB51EDD79E7ADFAC94F7EAC6F7CFDEB3AEB276769FA53D39D1CEAECEAD6E071C76F348A6F44146983E38A84FFA17F11A1882836167A9E4F44234FC43F76972C1E11C5C55B843F66FB8845F446A063A12BD727';
wwv_flow_imp.g_varchar2_table(838) := '63002C5947198E68B4CDE685BA78F61F0520C263DCD9A9DB6FBF5D8F3FFE78D197C1FCB22CFFBFE29634ECB1D09EF1F40C2DF0F18A27B9BB1F428A5714AAA455E55E3FFD6993EA5EA7956A45499AA8BBBF5BA39BAA1A356F9E9EFDF56FF4C07127EAF1B3';
wwv_flow_imp.g_varchar2_table(839) := 'CF55F72DB7A93A679EAA5ECF583A1B6B56B66E86CC76542801447A3D661E0F2057EE9672A7399F5EDE4FF2F256F7EAAF2DB1D61C1105A20C3050045EC4BFB20C75A19923CC298E4994630004267900E28188504488333C4C78948D0892FEED10D1683722';
wwv_flow_imp.g_varchar2_table(840) := '8AFB0AF421A2C15096864C44082643BF48C78FBB244434EA5D32FE1F852D9F3CBD9D63A1C7FE41DFC8A502F4EFF8E4C52246299177DEC18AACD7D4EC6EB5B87914B8BE6AB37A468DD2EC7163D4F9BAB535FE131FD71B0F3850ABECF625356DF006D57DB6';
wwv_flow_imp.g_varchar2_table(841) := 'DE3F778E7A1E7A405DBFFF9DA61E77BC6EB662F0D049A7AAFF9A3F6BEC134F6B85AE5E0DEBE951BDBB4BBDF57EF5BBAD7A240AFFA56E27654700E452648E35244A94E6A9922C29E272E7358F10D0604AF22794514F26556046C4B434AB3E66B43A565E49';
wwv_flow_imp.g_varchar2_table(842) := '6D5BBE531BEEB78FC67EF4C3AA8F5B4EBD9566C979EBFD99CDFAFD9A3973966EB8E1AFDA73AFBD74C08107E8F6DB6F53BF8F21FAAC98D4FABC6709B929B3238F5539B79774DDE4FFE43722C43A923FAC8F0813CBFE88106B9DB42581F88850C4E2403C10';
wwv_flow_imp.g_varchar2_table(843) := 'D188973F659DCDCDCDC5E623C263ED3902FD11FCF7DF7FBFE03D2F56604784E047250FE31D025831FB7CFC030E6EFA7FF60B6DE97C7F7F4D7366CF2D001E989B6699999257823C788A6A932A2DADCAACBC275E777948F54AAAF0A6A1B5BB5B13BC7EDA1F';
wwv_flow_imp.g_varchar2_table(844) := '7A580FFDE8C7BAFBD8E3B4E08F7F92AC5457BA3B5DBE2E2EE8D65D1F75898FD7A4727B5C51AE28BC280B40E2B5E7EA9DF8F27C9397A79A57432D2F0C872577EDE520BFB0D28D5C9401586CB88DD806738C08452C82C1E91151BC0780455C96F94FBA2C70';
wwv_flow_imp.g_varchar2_table(845) := '009A4434705E1A3E1121FA0A73A03F301CDCC179090383E35E909F89EF499D7BE1C82E653CEF8B498F3FF867C8813260FF2BF30D455A3123AF2A8C4F9377D06D96904D66B4499A4A369F772F3F413DEBBF412B7C6E576DF2BDEF69D57DF656BCF10D02E7';
wwv_flow_imp.g_varchar2_table(846) := 'DE1933D4F9D7BFE9C9337EA4070E3A54B71F7088E65E7CA9264C7B522BF7756B547F975243DEDFA3C4A6C226847A54BCD3AFA82F49D557092B03B0955CECDCD34C0A2A76BE3048213E44410FCF38A7E7560C008732A7D653974D6D2948959931CD6B6DD1';
wwv_flow_imp.g_varchar2_table(847) := 'FC55276BD24E9FD4065FDB57E163899EE616D5ABADCE97A852CBD46F65E4FEFB1FD409279FA6AF1D70B0EEBEFB1E35B7B414CFF3F34C3FE3126E30EA5AF6791E0A30F75923A9E7096BAAA9A9A9F8FD8DE1C3870BA51F18397264E1C765C7CDFB3400C2A4';
wwv_flow_imp.g_varchar2_table(848) := '9377A8CF939B2DE401EA606D02081EEA250F28D016611403043F4774086DE2497F2140592C00B44D5DE0CE25C2727DD3A71752CF7F6B9E88F0D4F7A6A05657AF4DFA339F9DA9CE9E6E9BEF73D5122F085BE9BC00953457D434B45D6692AAB84C627E115E';
wwv_flow_imp.g_varchar2_table(849) := '8B997948EA70DADBA7E15D9D9A346FAEF23F5FA707BEFF7D4DF5D15ADFED77481D9DDE74D4D5A39A7A5D278A00EB5B7589F556ACBB81752FE5F695A097E593BC2CB5BC462A6142B3B098E8F8817F157576832C3CCCFED4415D2C541654622B0371254444';
wwv_flow_imp.g_varchar2_table(850) := 'E165C15106415A44FC07FF816F44D8F2DC5B4CF27F864AE6490D13C25DC02B5E0784F53F2BF7CFD2530B36CF7BAF2326F6FFB3F725009654E5D5E754BDF77A9FE99961DFF74510100D2E5196E86F544488A0891A151510250B1A35B8A3310141DCA2B890';
wwv_flow_imp.g_varchar2_table(851) := '18700F2AA2C61D15C5250610640751F66D80D9A7B7F75ED57FCEADAEEED73D6F667A9801A6FBDDEAFADEBDF7BBFBA97BEFF7DDA5AA155A50E5324C32C22D961ABE9B7F703EAA3FF4DE9ED6F8332DD10DAB8E2B7B7BB162871D70CBD65B61F1930EC2AE27';
wwv_flow_imp.g_varchar2_table(852) := '9D8867BCFF74EC7EC2EBD0BDEFDE5ABE1F4643B3AF955FBF08D79CF60EFCFCEFFE11B7FDFBA750BBFA7ACC5FB2125DFE1EBF66CFABB3110C6154834713B970071348B700EB3992B10CB52660810FD5B491E8B92429C6D244030DE13D3FEFFD69210099C0';
wwv_flow_imp.g_varchar2_table(853) := 'CA98298D0C400E3945545209C8141A73D0D06C64D9E002DCB3D556A81C7104F67DCB9BB1D36B8F0776DB0D756D07D4920ABC4200AD6EAC1C5D89EFFFF80738ED1D6FC7273FFEEFB8F9869B30B46A186323753484410E2A1FA5ADE7244BBCD7820049907A';
wwv_flow_imp.g_varchar2_table(854) := '0EEA27FDFDFDE17F7BECB3CF3E38F2C823F19297BC04C71D775C20DB4DC71E7B2C5EF4A217E1A8A38EC20B5FF8423CFFF9CF87BFCBF1EC673F3BFC231E7F6BC327F37750DBF30CDD4A82DFDAB13BD1F852522A85C382DFB376CFE2CD278BB2ACA5A853D8';
wwv_flow_imp.g_varchar2_table(855) := '2EAB9511A74312CB962D43393EB9AF4F09DC210E92536AEA733910ABDE185597A96B74A0284126E96C4ABA6B48E60F4888AB6F6B9E90AB5F7635725435963473A2A1D5009FEB494647B0706404DD7FFC23FEF8A52FE3B71FFA30566A7BA0A68943AF140B';
wwv_flow_imp.g_varchar2_table(856) := '7FF173AC390AF77165E02C91E698D2F3E484AFD2B47D6328D998C8B32DAE859E15006BD66EF0EE2C8FB40EEE74EE2C7E1DCA69900C1ABFDFAB77BACECB64BF56F2495DBFB26305A295FF58DACB72D974F9ADF1BBB3DBBDB6729084EB6525C0DF1C6FFA60';
wwv_flow_imp.g_varchar2_table(857) := '9B04245A2EB6D8676A4D99486B4ED4C81D9B2009E8C6B4CB0D5E7D09EDFCB0892EE79149F5CE5225D8D78BC6A22DB174FB1DB16CFF27629F53DF84A7FDDBBF61ABBF7E29E08F3F2D7E0043975E8ADB3EF909FCFAAD6FC52FDFF701347EFE4BECB27C05B6';
wwv_flow_imp.g_varchar2_table(858) := '5627CF1F7A0889F6CCABC249C3439891271A103436E8CE24A89593F14B888A0608229312D454F59ACA7CF22EF6F873C571E92689E22481107E9B120A63A9EC7D552CE9AE62D90EDB63D797BF0CFB69397FFE339F856C601E1A5595C420361A181D1BC1D5';
wwv_flow_imp.g_varchar2_table(859) := 'D7FD1E679C7926DEF39E77E3FF7EFB6B64591DF5E618EAF2CFA449E45A1D50B1426172E5A28714ECF1674D04DC774CDD5A39F11863417EB6667AA63385B1FF0BA74DD319679C019BF6339D73CE39F8C8473E828F7EF4A338F7DC73C33716FCFF44BEFFFD';
wwv_flow_imp.g_varchar2_table(860) := 'EFE3673FFB5978EDD2FF60CC7E871D76D844E61E439C6726A5C3A61500522D43EDCAEE89806BB178C2E2F16A707010EEDB0E6645C2AB004ED3645EA793B1CC2B39DC3772F5E754BD34553F62A6FE263351BFAAF4F7624C2B8699F017DBA3089A7E0E764B';
wwv_flow_imp.g_varchar2_table(861) := '31675A432AE53BD396405513A8AD57AF427EC595B8EAEC8FE0CE8F7F0AD98D7F4275B594038D7D4D259CB9BF49C130F6EEF5CA1281C20FC32F36C1D5710A801BBD3B4A2ACD99E42386D09DC31FDF70677122EE40EE4CD6D49DBEDDE464FA2435D0578276';
wwv_flow_imp.g_varchar2_table(862) := 'ED53F55620C8497FA7F158911B34490DF819AC90940349BBFC49829C242B0B0F49B8B58DA370EDD25817CF4B66269250460A4A11D4FC43B397500CCEC99FC0F6CF4CA988AA7E8A4C49DB74EAE55E9A5331DF8454DDA1BF07437DDDB85F5A7DEDCFFE0C4F';
wwv_flow_imp.g_varchar2_table(863) := '7ED39B71C87BDF871DFEE615E8DD79578CDE733F6E3CFFF3F8E95BDE862B4E7F1F567EE5AB5878F5D5D8E5E187B170E52A5456AF46DE18431E3A6F26459EA829D36A9DA83618347AE42A01893C652853336F2057A787481CCDE8B33043F7B708088F358D';
wwv_flow_imp.g_varchar2_table(864) := 'EA000010004944415405460696A441856295045D2E7B5D8AC4684F0D4BFABBD17BC89370E0DFBF01BBBCF67824071D88A17983184B3400B91CCD0C4B35E338FF4B9FC71BFFE1EFF185F3BF887BEEB853B3FE955835B40A23DA9E7079543CE549381F6501';
wwv_flow_imp.g_varchar2_table(865) := 'EB2E6150B223D21A08900CFDDB33EAA73DED6938F5D453C377F53D7BB780F5D2BDC96344495EEE37CF63860F063B6C497E4D78BBEDB68367FC3BEDB493166F76C3CE3BEF0CA7EFB1C77D3891D2075D76CB0842DCE39AEDEB22C7258BF2F66A85AB5B4A4B';
wwv_flow_imp.g_varchar2_table(866) := '9996C733F771A7E970EB4AA763FC08ADC23531EAD9B984BCEB4DF5A5449D229556CCA482A4E62D33F7EB145902ADB4294E0AF55A288478FAADAB47E569225B135DC3ABB148AB2D83B7FE114B2FFA362EFFC087307CE9AF81A52B90D4C7D0D098D0503AEE';
wwv_flow_imp.g_varchar2_table(867) := 'DBEAEE611480E2530EAFFA61135DCA6213A5344B9271877327F1D2BD67B12437B8E49E0527EA7C4EC74A8013B0DD9DC95FF97367268B7449C27ED055ABD5C272BB85AEE3B98399E4156EDBC9225E603C4A3F2443393CFBFFF9CF7F0E2FF93534EB73FEED';
wwv_flow_imp.g_varchar2_table(868) := 'B2F460E0B21B3B2B2F9E8D781BC0FCD638AD76D782EA24507387F233712271D924B0ECDD5F4B506313B9A86CEC0CE134E7A45A7BE1081C377C955C76F35B08B28BEC470BC82C03F20C8E4AFD66CAC82E77A8A6D2B4C2D19541CBEE8AA772D45586ACA70B';
wwv_flow_imp.g_varchar2_table(869) := 'F59E1EDC373088C6D39F89FDDFF96EECF9BEF761E0D947A0BB5241FD273FC11DEF391D37FFE3A9587DDE7F60E09A6BD073EF7D481F7808E98A21A4DA27846607217F279BE54178AA16DADDCBD054E173E59D686E4066F0325FAEBCA1F225C228D5A8C13C';
wwv_flow_imp.g_varchar2_table(870) := '452E952167D12D098434140DAA900848984A4148E54C90AB5E521D805A0AD6AA58BE706BCCFF9B5763B7B79D8685473E0FDC7E6BA09A4899C8906AE01A1E1AC2AFFEF7D778F35BFF09676B35E3CE3FFD090F3EFC60B1AFA9D9BE0F03E65ABAF4A895093F';
wwv_flow_imp.g_varchar2_table(871) := '955256FDE64D485B14E588979EC178DFF7184012EEDF9EF55B78FB5FE9BEE73DEFC141071D040B788771BF68472441B6278C5F24E1343CA930D95E1249F82AC7319B26FB93859FFDA71339E96765C4715C3E87F3D8E6B1C07672329CDD9D422516936686';
wwv_flow_imp.g_varchar2_table(872) := '44FDB93E3A0ABFB69C0908F76726B2B86F58E10791B306754AD91AEAEFC22E4D401299C3A813E789FA129B48D4AB2A1A2FAADA1AAC6AB530B9EF1E74FDE6325CF52F1FC0BD9FFA0FF0A65B506D8EA0C90C0D25D3741AB0C5F9290B19B01B1B7F251B9FC4';
wwv_flow_imp.g_varchar2_table(873) := 'EC498164D0A02DA0DD61F33C7F4485773CD3326970FEF4AF13B1DBAB0B83839A6D8D6906389EB6F9A5A07447B3E2E18F7694AFD938AEC9E148AAFD3CB232398D9992F3B2966F45C41FFCF0C042B6CFDB65B7BF67291EE8BCFC7FDF7DF721D12048AA514E';
wwv_flow_imp.g_varchar2_table(874) := 'CBB4B5F4937685131EFA0DAD976EBCEA50A90274314105B24044E80A3F219C1C536E855048FB8B24FC5092D2B39F3B66A632352558335153AD7B4C820C29A16C90CAEECE37820686BB88ACBF0FCDAE7E2C4D7AB078EBAD517BD1F3F0A4F7BC0D4FF8C793';
wwv_flow_imp.g_varchar2_table(875) := 'B1D5530F46E38EDB70D3E7BF80DFFEEBBFE2BA8F7D0CCBB5245BD51E79FFFD0F6260E92AF4AD1A43A59E81AA8B31CDE1520092F560610D9C4CB5B0D3E4CE6C3351D9BDE79F0A17AF46B8C26221949F8007182B0C54DD24DE35681039893A7264AA57AAFA';
wwv_flow_imp.g_varchar2_table(876) := '39DDA66670F7F77663E8C02760BF935F873DFFF66FD177C001C8E60FA29EA42A0BD1A578B7DE7433BCDCFCCE77BF1B3F963273AF949715CB964B67698A32B53B15D2B70B6753942B2F93ACF11E478064B085E7ED67A77EE07EEF99F9539EF2149C72CA29';
wwv_flow_imp.g_varchar2_table(877) := 'F03FFAF2F812023ECA3F2491A80C26526D446572D9B09ECB614C1E934882648861453FD5EA6870C49F0904A81E883C81CD80544E645A4DCBA45867558603BC4DADA4E44CC3DE7F559DD3FDDA7D38B302A0B127551CF77B8F01758D4916F089F8D5B15154';
wwv_flow_imp.g_varchar2_table(878) := '572E41F5F6DB70D77F7F1DBF3FE7DFB1EC8797A0B2F841541B7534B53537A6158126DC4F7395019BEC4A36594AB3202192F072D7AEBBEE0A9FBE25A9812FDFE0929345BCBBEEBA2B7C21CF0990843BBD3FAD6BC1EA0E69BEC942D4A63B9BF916A27E6FD7';
wwv_flow_imp.g_varchar2_table(879) := 'BC5C1DD626491B28C306C7A3F053E6E7A45D7E2B302E97DD645106DB4B2219BE11BEC71E7BC00383BF37EE5982EB518659BB696C45AA63993249E89660CAD1270163E194403C05A3480F24084F96898AA75B210B46AEB0B93BA388A1438E8754E772081B';
wwv_flow_imp.g_varchar2_table(880) := 'B906448783C2324D90ABE3349B0D588B4FB55C97ABA32ED38CFFF60AB07CAB45D8E1C817E0896F7E33767ECDABB170979DB0FA8F7FC015FF791EAEFCD0D958F2E52FA3F2AB5FA122014A75488E8C226DE6483563F609FA4475C30C2F972D53E573953DCD';
wwv_flow_imp.g_varchar2_table(881) := '81F0BA9F07073691539D1BB9FEAC0A0099C030C76050E99309A0B88A8A86C28E20437DA01F8BB56AD17FF861D8E34D7F8F6D8E3D1ABD7BED066A3FB2290CD2B48A95CB56E21B177E03EF7DCFE9F8E297BE84ABAEFE3D96AF588986EAD054D91FEDF68639';
wwv_flow_imp.g_varchar2_table(882) := '78B91F2401DF1416985EF97BFAD39F8ED34E3B0D5E01B01F4935653D643CFA57995FF92CDDC74D6BCBB9F46B369B2857F248B73284550B8F638E4B163CDB3B9BFC2C13A44955DD2F8551516F2CCC34C150D6C0ADCB97E0013157D4BA30A6294D2543186F';
wwv_flow_imp.g_varchar2_table(883) := 'A4A783A9ECEA6B5A0050774ED4735329E78966F814AC19128F01791DDD43ABD173CF3D58FDA34B70F3A7CEC3E20B2F44FEC73FA2D2AC235142DE3E00A934142D8C1436378E54E48D4B6036C6DE7DF7DDE13DB6244984A70015A81B5A0F7722FFABDC9B6F';
wwv_flow_imp.g_varchar2_table(884) := 'BE193E38E3F8EE38FBECB34F48D303033999B6C3BBC391C47D9A41FBDF067B3580E4A32EF45DB69248AA3125B010BFECB2CBC2F2BFB700CAC1032D17C910D6A78477D96597F0252C7F25CC75299709B1C645354D4E72D5F0D1CA719A4C908A3F5FC2B84F';
wwv_flow_imp.g_varchar2_table(885) := '5401512C9DE745E3CE01A7201988352EC5CFD50D1142E85761AD5507812A7B45E956B48C5D6900A62E093A4A534F2B35B0D6AB7DBC2A86EA15F4EFBC2776FBEB63B0D79B5E83AD8FF90B34B40D70F725BFC2CD9F381F0F7CFA0264DFFB1106AEBB0EF3EF';
wwv_flow_imp.g_varchar2_table(886) := 'BE13FD4B1E429F96FF520D984D75F65134309636D0500679DB42622D1755BF441D3E9129BB708184B985BD572B547C38B9549A82EBE44472D5B749D93453A0B6368C53564DB14A427E6C8F5DB1D34B8FC51E279D887947FC3F0CEFB023C6BAAB40A50BC3';
wwv_flow_imp.g_varchar2_table(887) := 'A375FCEA17BFC6C73EF2317CECA31FC7253FBE04F7DC731F4646C730A6E5C7B0C42FACFC2C957ABC370001F71592B022E0EFE8FB1FE9BCEE75AF83FFA39E95018F2BD06593F4C393E351BC5D0E93FBF48664E37A781573546DBB6C075EC12CEBE0F26F48';
wwv_flow_imp.g_varchar2_table(888) := '7A73366CCED02F6B52A853A693D5D4B3F564E3A1D161FCF2EE3BF0CB95CB714DBD8EC5B51E64790592F4A20C290126B9462C91D24A347131891D784053E19AE8D6F8322025600B6DCB25575C8E3BCEBF00377CE63C2CBBFC4AA4C363A0C6CD9C54DA1936';
wwv_flow_imp.g_varchar2_table(889) := 'D5956CAA8466433A6523F7A11AEF675B20BBDC25DFF69990C39BDCE16EBFFD765C7DF5D520898AF68AFD1FF62C30493FDE22B5B223B9C3394F2B0E975F7E39FEF77FFF3704303F58F4434EC6937393DF24E132FCE10F7FC025975C125E03F4814497C175';
wwv_flow_imp.g_varchar2_table(890) := '2A332419EA64B7F7098D99CB7D8DF6BEBBBABA421AADE11DAE957239286ABDEDCEE15F40620A8BAA350C241529030C1D0CBE249460C1381ECE2C534E71459A56C1812D784B8284A8A4AAF850A070C31D137A1ECDB4824AEF0046ABDDB8BB56C3F081FB62';
wwv_flow_imp.g_varchar2_table(891) := 'ABD7BE1CBBBDF655D8FE8083517F60296EFDEE0FE1FFE2B5F4C2AF63F8673F43E5FA1B30EFA187D1E3D97EA3A10E9CC0B365D7375527EC92E2D8A532562C9495E54C6FAA12A988AA9B0C64049AC2B9A934730D0A40AA6A88E4E1B070202B3BC28410720A';
wwv_flow_imp.g_varchar2_table(892) := '5B579D56F40F6064BF7DB0E309C763B7934EC0C0214F03FAE62B7A3792A40B776865EA4B177C11679DF1419C7FFEE771B59ED9AAA1215869ABD7C704509196DBC14CCB1EC31508B80DB83F7BD9BFA6F674E08107E2E4934FC611471C0192A15F14210187';
wwv_flow_imp.g_varchar2_table(893) := '23593A1F15936478FBC8E31939B3BCC8229CEBB24CDB983EF8E7FEEF02FADC82158054DB006411CEFCCEA65CFD92E8AAD490A4093281A12E1ACC86FAE7726D03DEB06205AE688CE107AB57E2575A6DBCA7AB86912E29025218BCD5E795C24CE394B7F698';
wwv_flow_imp.g_varchar2_table(894) := '03FE77DE5E255052C88573552362A67E9E6B35A0C606FA875620D596C09FBEF14DDCF5C39FA1F1E0526810822720CAD2D13609259B24955994881BBD67FF166A24916830C723B8DC6148C2AFF4FD4A4BC475697E1E103C53DE6FBFFD247B2A13693B4F67';
wwv_flow_imp.g_varchar2_table(895) := '41160384E35E7FFDF5F8929664BD044F52724DAD42811CD624EB26BF9DAEF3F629FEFFF99FFF09DB17E561C476997910F040E733133E917CC71D776816794FA897D36917071E3344BA4BEB44B0F11A82EA013505D8224DD1ABBAA739429B16BB085B042C';
wwv_flow_imp.g_varchar2_table(896) := 'EC6BFCE6F02C18D072B922B85365320B658012A812D69A21D7BB2A5825D5FB212DF5D777DC0E83071D80AD9F7338B63EEC69E8DB67373C2C6DFD8F3FBE14779EFF35ACBCF0BBE8BAFC2A0C2CBE1B7D8D21D45847A6CE5CD7327F5342B9A14E9CA99CBA21';
wwv_flow_imp.g_varchar2_table(897) := 'BD1ED58CA8351275E2440303667C51652EEE1C9EF137D5F6723A8D04543EB4122037441E14202E34EB4F9CBF069FD5DD3D18D97E3BCC7BF65F60E7D7BE0EDB1C771CB0D73EC87AFAD095A458B5F861FCEC2797E0DC8FFD3B3EFDC97371A99499FB163F80';
wwv_flow_imp.g_varchar2_table(898) := '11ED2336B4729169BF12525A0ACA010D3888D78C1120098F17EE13EEEBEEE7AF7CE52BF1FFFEDFFF0B678BA08BA47E276FF7B949D7A6B7910C0A80C71D97892448AE352392C19F6408E3D53F2B0056065D562B0056F06D0F01E24F78E6B9FA4DB556419A';
wwv_flow_imp.g_varchar2_table(899) := '160A80C71B0109A81BD51BC00A75E825FDFDF83F8D1B3F195E854B9B23B85563D08AAE6EAD17A6C8338D570A9C4909C812AB10F9C438068D7E894696A6C6807A5AC198C605488998AF3C93871EC4D83DF7225B35A4F0507EB97E1C5FC626B8934D90C6AC';
wwv_flow_imp.g_varchar2_table(900) := '49826428ABF7FFAD04586B766337932CFC6C5F1F9145D85402CC27E93D2B5EBC78B11A478AC1C1413CEF79CF83BFD95DA954D446885C036D2B397D9F13F8F5AF7F1D66E1F67307B450258BB41DC664BF92ECDE10723CA769D3E4B816F8BFFCE52F71D145';
wwv_flow_imp.g_varchar2_table(901) := '17C11F25F2ECBFF4B3BF892CCAEC81CE8A92CF35F890D3EF7EF73BB8DC1E34A6C771BC406E9FA6E000CADA9865322391C0EE5667D8420DBD5B1D83267B2ADF10239858E30A41C455E9948C5DB94CE590539D434D99293275A061C51FAE56D0BBDB4E18FC';
wwv_flow_imp.g_varchar2_table(902) := '8B6762FE117F8EC1A73C115BEDB02D2A773D80655FFD36EEFEF4E7F0F04F7E8AAEA50F61AB1498A78E5B59BD1ACDB15134549E54CB7D5D12BAA93A67432B01746724A4F5E71893501E359F15B91395686677AE60B996023556485151622A7D9225483322';
wwv_flow_imp.g_varchar2_table(903) := '95274969F84DF8CFE132A72E8CC654A7C5D52A8676DF055BFCD5D1D8E3E493B0DBB1C762A4671E729533D3368757A12EB8E073F8D007CFC2059FFB2FFCF1D65B151B6868465157DD102E65A2DB6DC21458F1679D08900449B8AF9384FB8405EDBEFBEE8B';
wwv_flow_imp.g_varchar2_table(904) := '57BFFAD5E1633EDE06707F30910C028364E8F7780C2E9769EFBDF70E6790D6979DCB68723892D22F337865CFAB43E6794CF4F8588E8BE6752A910C55F7B3F7DB343DDA76ABD6AA106A1ABD72D8BB9203D97003F5D10CF5AE3E3CC80437AAE7FD7078357E';
wwv_flow_imp.g_varchar2_table(905) := '2AFA831486D1ECA94E0000100049444154A5D51AEA4955EDC1E9E552FE736D1F2A5E22B7FABEF5812C6C5356D1D458966922908AA849650F73AD3CE460D214018EC23C0FE5DA143F331FBD36456E9B411A6EFCF3E6CD83855A79B2BD2C16C9D2AA873B69';
wwv_flow_imp.g_varchar2_table(906) := '9F60CA424EE55B80DE73CF3DB8F6DA6BE58B7028E8B9CF7D6E7867D70303C989B49CB7C99D2DD1C0BE4CCB6F175E78217C1EC0E9981F1219FF71D892C6591B6494714BD34AC69FFEF4277CE52B5F09B37FE7699ECB4216E52419F230CFF13C20F8FD63BF';
wwv_flow_imp.g_varchar2_table(907) := 'FEE75706AD34F8EC82FD42C0357EDA344E27697258996EC0FD0AB69D14A8DE3C07255C09FF2900452D77AB537D23F84CF2A8AE2652A7AB0BCF9134C1E84037D21DB741FFFE7B62EB671C8CDD9F7C307A7B7A71CF2DB7E0E68BBF83BBB5B79F5D733D163D';
wwv_flow_imp.g_varchar2_table(908) := 'BC045B48307637C790D547D0D0EC3853EFA2843AD4F97295A7A97265CA2155BAA1A3483170DFCB9497F3AB2B7C59A650B0F5FDA8E09E3964CC3580404A0BE1CE9FE400941724FAA9F902F306A8F240998E75D5B07AE17C6407EC8FEDFEFAA5D8F575AF41';
wwv_flow_imp.g_varchar2_table(909) := 'F59043305CE9C6AAA1313CA07DFD1F7DF7BB38EB4367E0C31FFB307EA36DA5D55AEE1FD552FFA8EA97ABFC507E54C16528A3F15B655115C71DD1688700499044A2E79DAAAD562A1558D85AF81F7FFCF1E10B7F5E1D735F208BB0D065B78CC7EC26099F6B';
wwv_flow_imp.g_varchar2_table(910) := 'B2D07659679AB1FBBE15C11B6EB8219C05221956130E3EF8E0307ED96F43D29B69BEB3251CC950D48A94EFFEF9F3B060CB2D844F97BBA52807D5B77209EEBAF6ED4756AC84F1AC33C152D10D8AFB53F17F3E3C849B2B2996D57A24F86B6096C07D318C01';
wwv_flow_imp.g_varchar2_table(911) := '1A3F52854BC3845E3D55CA3AE074134D085211431E99B6043236E5A38039143F111F9BE44A36492AB32411774C376A77622B0016D0C3C3C37023B79FA9AC4AABBDE4D9349FA4ADB000F5011A2FE3FF4CCBAD655AFE64E761871D062B1A1E3442E0961FA7';
wwv_flow_imp.g_varchar2_table(912) := 'E1B83E3C78C51557E0C31FFE30DC09AD00B811B98C0E4332948D2CF2C3065C4E832448C269396DFF8BCF6F7EF39BF8ED6F7F1B663465180F6E6411D658381B97DBDB1A5B6EB92576DD75D710C7B34C97CF44D2C1D6426AA5D37C247F02C7B192668E4100';
wwv_flow_imp.g_varchar2_table(913) := 'DB82E89350B560728C92E4B58E5BF551BC7CBC0BDAF41EBA05F268451D67C13C6CBBDF5ED84A0AC07DAB96E28E6F7E0B7F38EF028CFEEC37185CBC04FDD918EA63AB51AF0F811292C958163A94CF0A8C3155FF239220D573E4CC4432A12B4FC4AF885285';
wwv_flow_imp.g_varchar2_table(914) := '913BF8B953BAD472CFE436080A4EA5EF3C68BBE2654AABA94E9E4BF8D73458549314891491E15A17966DB900BDDABA38E8CDFF805D5FFD4A8CEDB63B8614FFC125CB70AD56643EF799F3F0CE77BE1D5FBFE81B7878F9520C8F8D6044F5CA946EAE0C5C7A';
wwv_flow_imp.g_varchar2_table(915) := '1948E436F626F8C7245EBCD78E80FB422AC1EFFE63BBC70DBF0DE3657F7FCAD7677DDCAFC8C70FCCB26C1ECF6AB51A5C5E72DDE5210B7F97DDB5FFCD6F7E8365CB96C1E381DD7FFEE77F0E9F655A7F3F77E8B94564818D6B656C49A2ABBB0B5B681C5CB0';
wwv_flow_imp.g_varchar2_table(916) := '70019234D57891691CC8212FD4359E2C5BFE30562C791099FA5E22215E97F2BE3A01EE9480FF8556017E3CB21AD7CBBEB4DA8D2CE9426A25408A830666F5CB44A4DC24E01126009AE9877122513E26F921871CF0953BB4FABFED9B82924D91C86C498324';
wwv_flow_imp.g_varchar2_table(917) := 'DC9149C2A7F5B7DD76DBD0E8DDB1317E91D483E5B8ABBDE1344C6E20EE243ED57FE9A597E2AAABAE823B95E92FFFF22FE1D9813BA5C39629910CE93B9E05AC67D6FEE4E7C73FFE71F8153B2B066558A76F228B38257F26A6F32CF370799CF605175C804F';
wwv_flow_imp.g_varchar2_table(918) := '7DEA5313CBF81E2C2CE81DCEF94C4FD78781FC4D726F6BFCE0073F40B957383D5C3BB79AAC9B6DA0E0CFF00B336AB26EA959D596DA63EF6E66A099E2F976DB6E25F35AA92969A655B3904EAA80950CA849A1A88D6598DF4CB16814587DCD2DB8FEABFF83';
wwv_flow_imp.g_varchar2_table(919) := '072FF915EA77DC89F9128803A3A348A5ECA1DE0C7DA9925590362B4A3A51FE292A0DA0BB9E23D35F33C9D4C133A5EBB4A93D7F8591026045A3A98E2C4FC569C868CACC95C6CC6E2A58A2E0D6F84D726A40009A6266226A7019D1C0E0C3432B35D83CBCFD';
wwv_flow_imp.g_varchar2_table(920) := 'F6183CEA28ECF5863760E0F0C3B1AABF1FAB46C770EF9D77E37BDFBA18EF7DDF7B71CEC73F8CDBEFB95B65D1DEE458030D6F487A0031A6CACB86F32949904185167E2E8D09F15A0B02168826F793AEAEAEF05FF3BCECFFD297BE1416FEA51F49905C4B2A';
wwv_flow_imp.g_varchar2_table(921) := '8F2E9B6410FA1ECB3CD694FD985C7B791CC6653755B4AAE18981B7303D4E4097FF07C19E7BEE09F77FFB936B4F4BC1E7D46D6C5C219292CF799017DD52C4B7D9624BF4F5F6CACB7C80FAF3EFD0C830EE5FFC0096AF588E11D9D5B1824F22213FA6B1E23E';
wwv_flow_imp.g_varchar2_table(922) := 'A5F32BF17FB87A05AED2D8F5406F0F46B51A902005D4D733E4682A0C7CC9DF4A7B26D3635CAE949C4F9A031A92541E05921F34568825C7C6DFC9C627317B527083F703B6C0DB6DB7DDC2CCD6C2DFC292E48C2BE2744C4ECBA63B8EDFA9FFC217BE001FB0';
wwv_flow_imp.g_varchar2_table(923) := 'B3DB7B727E27D84BE8ADE93B8E33228BFCECB6226025C0DF03BFF9E69BE15505A7613F927AF07920C7DB1022A94639121493FFF88FFFC0D7BEF635F8CC8297F05D2697DD79930C0DDDF999E74E6FFF273FF9C9F0C74DBC3A71F5D55787838DC60EBA1C56';
wwv_flow_imp.g_varchar2_table(924) := 'C6DA6F552F3452996AC75016D65DE1AFF075CBB16D5F2F164950F93FEDA90F000A178413DC850A92758DDB1DC414A4B8325034283954D22468E04B250CC7EE7D003BA8836DB9AA0E2E5B895C42130A58D1ECDA9D49A21F648ACC11210F17402B114A0E76';
wwv_flow_imp.g_varchar2_table(925) := '3AFD5C961C2E0791D974C7A36D59C83A55611311154EDE33BA9D5E91621E6239C95C31338A2BAABB0C7D035839300FF5FDF7C5416F7C3DF63DF90DE8DEFF4034BBFBB164C5107EF1D34BF1AFEF3F1D6F7DEB9B70D5D5BFC388F609570F0D634CC21F4AC8';
wwv_flow_imp.g_varchar2_table(926) := '6996A4A4A7DCCEAB602833977D9251B0E3EF14041229A9269F7FF12779DFF296B7E0E52F7F7938E7E3FE49AA6D64599844ACB73F4C4979D33A5C46AF3A5A09F07846EAF9AE230B92200B727FF7B91EBFCD544E3EAC48ECBFFFFEB012E0B1802CC2AE23C9';
wwv_flow_imp.g_varchar2_table(927) := '39E7D5FA3CEB636358A43ED9D3DDAD9142CF5C78E4A0EA4C0CABEF2D7EE0C1A078D7C7EA1AA70B7EA290CD26B09A09162BBCDF10F8C9D00A5C313684C515A5915695824C646102008D8EEEB71A09E001465D1999E2C921271516E1CA956E166C9BE6A7A3';
wwv_flow_imp.g_varchar2_table(928) := '1400771492B0E9D9B957017C18D09DC03CCCE022F5D0D4E9DD405AE3F870DD4F7FFA53F8809D3BD0C0C0005EF18A57C01DD39DD2B3883279C735395F0B540B7C934FE6BFF39DEFC48F7EF4A3890F74D89F54031095F1D7673A6D0B760BFBEF7DEF7B38FD';
wwv_flow_imp.g_varchar2_table(929) := 'F4D3F1E52F7F3928274ECFF99654D6C1716C2FC9DB17DEC6F0A0F2939FFC24280EAD75585F19D44E2782B0B4A90E55099E05726FAFCE340F4045584EF88BDF7AB7E39B9768BF9C521ED4336061ED55813A9B68484D4ED5B992AC8EE6AA95E85687AC4913';
wwv_flow_imp.g_varchar2_table(930) := 'CF34907B7BA0AE38A9BA522AB38926EA12E8D6B691034D253CA6B890BFB5F78C09EA6982B11468A4397285251A52BE33241941AD20C0EFFAE6C4865CF978E0DCBDDD04717C27CA4883CC12CD327A9EFA541CF04F6FC2D62F3D0ECD9D76C63215EECAABAF';
wwv_flow_imp.g_varchar2_table(931) := 'C7C73FF4619CFEF6D370C90FBF8F91FAA896FB47313A3206AD3A822AAF0F12517573A776A9CAE49DA5070D6563AB881E6E02215E6B45806498055B01F0CCDFFFBDCFE346A2F6D42A18ED5E6B228FB287FBADFBB2271A3E07E071A72CDBDAB2761CFBD9F4';
wwv_flow_imp.g_varchar2_table(932) := 'B8E5B1C767983C5E98673F8F8D5E09B0A2936A65CABC4E20D23DA7A86959EFA1D5ABB1ED565BA1BFAFCFBD155A708474F5106874780CCB972CD704A416847FAE8947AEBED8543F74E03C4F31CC1AEE519BB9BC59C74F8756E24A29010F54538CD5AAC8B5';
wwv_flow_imp.g_varchar2_table(933) := '4AA0E00A9A80798264DA78E23E6B960F05CBBB500A268B18CAB0313FC9C6449E6D7149822CC89DE4F0C30F87859CEBE1866F9EC96E9236D6208733D3A63B9E4D0B5B1F8E7367FAEFFFFEEFF0A11F9238E8A083F0AA57BD2A6C37F8BC811501921365703A';
wwv_flow_imp.g_varchar2_table(934) := '16C826C7B526EE93F6A79C724AF86CABBF15E07302EEA00E53E6E77825953C97616464044EC7CB79DED77BEF7BDF0B0B7FEFF9BB73FBAB5FEED02EB3E3999CAEC976F34986838C7EBF79A79D7682D3F1F906E7E73A3A9CEDEBA2449DA0820A12A5E57069';
wwv_flow_imp.g_varchar2_table(935) := '062412C460053DDA1F3B40FC7DC4AB6AFF0C925E92AF48D4D24BB2DB44F1A08B22FBA58A93665458C27F18BF1C2E959F5FCF4B242C217BAE5EA5557DB8E324C851D1725B4AC82B4353BFEA6D2A9F331031971D28F24C946A226FC2823ECD0853A2DE4775';
wwv_flow_imp.g_varchar2_table(936) := '6622417951960D21A753692ABE7A74530A85F7FD29C52551C19A03F3F1C0B65B63D1DFBC047BBFFD9FD17BC8E118E95E20A56D09BEF4F9FFC23FFCDD1B7081CC7BEFBF1F0F2F5B8EC69854182938C62F778D846B0EFF41AE3C0C501E83C4824DD552A5D5';
wwv_flow_imp.g_varchar2_table(937) := '6D8B94AE4CA132E32056A7DF16E0EEF724914AD895E43E3B383888BFFBBBBF0BCABC5F85852EF71319E126DD0200B230F1185F2443DEAE83CF27580170F94C6B2B0A4938BCC3900CAB847E23E9DE7BEF0D07D9BC12E01552BFE668C5C238A0E5725C922D';
wwv_flow_imp.g_varchar2_table(938) := '9CB9632D3121197075DD2DCC77DF675F2C58B030F4FE0A1324F277AD972C791837DD72131A7ECD569D4D5E6267B20141C9475D963134D5E79681F85D065CA815C98BF306FE2885622CA9C15B8F8D6AAEDE4875DE54FD35051A4D54B21C62C34367A63102';
wwv_flow_imp.g_varchar2_table(939) := 'CA931A83924CFE1A43384ECA10CEAB246528561E789EE06808432E4EBB3B69C79CABBC5278F921BB8E1670D672DDC83D6BB72034917A100EB001E478DECFB7D0FEB77FFB37F873BFEE487E23C0A76ABD87E8E43CB890D4B3A49D53C8E17D18C7E978C67E';
wwv_flow_imp.g_varchar2_table(940) := 'EAA9A7E21FFEE11FF09FFFF99F6119DF1DD47E16F4CECF64816EA1EFFF2F6061ED7F19FAA637BD09FFF44FFF145EF5731C0B6EC77166AEBBC9F6562209776C2B292E874F3AFB70E3D7BFFE75F832AFC4CFEE75939B9B48B76B99806092A22BA960BEEC7B';
wwv_flow_imp.g_varchar2_table(941) := 'F5CCC3160D22CD881C89C8E6FA098A0B5D3915966AE6E314D8B29766E14F751C2A6D20C939415420D3046FDC5DF000509D5764B3A45CEE2994284CD2442EE15DF027CBA2ACC46FEF6E2440C3AB0C32FDFA50A552C34857371ED4DEFECA3D76C341AF3F01';
wwv_flow_imp.g_varchar2_table(942) := '7B9D703CBAF7DE030FAD5E858BBEFD2D9CFAE653F1910F9F835B6FBD252877CB962FD7002160D17A4DBA6D2BA935443BBBC3B5E3771ACFFDC16DDBEDDF7692F06BBC16A6AF79CD6B82F0F73FF922B94E6848829C4AEB8CB0164F726A1A24D712B260930C';
wwv_flow_imp.g_varchar2_table(943) := '7DD7421BBAACCCA45264646D7BBB8EAEAF3D3D8698BCC5E70F937912E2B1D063E2A1871E8AA76A35CA13108F0B24433E24DBB441CC898B645002DD168C91EB6DDA7EC71DB41AD407F3FC34486120017DE75D77E2DAEBAEC5E8D8287289F0DC131ACDF611';
wwv_flow_imp.g_varchar2_table(944) := '2EF73091357010A31A1C9633C16D8AF7CB952BF10BF5E5DBBA7AB0B45BE96ABFA0A2B8558D2DD4D8A2C1121A229169E2918A3404815AF94C94872C8018C5D89341A38D52573EB25106950FC5314126D67169285A87EF1CF472E327099B7E0DD0A75DAD39';
wwv_flow_imp.g_varchar2_table(945) := '5BD32339516372D23EC15C87C5E959485A407B3FFF5BDFFA96F665C7E025746F05F873A11E54CA8E49166570928E6B93242CD04D16DC3E9CE38F0CF99FB8FCCDDFFC0D5EF8C217863DC87F9052E099FD59679D8533CF3C13279C70025EF6B297852F929D';
wwv_flow_imp.g_varchar2_table(946) := '73CE39F092BDE3FA3C82DF4C703D5742FC0000100049444154A375FACE876C5F2FFBCD9B370FFE5F094ECF987856E00F1D7975C169B853389DF551AEAED05443555B84ACB006EA6C6B6AE4DBAB41EED6D38FBE46068600749099918AAEB6ADB0CE616604';
wwv_flow_imp.g_varchar2_table(947) := 'E5E76C6646CA00BED60C5DE626D18F928A502EFFCC081575377F0149462E4D7E38EDC2B27983C89F7C300E3EEDAD5874CC8B50DB6947FCEEE61BF1B6B7BF051FF8C0FBF0F34B7F165694BC7AE3F6E5E7D0D46A864B1969D320E076ED7EE93E60BB05A0E9';
wwv_flow_imp.g_varchar2_table(948) := 'AFFEEAAF427FF32A80F91694CE912CDB895DEB2672E661D79DD2BA7D49E280030ED02C754158C1737DD61683547BCDDD7A01B7278F379E247CEE739F0B5F35F564C13C9FFFF1B6C7F6DB6F1F5E7F2CD3B382413E36F52AF37CAC4CB70163E2FC488631DC';
wwv_flow_imp.g_varchar2_table(949) := '6F41F90C88DB84F92687593DB41A1EA73D46BA7D984F0A5BCDF6138D52BECD2B29979F5F135C2505E14E317F3D3A829F0DAFC69FFA0650AF762337A49A5434B351AD1B34C264A199A4F08C3FD5CA26952EB57207097FE5A214FC0C4DB6125402D4840A1A';
wwv_flow_imp.g_varchar2_table(950) := 'F3426276070A1CB4BB9276CCB9CC23059D1A7F26305D4FCF747D60CFB3E872966E7EE96FFB4CC971DC712C74BFF6B5AFC102D483860F039E74D24978DAD39E16046C2AED9CD4036BA1B2E1390DC7B1E9657B372E93DF34B8F5D65BC3E7832FBEF862FCD7';
wwv_flow_imp.g_varchar2_table(951) := '7FFD173EFBD9CFC29DD66706FC31223746AF20987C62DF6571D99DB6C98DD4645E2B910C8386C31C71C411F0C9FF2BAFBC3294DF03436B3A8E47D2465B0A3E94B84CE42D472E436D578DB389795AF6DAAFD28DEDB4BCD53D360AA8B1438DD99D6546A4E7';
wwv_flow_imp.g_varchar2_table(952) := '966C005161AD25672ACF4C285738046DBBA26289B4C7CF1682ECAD64210E09723ACE4C484A4F526FC0F00D6BE63FB4C30ED8E698A371F05BFE097DCF7A166E191EC5D9FFF139BCFBFDFF821F5FF223DC79FB9F6085D23330B707939F91208DF72644C098';
wwv_flow_imp.g_varchar2_table(953) := '9ADC2FAD00FBF4FB91471E8937BEF18DF03730CC739F74DF2119260FEDB2771AEDA85DD875F136340DB22893271B1ECF3C6375794975C03619B91D99ED7C48891429E6AE9BDF14F219267F18C86ED7DB63D7739EF39CA000D84D324C521C7F2E125960E9';
wwv_flow_imp.g_varchar2_table(954) := 'BA958ACEF39FFFFCF0DD1892EABB853FC9702ECA63AEF174DB3166C6D471A99F401A00832977B8998799FDF224C52D202E1D1DC50F962DC75D791543B55E097EC28B84D46CDFE3663D4DD050D82C08768F9244AE78181F6F207E2EB249097B79866CFCC3';
wwv_flow_imp.g_varchar2_table(955) := '5C5C8D811E8AED6E47EBF26B177ED6F348C20FACAC88B7017CE2B5EC347E80269265900D323D5BB6D0F4C9F94F7CE213E150A0797FF1177F119612BD1DE09580445AA0F3999E3859E46B3F0B5E97D59DD96978066845C542C1CBF35EF677032C6787F677';
wwv_flow_imp.g_varchar2_table(956) := '58A74916E938BED3B2697E2AE5C366492461CDD6F5B722E493FFFE27415E45703D2C7CCAB04EC7769B6491BEDDAD94C8D1EA63B70FDD0D48E1DA55719ED4DD8D05A343A849CBCD25FC439B55845C7EEB25357C37F61CA9DAF9FA090A97E444202D4324EB';
wwv_flow_imp.g_varchar2_table(957) := '25286C8E448A094DD6B64DB25B59A1EC26DB27497B7C9C19E58A3F8A040FD7BAB162F79DB1E8A5C762D737BC1EDC7B5F7CE7B25FE3EDEF7A373EFB99CFE2CACBAFC09225CB50D74CDFCFCD78FBB9B9CD946EC46B9321604C9D983136D63EBBE37FEEE399';
wwv_flow_imp.g_varchar2_table(958) := '9FFB8579ADD89374F035C8E1DAD11A01D7C3782469388E57312DACFC253FBBC9F6E574F6E4543F8F2FE6FFE217BFC09D77DE1996C13D9618037FEAB83CFF601C8C93C3CE5532766E132663FACC673E33BCD25DD6D7FE24E137BF3CF132DFE3A4F9267A6C';
wwv_flow_imp.g_varchar2_table(959) := '37532419AC5FC0A23B9150A704B2863109F51CAB0809FE0CFF3BBA023F1A5D859B6A352CEBEED7D092A2B79EA15F13A5AAB6053C6E681803942741408E4CF6A6A8216A4AD297139C5CF6921430DC5021140BED2E8FCFEDF87392473268EF6401871FB085';
wwv_flow_imp.g_varchar2_table(960) := 'B1B55C0B68376E0BC38DADBC05B167E03E0FE03D791FA273A7F1ACE2F8E38F8795009F2C76E3228B3295799245D95C16B2B0BB9CEE8C56086C9ACC73632BED76BB13DB5D92D32427D3777887238B744906E1EF3AFBD0DFB39FFDECD0A83DFBF7E143E7E7';
wwv_flow_imp.g_varchar2_table(961) := '384EC74416F16C6F47F60DA4061A1A9D1A5EAA8035990B15778FAE3EEC54ED42459E59B58AB15494A4EA0CA644E674A278D3C961378C9AEA90CD34C1FAA821E5A8AE65FABA4D85AF9B823B41BD92A25E1D27D9C7C41FAB2618156FB426730D4A51F0652A';
wwv_flow_imp.g_varchar2_table(962) := 'DC58578AE1BE1E2C5DB8009543FE0CFB9E7C22B6FAABA3F1BB871FC647CFFF3CCEFCE0D9B8F4C797E0EEDB6EC372CD08EACD1CFE2431849B200C4AAB9F9DED91362D02A45B2DE01540FF473F1FFAF3F27739E3F54C30559BB0326093A41ECB9A94A89DB5';
wwv_flow_imp.g_varchar2_table(963) := '2372CDB0E4DA79334DA344C17D94241CEFE94F7F7A78BDB92C3BC62F92E3B6A94619D7A697FE2DD0BEFAD5AFC2FFABC4218D89D32C5F7F74BA0E6B3F72324D72D26EBFD94CE5F3F618ED83903E27E6B1DA752AEBEEBEE82FC0FAFFA3D8CF6EFB910C3246';
wwv_flow_imp.g_varchar2_table(964) := '431E3C0CA20596149A5C5809D064481D5AD3810CABB4A1788FF8BFA88FE027AB57E20F4C3154ED5356D5301941B381CC13A544AC322DA5919B24ECCD32416E2B17CA1D9092E1FC334529CB60B79C6BDC4E760DE65C67B8A39001B65055EF9D79BFCFAFF8';
wwv_flow_imp.g_varchar2_table(965) := 'B883BB019093FE21D00C7F72814F1216C69E417B0FDFEFE07FFBDBDFD633CFC23EFEEB5FFFFAB01DE0301E54DCC948860E0C5D4E43C61A3739592687291B9DEDAD81CD2FA995EF70560E6C9284973ADDA13DEBF7F6C4830F3E0897D7DB0D16FE2E9FE33B';
wwv_flow_imp.g_varchar2_table(966) := 'BCC9F692A6BBCD7723CBD4E273A50D992EAD1B5855F6C16A0FB61E5C28215CC5926A0D8BBBFBF050B51F0F57BB4415512AAA60496D921E967D0A7555B1B4DB549339959688BF44FE53A98207C55BDC5D517ED3A84B6E09E5C52DF480ECF755AA28A82673';
wwv_flow_imp.g_varchar2_table(967) := '92EE4D2BB847747752C1DD498A7BD451EFD20AC31DD2ED6FD336C09A94E00E5661FEFD3DFDB85D611ED8622B2CF8AB63B0B766FD437BEE890B2EB904677CF8A3F8E297BF82AB7E7B398657AE863FE4E303453E799CE5509BC961ACFD3C6D225E9B1C018F';
wwv_flow_imp.g_varchar2_table(968) := '07EE83BBECB20B8E3AEA28ECBDF7DE616FD7FF31F3A69B6E422B7965CFAFCCF9F3DD255D7DF5D5E190AEBFEA399DFEEFFFFE2FBC49E37EE52DC1F5910FF27AE2303D1D7F64CCC2F9BAEBAEC38D37DE18FE2997FBB289E4C4D8E1D79A7D706F9B6DB601E9';
wwv_flow_imp.g_varchar2_table(969) := '1E88898B9C74B7B625DB49C213176F3B7AFBF2A28B2ED22AD4929086D33AEEB8E3E00F200D0C0C8471C39895099345BA2443F8923F9BCD9A66E3268F8B5E51715DDC076DBAEE5696BC0AEB89522AE5D07C9236427F55D70D76FFE4B058360141486B650F';
wwv_flow_imp.g_varchar2_table(970) := 'EADC3980BA84FFCA04B8AD02FC4A2BA3970DAFC4CD950A1EECEDC78AEE5E8C7677013DBDA874F720D19853A954C034419A24A800C8C74695C8585016282520D31623AC60D84FC5692813939C6D6F65DD963FE7992441525865A141FB909EC915B750B4B9';
wwv_flow_imp.g_varchar2_table(971) := 'A1E48E64723C37160B502B013FFFF9CF71DE79E7C1AF087AB9DECB74FE17A236FD45313734931F6E6B7CA7632A79B693B43185C835790E404EF249868669BEF3F280E7437F5EFDF08A84B5597FC7C0FF2BC065F460404EC6773C97C364FBDAC80A40163C';
wwv_flow_imp.g_varchar2_table(972) := '25B86436996034211E52E3FCFDC86A7C736839BE541FC6056323F8E2D830BEA0067C7E49F551FCD7B8DDE6056363984AA3383FF88FC89C4A17982F2DFAFC29348ACFCBED3CA6D3E795D77472982F2A1DD3976406D21EDD17455F9A4E2ADB97CD1B19C397';
wwv_flow_imp.g_varchar2_table(973) := 'DAD097474661BA50E1BEA10EF9EBADB746E3F9CF43E5B9CFC565AB87F0C12F7C111FD116D1253FF909EEBEFD7664DA871DAB8FA12153DD1A79D6147AC250B8AD0F73058CF74620607C2D48DD572DCCFD412EBFC9F3810F7C00FFFAAFFF3A41EDDCD379AD';
wwv_flow_imp.g_varchar2_table(974) := 'E15BED4EAFD5BD21F6326E99970FFEFAEC8F97A0CB6A676A63AE87C7102F597B6BD37DDC6E8721A7F665F34A723C53E9F699237FF9D3CA8A97B649865505BFD2ECD7A62DF03C8690442241441669938589597A910CF53196D56A1596035EFDF044C9F8B8';
wwv_flow_imp.g_varchar2_table(975) := '8DD88F64F8074A1E2BFDD68431B23F494CB9247C01F328314F64B20716204500EEE6FA011AF21D9224BE4B417F393A8C1F6B1CF879B582DF48B1B88E155CFDC052FCF2CA6BF02B6D0DFEE67797E3AA6B7F879BFE700B1E5EBA14F5460364823C27EAF5A6';
wwv_flow_imp.g_varchar2_table(976) := 'C61125E9F3011940FDF92EF3449B4BD9B6E17618CB0FD57B5C5EA2B7B6EBEA93B4F18889A41E4A1EB46A0F2C7EBFFFB39FFD2CBC25E059C4B39EF5ACF08EBE97D6FCD10D772867E686E70E4616F9BB6199EC5712499093643E491B13441265E7240BBBF3';
wwv_flow_imp.g_varchar2_table(977) := '307960F0DB0FD66E77DD75D7F08F81BCF7E733053EC0683CC8A9E961C6979B9B2897F0529C2688112575676304BF58F6202E5ABD0C174A11F8AA34DDAF89BE3A3284AF8C0CE32BA323B0F9D5911109CE11D945C3E24FA32F0DADC6DAE8CB434368A5AFC8';
wwv_flow_imp.g_varchar2_table(978) := 'FDDFC323B8B00D7D6D6818170EC9AF9514EEEBEA80DF984617C97D91CA67BA588ACBC5520E4CDF5247FD9FC618A6D377C5FB9E96EEFE47FEBFECEFC5FD071E80ECB9CFC11FB7DD1EE75FF61B7CE0139FC6972FBA18F7DC75179A4A7B58788C297C067747';
wwv_flow_imp.g_varchar2_table(979) := '86C1C1DAFCC408211CE3FDE8204032F453CFE83CA05B49B7B2FEF9CF7F3E7C3CCBFF38ABA4AF6A69DCFEDFF8C637C22BB6FEBF1A25F960AE3FE4359DBEFBDDEFC2C2F4873FFC2166420EEB34BEF39DEFC064BBC96F15395FBF96EB19BACB6485BD1C2BDC';
wwv_flow_imp.g_varchar2_table(980) := '673D4E98BC6CED31C5B3758F0125915C2F884EC74A8357199C87572E2CE09C8F0F18FA6CC4939EF4A4201C2D201DD6793A619B26DB6733192F92F0D9301F88F698E9FA90455BB1DDE724BC32E4955293EB6D228B3046DAA4C6A5E0C55828993CAE04D8C7';
wwv_flow_imp.g_varchar2_table(981) := '242F1B399036A02D01E041B1FCB5C01F0EAFC27757AEC065AB56E13BBFFA0D3EF3D14FE013EFFF00CE9542FA71D1473E78263EF7E94FE3DBDFBC18575CF13B2903CBD14C52A05A83760FA17903284B2AE522A5125DCB9DAC85DF316C92F0837367F13FC1';
wwv_flow_imp.g_varchar2_table(982) := 'F0811737000B62721DC8B541889C1A9E2CD2B6E6E801C69DEAFCF3CF0F1FF9F1213BBF5EF3F77FFFF7E14323FE5E80950F6B9B352D3F397F77AE545AA0CBE3EC5CCE92EC2EA91D8F2CCAE2F8653A4ED7EF33974BFE5EDAF212A5CBE2A52CAF58382DB288';
wwv_flow_imp.g_varchar2_table(983) := '6B7B99C74C4DD5B8588E5284F154A02D2CB9128C32C12AA53D92D89E624CDA6D932932F1D724A229FE1AA41947B31DB509DB10AFAEFCDAD198D2F02B39D3C9AB1523F25B930A456644951A9D20863A8D299F561A559D469314756D276CB3DB9ED875BF27';
wwv_flow_imp.g_varchar2_table(984) := '6A15A4860BBFF35D7CE673E7E39A6BAE4373AC016DE1C16D235719A13420658939C5A7AD72696440BC1E4D04DCC64D651FB30074DF4BC7FB9DF9259967B2DBA6C9F69248829C4AA5DF869A4EBBA4326ED98FEDF62BBEFECAA7F7A05D66872519C632F7EB';
wwv_flow_imp.g_varchar2_table(985) := 'C30F3F1C7E75ADF4731D6782A3C3BB4DFA0CD325DAA2FAB4848CC7088F0DDEEBF68AA1BF336225C02B882E93CB3393B437F730C6C8E4E7EF71F8D8638F85C74BB2C0B5ACAB31F227DBAD00900CABC82403F68E4F525535C908B7FAB10741B16493489605';
wwv_flow_imp.g_varchar2_table(986) := '2521D87AB445B8A5C68DBDB5DCBF53B5863E054CF21CDD92D0BCF76E0CFFE6375875C9CFB0F4FB97E0AE6F7D17D77CE52BF8D687CEC667DFF54E9CAB95AA8BFFFBABB8F1A61BB1BA318A268A8B592625A0A9F1242F186D7E957C1B6E07B1FCC0DC80FD70';
wwv_flow_imp.g_varchar2_table(987) := 'FDD9DE17BFF8C5F0A10FBBCD27FDA0360C10A759120FC4D23B000010004944415459C4B79648327CE2F7FBDFFF3EFC0EFF17BFF8C5F00F80FCEA9D97F7AC5D7BF9CEF9FB3C8267EA2E87C91DDC0DB3B493045990CB59FAD7A43C380CC95068BBBD2FE8F7';
wwv_flow_imp.g_varchar2_table(988) := 'FA9DAE355A2F6BF94D02CF686EB9E516B86CD6F2DDF143A4F11FB24863DC3923A33546388DEAE6AE862C434B5D80056E335367C9A0869A4B5BCD4432B527D6344975CD14DE7BE0ED4841B021E48374FE04F0145202E63794CF74CA24809B2D6477209537';
wwv_flow_imp.g_varchar2_table(989) := '98F29B34B196B2A83E422B177E8996F27EF0A31FE37352FCAEBDEE1A64EEA0DA9618D54A479E53CF503B79C243366804512CDD8A9707B25D14EF47150192823E870776F7016F7F992CF45AC9BCE9D4EABF29ED653EEE9726BB9DBE4D4F26BC52F7FBDFFF';
wwv_flow_imp.g_varchar2_table(990) := '3E6C2B5A587BBC3148AE0349F8233EEEE7FED609C942D1CCD72E081C97A48D092CBC15E8C981FF8198CF3D386FCFFA7D60DADF22F10AA2950D8F311E7FC8227E486496FE90840F865BC1F13F74B3D24316F532C61E6BFDE6955774AD7C35B4046FFEF4EA';
wwv_flow_imp.g_varchar2_table(991) := 'E6701C8EFF96BE79B030FC4EFE58E9EF561EBB4BE97CC1C24578E5C002BC62DE02BC64603E8EED9F8F970E0EE2E50B06F14A997F3B7F215E35B8054E185C88A390628FBBEFC37D3FFA11BEF06F67E0DC33CEC44F65F73F26CA3DE05ABA7BFACF22DFC91C';
wwv_flow_imp.g_varchar2_table(992) := '276D0E32E9EA401B39D9F9FDB0FDE0ADF9590374C3F603270992EB45C70D819C0C4716699B6F72077227F620E3C33C1FFAD087F0EE77BF3BFC873E2F29F9633F5604DEFAD6B7C28A88CB62A564FEFCF9E8EFEF0F67155CC6523128CB66816F9E1BAEC961';
wwv_flow_imp.g_varchar2_table(993) := 'ADB9EEB6DB6E6119CB5ABB57183C28586BFFFAD7BF1E96253D88F8B542376292A18E2EA7A9AC2CC9D2BA1673D2BFB4B9B9E572682B0A81A8E6280D3883A4287258B34DD094AB117E3335D64982F80AAFDC267979E0D91DD296DF74D329B7A3104E039FEB';
wwv_flow_imp.g_varchar2_table(994) := '3441CA2F5F1B4901F1F2FB1AA43C53C571872949550454AF7694E74D099406AEBCF272DC76FB1F516F8E6144DB17AB562C93C235AA78D0400B341BD6D0E55419A9F4AD3465C20B4E7CBDD8235E9B1801B711524F42CF635D49937E4053439004B9264D0D';
wwv_flow_imp.g_varchar2_table(995) := 'B5712EB2289B95007FF2DB4ABC85B3CB6DE1EFD46D7A35D11F0EF36A5F39717018920ED296EC6F0FB2C8C3766F5F5E7AE9A561D5D28713ED767A5E29F5D8F58217BC009E605831F038E431C9F15A895C7B9EADE11E2F3B5994CF65F7983F2841EBF1D7E7';
wwv_flow_imp.g_varchar2_table(996) := 'B35C2692E1B97AEC36B6C6DB6F49182F1349071B276327AB581E7B649BBC032387424C90BABCFC73D4B306BA9B756CA92DC65DB4EDB9BBB62677D696E40EDA22DC6974083B69BB74C7552BB0E3AA21ECB96A0407AE588D6768E2F0A2855BE19845DB62EF';
wwv_flow_imp.g_varchar2_table(997) := 'E151DCF8FD1FE023EF790FBEF3CD8BB0F8A107912544A6B2359589C73B65B4C6EDB16C0D662731483DA9F10A9384B702FCF0AD3D6FB9E596E1031865C376032127C38F479B62B841940CDB4D6E3426DB2D6CADD15BF8FA833D6E481FFFF8C7E1D9FFD967';
wwv_flow_imp.g_varchar2_table(998) := '9F0D7FC1CFAFE4FDF33FFF33CC7FD7BBDE051F16B430F7873E2CD8BD3A60CDBB955C56FB99E7B0EEA0FEF890C9E979A6EF15079FEEF5211F9FF675595C2697D7A6C97693ED25A9B59A15C8B52F1A8D6C5EB62E2904A29A5A0826E92633486435BD1CC844';
wwv_flow_imp.g_varchar2_table(999) := 'C153CB5219FC872000156ACA5DE669738AC7B82397806E47509AEDC9198F479EA1A112ABA8FE854CD789DA9DA76A48E807855243594541D381034E2555D8C2BD3156477D740CA3EACC016F059597563D9A818C444921470B1E0730355576DD8A12EF4711';
wwv_flow_imp.g_varchar2_table(1000) := '815C984FA7F565E7F0D3C398D78EA687DB18B7D3F758E24984C7118F215FFEF297C3A134F33C469561ACF87B45D1E385270EA59FF327D57645B69BCA384EBB24B7570B3D1F74F376C0E9A79FAEFDE62BC22AA6D3F2B8F2B6B7BD2DBC39E143875E6DB022';
wwv_flow_imp.g_varchar2_table(1001) := 'E0D5001359E4E1B0249D0DC8C20C8EB5FC900CE1C8A966BBE0E4649876FEEBE3B96C2EAB4D2B361E3FBD4AEAF1D3718D4B697A02E7AD521FEAF6B86D65C1983B8CA908E7414F9D566DCA03826C1A43E4638B0CDF99387920BB0A1A23F00759BFAB1585AF';
wwv_flow_imp.g_varchar2_table(1002) := 'F474E1C2AE1A2EEEEAC2C55AD1BDB86253D45DC577BA52FC50E6A5BDDDB8BCBB82DBD21C15A5B54FCF000ED28AC1F25BFF8073CE3A03DFFDDE77B17CF94AE4991236297F97D1CFD626A9714D652CC67265DCC937C9D0E00C8C1B8267DD6F7EF39BC3677C';
wwv_flow_imp.g_varchar2_table(1003) := 'CB8E637CEC6FB27D53901B54B97CE78EEC0346A79C720AFC9AE069A79D160E1A59F9F8DBBFFD5B78B5E0631FFB183EF8C10FC21DD1FEFEDEBFCBE94E6845C1FF49D0F49297BC242C63F960DF873FFC61F8F3C06EB49EEDBBB15B8B77C3751D5C1F93ED6D';
wwv_flow_imp.g_varchar2_table(1004) := '89E2B690DA919A5BC9909F5C08C2B7F0010A3FCAA4846320DB2728F800D3DC0577FDBF8E073DAF1913D69F666B08B45C658D540D340934D45B425F925DC9B6847CA4D6891CD64CC05E6B7223272200D20D50ED51C2C202C933741F08F4A4C203BCC730C3';
wwv_flow_imp.g_varchar2_table(1005) := 'E4554C9F6BB2A0B630B7C0228BB8EBECF38E3C4E0EE7B1C263D5D5575F8DF76886E989C47DF7DD07AF42F81C93C79E33CE3803DECAF444C4AB905D125E268F374E832CF22509978F2CDC6873397C1B765BD686846D4DC0653091448999C75A63E6F1D34A';
wwv_flow_imp.g_varchar2_table(1006) := '931502A76F7218AFACFACD0BBF1EEABA3B3DFBD95C93D6DD815B7DAD328CA91CF749E9FFDF65CBF0ED87EEC737973C205A8C8B973C24F3215CF4F043F886E8A2250FE2C28717E30B0F2EC6050F3C802FDE7F2FBEF9C05DF8F9FD77E386A50F6359B3817B';
wwv_flow_imp.g_varchar2_table(1007) := 'E4F7A9CF7C1A3FFED10F3136320C2D0404CC5D5F93CB6CB25D43DA9A45EF248E8120193A15C900941B823F04E20F827819C84BF06E0C6ECC060D9BE072BE26772E775C0B65372A0B6937B21F692FE7A31FFD68F867407EFDC66F0B7895C0AF04F954B0DF';
wwv_flow_imp.g_varchar2_table(1008) := '247027F4EB7B3EA9EBAF0E7AD5C0DB077E4DC8CBFC7E97D827FB3DDB2FD3771ECE932CEAEC32CCBC3A54D044227FBCD94883948A0931601F9302E8B66D6644C5DC1052E2213FE739239A512077C782FCEB3CA81F3A2EC51179695E4545A0C0D20FE21511';
wwv_flow_imp.g_varchar2_table(1009) := '78EC1128FBAC8592C70BEF49FB4C91BF13E07E6E7F52AD57FDD31F363AE69863E055418F6BF62B4BDC6A2F79ED4C8F171EA3BC12E0BD6F6F537A1CF26AA55708AC583CE739CF09E79A3C01F1D6A5C74AAF0678FCB4DDE3265994C9F99204C9901DC96027';
wwv_flow_imp.g_varchar2_table(1010) := '0B3330C77F1CCF56C7B1D98EEC676AE7B7369EC39B4886319F6438F0E76D13AFB8B69619BAEC96011F88F4ECDFAB2F568ACCDB78A25603138C20C1320D2B0FE8B9DDAFB1E75E99F78E9BF7D92EBA5B74BBC2DC2CBA417E572739FED784315CA56D827B47';
wwv_flow_imp.g_varchar2_table(1011) := '47312AC5F0BA6BAFC585FFFD555C7BCDD5C216F033747B210B8C6D77FDC747F28DAFC26C4EC14094E5F78376A373A37EF6B39F0DEFCB7B5BC0FE0E67B27D63892C1E84D323099BD6D22DA0FD81097736BB4D6E6C5E29F0C95F9F3CF5C19C0B2FBC109FFF';
wwv_flow_imp.g_varchar2_table(1012) := 'FCE7F1A52F7D29BC5E64ADD49DD48DD2B474E952788FD00779FCF0DB95D779B6E3B7F224FB904845551B83ED80CA2D4A81B0F4549569AA889788E0BAB425A8B9026AB7534CCFA8378412E557E40DE5BF6E723826CA57967C26A4B090BA4CA4FA4B94BE48';
wwv_flow_imp.g_varchar2_table(1013) := '054E557F13659A8C8529D5CA879E9CAA2C4C546772D244BC22028F320224C3ECD542D8DFF1B7D2EF15018F5F65D69E855B381F77DC71F0F91FCF705BFDCB706B333D4698ECEFB1C87959E9F087CD3C413AEFBCF3C2D743EDE773071E2F3FF9C94FC2DF52';
wwv_flow_imp.g_varchar2_table(1014) := 'F03F1232CF8A80C75097C52BAAE50A811512924E7A4A1F72F948C2A6C3389EC763DBB1892EB2C8D763A3D3F6BEBF0F497BA2E5993E59F8B76677FBEDB7E3B7BFFD2DFCC134CB09E3E232B68679A4F654CB8C4C12AD3226184980D5227F1B60080C8AC188';
wwv_flow_imp.g_varchar2_table(1015) := '46A49246656FA0AAB0558C552A585E4DF1704A2CF7C89AA6C8C71AE84A2BF8F5AF7F856F7DFBDBB8F7DEFB5096D7F52527EBA66C1E6991E7563C3F4CD7C8A61FAAC90DF5D5AF7E357CD0C54B5D6EC8E63BDCC692F331910C0D9DE48412E04EE60E65B250';
wwv_flow_imp.g_varchar2_table(1016) := 'B710B769C16E05C11DD0B37A6F1B5851B0BB54121CCEF1ADE1F961DB84AEB2DCCE53CE9097CDF551AE00A5800EB360F8484953A22F134144342052F99B6AC0905D3541224D752A01891AE89AE4183325ED9C490BF121397FFF7A7DE470D0863DB3143322';
wwv_flow_imp.g_varchar2_table(1017) := '752CF5146495040D1694A9D42E1D01D5493FBA7391D36E1250BF952BDE1181471701528D4D59B8FF92EA61EA5F72867EEC71C142D26F17FDEC673F83957FFBB9CFBBFF5B08FB1B27FE888F79160664919EC3AD8B48826408E2B824E131C6E38E05E2B9E7';
wwv_flow_imp.g_varchar2_table(1018) := '9E8B534F3D35FC73327F47C1E5B020F541EAF7BFFFFDF8F77FFF7778C5C08A81BF3D42327C1BC5639BCB66C5C0CBED266F1F986CB7B2E2FC3C86B9BCFE4E8BC760AFC486C26CC40F59D487A4BA7B1A66C73EC85896D11897CA86CB60B7C757AFBCFA20A4';
wwv_flow_imp.g_varchar2_table(1019) := 'C75B8FB1E69BB0D19746146A4CCD44791372E9B96A6C91A5483F039129974C7EA6A6DC1A75B5DC8F3185AF8B9A79313E359B61C46A2A9D25CB97E31797FD0A575C71A5E20224956E1E4C92C18C0A000CB4048B3A1449B910B46A5B2CF0DDE8FC5FC1AC45';
wwv_flow_imp.g_varchar2_table(1020) := 'BB61BA01BA51D87F63C90FD79DC08DDC76A74B323C18BBDD49DCD04A7FE767BEDDADE4344ABEC33B9E790E6FB25FE9268BF4C949D361D64A6E2194AF69C2105EB267A09A25410B7E8AC11C8948E2162929FB744AC49B464A23590BA512C2D349B1B15652';
wwv_flow_imp.g_varchar2_table(1021) := 'F8641AA50A5D9942A966F6A644E6544A550E9FFE4F54AB9A34E9A4A270D56AF1FF122A5578502829A92AD56AE1EF36319D3CAB984E0E53F2A6DBED6EA5329FB5991E144B6A0DD38E67FF926FD3EE92EC36956E9B76B792792595FCD26DB3E4D9B4BB95CC';
wwv_flow_imp.g_varchar2_table(1022) := '33B5E34DE73B8C7925D96D2ADD36ED2EC9EE562AF96B331D766D7EEDF89B5BF8E9652CCB67D32B845E393CFFFCF371CD35D7C0E380FBBDC714C7B3F0F58CDC82CE3CC721097292D0E62219B84ECB6465A334BDC278EFBDF7C2A7E27D60D92B02DE1AF00A';
wwv_flow_imp.g_varchar2_table(1023) := 'A595101FA8F316842751EF78C73BC247D0BC6AE973497E8DD0AB123E70E70384269FBDF27F5FDC65975DE00F19F9353C8FBD6F78C31BE0038D2EB30B431665B27D26444E0DEFF29B9C9EB1F1AA84B77C3DD173FF241904A5C74C8723096FB75E7AE9A5C1';
wwv_flow_imp.g_varchar2_table(1024) := '7418C7F104D1762B3D26DB1F29B9EFD76A15747579BCA9A0A6B1A54BEE6E5157D53C5157B5F097591175D5AAE8915F77A50B5D959AE2D4D0DDD585441318A904322BB8E1FA1B71D9CF2F83FFC32359D4ABC4CCF54B4A47A79B24030424273A45A5A20751';
wwv_flow_imp.g_varchar2_table(1025) := 'AB85EF02BCE635AF814F86BA515705BA1B8F2390843B14493CD2CB8D6C3A39ADE9BCD2BD36BF926F733AAD2BEEF4B053DDAA17D54C72040D53B6808F7EC4205200DD798679598605CD0CFEAF7FDDD23EBB36801CBE2D4923EE9E42197A95573BEA13BF4F';
wwv_flow_imp.g_varchar2_table(1026) := '65984EFD2A475FDE50BC82FAF23A4CBD2DBCD23EA0BCB6501DB69216DDDF1C435A1F43D6ACA3D9182769DC4DF9650D752F51D6C8E4D78415AE92EC6F2ADDADA63B9CFD4CB6977E764F27FB9B4ABEEDAD543E4F9BEDF8AD3CDB1DAE24BB4B5A176F5D7E65';
wwv_flow_imp.g_varchar2_table(1027) := '7C9B65389B76B79279A676BCE97C8731AF24BB4DA5DBA6DD25D9DD4A25BFC4AC344BBECD92371373730ADFDA566C6F2DBF85BD67E59EA55E71C515F0213D9F1172188F4DEAA2B0C0F224C607863D43F7D8E6090EC9F0A61349075B83DAE15BF2AC0C7845';
wwv_flow_imp.g_varchar2_table(1028) := 'D2AB015604FC7F0CBC256925C007942DF4FFF33FFF73E21F0BF95B24FE929D06B5000010004944415486800F35BFE52D6F092B033EE7E455022B103EE87CFAE9A7C3657CE52B5F0987BFE38E3BE073079E795BE1709D9CFF1A055D0FC3E335395947BB4D';
wwv_flow_imp.g_varchar2_table(1029) := '7E73C1FF07C6CA8B571F9C8C3123A921AE20B703CFFE8DAD575E5D6F636D32F67E1E25B97CA6D2DDCEB4FF74AA6B2C6998349B6F8A3291E3D635DE8C056A68B25F0F34AA716824B33B83E3D5B50AE0CF008F69EF7FB45EC748630CA38D518C8C8D60D9B2';
wwv_flow_imp.g_varchar2_table(1030) := '25F8C1F7BE8F8BBE7111864746429D5C1FB2A89BC773D7B9A3892CC06807821B83C9075B7C3AFF79CF7B5E382CE2CE6345C0711E498374BCE9E4744A5A9BDF747EE976BCD2BE2E73A6E126D2B0E0D71E40AAA5F43488FB14B9F0524B4255AB26839A2DEF';
wwv_flow_imp.g_varchar2_table(1031) := '2F05E1F97D0378B9E8757DFD38B97F40D48F37F64FA537C8DD4AF63F4571FE6E2D744A5F1FA693D37EFDC03C9C344EC1AEFC4E50BEAFEDE9C5747A554F0F5E29FE2BBB7BF08AAE6EBCBCD6859799AA35BC4CB3FA567A695AC1D1AAE30BBA07F08CBEF978';
wwv_flow_imp.g_varchar2_table(1032) := 'E9A187E2E52F3A0AC78A8E39EA8538FAA8A370F40B0B3AE605328F3C0A47BDF085384A7CCFAE8E39E6181C23F280E2BDC457BCE215581BD9DFF4B297BD2C9C33F192A95F3F757CD3D1471F1DD2F5A1A4238F3C32BC0AEAC34926CF8C7C3E25D2B3D10E03';
wwv_flow_imp.g_varchar2_table(1033) := '7FF3C2189564B7A974CF35D375B3703716FE388F85B205B20594FBB1FBBCC99317B7ADE38F3F3EBCE144726209DCFE68B9C8624C34DFD4E235C56A4166816841E87C2DB0AFBCF24A5C76D965F0E78B2DD82DD04F3EF96498DEFEF6B7876D019F21B050F7';
wwv_flow_imp.g_varchar2_table(1034) := '9926AF207876ED4F1C7B85C00A8C3FB1EC371B1CC62B1A3E70E8A5770BAF2905588FC3429E241C8F2CEA4432D4DBE3B7FFFFCBAB5EF52A1C74D04161D64F4E862189F2DA65975DC2DB597E0BE2BDEF7D2FDEF7BEF7056AFD9F0E7E13C2CA8F4DBFAD359D';
wwv_flow_imp.g_varchar2_table(1035) := '7C50D3AF7ADB9CA4B371F6591FC287CE3A47F4619CF3C173029D7DF687C53F07679D2DFAD03938FB6C87F910CE39EB6CF99F85B3CFFC60A0B3643AAD0F9EF5C1F086D819679E810F9E7126CE3A5361CEF8A0D23C1BAF39FED5E17927AA8F6599EBE467EA';
wwv_flow_imp.g_varchar2_table(1036) := '6797D811A93D0264D1000C961B8BFF69CE6B5FFB5A78B0F7529AB5E82E2DB990943C64FB4466399712F2D4EC5A154453F5F4C725DC887AC4DF52749056439E23017C64572F8E4C6B7821531C9524E324BB96D25FB42E52D8A3D74A298E4EA6D25169329E';
wwv_flow_imp.g_varchar2_table(1037) := '768217295EC84BE91F253A5A2B36D3E92809F9178A7F9404FED1A65A0D13A61481A35B49CFF245BDFDF8CBC18578F1FE07E12D6F3C05FFFCD6B7E0B4D3FE196F7FC7DB039D66F3EDEFC0DBDFFE4EB9DF01CF724AF2E056925FD39C4E7E4BC3E401D1662B';
wwv_flow_imp.g_varchar2_table(1038) := '39ACE33A2D9B26DB4D3E596DB2DDF4AE77BD0B1E845AC90393A91D6F3ADF61CC33D95E92DD25953C9B25CFA6DD25D96D2ADDA5695E4925CF663B5E2BDFFE769764B7A97497A67925953C9B25AF34FDA19A928C99EDA5DFE6606E6879D617DEFE9E419F78';
wwv_flow_imp.g_varchar2_table(1039) := 'E289E13F1A7A7CF2F04352DDB71082DEC6B412E019B6F7D56BEA0F1EDB1CAE953CE6D94DD2C61A441265187B5A9898AC0858F1B0B0F68CDD82DB07E7FC7F102EBEF8E27070D95F16B462E083825E01F01B4CFEE4B0B72F7CB8D9B36DBFB6EC4FA7FBE0B3';
wwv_flow_imp.g_varchar2_table(1040) := 'B7379CC723A1D6323A7EA231C39337939525AF46785CB7DFF4B0E69948C2FFBBC5DF54F19684278225797BC264E5C654F21D766674224E3CE9449C70D24913A6ED274CF00AFE89279E84D78B4E3EE124BC41CFF78D279E80934F3A01279D7C224E7CFD09';
wwv_flow_imp.g_varchar2_table(1041) := 'A21371D2EB4F1249D13AE964BCF1C4D7E364D3EB4FC66B4F781D9EF1E7CF085B9864F13CCBBA4605C04F781D64A04A72E37163B112E0FD2BEF5B39AAF96401ACDD738D72E49AE767222D07A8725EF2DF4AC2FFC912AEFF4F33EFA76BFF696F2D59ED34D6';
wwv_flow_imp.g_varchar2_table(1042) := 'C0565A2E5FA0A5F3055A8A1A9C30EB18ACD7615E2B0D2ACC022D57CD57B87664FFE9B470AC8E450ABF85C866495B28AD354865D95ACB65DB8AB6D352FE76DA0ED84ECACCF66862FB6066D85EB52A69A784D84DFB6ADB697FFFA94F3A00073EEB9978C253';
wwv_flow_imp.g_varchar2_table(1043) := '9E82030E3904071EF2543CF9A97F86A78CD3939F26FBD30EC1214F15C9DF3309EF23BA7D78B5C8FF90C5FBAEEDC87EA6F29F8D1C70C001703C93BFDC5692D37BEA539F8A923C60999EF18C67C0EF77B7923FF8626AC79BCE7718F34CB69764774925CF66';
wwv_flow_imp.g_varchar2_table(1044) := 'C9B3697749769B4A77699A5752C9B3D98ED7CAB7BFDD25D96D2ADDA5695E4925CF66C9333EFE9097CD92EC6FBBF99B0B6D6879D615DE7577BD2CA87CD86FF7DD778785BBC72E75D929B7F7DA3DEBF50A94570548229160842E92415990758A80B77B5D44';
wwv_flow_imp.g_varchar2_table(1045) := '3278930CF1BC256172FE4E3B95824E327C3BC08A81DF5AF2A78CFD45547FA4CC7BEC5E4128C3DA745C2B1426B2483F64B2013F4EC3C1C922BE31B17BDF7DF7853178EE739F1BBEB2EA705E25B0DF742289C1C1415879F26B8D266F1D98E757C47D6071BA';
wwv_flow_imp.g_varchar2_table(1046) := '69DE741A18180879F56B25742AF5A16FA01B3D033DA2DE40BDFDFDE8336915B4DFD4DF079F39E891D9D3DF8FDE7ED13CD180F8A2FE01A5AD55D10151BFA8AF6F20C4EF1DE8C7822D16C1E525092B69AE1F49F8994405006BBFDC28EC4B32740A3710374C';
wwv_flow_imp.g_varchar2_table(1047) := '1F5CF199009F1AF5A1156BDAEDB468C79D4B940A872E09CEED9AC09FD57AF0DCEE3E3C2B4FB1DBD03006478751610392A1A8654035CB0BD29E7A35D0B8BBE48F9B1585AD4899A8E4C054CA912AAFE93491EE78FCE06EE6A8288F8A785348FC5A96A1A674';
wwv_flow_imp.g_varchar2_table(1048) := 'AAA28AF6D22A52062ADABFAFCA6EAA8C9BC19E35F59C1B4057821D9EB037F2815E0CAB42A37A88B9D2CE9447A630CD400D34B50FE70E5592F7EC4ABBDB4A3B729B6AA5324C19AF4C633ABFF42FCD320D156DCADD8E5FF24AB335C2BA78EBF26B4DC3F632';
wwv_flow_imp.g_varchar2_table(1049) := 'AC4DBB4BB2DB54BA4BD33C53E9B669774976B7523B7EC9B35986B57D5D54E26AB3359CDDA6569EEDE695647749ED78F62BF936ED2EC96E53E92E4DF34A32CFF6D22CED7697649EA99DDB7C53E9674C4ABB4DBB498681DF4BDA5E0538EEB8E3E07F1AD4A3';
wwv_flow_imp.g_varchar2_table(1050) := 'AD328F63987695F1A6B1A738494E713B0E59F05C1E6F117855C082DC6EB761B7F3926FD36EFBD9B4DBE16D77C24ECF64FB86125994C3F1BD5AEB3AEEB5D75EF0D69BCF7459703B5FA75B9AB64F27C777796C96E4308E636AE5D96EBF0D228D7F0C94432A';
wwv_flow_imp.g_varchar2_table(1051) := '14A831B170239CBDB21DC127D1748C80B664F35C2145346562E580862929608002E9CEE137A51A9AE4282A48C59317C9097B2277BCD7818005BEBDFD504986CE4312D6B07DBAD587473CBBB0765636308C5F24C76D98001C9BC545ED7427F01F7C8D17D3';
wwv_flow_imp.g_varchar2_table(1052) := '8DC1149C2E3BED4A40FDD5146E504D6A2F9987F7F4E3F93D03780AABD876F5087AC72422F33A46D14443617C8746A986E9B6670A2D538DB4B02B91717BAE162BD98CC2CC5B4CB5618529FC26ED0A0EC9F42994ABE143656C47B9CA90654488A77085DD6E';
wwv_flow_imp.g_varchar2_table(1053) := 'AA9809201432C56DC8AF69535B1AD86A0BF41DB83F32AD0634D24A2872AE1952C20A2AA23449D40E44498A2415C9ED76D24A4A7846374990441937557AEDC80357490EEBF6385382AE9986753805874D53ABDDEEF5D186866F4DAF8C5B9AAD7EEBB2B786';
wwv_flow_imp.g_varchar2_table(1054) := '6FB53B8EDD25956EB2C0BCE44F37C9C27F7A7892538292859B2CCC32BC03910CCFD5F6924FD2CE35F866920C7C52ED32576314939CE4C9199E894D923626C2DB51E651DA4B37C989B64532C4812E92D875D75DE1256DAF68FA43411EBFDCB6E41DC29145';
wwv_flow_imp.g_varchar2_table(1055) := '78926605220BBBD32719C2D96E72009B259185BFF92672D2ED3024CD0E44167672D2240B2C2C604D21E07A7EC822BE839184E3B94E9EF97B92E69537D7F9A52F7D6938CB6565842CE2B8DFB95C8EDB8EC8229CC3981C8664C0C07693F98F840A819F4F11';
wwv_flow_imp.g_varchar2_table(1056) := 'FC054FA966A25C636061C8C2092AC759CA9F0A2743ED44DE1ADD145C6397C654313DBE92D4B895C297CB6833F14FA4F60890027ADC8B6478D02403886E54D6A2BDDFE67D592FBD5993F6D24EEB40ED70E4645C8C5F24C76D8FB5918012FF15A64899C89E';
wwv_flow_imp.g_varchar2_table(1057) := '403F70713CC34F5C2C3928BF44C2B122B34FB4AD06A503C57F4177375ED8DF8BFD25EC07C686319A3431524D5097104C2568D3B21102A109E68A334125AFD56CF59F815D5137E80E1D43652F1B3C9407551F427FEA18FA557A04547E0893A4DA87FE5DF6';
wwv_flow_imp.g_varchar2_table(1058) := '40AE25D47A52D3EA01B49291215342AE0754BFA262892A68A2E217374990EBA622E4C6FF92453ED35322D7CD2739250AC950E6294C39C8C78FAFECD7B8C935CB43AEC97344B2E093B4738248B6ADAB0390937E6E2B267292E730E6D93491B411A8E4930C';
wwv_flow_imp.g_varchar2_table(1059) := 'E9936CCB0F4CFD6C4878873529DA94B4ED9ECE273911869CB43B6C3B220B25C07BD53EB8EA53F7035A4AB6B0F418D63A76393E491B1379387F5360B6F9B19FA9F4B27D3AB5F333AF0C677B49E695F676A6CB5B12C9504ED7C3E4AD0E6FB979C2F6D77FFD';
wwv_flow_imp.g_varchar2_table(1060) := 'D7D8669B6D421265780B7F13C9C06FF7E3B02443BA24DB05093C72ED7E2140BB1F4711798CC941E4B2CB80340291861ABB117CE4CE4540E16F3FB9351469B82E580E6B02B48A4AA4E29244EB45166E476BE547FB0C1070432419B44B372EAF00F810924F';
wwv_flow_imp.g_varchar2_table(1061) := '17EFB3CF3EF0B252D989AC55BB61398E1B906906593C8A41D458D490EADA0F6F7A7AAD7640B536328116BFD1B03BC9515518BF42B76DDEC07ECC7158AD1B2FEA9B8723B4ECBFFDD010FAFC8D69A5D1500BF2E14080455B75F2987E3D7E6EE9BF2173AA3E';
wwv_flow_imp.g_varchar2_table(1062) := '2A6A584E931524E102675AC657174255336FD76385560076D0BE7F326F00492545354960C5288353006414E44410AF88C0EC44C0E311C9B0273C3838082B01269F23F0EB7055F5834AA5028F570E6BD335B5DDE6E646244132148B243CE69A5C0FEFD97B';
wwv_flow_imp.g_varchar2_table(1063) := '8CF6415ABFB1E3499A5706B0195D1E364DAD45B23B90C65F4C1B6F8A8FB205DF10C536872946A9C2650F2362B2BD1D794C6CC78FBC75204032740C92410970E7B076E95743FCCF797C78CB9DCAFB6A5604DC10498606EAB024B54C33F990F0985F3932AD';
wwv_flow_imp.g_varchar2_table(1064) := '1799202520D17E1282FA48D50BE853D1B6CE32ECA1723E4303C18B7AFB7074FF7C3C4DCBDF3B0F8D625EBD81540D321B6F3DB40201C2B7ACD89CAE501EE692F50CC25FA5543173973E50AA3A78A92D6B34D09063749B2DB0E8CF0E06BA6A4244A1B57790';
wwv_flow_imp.g_varchar2_table(1065) := '8B64537875315B945E4817F18A08CC3E042CC44D2EB9C7269B9E111F7FFCF138EDB4D36025C05B9ADD5AEDF3F845BAD13B54418E6B2A5C9BCFAFCB647289ACBC7835C333FFE73CE739A15EFE0681C7649220E9601D4F1AFE3A1E830D02C00DCCDAA38964';
wwv_flow_imp.g_varchar2_table(1066) := '78B5C28D8D64F8D6B6DFDFF6E731AD081C74D04181E746E795007252F0938F4F03F40337B9D22E429AC8254B22B34BE6164D626F108726151CD7DD8F630706F1AC6A057B8C0E63C1AAE5E8AE8F6859A909693E12AA4045E12B19825D56291658E37A3C19';
wwv_flow_imp.g_varchar2_table(1067) := 'B932CF551F9A728472122ABE8824BCE5511183249A3D3DE83F607F60D79D423DACE4248A97A415900A04C09AB70FD6D89433DE1181598700C93043862E8F63EEFB1ED76CFA4D037FC2F794534E814FCA7B35D363971505CFA61DC64416FD41496C3637C9';
wwv_flow_imp.g_varchar2_table(1068) := 'F051238FB716FE7BEEB967F8676A5E9DF504AD2CFF6653E0CDA020C9665086595704921302C18527A99973121A1F74F9F3C13E1BE08F3EB823B9F159A3F6D2934D7726057B5C6EC96A985209C38AA6B124D1D3D783F912F2DBA9444FADA678F1BCF978C9';
wwv_flow_imp.g_varchar2_table(1069) := 'A24578A666FFBBFA84FFF008AA8D31E4156048D27E2CC9C13441AA3DFF446900C203D00C5BEE1DC4DC0000100049444154FC5C96CDF0E644995CC05C2586288715195990A9AED56DB6C66E871E0A0C2E00A400D11EC891E50A07C89507827839E2151198';
wwv_flow_imp.g_varchar2_table(1070) := 'BD0858E0936AE1A2B2169EC85821F081407FAAF75FFEE55FE00F51794BC02B0126877178C7B7B9391059D4C302DEC27FABADB60AFFBFC58A8CFF83AABF77E07A910CC5250B33383AFC272A001BD8004882E4442C7704372E336C77237427F1F299DFEFF6';
wwv_flow_imp.g_varchar2_table(1071) := 'A193CF7CE633F0A731AD085809F03B997E47D4E14C5608C8C9349DD6A62692A1DCD49437AD55C2B7A307E70D62D1165B60FEBC5E3C65B79DF1BC9D77C2515B6D8D4392143BAE5A85ADC746B050C2AFAB99AB3839EA6A2D8D24914094089416A114211D20';
wwv_flow_imp.g_varchar2_table(1072) := '90435819486C51E8C9FBF1B551D96BC55E221B4539C570116568F7234730996048F5C2B6DB62E113F603AB358408DA1E090114C8F5723AE6E74A33DE1181D98C00C9B0FFEF3A78FC4AD4FE7D22DE66A55281C7297F5BC0FFC8E7CC33CF84BFE9EF316B60';
wwv_flow_imp.g_varchar2_table(1073) := '600016B20EE3B02441D2C94C98C131831FB2883783A01341C8C938CE3F4D53B82C1E6FBD5AE16F68F8235A1FFBD8C7C2C77B3CE1F20A46AD5683C3939C482B5A802482B07108909C68F82443626E686E9456067A7B7BC3FF12F0011B7FF1CA9F8E3CEEB8';
wwv_flow_imp.g_varchar2_table(1074) := 'E3C297BADC284D0E5F366087278B7442622D3F2427F26A61072BC960FA87640847322CF5396D7784BEFE7ED47ABA9176553130301F7BEFFB04FCD5B12FC699EF3F1D1FFFE7B7E12F77D8117BAE1EC13623C3E8CB34E36F8EC1DFA2CED44C72A45A3E4F64';
wwv_flow_imp.g_varchar2_table(1075) := '4B654B65273249C5312D25D445B9F39236202B36A74B4584D05091889C289400E47203D4DEBEF7F73DFB4FB6DA12953D7607B7DB41F5AAAA8E097C6592FA99EAA6A890B520A5884088574460D62140BA35634220920C75A86A15CC02956418372C381769';
wwv_flow_imp.g_varchar2_table(1076) := '25F0C8238F84C72E7FE2D62B02DB4A51B612E0B1CBA6C716872509B2208F691E03CBF448C217C9897CA1CBE1C8C24FCE89F8A5BD9DBFC7332B28365D0697D16F61F9909FFFD1D04B5EF212581970995C06A765F2048D9CCCCBBC4EA76294EB74141E85FA';
wwv_flow_imp.g_varchar2_table(1077) := '93454373A37327F0A140EFA9BDF8C52F8635547F0AD35AAA3FC6B1F7DE7BC38DD91FC070782FB9F9F08A1B71AF140837E4B273BA43383D9BADE486EE30EE108EE334BC14E60E6ACDDE94A848BBEEB4134E3DE5EFF06F677D101FFAD847F1B6B79F86A35F';
wwv_flow_imp.g_varchar2_table(1078) := 'F802F42E5F81F90F2FC3C2D131F8E339B9660459A58A469AA2A9BA58F8A519A01D00A45A150033F80FF6107E16A9B9C26550267297F7E36DBA342E62AE72652A4C3E2EFC4315122932D51A5669A63F347F1E163CE92068EAA39009908798703CDB6451EC';
wwv_flow_imp.g_varchar2_table(1079) := 'E2A642980A57FC8D08CC0D04484E54842CECA4B6087B7AE05704FDAAA03F35EC71CB07063D6E79CCF1477B3C167965D3CA0059C4F5CA82692251593CBE9967D364BBD84129701AE699CCB369221966F91E073D2EA61A933C567A7CF3FBFCFE274216FC1E';
wwv_flow_imp.g_varchar2_table(1080) := '4B3DC67A95A28C4F1665B13BD29A0868A45B9319399B0E0152334F4B1B25E906EE0EE233024F7AD293E00EE5C3826EBC267F4FC09FE7F42B2BDE3EF05706BDECE64E602A85BC3B9D3B432B29F9B0A4679E85BF3F54E43CFCCF63FCAD6AFF938AF33E7B1E';
wwv_flow_imp.g_varchar2_table(1081) := '3EFDC973F1F7AF7F035EFCE263F1C4830EC08EDB6E85817A1D0F5F732DBA97AF44B7A42435CFCFF2145913E1CA13332D0A0BF2ACD887E0543384AFF815DE4151087233C4DA3C7EF2500C0D022A986EB9CCC941129ED9FBFB052B651F5DB4105B080F48E9';
wwv_flow_imp.g_varchar2_table(1082) := '5120DD8A23BE2C6090FE390A658772B7761BF111AF88C0DC4580243CF678D6BDCB2EBBE088238EC0A9A79E0AFFB31BBFF9E40FA2F953D81EDB48864F103BBCC7294F403C8639AEC726F32CC049A2BC3CB6993C3EDADF9321A7E538352DDD3B2D93FDBCFA';
wwv_flow_imp.g_varchar2_table(1083) := 'E02FF8F9FF69F89FE0BCF5AD6F0DFBFD3EF0E70993D3705A9EF0909379947945732A02C95467743D1A08B8415AD3B5E9F46DBA13F8FD541FB8F1F7DD8F39E698F02EAE1BB6FF71890FE058B3F53FCBF0BFCBF4D641F9CF631CC60DDF64FB3BDFF94EF8C0';
wwv_flow_imp.g_varchar2_table(1084) := '8B0F1DFA1F6C7875C1CB75D6D69DD69BDEF426B8931EF5A217C1A77CB7D72AC0BC05F3504913B0DEC0EAEB6EC08A9B6E46D7D010D06C206CF93341458A4005BAF262DE6C5197A94F65EA58B9C4A067D6A996D14D62C302B210B218BF1E7F2357114C2E9F';
wwv_flow_imp.g_varchar2_table(1085) := 'CB9B489853042D87F8AB8523B227F3E76350AB30B53DF680F9541C554F3E5095E45202210E74A9EE70254D908758F18E08CC55044822F16A6096A1FC94AF05B40FD6F97541FF331D8F4B1E6F3C46794CF224C67BF116E2FE7F002B56AC80FF3990570A5A';
wwv_flow_imp.g_varchar2_table(1086) := 'D3F0F8E719BDC9AB0716F616DC0EE778431A8FAC40782273C20927C0E39B85BE4FF5FB9FEEF8F53EAF4C58F07B3C755C7FAE17BA4882A46CF15E1702C9BA3CA3DFA6458064E84C6EAC2461A58024AC197BD9CA4B5AFE4EB5FF298C05B5355DEF675978FB';
wwv_flow_imp.g_varchar2_table(1087) := '0C81FFDB94C9337A9B25D9CF1DC26F1EB843FA6317FE8720FE27325E49B0D63E383818F24192227CF007402523B87A144B7E772DD2071F42656C444BDF9914002DEEE74DCD901B12714D50612981477F2F20980C8251BFB0080CAB015A464FA428F89D7A';
wwv_flow_imp.g_varchar2_table(1088) := '05DF6CEE5CA5CF8531641250B94550357320D3C036A61A0C6EBF3D767FEAD3900FCC138FE2E422042AE228B05CAEA720930D4AAD20C42B22D00108908415018C5F24C37862C1ED498CC72B8F551E8B7CE0D9930FAF3ADAB4DB7C7F7FDF1F4BB3E270E081';
wwv_flow_imp.g_varchar2_table(1089) := '07C29FE56DFD67591EABBC97EF74FCB95E4F6CAC547872F38FFFF88FF012BFFF798F5FAF2EBFBADA5A26DB536D0F9004A97EACF168BCB8D1580B02C95AF891BD091120190ED5B881429757006484DB3C2F6DD9B44260B27F49E65B41B000F7C73A4AF252';
wwv_flow_imp.g_varchar2_table(1090) := '98C96E2FF9BB235A897058275CC6777AD68CED2619CA61D1A6EE81C402FFBE7BF1E0E5976BF97F05AA8D069A9A195BC8511A3F24D443BC5C1D0A8E050950D927DC4A45695A3C8250803C18B2857BB3F871B990A95C852203B8C927686675542B155424F4';
wwv_flow_imp.g_varchar2_table(1091) := 'BBF6DD17834F790A9AAA57A8015572916E590072C206A0B4235E11818E41C0E350295C5D698F59268F0F1E5F3CCE78ECD97AEBAD61A16E41ED59BB85BF5708FC81216F717A45D2649EB7114AF22AA5C3D8CFE1ECFF96B7BC25AC8A3A2DCFF47DB6C9F939';
wwv_flow_imp.g_varchar2_table(1092) := '2F9B15F55F97C9E531910CE31BA971290A7FCCE44A66122886D93804C8358506C9291A3574910449D9266F37F44742650A24433E6491AEBA067C52DF07F9F2B1612CB9F6775879D30DA8AE5A854442BF9E262A4382AA8461128465112FF7BC97FA2D09E3';
wwv_flow_imp.g_varchar2_table(1093) := '97C2014E55F25F41736C5E974AAC0265C829922D579D8A22CBADF2260BB74065DF7D801DB6D38A4C0E524CDDD2744268D50AB96C60A25F8A9D83B24DF0833DFE4404E62E0264D1E2DBD530D12A9A0531A9314042B775ACB270F6368097F87D9EC9AF41FB';
wwv_flow_imp.g_varchar2_table(1094) := 'D5429F4BF296E78B5FFCE2700ECA67A16CF747D4BCACEFD501CFF07D76C069976996F99393E52109B2A0D2DF26B926CFFC485311F0A83695135D731A815C1DA34989AF461DCD15AB70C765BF41BA7C259835E1EFFAFBB5B970E60F0E642864DAD860DA8C';
wwv_flow_imp.g_varchar2_table(1095) := '22A80A56042CBA3315CB54A954B15A0A4FBE682116ECBE1BF2AE9A6AAC80F26F77E75398535D53BCA22322D001089004C975D6B414DC1B6BAE3393E8B95108440560A3E09B7D91AD0064EEB8F531E477DD8D15575E87FE460EBFD35F97F4AF64397CB23F';
wwv_flow_imp.g_varchar2_table(1096) := '8838879B7D559C526282402ED2CC3F7884150CD9920A564B09A8ECB23316EDBE07A0197EA2ED0FC42B22101188087408025101E890075D56B310EC40D2AC63E4861BD173FF831868E65A01C8912B50453F3EC86785C08A424E8ABBE1F7E61243F25E4571';
wwv_flow_imp.g_varchar2_table(1097) := '1D68550039E54C12D4A5F4245B6E859EFDF703B6D906B9149F1040DEF18E08440422029D804054003AE129B7D4D102D102BEB16205EEBCEA4A748F0E231F1D914290C11FFAB11F142893A00CC2326F893C4BADB9247BAEB2BB6EF4C146D9C7F204837BEE';
wwv_flow_imp.g_varchar2_table(1098) := '8545071F040CCE976210BB8260897744E03145605DDB038F69413A34B338EA75DC83CFC1915134EFBE1B4B6EBE09B5C628EA23C34101A878731C39C21901094D040D409AC00663B43945C86185C6D5B1F027B4D2A11580ACB70FF3F7DE1BF377DB1579A5';
wwv_flow_imp.g_varchar2_table(1099) := '02A4298A4BE10B4BFC8D0844041E650448826C4F8F72D631792110150081D00977A96913199291D518B9EAF7587DEB1F918D0E21AD2448B5479EE44033013CFB37265A08006D99C5946BC64F64C5478F64C227956B35F4EDB813E61DF044A4DB6D874C0A';
wwv_flow_imp.g_varchar2_table(1100) := '81AB28D5C046A48840442022D0110868B8EF887AC64A0A016AF69BE40D8C2DB91FB7FFFC9758305C475A6FA029BF4C5A782669DF10E512FBC59B00F2501CFF6E086D4E619344B5CE32349A0D24692A619F62B852456D8F5DD1BDDB2EC8BABBA516B8D2B9';
wwv_flow_imp.g_varchar2_table(1101) := '341FD1E654F858968840442022F028221015804711DCCD32E9E1610CFFF18F58FCFBDF63A0A999B1659F0AEAD57E532645404EAD07C863960B7FD7235481099A5202BCC3C1EE1EACB202F084BDD0B3F34EC8332B0840AE95014AF16188147F2202118188';
wwv_flow_imp.g_varchar2_table(1102) := 'C0DC47202A0073FF19B7D49068AC588955D75C8764D95254352B2E049E7E25FD690A42506EC59268D4EF86CE8A1565B3B973CDFC9BA0560198480950B54699A03130006A05005B2E820FFFA7AA73AABA273283C2B0D9943F162422101188083C7A08248F';
wwv_flow_imp.g_varchar2_table(1103) := '5ED231E5CD1181C6D215587DED4DE8D793AF67A318CDEA482420BDFF9F6A369C7A9A2C41988B8AF2E785312B7F09526A8CAA905452E44982E14603BB3CF18958A81580B1DE1ED52A41028573BD154E8C784704220211818E4020E9885ACEE14A5A6669F2';
wwv_flow_imp.g_varchar2_table(1104) := '2A1106D09671A23C724D679B22CB368938B03186C6BDF762E51557A27BAC8E4C5B0059080F8C27100CE8CA9580FFEDAFAC1B746F6E81C93414A9D1AC03527456F77461E02907A37BA75DC44F91089F9C4D644906A90A22B1E31D11880844043A0081A403';
wwv_flow_imp.g_varchar2_table(1105) := 'EA38E7AB68415F5692B29820C1668166F99E89873C43BE7429C66ED0F2FF3DF7A0323AE620485891E91472680140B14260FD48838052D00C5A8E597B67A11A42447733ADA067F75D513B603F70C12224AAB03B40C60CCD4428298CAA8C78450422021181';
wwv_flow_imp.g_varchar2_table(1106) := '4E40C0E35F27D4730ED7310F322B6FA9A185BEA43ABCC19D48C8F9805B561FC3CADB6EC39DBFFC156A590666CD10839A153B6E4981D9F2A3858016D7FAAC9B977FA89384BACD4AAD86D5DA06D8EEC00330B0F32EC82BB5801BACE030919100E36111AF88';
wwv_flow_imp.g_varchar2_table(1107) := '40442022D0010868D4EB805ACEE12A4A66496E59C4B992327567C890EBC95AF0FB13B79671C9E810565C7F236EFFED1548D3E0094A5370FC62DAAF884E4214782DA6ACB3F2763D12293850051309FCD5037D98FFC427A26BE122D55D5C05902A247B02FF';
wwv_flow_imp.g_varchar2_table(1108) := '4D22302BAB1B0B1D118808440436080149820D0A1F036F8E08487249968F974CC25F0A407068669B4B3DB00CCC972EC1E80D37225DFC10B4E2ED1D01F9402429280189D62B87F89084146DC0BD39064DD4C273D56F24CF51D1CC3FDD732FA07F00945BD5';
wwv_flow_imp.g_varchar2_table(1109) := '8471A36A4B397CEE6173AC432C534420221011783410D0F0F868241BD37CEC10A0B2124980C9022439124933CFFE21E9E79500349B5879E75D18BAE516ECD0D38BACD19470CF416A8F3F0FB140FD15B6F1DF71FEB86BD61A99B63A924A15AB549F2D0E3C';
wwv_flow_imp.g_varchar2_table(1110) := '105D3BEE80BCAB0B50DD557B99BAE507937EA2128078450422021D82405400E6C4832EC4B78597B6FC61579E013500735A00001000494441544D0935AF07606418C3B7DF89E1DB6EC7C26A15991402579BFE91D00B46E18067C4A6C0DBA09FCD33B03F00';
wwv_flow_imp.g_varchar2_table(1111) := '94ABCE8DBE016C71D081A82DDA02592585E4BF0A2C809063BCEAB28915EF8840442022D021084405608E3C684A6A67926A92FB40269166B7445AA215013CF000C6AEBF1963F73F8091952BB4424024127B619520876C0E0F280AE4C4ACBC5405973BD449';
wwv_flow_imp.g_varchar2_table(1112) := '1692D08D6AB58221ED81F4ECB20B069EB01F38300F19A87AE6E1D75B0172C0E4AD02458D774420221011E80804928EA8E59CAF24276A68B106897730412A6EAD51C7F21B6EC08397FF1FAA6363F092387348F889C64DACE5A2F82619EBBD1FF700AA8BCB';
wwv_flow_imp.g_varchar2_table(1113) := '401625B630F7EA47334DE077FF7738F459E8DA6E7BA056533005D64DA1600AD25FA0147679C73B2210118808740002510198030F59B22CD482FA2D1F2849A4B97C962DC7C3575D8D07AFBB1EDD282E873315AEB9F06B71AFBAAA2A6451B3BCF80000F25A';
wwv_flow_imp.g_varchar2_table(1114) := '17C606073178C893910ECC770830F841E23F1129BC84BF2CBA65F73208E2151188084404E63E02C9DCAFE2DCAFA1F7FE4D89047E2A39985B084A9631CB50D7BEFFF0F537A0B26205BAC54B2CE614C64BDE9B0E99CD2F254390A429D8D383FE3D7643B2E7';
wwv_flow_imp.g_varchar2_table(1115) := '1E6876F7206B665A19D11640E26F0002610B202800B9EC011DC42B2210118808740202492754722ED73157E50AD2AF14006444533C1F00C4681D8BAFBF11C377DC8E05DD55E4F5BAC5BF7C21B3208C5FB9948371EB84A11427EC9BB785AA0FA11FE935C5';
wwv_flow_imp.g_varchar2_table(1116) := '6A0025E0A9BDFF55DA02D9E1802722D96A4B34AB55244C144C6184956EF81264F0A280F500BB234504220211814E4020E9844ACEED3A4AF04982913225DA20A9D6708533A901CB97A27EEBADC07DF7A157FC445A81DF0EB0B05714B49A8ED22AF0ED672A';
wwv_flow_imp.g_varchar2_table(1117) := 'C3D9BE367A2CF99ABBC3D56CAABE45D924CCA9DD7EB76409774016FB214343D6FBAADD58F4A44350EDEA0625E129A500AAA8BCE4065C76B1158B282E791696F81B1188084404E634021E07E77405E77AE52CB6FC10C39EB784BCA59AE41F340146FD8E3B';
wwv_flow_imp.g_varchar2_table(1118) := '904901A8AD5C894433E15C5B0268916F2DD60093D33205C766FB93AB0A221534877EE492180FA5F52CDEAFFD491DD02A4886B16A82DEFD0F4065F73D412A6CD6905A90034C20974CA763B7ACD0654D4046BC230211818840272090744225E7761D25C0C6';
wwv_flow_imp.g_varchar2_table(1119) := '2B68F96FC996CA9D361AB8F3AAABB0F8861B51A96B4D40C128A997A6D45E3736213DB66959D81308E547B888244F907839400A4EAE250ECFEAF36A05E8EDC57ECFFD0B54B6D9028D4A8ACC00C01743FCB0FF6F0542D8983B6ED81A292210118808CC7904';
wwv_flow_imp.g_varchar2_table(1120) := 'A20230CB1FB185960F00E6D0BC57CBDB76A7FE79E0012CFDFD3518BEF73E543220F3F49832732903B3B8CE99351C953F95E0F6313E4ADA9BA0FA797B80AA3CD304ECED03B6DE165B3FFD1070A00759AD062629A8D9BFA24FDC8204D41F02215E11818840';
wwv_flow_imp.g_varchar2_table(1121) := '44A06310483AA6A673B8A254DD3CF3C5B80290341B58FEFBDFA37EEB1FD0373A56280012945614B2BC095937193D2E69A9BE9492E37A9B20E19D5336DD89CC4C427EACBB17B5BDF644B2E38E12FE5DC825FC13A8B94B510072180B137C292D98948E9D91';
wwv_flow_imp.g_varchar2_table(1122) := '2202118188402720A011B113AA3977EB289917C49656BFD1D41E80E41FB07A15EEBEE272E4F7DF8F7962B009244945322E0767FB1327C3C3CCF56B42A8BDE6FEE26785173209FB7AFF00FA0F3C50DB007D0052F8838826850C3848059029AF2211EB0461';
wwv_flow_imp.g_varchar2_table(1123) := '5B00213DC42B2210118808CC790492395FC30EA8601E04BF16C465427BE0D9FDF761E52DB72059B60C35CD782DE3720BC88005C3EFA6F979EC53294B9FCBA23B142077DD12C20A40223B2A550C6B0B60C1939F0CD6BA25D813A47912940092C815D16143';
wwv_flow_imp.g_varchar2_table(1124) := '64FF182099E6CB88774420221011E80804A20230171EB3041A980601E7FFFCB7E2969BC10716A332348CACD9801600D0942200144A0225F0662D4972737C965ED621CCE60958F853B3FD46A50BC9D65BA37FDFBDC1AAECB0F06798E5437149FA578A815C';
wwv_flow_imp.g_varchar2_table(1125) := '96FA72DBC810AF8840442022D03908249D53D5B95BD34402CCD22D9504E3C8081EBEF65AF0A107C397FF1AC8D164868445FDF320FAA0DF8D2727F9989325758E70590170BD4D7EC5914850D71E477DFE00F678D633912F58883C4D90A9956B0100AE74B9';
wwv_flow_imp.g_varchar2_table(1126) := 'EF9F281D53600290532B085225389EB878F18E08440422027319010D8D73B97A9D5037092D644893046C4A03D0BEFFD2DFFF1EF9030F22A9D7514713CD2497EC939F14056A7F7CF6A352AA1D12DCAA4C26A14D6D7DC840BD5A03B6DB06DB3DE369C8BB7B';
wwv_flow_imp.g_varchar2_table(1127) := 'D190E663FF8C9984BC305078DF0E2B46918019226D0EE837DE1181884044A03310483AA39A73BB9659D6D4D6BF14816613AB6EBC11D99F6E436DE52A245AF6CF3403D6AA3892202015465078B6BBF124D92939FCD8A623119D8A24D461654694A7393251';
wwv_flow_imp.g_varchar2_table(1128) := '2A5EA2D97F3EAF1F5DFBEE8E7CAF5DD1D0B4DF225FA2DFB56E21597D2BBED3B17AA4DA20412EAE4946BC2302118188C01C47202A00B3FE015B6049084AD8E74343B8FE37BF4673C9127483A066FBFE204E5649C00A816A058D4A054D99B39352953F41A3';
wwv_flow_imp.g_varchar2_table(1129) := '6A53544D34E3975BF583EA9555AAE0A20558B8DF5EC0E080F6F8890410E581287B79E7942221462E1254BE916480164BCA20D18C0844042202731A018F8F73BA8273BF720434F395584763D9C3F8D33DF7E28E4A17EE5AB810770F0EE2FE81F9B86FDE7C';
wwv_flow_imp.g_varchar2_table(1130) := 'DCB97051C15BB000772F18DC687ABCD2B82B947D3EEE59301F7789EE551DEF1D5C80DB55AF3F2C5A888777DE19FD7B3D01486BC8B4CE4F40C29F4029E983A8175377A13AC902DB1486944DA659912202118188C01C47202A00B3FC01E741A02560564755';
wwv_flow_imp.g_varchar2_table(1131) := 'B3DFA34E3A09477DF42338F4D39FC29F7FFA5C1C76EEB938FC539FC1B33EFD69F13E8DC3C53FF453E7E2D04F7D6A5692CB7FB8CA7E98EA76E8675407D5EB08D5EFF0F3CEC3733EF5493CE39FDE8A054F7AAAB64452290059408741F827D384BB912BA86C';
wwv_flow_imp.g_varchar2_table(1132) := '027695F668460422021181B98E4032D72B38D7EB478938EF7D37D22AA0997EFFC107A3EFD067A2FBB067A1FBF043D173C461320F43D76187A3FBD0C3D07398EC471C8E9AF88F9C0E7B5CE277A9CC2E7FCFE1AACBE14519BA8E501D0F7F267A9EF934F43E';
wwv_flow_imp.g_varchar2_table(1133) := 'EB19E879F2C1E08285683245452B2385F09FEBAD20D62F22101188086C38025101D870CC36B3189EB7E64042C0FFF0A6A71B795F2FF2FE3E64FDFD68F4F5A1D92BBB797D3DF03FC8616F3F9259482E77AEFA64BD3DC85CA79E7E344DAA4B267E6E7EB73F';
wwv_flow_imp.g_varchar2_table(1134) := 'FB4B24C2C38720B5F68F7845042202118188C09A08246BB22267762190C35F024C34E3CD33893B2F77E77AAC32ED864C05D09D21F7DB02666652183682FC8F771E0FCA55E63C533DF2A62AEACA660833FC4C7BF7A6505729425A15F16FA23D7D9BB3EB79';
wwv_flow_imp.g_varchar2_table(1135) := 'C6D2460422021181C70601498AC726A398CBA38500258BF518250029C1974808B2299B2811CF1F074A25EF53097E421651F12B19AA22CD267B51E20C499EC3B3FB50B70CB213A1DEAA3B44AAAA9020A0DF8210AF8840442022101198868024C7344E74CE';
wwv_flow_imp.g_varchar2_table(1136) := '3204884482AE1077044948EEA3990059627B227722B9981684140AB511F478C62EEB5141EE571CBDEAA1FAE6AA6749D20420164229A51C40CA02E215118808440422026B202031B1062F32661902440E3257A925F1D8449E8A122D9507129F50083FEA04';
wwv_flow_imp.g_varchar2_table(1137) := 'D49F02CEDA9B5277505221E9E5545D69D2D680EACC447546068A676C10AF88404420221011580381640D4E64CC32047268D55B652E849E67BC5E224F25004B0A6ECD846D920AB711A44D773C9E64D93E49B926FC5941AAAFD6075008FCAC282372998857';
wwv_flow_imp.g_varchar2_table(1138) := '44202210118808B441202A006D40994D2C893A3408649E0D879931250445D60A0215B5F13FC1C9A870C129C168E1380B29D4C1F5104D544F168E1372AB01093261D1A44D050C758E3F11818840442022D08A4054005AD1988D7609FE5C22BF203FCE5462';
wwv_flow_imp.g_varchar2_table(1139) := '3D9500144900E681884CE19ACC65BA92168A8F841EFF38FEBA5F53C5C8C6290FF553BDF334D41B12FC101E19A5ECA8CEC605F18A084404220211813510D0C8B9062F32661102D4D27E25883E8BBA5C25CF51CCF66D8744618EE2C47C8EAAC2A622CCE2AB';
wwv_flow_imp.g_varchar2_table(1140) := 'A2F297F5908C0F35714D33ED0BE4DAF397D80F754EF30C155102FB8660F127221011880844045A10880A400B18B3D16A2168250041D049D869961F78AA8C4D68695C12512EDDB2079EAC8FE4DE2CE2A88A30B930A539DD2EB7EBC910B035903CE21D1188';
wwv_flow_imp.g_varchar2_table(1141) := '08440422020181A800041866FB8F459DA85CF296CCD384389CD573CD726900B9FD4CB29B375BA9A84751FA42C823D428D8F3F00B88A3750F897F376FF310AF8840442022101198868047C869ACE88C08B44320F222021181884044602E21101580B9F434';
wwv_flow_imp.g_varchar2_table(1142) := '635D220211818840442022304304A2023043A03A3D58AC7F44202210118808CC2D04A20230B79E67AC4D4420221011880844046684405400660453A7078AF58F08440422021181B986405400E6DA138DF5890844042202118188C00C10880AC00C40EAF4';
wwv_flow_imp.g_varchar2_table(1143) := '20B1FE1181884044202230F710880AC0DC7BA6B146118188404420221011582F025101582F449D1E20D63F22101188084404E622025101988B4F35D629221011880844042202EB41202A00EB01A8D3BD63FD23021181884044606E22101580B9F95C63AD';
wwv_flow_imp.g_varchar2_table(1144) := '220211818840442022B04E04A202B04E783ADD33D63F22101188084404E62A02510198AB4F36D62B221011880844042202EB40202A00EB00A7D3BD62FD2302118188404460EE22101580B9FB6C63CD220211818840442022B05604A202B056683ADD23D6';
wwv_flow_imp.g_varchar2_table(1145) := '3F22101188084404E63202510198CB4F37D62D2210118808440422026B41202A006B01A6D3D9B1FE1181884044202230B711880AC0DC7EBEB176118188404420221011688B405400DAC2D2E9CC58FF8840442022101198EB08440560AE3FE158BF884044';
wwv_flow_imp.g_varchar2_table(1146) := '202210118808B441202A006D40E97456AC7F44202210118808CC7D04A20230F79F71AC61442022101188084404D640202A006B40D2E98C58FF88404420221011E80404A202D0094F39D631221011880844042202D310880AC034403ADD19EB1F11880844';
wwv_flow_imp.g_varchar2_table(1147) := '0422029D814054003AE339C75A460422021181884044600A025101980247A73B62FD23021181884044A05310880A40A73CE958CF884044202210118808B42010158016303ADD1AEB1F118808440422029D834054003AE759C79A46042202118188404460';
wwv_flow_imp.g_varchar2_table(1148) := '0281A8004C40D1E99658FF88404420221011E82404A202D0494F3BD635221011880844042202E3084405601C884E3762FD23021181884044A0B310880A40673DEF58DB8840442022101188080404A2021060E8F49F58FF88404420221011E83404A202D0';
wwv_flow_imp.g_varchar2_table(1149) := '694F3CD63722101188084404220242202A0002A1D3EF58FF88404420221011E83C04A202D079CF3CD638221011880844042202880A40C737820840442022101188087422025101E8C4A71EEB1C118808440422021D8F4054003ABC09C4EA470422021181';
wwv_flow_imp.g_varchar2_table(1150) := '88406722101580CE7CEEB1D611818840442022D0E1084405A0A31B40AC7C44202210118808742A025101E8D4271FEB1D118808440422021D8D4054003AF8F1C7AA4704220211818840E722101580CE7DF6B1E611818840442022D0C1084405A0631F7EAC';
wwv_flow_imp.g_varchar2_table(1151) := '78442022101188087432025101E8E4A71FEB1E118808440422021D8B4054003AF4D1C76A47042202118188406723101580CE7EFEB1956BB9350000039749444154F611818840442022D0A1084405A0231F7CAC7444202210118808743A025101E8F41610';
wwv_flow_imp.g_varchar2_table(1152) := 'EB1F118808440422021D894054003AF0B1C72A470422021181884044202A00B10D440422021181884044A00311880A40C73DF458E188404420221011880800510188AD202210118808440422021D884054003AECA1C7EA460422021181884044C0084405';
wwv_flow_imp.g_varchar2_table(1153) := 'C028448A08440422021181884087211015808E7AE0B1B21181884044202210112810880A408143FC8D08440422021181884047211015800E7ADCB1AA1181884044202210112811880A40894434230211818840442022D041084405A0631E76AC68442022';
wwv_flow_imp.g_varchar2_table(1154) := '1011880844042611880AC02416D1161188084404220211818E41202A001DF2A86335230211818840442022D08A4054005AD188F68840442022101188087408025101E888071D2B19118808440422021181A9084405602A1ED1151188084404220211818E';
wwv_flow_imp.g_varchar2_table(1155) := '40202A001DF0986315230211818840442022301D81A8004C4724BA230211818840442022D00108440560CE3FE458C1884044202210118808AC89405400D6C4247222021181884044202230E711880AC01C7FC4B17A1181884044202210116887405400DA';
wwv_flow_imp.g_varchar2_table(1156) := 'A1127911818840442022101198E3084405604E3FE058B9884044202210118808B447202A00ED7189DC884044202210118808CC6904A20230871F6FAC5A442022101188084404D686405400D6864CE4470422021181884044600E2310158039FB7063C522';
wwv_flow_imp.g_varchar2_table(1157) := '0211818840442022B07604A202B0766CA24F442022101188084404E62C02510198A38F36562B221011880844042202EB42202A00EB4227FA450422021181884044608E2210158039F96063A5220211818840442022B06E04A202B06E7CA26F4420221011';
wwv_flow_imp.g_varchar2_table(1158) := '88084404E62402510198838F355629221011880844042202EB43202A00EB4328FA470422021181884044600E2210158039F7506385220211818840442022B07E04A202B07E8C6288884044202210118808CC3904A20230C71E69AC4E4420221011880844';
wwv_flow_imp.g_varchar2_table(1159) := '0466824054006682520C131188084404220211813986405400E6D4038D95890844042202118188C0CC10880AC0CC708AA122021181884044202230A710880AC01C7A9CB12A1181884044202210119829025101982952315C442022101188084404E61002';
wwv_flow_imp.g_varchar2_table(1160) := '510198330F3356242210118808440422023347202A0033C72A868C0844042202118188C09C41202A0073E451C66A440422021181884044604310880AC086A015C3460422021181884044608E20F0FF010000FFFFFBBB8B9E00000006494441540300F64C';
wwv_flow_imp.g_varchar2_table(1161) := '779762FABF670000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(85468709092309895)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85460147559310016)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>39609577699602
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85460473429310011)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>39609577699712
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85460776337310010)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>39609577699754
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85461097036310009)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>39609577699786
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85461370516310008)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>39609577699790
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85461678262310007)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>39609577699790
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85461973946310006)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85462218957310005)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85462553304310004)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85462765357310003)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85463038258310002)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85463323035310001)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>39609577699791
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85463674828310000)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>39609577699794
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(85463964448309999)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>39609577699794
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(85470023467309893)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>39609577700371
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(85470365673309890)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(85464822872309990)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85465047896309989)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85500720653197845)
,p_short_name=>'Driver Standings'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85502234177196505)
,p_short_name=>'Drivers'
,p_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>3
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(85503593231195696)
,p_short_name=>'Circuits'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(85465736625309976)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2597873239612181258
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(85464280534309997)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>39609577699798
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(85464555398309994)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>39609577699801
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Formula APEX'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.f1-nav-card {',
'    background: var(--ut-component-bg);',
'    border: 1px solid var(--ut-component-border-color);',
'    border-radius: 12px;',
'    padding: 24px;',
'    text-align: center;',
'    transition: transform 0.2s ease, box-shadow 0.2s ease;',
'    cursor: pointer;',
'}',
'',
'.f1-nav-card:hover {',
'    transform: translateY(-4px);',
'    box-shadow: 0 8px 24px rgba(0,0,0,0.12);',
'}',
'',
'.f1-nav-card h3 {',
'    margin: 12px 0 6px;',
'    font-weight: 700;',
'    color: var(--ut-body-title-color);',
'}',
'',
'.f1-nav-card p {',
'    font-size: 0.8rem;',
'    color: var(--ut-body-text-color);',
'    opacity: 0.7;',
'    margin: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83499503014450819)
,p_plug_name=>'F1 Explorer'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; padding: 48px 24px 32px;">',
'    <span class="fa fa-flag-checkered" ',
'          style="font-size: 3rem; color: #E8002D; display:block; margin-bottom:16px;">',
'    </span>',
'    <h1 style="font-size: 2rem; font-weight: 700; margin: 0 0 8px; ',
'               color: var(--ut-body-title-color);">',
'        F1 Explorer',
'    </h1>',
'    <p style="font-size: 1rem; color: var(--ut-body-text-color); ',
'              opacity: 0.7; margin: 0;">',
unistr('        Current season standings, drivers and circuits \2014 powered by Jolpica & Wikipedia'),
'    </p>',
'</div>',
'',
'<div style="',
'    display: grid;',
'    grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));',
'    gap: 16px;',
'    padding: 0 24px 48px;',
'    max-width: 800px;',
'    margin: 0 auto;">',
'',
'    <a href="f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::" ',
'       style="text-decoration: none;">',
'        <div class="f1-nav-card">',
'            <span class="fa fa-trophy" style="color:#E8002D; font-size:1.8rem;"></span>',
'            <h3>Standings</h3>',
'            <p>Current driver championship standings</p>',
'        </div>',
'    </a>',
'',
'    <a href="f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::" ',
'       style="text-decoration: none;">',
'        <div class="f1-nav-card">',
'            <span class="fa fa-user" style="color:#E8002D; font-size:1.8rem;"></span>',
'            <h3>Drivers</h3>',
'            <p>All drivers competing this season</p>',
'        </div>',
'    </a>',
'',
'    <a href="f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::" ',
'       style="text-decoration: none;">',
'        <div class="f1-nav-card">',
'            <span class="fa fa-map-marker" style="color:#E8002D; font-size:1.8rem;"></span>',
'            <h3>Circuits</h3>',
'            <p>Race tracks and locations worldwide</p>',
'        </div>',
'    </a>',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85477998635309822)
,p_plug_name=>'Formula APEX'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Driver Standings'
,p_alias=>'DRIVER-STANDINGS'
,p_step_title=>'Driver Standings'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Gold, Silver, Bronze for top 3 */',
'tr[data-rownum="1"] td {',
'    background-color: rgba(255, 215, 0, 0.08) !important;',
'    border-left: 3px solid #FFD700;',
'}',
'tr[data-rownum="2"] td {',
'    background-color: rgba(192, 192, 192, 0.08) !important;',
'    border-left: 3px solid #C0C0C0;',
'}',
'tr[data-rownum="3"] td {',
'    background-color: rgba(205, 127, 50, 0.08) !important;',
'    border-left: 3px solid #CD7F32;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85500229583197851)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85464822872309990)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85608359427914837)
,p_plug_name=>'F1 - Driver Standings'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(85490535212285670)
,p_array_column_id=>wwv_flow_imp.id(85481739954285713)
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(85608491466914838)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'DEMO_SERIES'
,p_internal_uid=>85608491466914838
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85608576887914839)
,p_db_column_name=>'POSITION'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Position'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="',
'    font-size: 1.2rem; ',
'    font-weight: 700; ',
'    color: var(--ut-palette-primary);">',
'    #POSITION#',
'</span>'))
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85608611527914840)
,p_db_column_name=>'DRIVER_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Driver Code'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="',
'    font-family: monospace; ',
'    font-weight: 700; ',
'    font-size: 0.8rem;',
'    color: var(--ut-body-text-color);',
'    opacity: 0.6;">',
'    #DRIVER_CODE# - #DRIVER_PERMANENTNUMBER#',
'</span>'))
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85608761626914841)
,p_db_column_name=>'DRIVER_GIVENNAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Driver Givenname'
,p_column_html_expression=>'#DRIVER_GIVENNAME# #DRIVER_FAMILYNAME#'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85608811345914842)
,p_db_column_name=>'DRIVER_FAMILYNAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Driver Familyname'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85608924623914843)
,p_db_column_name=>'CONSTRUCTORS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Constructor'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85609012183914844)
,p_db_column_name=>'DRIVER_NATIONALITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Driver Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85609195666914845)
,p_db_column_name=>'DRIVER_PERMANENTNUMBER'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Driver Permanentnumber'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85609217920914846)
,p_db_column_name=>'WINS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Wins'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span>',
'    #WINS# ',
'    <span style="display:#WINS#>0?''inline'':''none''">',
'        <span class="fa fa-trophy" style="color:#f0c040;"></span>',
'    </span>',
'</span>',
''))
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85609320724914847)
,p_db_column_name=>'POINTS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Points'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="',
'    background: #E8002D; ',
'    color: #fff; ',
'    padding: 2px 10px; ',
'    border-radius: 12px; ',
'    font-weight: 700;',
'    font-size: 0.875rem;">',
'    #POINTS#',
'</span>'))
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(85609415476914848)
,p_db_column_name=>'DRIVER_URL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Driver Url'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(85653762112087407)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'856538'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'POSITION:DRIVER_CODE:DRIVER_GIVENNAME:DRIVER_FAMILYNAME:CONSTRUCTORS:DRIVER_NATIONALITY:DRIVER_PERMANENTNUMBER:WINS:POINTS:DRIVER_URL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85609536551914849)
,p_name=>'On Load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85609664762914850)
,p_event_id=>wwv_flow_imp.id(85609536551914849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.querySelectorAll(''.a-IRR-table tbody tr'').forEach(row => {',
'    const posCell = row.querySelector(''td:first-child span'');',
'    if (!posCell) return;',
'    ',
'    const pos = posCell.innerText.trim();',
'',
'    // Top 3 highlight',
'if (pos === ''1'') {',
'    row.style.cssText = ''background-color: rgba(255,215,0,0.25) !important; border-left: 4px solid #FFD700;'';',
'} else if (pos === ''2'') {',
'    row.style.cssText = ''background-color: rgba(192,192,192,0.25) !important; border-left: 4px solid #C0C0C0;'';',
'} else if (pos === ''3'') {',
'    row.style.cssText = ''background-color: rgba(205,127,50,0.25) !important; border-left: 4px solid #CD7F32;'';',
'}',
'',
'    // Hide trophy if wins = 0',
'    const winsCell = row.querySelector(''td:nth-child(6)'');',
'    if (winsCell) {',
'        const wins = parseInt(winsCell.innerText.trim()) || 0;',
'        const trophy = winsCell.querySelector(''.fa-trophy'');',
'        if (trophy && wins === 0) trophy.style.display = ''none'';',
'    }',
'});'))
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Drivers'
,p_alias=>'DRIVERS'
,p_step_title=>'Drivers'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(83501700161450841)
,p_plug_name=>'Drivers'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(85494105208272758)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>22
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(83501844713450842)
,p_region_id=>wwv_flow_imp.id(83501700161450841)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>true
,p_title_html_expr=>'&GIVENNAME. &FAMILYNAME.'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'NATIONALITY'
,p_body_adv_formatting=>true
,p_body_html_expr=>'<div class="f1-media-inject" data-wiki="&URL."></div>'
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'CODE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'DRIVERID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(83502233072450846)
,p_card_id=>wwv_flow_imp.id(83501844713450842)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_DRIVER_ID,P5_WIKI_URL:&DRIVERID.,\&URL.\'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85501732566196508)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85464822872309990)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(83501939832450843)
,p_name=>'on load'
,p_event_sequence=>9
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(83502042329450844)
,p_event_id=>wwv_flow_imp.id(83501939832450843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'document.querySelectorAll(''.a-CardView-item'').forEach(card => {',
'    const injectDiv = card.querySelector(''.f1-media-inject'');',
'    const wikiUrl = injectDiv?.getAttribute(''data-wiki'')?.trim();',
'',
'    if (!wikiUrl || !wikiUrl.includes(''/wiki/'')) return;',
'',
'    const slug = wikiUrl.split(''/wiki/'').pop();',
'',
'    fetch(`https://en.wikipedia.org/api/rest_v1/page/summary/${slug}`)',
'        .then(r => r.json())',
'        .then(data => {',
'            if (data?.thumbnail?.source) {',
'                const img = document.createElement(''img'');',
'                img.src = data.thumbnail.source;',
'                img.style.cssText = `',
'                                    width: 60%;',
'                                    height: 60%;',
'                                    object-fit: fill;',
'                                    object-position: top center;',
'                                    border-radius: 6px;',
'                                    display: block;',
'                                `;',
'                img.onerror = () => injectDiv.style.display = ''none'';',
'                injectDiv.innerHTML = '''';',
'                injectDiv.appendChild(img);',
'            } else {',
'                injectDiv.style.display = ''none'';',
'            }',
'        })',
'        .catch(() => {',
'            injectDiv.style.display = ''none'';',
'        });',
'});'))
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Circuits'
,p_alias=>'CIRCUITS'
,p_step_title=>'Circuits'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85503091536195698)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(85464822872309990)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85606266708914816)
,p_plug_name=>'Circuits'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(85497161415268319)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(85607666598914830)
,p_region_id=>wwv_flow_imp.id(85606266708914816)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'CIRCUITNAME'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>'&LOCATION_LOCALITY. - &LOCATION_COUNTRY.'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(85607963475914833)
,p_card_id=>wwv_flow_imp.id(85607666598914830)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_CIRCUIT_ID,P6_WIKI_URL:&CIRCUITID.,\&URL.\'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85606615038914820)
,p_plug_name=>'Circuit Locations'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_MAP_REGION'
);
wwv_flow_imp_page.create_map_region(
 p_id=>wwv_flow_imp.id(85606709258914821)
,p_region_id=>wwv_flow_imp.id(85606615038914820)
,p_height=>600
,p_tilelayer_type=>'CUSTOM'
,p_tilelayer_name_default=>'osm-positron'
,p_navigation_bar_type=>'FULL'
,p_navigation_bar_position=>'END'
,p_init_position_zoom_type=>'QUERY_RESULTS'
,p_layer_messages_position=>'BELOW'
,p_legend_position=>'END'
,p_features=>'MOUSEWHEEL_ZOOM:RECTANGLE_ZOOM:SCALE_BAR'
);
wwv_flow_imp_page.create_map_region_layer(
 p_id=>wwv_flow_imp.id(85606840467914822)
,p_map_region_id=>wwv_flow_imp.id(85606709258914821)
,p_name=>'Circuits'
,p_layer_type=>'POINT'
,p_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(85497161415268319)
,p_pk_column=>'CIRCUITID'
,p_geometry_column_data_type=>'LONLAT_COLUMNS'
,p_longitude_column=>'LOCATION_LONG'
,p_latitude_column=>'LOCATION_LAT'
,p_fill_color=>'#e8002d'
,p_point_display_type=>'ICON'
,p_point_icon_source_type=>'STATIC_CLASS'
,p_point_icon_css_classes=>'fa-trophy'
,p_feature_clustering=>false
,p_tooltip_adv_formatting=>false
,p_tooltip_column=>'CIRCUITNAME'
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::P6_WIKI_URL:\&URL.\'
,p_display_in_legend=>false
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Driver Detail'
,p_alias=>'DRIVER-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Driver Detail'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(83502374916450847)
,p_name=>'Driver Detail'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(85494105208272758)
,p_query_where=>'DRIVERID = :P5_DRIVER_ID'
,p_source_post_processing=>'WHERE_ORDER_BY_CLAUSE'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_DRIVER_ID'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83502465911450848)
,p_query_column_id=>1
,p_column_alias=>'URL'
,p_column_display_sequence=>90
,p_column_heading=>'More Info on'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83502582766450849)
,p_query_column_id=>2
,p_column_alias=>'CODE'
,p_column_display_sequence=>20
,p_column_heading=>'Code'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(83502610460450850)
,p_query_column_id=>3
,p_column_alias=>'DRIVERID'
,p_column_display_sequence=>100
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(85604721432914801)
,p_query_column_id=>4
,p_column_alias=>'GIVENNAME'
,p_column_display_sequence=>40
,p_column_heading=>'Name'
,p_column_html_expression=>'#GIVENNAME# #FAMILYNAME#'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(85604886324914802)
,p_query_column_id=>5
,p_column_alias=>'FAMILYNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Familyname'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(85604900931914803)
,p_query_column_id=>6
,p_column_alias=>'DATEOFBIRTH'
,p_column_display_sequence=>60
,p_column_heading=>'Date of birth'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(85605056213914804)
,p_query_column_id=>7
,p_column_alias=>'NATIONALITY'
,p_column_display_sequence=>70
,p_column_heading=>'Nationality'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(85605188995914805)
,p_query_column_id=>8
,p_column_alias=>'PERMANENTNUMBER'
,p_column_display_sequence=>80
,p_column_heading=>'Racing Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85606080852914814)
,p_plug_name=>'Bio'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; margin-bottom: 16px;">',
'    <img ',
'        id="p5-driver-photo" ',
'        src="" ',
'        style="width:140px; height:140px; object-fit:cover; object-position:top center; border-radius:50%; display:block; margin:0 auto 12px auto;"',
'    />',
'</div>',
'<p ',
'    id="p5-driver-bio" ',
'    style="font-size:0.875rem; line-height:1.6; color: var(--ut-body-text-color);">',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(83502115907450845)
,p_name=>'P5_DRIVER_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85606114609914815)
,p_name=>'P5_WIKI_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85605832221914812)
,p_name=>'On load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85605927143914813)
,p_event_id=>wwv_flow_imp.id(85605832221914812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const wikiUrl = apex.item(''P5_WIKI_URL'').getValue();',
'const slug = wikiUrl.split(''/wiki/'').pop();',
'',
'fetch(`https://en.wikipedia.org/api/rest_v1/page/summary/${slug}`)',
'    .then(r => r.json())',
'    .then(data => {',
'        // Photo',
'        if (data?.thumbnail?.source) {',
'            document.getElementById(''p5-driver-photo'').src = data.thumbnail.source;',
'        } else {',
'            document.getElementById(''p5-driver-photo'').style.display = ''none'';',
'        }',
'',
'        // Description',
'        if (data?.extract) {',
'            document.getElementById(''p5-driver-bio'').innerText = data.extract;',
'        } else {',
'            document.getElementById(''p5-driver-bio'').style.display = ''none'';',
'        }',
'    })',
'    .catch(() => {',
'        document.getElementById(''p5-driver-photo'').style.display = ''none'';',
'        document.getElementById(''p5-driver-bio'').style.display = ''none'';',
'    });'))
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Circuit Detail'
,p_alias=>'CIRCUIT-DETAIL'
,p_page_mode=>'MODAL'
,p_step_title=>'Circuit Detail'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85608007344914834)
,p_plug_name=>'Info'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; margin-bottom: 16px;">',
'    <img ',
'        id="p6-circuit-photo" ',
'        src="" ',
'        style="width:100%; max-height:260px; object-fit:Fill; object-position:center center; border-radius:8px; display:block;"',
'    />',
'</div>',
'<p ',
'    id="p6-circuit-bio" ',
'    style="font-size:0.875rem; line-height:1.6; color: var(--ut-body-text-color);">',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85607751123914831)
,p_name=>'P6_CIRCUIT_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85607811196914832)
,p_name=>'P6_WIKI_URL'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(85608110999914835)
,p_name=>'On load'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(85608241600914836)
,p_event_id=>wwv_flow_imp.id(85608110999914835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const wikiUrl = apex.item(''P6_WIKI_URL'').getValue();',
'',
'if (!wikiUrl || !wikiUrl.includes(''/wiki/'')) return;',
'',
'const slug = wikiUrl.split(''/wiki/'').pop();',
'',
'fetch(`https://en.wikipedia.org/api/rest_v1/page/summary/${slug}`)',
'    .then(r => r.json())',
'    .then(data => {',
'        if (data?.thumbnail?.source) {',
'            document.getElementById(''p6-circuit-photo'').src = data.thumbnail.source;',
'        } else {',
'            document.getElementById(''p6-circuit-photo'').style.display = ''none'';',
'        }',
'',
'        if (data?.extract) {',
'            document.getElementById(''p6-circuit-bio'').innerText = data.extract;',
'        } else {',
'            document.getElementById(''p6-circuit-bio'').style.display = ''none'';',
'        }',
'    })',
'    .catch(() => {',
'        document.getElementById(''p6-circuit-photo'').style.display = ''none'';',
'        document.getElementById(''p6-circuit-bio'').style.display = ''none'';',
'    });'))
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Formula APEX - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(85470985821309874)
,p_plug_name=>'Formula APEX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(85472645375309851)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(85470985821309874)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85471491256309859)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(85470985821309874)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>'Username: Demo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85471833175309856)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(85470985821309874)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>'Password: Welcome#2026'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(85472213993309854)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(85470985821309874)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85474875982309840)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>85474875982309840
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(85475360221309838)
,p_page_process_id=>wwv_flow_imp.id(85474875982309840)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(85475866249309837)
,p_page_process_id=>wwv_flow_imp.id(85474875982309840)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85472919589309850)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>85472919589309850
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(85473415705309846)
,p_page_process_id=>wwv_flow_imp.id(85472919589309850)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(85473960132309842)
,p_page_process_id=>wwv_flow_imp.id(85472919589309850)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(85474474944309841)
,p_page_process_id=>wwv_flow_imp.id(85472919589309850)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85476797419309834)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>85476797419309834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(85476310304309835)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>85476310304309835
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
