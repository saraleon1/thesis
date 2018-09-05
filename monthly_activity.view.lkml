view: monthly_activity {
  derived_table: {
    sql:
      SELECT
        rental.inventory_id  AS rental_inventory_id,
        COUNT(*) AS rental_count
      FROM leon_thesis_data.rental  AS rental

      GROUP BY 1 ;;
  }

  dimension: inventory_id {
    type: number
    sql: ${TABLE}.rental_inventory_id ;;
    primary_key: yes
  }

  dimension: rental_count{
    type: number
    sql: ${TABLE}.rental_count ;;
  }

}
