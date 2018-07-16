connection: "looker-dcl-dev"

# include all the views
include: "*.view"

datagroup: saral_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: saral_thesis_default_datagroup


explore: bus_max_load_14 {}

explore: bus_subway_transfers_14 {}

explore: bustime_14 {}

explore: daily_ridership_14 {}

explore: hourly_ridership_14 {}

explore: timepoint_14 {}

explore: bus_max_load_15 {}

explore: bus_subway_transfers_15 {}

explore: bustime_15 {}

explore: daily_ridership_15 {}

explore: hourly_ridership_15 {}

explore: timepoint_15 {}
