view: revenue_dt{
# # If necessary, uncomment the line below to include explore_source.
# # include: "leon_thesis_dvd_rental.model.lkml"
#
# #
#     derived_table: {
#       explore_source: rental {
#         preserve_types: yes
#         column: title { field: film.title }
#         column: inventory_id { field: inventory.inventory_id }
#         column: rental_rate { field: film.rental_rate }
# #         column: revenue {}
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
# #     dimension: revenue {
# #       value_format: "$0.00"
# #       type: number
#     }
#     dimension: store_id {
#       type: number
#     }
# #     measure: total_revenue {
# #       type: sum
# #       sql: ${revenue} ;;
# #       value_format: "$#,##0.00"
# #       drill_fields: [store_id, revenue, rental_rate, title]
# #     }
#   }



# If necessary, uncomment the line below to include explore_source.
# include: "leon_thesis_dvd_rental.model.lkml"

#       view: add_a_unique_name_1536587784 {
# If necessary, uncomment the line below to include explore_source.
# include: "leon_thesis_dvd_rental.model.lkml"

# #   view: add_a_unique_name_1536588063 {
    derived_table: {
      explore_source: payment {
        column: rental_rate { field: film.rental_rate }
        column: rental_id { field: rental.rental_id }
        column: count { field: rental.count }
        column: revenueish {}
        column: store_id { field: store.store_id}
      }
    }
    dimension: rental_rate {
      value_format: "$0.00"
      type: number
    }
    dimension: rental_id {
      type: number
    }
    dimension: count {
      type: number
    }
    dimension: revenueish {
      type: number
    }

    dimension: store_id {
      type: number
    }

  measure: rev {
    type: sum
    sql: ${TABLE}.revenueish ;;
    value_format: "$#,##0.00"
  }


  }
