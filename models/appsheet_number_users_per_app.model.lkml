connection: "appsheet_test_events"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: appsheet_number_users_per_app_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: appsheet_number_users_per_app_default_datagroup


explore: appsheet_number_users_per_app {}
