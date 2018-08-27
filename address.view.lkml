view: address {
  sql_table_name: leon_thesis_data.address ;;

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: city_id {
    type: string
    sql: ${TABLE}.city_id ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.district ;;
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

  dimension: phone {
    type: number
    value_format: "(000) \000-0000"
    sql: ${TABLE}.phone ;;
  }

  dimension: postal_code {
     type: zipcode
     value_format: "*00000#"
     sql: ${TABLE}.postal_code ;;
  }

  measure: count {
    type: count
    drill_fields: [address_id, customer.count, staff.count, store.count]
  }
}
