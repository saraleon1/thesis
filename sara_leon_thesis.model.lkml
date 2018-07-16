connection: "looker-dcl-dev"

# include all the views
include: "*.view"

datagroup: saral_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: saral_thesis_default_datagroup
