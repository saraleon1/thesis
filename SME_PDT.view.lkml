view: sme_pdt {
   derived_table: {
    explore_source: inventory {
      column: film_id {}
      column: inventory_id {}
      column: count {}
    }
    sql_trigger_value: SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP()) ;;
  }
  dimension: film_id {
    type: number
  }
  dimension: inventory_id {
    type: number
  }
  dimension: count {
    type: number
  }
  }
# If necessary, uncomment the line below to include explore_source.
# include: "leon_thesis_dvd_rental.model.lkml"
