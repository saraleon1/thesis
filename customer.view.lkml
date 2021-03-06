view: customer {
  sql_table_name: leon_thesis_data.customer ;;

  dimension: customer_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: active {
    type: number
    sql: ${TABLE}.active ;;
  }

  dimension: activebool {
    type: yesno
    sql: ${TABLE}.activebool ;;
  }

  dimension: address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.address_id ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.create_date ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: full_name {
    type: string
    sql: CONCAT(${TABLE}.first_name, ' ', ${TABLE}.last_name) ;;
    link: {
      label: "More About This Customer"
      url: "/dashboards/249?Name={{ value }}"
      icon_url: "https://looker.com/favicon.ico"
    }
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

  dimension: store_id {
    type: number
    # hidden: yes
    sql: CAST(${TABLE}.store_id as INT64) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      customer_id,
      active,
      activebool,
      address_id,
      last_name,
      first_name,
      email,
      store.store_id,
      address.address_id,
      payment.count,
      rental.count
    ]
  }
}
