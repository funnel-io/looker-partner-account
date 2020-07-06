connection: "demo"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

datagroup: demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_default_datagroup

explore: funnel_data {}
