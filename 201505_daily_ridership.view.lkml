view: daily_ridership_15 {
  sql_table_name: `fh-bigquery.mta_nyc_si.201505_daily_ridership`
    ;;

  dimension: dir {
    type: string
    sql: ${TABLE}.dir ;;
  }

  dimension: leave_load {
    type: number
    sql: ${TABLE}.leave_load ;;
  }

  dimension: offs {
    type: number
    sql: ${TABLE}.offs ;;
  }

  dimension: ons {
    type: number
    sql: ${TABLE}.ons ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.route ;;
  }

  dimension: stop_box_id {
    type: number
    sql: ${TABLE}.stop_box_id ;;
  }

  dimension: stop_id_nyct {
    type: number
    value_format_name: id
    sql: ${TABLE}.stop_id_nyct ;;
  }

  dimension: stop_name {
    type: string
    sql: ${TABLE}.stop_name ;;
  }

  dimension: stop_sequence {
    type: number
    sql: ${TABLE}.stop_sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [stop_name]
  }
}
