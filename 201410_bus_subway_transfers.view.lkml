view: bus_subway_transfers_14 {
  sql_table_name: 'fh-bigquery.mta_nyc_si.201410_bus_subway_transfers'
    ;;

  dimension: borough {
    type: string
    sql: ${TABLE}.borough ;;
  }

  dimension: bus_from {
    type: string
    sql: ${TABLE}.bus_from ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: num_transfers {
    type: number
    sql: ${TABLE}.num_transfers ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: station_to {
    type: string
    sql: ${TABLE}.station_to ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
