view: appsheet_number_users_per_app { #this table records the daily number of unique users for each app

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

  #active users are only counted if they performed one of the following events: "workflowNotification","appSync","workflowDataChange","workflowWebhook","workflowMakeDoc","workflowEmail","workflowSMS"
  dimension: number_of_users {
    type: date
    sql: ${TABLE}.number_of_users ;;
  }

  #get average number of use users for each app
  measure: average_number_of_unique_app_users {
    type: average
    sql: number_of_users;;
  }

}
