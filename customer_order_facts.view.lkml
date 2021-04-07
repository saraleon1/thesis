view: customer_order_facts {
  derived_table: {
    #       The first rental dates:
    sql:
      SELECT
        rental_two.rental_id  AS rental_rental_id,
        rental.rental_customer_id,
        CAST( TIMESTAMP(FORMAT_TIMESTAMP('%F %T',rental_two.rental_date, 'America/Los_Angeles')) AS DATE) AS rental_rental_date,
        rental.rental_first_rental
      FROM (SELECT
        customer_id  AS rental_customer_id,
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %T', min(rental_date), 'America/Los_Angeles')) AS DATE) AS rental_first_rental
      FROM leon_thesis_data.rental

      GROUP BY 1 ) rental
      LEFT JOIN leon_thesis_data.rental rental_two ON rental_two.customer_id = rental.rental_customer_id

      GROUP BY 1,2,3,4 ;;
}


dimension: rental_rental_id {
  type: number
}

dimension: rental_customer_id {
  type:  number
}

dimension: first_rental {
  type: date
  sql:  CAST(${TABLE}.rental_first_rental AS TIMESTAMP) ;;
}

dimension: rental_date {
  type: date
  sql: CAST(${TABLE}.rental_rental_date AS TIMESTAMP) ;;
}
}
