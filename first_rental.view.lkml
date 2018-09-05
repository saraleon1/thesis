view: first_rental {
#   derived_table: {
#     explore_source: rental {
#       column: customer_id {}
#       column: first_rental {}
#       #derived_column: first_rental_agg {
#        # sql: min(first_rental) ;;
#       }
#       #column: rental_time{}
#     }
#   }
#   dimension: customer_id {
#     type: number
#     primary_key: yes
#   }
#   dimension_group: first_rental {
#     type: time
#     sql: CAST(${TABLE}.first_rental AS TIMESTAMP) ;;
#   }
#
#   dimension: rental_activity {
#     type: date
#     sql: CAST(${TABLE}.rental_date AS TIMESTAMP);;
#     }
#
#  dimension: rental_activity_agg {
#
#  dimension: weeks_since_signup {
#    type: number
#    sql: date_diff(${first_rental}, ${rental_activity}, week) ;;
#   }

  derived_table: {
    sql:
      SELECT
        rental.customer_id  AS customer_id,
        rental.inventory_id  AS inventory_id,
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', min(rental.rental_date), 'America/Los_Angeles')) AS DATE) AS first_rental
      FROM leon_thesis_data.rental  AS rental
      GROUP BY 1,2;;
  }
  dimension: customer_id {
    type: number
    primary_key: yes
  }

  dimension: inventory_id {
    type: number
    hidden: yes
  }


  dimension: first_rental {
     type: date
     sql: CAST(${TABLE}.first_rental AS TIMESTAMP) ;;
  }
}
