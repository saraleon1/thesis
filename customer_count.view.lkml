# If necessary, uncomment the line below to include explore_source.
# include: "leon_thesis_dvd_rental.model.lkml"

view: customer_count {
  derived_table: {
    explore_source: rental {
      column: full_name { field: customer.full_name }
      column: email { field: customer.email }
      column: count {}
      filters: {
        field: customer.store_id
        value: "1"
      }
    }
  }
  dimension: full_name{}
  dimension: email {}
  dimension: count {
    type: number
  }

  measure: count_attempt_dist {
    type: count_distinct
  }
}
