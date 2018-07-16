view: bustime_15 {
  sql_table_name: `fh-bigquery.mta_nyc_si.201505_bustime`
    ;;

  dimension: act_dest_sign_code {
    type: number
    sql: ${TABLE}.act_dest_sign_code ;;
  }

  dimension: bus {
    type: number
    sql: ${TABLE}.bus ;;
  }

  dimension: day {
    type: number
    sql: ${TABLE}.day ;;
  }

  dimension: depot {
    type: string
    sql: ${TABLE}.depot ;;
  }

  dimension: distance_along_trip {
    type: number
    sql: ${TABLE}.distance_along_trip ;;
  }

  dimension: inferred_dest_sign_code {
    type: number
    sql: ${TABLE}.inferred_dest_sign_code ;;
  }

  dimension: inferred_direction_id {
    type: number
    sql: ${TABLE}.inferred_direction_id ;;
  }

  dimension: inferred_is_formal {
    type: string
    sql: ${TABLE}.inferred_is_formal ;;
  }

  dimension: inferred_phase {
    type: string
    sql: ${TABLE}.inferred_phase ;;
  }

  dimension: inferred_route {
    type: string
    sql: ${TABLE}.inferred_route ;;
  }

  dimension: inferred_trip_id {
    type: string
    sql: ${TABLE}.inferred_trip_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: next_scheduled_stop {
    type: number
    sql: ${TABLE}.next_scheduled_stop ;;
  }

  dimension: next_scheduled_stop_distance {
    type: number
    sql: ${TABLE}.next_scheduled_stop_distance ;;
  }

  dimension: time {
    type: number
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
