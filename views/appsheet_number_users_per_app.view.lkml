view: appsheet_number_users_per_app {

  sql_table_name: `appsheet_analytics_prototype_data.appsheet_events`
    ;;

  dimension: event_time {
    type: date
    sql: ${TABLE}.event_time ;;
  }

  dimension: appsheet_app_id {
    type: date
    sql: ${TABLE}.appsheet_app_id ;;
  }

  dimension: number_of_users {
    type: date
    sql: ${TABLE}.number_of_users ;;
  }
}
