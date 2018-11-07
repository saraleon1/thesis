view: dt_block {
  view_label: "Order Cohorts"
  # The Initial Event is set to be the first rental date. This is what will be used to create cohorts.
  # The Goal Event is going to be the customer making a second rental / measure how long they continue to make rentals
  # A more specific event could be either spending more than 30 dollars or making 5 different rentals
  # Cohorts will be defined by the month they first rent ' paying customers in a month'
  derived_table:
  {
    sql:

      SELECT rental.customer_id AS user_id
          , COUNT(DISTINCT rental_id) as lifetime_orders
          , COUNT(*) AS lifetime_order_items
          , MIN(rental.rental_date) AS first_order
          , MAX(rental.rental_date) AS latest_order
          , DATE_DIFF(MAX(CAST(rental.rental_date AS DATE)),MIN(CAST(rental.rental_date AS DATE)),day) AS days_as_customer
          , DATE_DIFF(CURRENT_DATE(),MAX(CAST(rental.rental_date AS DATE)), day) AS days_since_purchase
          , COUNT(DISTINCT CONCAT(CAST((EXTRACT(MONTH FROM CAST(rental.rental_date AS DATE))) AS STRING),CAST(EXTRACT(MONTH FROM CAST(rental.rental_date AS DATE)) AS STRING))) AS number_of_distinct_months_with_orders
      FROM leon_thesis_data.rental
      GROUP BY user_id;;

}

dimension: user_id {
  type: number
  label: "customer id"
}

dimension: lifetime_orders {
  type: number
}

dimension: lifetime_order_items {
  type: number
}

dimension_group: first_order {
  type: time
}

dimension_group: latest_order {
  type: time
}

dimension: days_as_customer {}

dimension: days_since_purchase {}

dimension: number_of_distinct_months_with_orders {}

dimension: lifetime_number_of_orders_tier {
    type: tier
    style: integer
    tiers: [15,25,35]
    sql: ${TABLE}.lifetime_orders;;
}
dimension: repeat_customer {
    type: yesno
    sql: ${TABLE}.lifetime_orders > 1 ;;
}

measure: count {
  type: count
  drill_fields: [user_id,
                lifetime_orders,
                lifetime_order_items,
                first_order_date,
                latest_order_date,
                days_as_customer,
                days_since_purchase,
                number_of_distinct_months_with_orders,
                lifetime_number_of_orders_tier,
                repeat_customer]
}
}
