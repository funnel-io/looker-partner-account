connection: "demo"

# include all the views
include: "/views/**/*.view"

datagroup: demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_default_datagroup

explore: funnel_data {
  join: campaign_data {
    type: left_outer
    sql_on: ${funnel_data.campaign}=${campaign_data.campaign} ;;
    relationship: many_to_one
  }
}
