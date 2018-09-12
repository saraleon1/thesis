view: payment {
  sql_table_name: leon_thesis_data.payment ;;

  dimension: payment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.payment_id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: payment {
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
    sql: ${TABLE}.payment_date ;;
  }

  dimension: rental_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rental_id ;;
  }

  dimension: staff_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.staff_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

measure: revenueish {
  type: number
  sql: ${film.rental_rate} * ${rental.count} ;;
}


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      payment_id,
      amount,
      staff.staff_id,
      staff.last_name,
      staff.first_name,
      staff.username,
      customer.last_name,
      customer.customer_id,
      customer.first_name,
      rental.rental_id
    ]
  }
}
