view: sql_runner_query_revenue {
  derived_table: {
    sql: SELECT
      sum(payment.amount)  AS payment_amount
      --   payment.rental_id  AS payment_rental_id
      FROM leon_thesis_data.payment  AS payment

      ORDER BY 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: payment_amount {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.payment_amount ;;
  }

  set: detail {
    fields: [payment_amount]
  }
}
