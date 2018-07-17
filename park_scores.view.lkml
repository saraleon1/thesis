view: park_scores {
  sql_table_name: sf_parks_and_rec.park_scores ;;

  dimension: fq {
    type: string
    sql: ${TABLE}.fq ;;
  }

  dimension: park {
    type: string
    sql: ${TABLE}.park ;;
  }

  dimension: park_id {
    type: number
    sql: ${TABLE}.park_id ;;
  }

  dimension: psa {
    type: string
    sql: ${TABLE}.psa ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
