view: maintained_assets {
  sql_table_name: sf_parks_and_rec.maintained_assets ;;

  dimension: asset_id {
    type: number
    sql: ${TABLE}.asset_id ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.asset_name ;;
  }

  dimension: asset_subtype {
    type: string
    sql: ${TABLE}.asset_subtype ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }

  dimension: facility_id {
    type: number
    sql: ${TABLE}.facility_id ;;
  }

  dimension: floor_id {
    type: number
    sql: ${TABLE}.floor_id ;;
  }

  dimension: functional_area_id {
    type: number
    sql: ${TABLE}.functional_area_id ;;
  }

  dimension: geom {
    type: string
    sql: ${TABLE}.geom ;;
  }

  dimension: map_label {
    type: string
    sql: ${TABLE}.map_label ;;
  }

  dimension: object_id {
    type: number
    sql: ${TABLE}.object_id ;;
  }

  dimension: property_id {
    type: number
    sql: ${TABLE}.property_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_name]
  }
}
