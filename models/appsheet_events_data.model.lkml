connection: "appsheet_test_events"

# include all the views
include: "/views/**/*.view"

datagroup: appsheet_events_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: appsheet_events_data_default_datagroup

explore: appsheet_events {
}
