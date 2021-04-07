view: inventory {
  sql_table_name: leon_thesis_data.inventory ;;

  dimension: inventory_id {
    primary_key: yes
    type: number
    sql: CAST(${TABLE}.inventory_id as INT64) ;;
  }

  dimension: film_id {
    type: number
    # hidden: yes
    sql: CAST(${TABLE}.film_id as INT64) ;;
    drill_fields: [film.title]
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  dimension: store_id {
    type: number
    # hidden: yes
    sql: CAST(${TABLE}.store_id as INT64) ;;
  }

  measure: count {
    type: count
    drill_fields: [inventory_id, store.store_id, film.film_id, rental.count]
  }
}
