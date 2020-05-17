view: appsheet_number_users_per_app {

  sql_table_name: `appsheet_analytics_prototype_data.appsheet_events`
    ;;

  dimension: event_time {
    type: date
    sql: ${TABLE}.event_time ;;
  }
}
