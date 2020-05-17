view: appsheet_events {
  sql_table_name: `appsheet_analytics_prototype_data.appsheet_events`
    ;;

  dimension: event_ids {
    primary_key: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.event_ids ;;
  }


  dimension: appsheet_app_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.appsheet_app_id ;;
  }

  dimension: appsheet_owner_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.appsheet_owner_id ;;
  }

  dimension: appsheet_user_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.appsheet_user_id ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_time ;;
  }

  measure: number_of_app_ids {
    type: count
    drill_fields: [appsheet_app_id]
  }

  measure: number_of_events {
    type: count
    drill_fields: [event_name]
  }

  measure: number_of_owner_ids {
    type: count
    drill_fields: [appsheet_owner_id]
  }

  measure: number_of_user_ids {
    type: count
    drill_fields: [appsheet_user_id]
  }

  measure: number_of_countries {
    type: count
    drill_fields: [country]
  }


}
