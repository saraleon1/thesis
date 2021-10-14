view: rental {
  sql_table_name: leon_thesis_data.rental ;;

  dimension: rental_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.rental_id ;;
  }

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.customer_id ;;
  }

  dimension: inventory_id {
    type: number
    # hidden: yes
    sql: CAST( ${TABLE}.inventory_id as INT64);;
  }

  dimension: test {
    sql: case when rand() > 0.5
    then "<div><b>hello</b></div>"
    else "<img src='https://ctimgibedfordviewcampuslibrary.files.wordpress.com/2015/10/library-books-return.jpg' height=70 width=70>"
    end;;
  }

  dimension_group: last_update {
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
    sql: ${TABLE}.last_update ;;
  }

  dimension_group: rental {
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
    sql: ${TABLE}.rental_date ;;
  }

  measure: first_rental {
    type: date
    sql:min(${TABLE}.rental_date);;
    drill_fields: [detail*]
  }

  dimension_group: return {
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
    sql: ${TABLE}.return_date ;;
  }

  dimension: actual_rental_duration{
    type: number
    value_format: "0 \" Days\""
    sql: date_diff(${rental.return_date}, ${rental.rental_date},day);;

  }

  dimension: overdue {
    type: string
    sql: if(${rental.actual_rental_duration} - ${film.rental_duration} > 0, "overdue", "on time");;
    html:{% if value == "overdue" %}
                   <p style="color: white; background-color: #252cc7; font-size:150%; text-align:center"><img src="https://ctimgibedfordviewcampuslibrary.files.wordpress.com/2015/10/library-books-return.jpg" height=70 width=70><b>{{ rendered_value }}</b></p>
          {% else %}
            <p <p style="color: black; background-color: #ffad27; font-size:150%; text-align:center"><img src="https://cdn1.vectorstock.com/i/1000x1000/33/60/hands-palm-applause-success-text-bravo-vector-6003360.jpg" height=70 width=70><b>{{ rendered_value }}</b></p>
          {% endif %}
          ;;
  }

  dimension: staff_id {
    type: number
    # hidden: yes
    sql: 1234.57 ;;
    #value_format_name: usd_0
  }

  dimension: image {
    sql: 1 ;;
    html: <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Thats_all_folks.svg/1589px-Thats_all_folks.svg.png"/> ;;
  }

  measure: count {
    type: count
    #sql: ${rental_id} ;;
    drill_fields: [detail*]
  }

#   measure: times_rented {
#     type: number
#   #  sql: COUNT(${inventory_id}) ;;
#     sql:
#           COUNT(rental.inventory_id)  AS rental_times_rented
#         FROM leon_thesis_data.rental  AS rental
#
#         GROUP BY 1
#         ORDER BY 1
#         LIMIT 500 ;;
#     drill_fields: [detail*]
#   }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rental_id,
      inventory.inventory_id,
      staff.staff_id,
      staff.last_name,
      staff.first_name,
      staff.username,
      customer.last_name,
      customer.customer_id,
      customer.first_name,
      payment.count,
      film.rental_rate
    ]
  }
}
