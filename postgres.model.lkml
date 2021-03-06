connection: "postgres_connection"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: postgres_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: postgres_default_datagroup

explore: ra {
  always_filter: {
    filters: {
      field: state
      value: "Kansas"
    }
}
}
