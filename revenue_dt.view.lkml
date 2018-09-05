# view: revenue_dt {
# # If necessary, uncomment the line below to include explore_source.
# # include: "leon_thesis_dvd_rental.model.lkml"
#
#
#     derived_table: {
#       explore_source: rental {
#         column: title { field: film.title }
#         column: inventory_id { field: inventory.inventory_id }
#         column: rental_rate { field: film.rental_rate }
# #         column: revenue {}
#         column: store_id { field: store.store_id }
#       }
#     }
#     dimension: title {}
#     dimension: inventory_id {
#       type: number
#     }
#     dimension: rental_rate {
#       value_format: "$0.00"
#       type: number
#     }
# #     dimension: revenue {
# #       value_format: "$0.00"
# #       type: number
# #     }
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
