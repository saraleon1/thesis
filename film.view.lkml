view: film {
  sql_table_name: leon_thesis_data.film ;;

  dimension: film_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.film_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fulltext {
    type: string
    sql: ${TABLE}.fulltext ;;
  }

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
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

  dimension: length {
    type: number
    value_format: "0 \" Minutes\""
    sql: ${TABLE}.length ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}.rating ;;
  }

  dimension: release_year {
    type: number
    sql: ${TABLE}.release_year ;;
  }

  dimension: rental_duration {
    type: number
    value_format: "0 \" Days\""
    sql: ${TABLE}.rental_duration ;;
  }

  dimension: rental_rate {
    type: number
    value_format: "$0.00"
    sql: ${TABLE}.rental_rate ;;
  }

  dimension: replacement_cost {
    type: number
    value_format: "$0.00"
    sql: ${TABLE}.replacement_cost ;;
  }

  dimension: special_features {
    type: string
    sql: ${TABLE}.special_features ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
    html: <a href="https://dcl.dev.looker.com/dashboards/242?Movie%20Title=&filter_config=%7B%22Movie%20Title%22:%5B%7B%22type%22:%22%3D%22,%22values%22:%5B%7B%22constant%22:%22%22%7D,%7B%7D%5D,%22id%22:6%7D%5D%7D"> {{value}} </a>;;
  }

parameter: title_filter {
  type: string
  hidden: yes
}

dimension: title_filter_dimension{
  type: string
  sql:  { parameter title_filter } ;;
}
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      title_filter,
      film_id,
      language.name,
      language.language_id,
      film_actor.count,
      film_category.count,
      inventory.count,
      title,
      special_features,
      replacement_cost,
      rental_rate,
      rental_duration,
      release_year,
      rating,
      length,
      language_id,
      fulltext,
      description,
      film_id
    ]
  }
}
