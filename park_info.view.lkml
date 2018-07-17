view: park_info {
  sql_table_name: sf_parks_and_rec.park_info ;;

  dimension: acreage {
    type: number
    sql: ${TABLE}.acreage ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: park_id {
    type: number
    sql: ${TABLE}.park_id ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.park_name ;;
  }

  dimension: park_service_area {
    type: string
    sql: ${TABLE}.park_service_area ;;
  }

  dimension: park_type {
    type: string
    sql: ${TABLE}.park_type ;;
  }

  dimension: psa_manager {
    type: string
    sql: ${TABLE}.psa_manager ;;
  }

  dimension: sup_dist {
    type: number
    sql: ${TABLE}.sup_dist ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }
}
