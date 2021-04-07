view: actor {
  sql_table_name: leon_thesis_data.actor ;;

  dimension: actor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.actor_id ;;
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
      label: "About the Actor"
      url: "https://en.wikipedia.org/wiki/{{ value }}"
      icon_url: "https://is2-ssl.mzstatic.com/image/thumb/Purple128/v4/e3/d6/03/e3d6030b-c492-d14a-212a-adca04979e73/AppIcon-1x_U007emarketing-0-0-GLES2_U002c0-512MB-sRGB-0-0-0-85-220-0-0-0-6.png/246x0w.jpg"
      }
    link: {
      label: "Other Movies With This Actor"
      url: "/dashboards/247?Name={{ value }}"
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

  measure: count {
    type: count
    drill_fields: [actor_id, last_name, first_name, full_name, film_actor.count]
  }
}
