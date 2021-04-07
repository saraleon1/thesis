view: test_param_preservetype {
  derived_table: {
#     preserve_types: yes
    explore_source: rental {
#       preserve_types: yes
      column: customer_id {}
      column: first_rental {}
      column: rental_time{}
      #derived_column: first_rental_agg {
      # sql: min(first_rental) ;;
    }

  }

  dimension: customer_id {
    type: number
    primary_key: yes
  }
  dimension_group: first_rental {
    type: time
    sql: CAST(${TABLE}.first_rental AS TIMESTAMP) ;;
  }

  dimension: rental_activity {
    type: date
    sql: CAST(${TABLE}.rental_time AS TIMESTAMP);;
  }

#   dimension: rental_activity_agg {}

  dimension: weeks_since_signup {
    type: number
    sql: date_diff(${first_rental_date}, ${rental_activity}, week) ;;
  }
  }
#       derived_table: {
#       explore_source: rental {
#         preserve_types: yes
#         column: title { field: film.title }
#         column: inventory_id { field: inventory.inventory_id }
#         column: rental_rate { field: film.rental_rate }
#         column: revenue {}
#         column: store_id { field: store.store_id }
#       }
#     }
#     dimension: title {}
#
#     dimension: inventory_id {}
#
#     dimension: rental_rate {
#       value_format: "$0.00"
#       type: number
#     }
#     dimension: revenue {
#       value_format: "$0.00"
#       type: number
#     }
#     dimension: store_id {
#       type: number
#     }
#     measure: total_revenue {
#       type: sum
#       sql: ${revenue} ;;
#       value_format: "$#,##0.00"
#       drill_fields: [store_id, revenue, rental_rate, title]
#     }
#   }
