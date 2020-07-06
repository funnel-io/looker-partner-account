
  view: funnel_data {
    sql_table_name: `firebase-funnel.looker_demo.looker_demo_view`;;

    dimension_group: ad {
      type: time
      datatype: date
      timeframes: [date, day_of_week, week, day_of_month,month, year]
      sql: ${TABLE}.Date;;
    }

    dimension: connection_type_code {
      type: string
      sql: ${TABLE}.Connection_type_code ;;
    }

    dimension: connection_id {
      type: string
      sql: ${TABLE}.Connection_id ;;
    }

    dimension: currency {
      type: string
      sql: ${TABLE}.Currency ;;
    }

    dimension: traffic_source {
      type: string
      sql: ${TABLE}.Traffic_source ;;
    }

    dimension: media_type {
      type: string
      sql: ${TABLE}.Media_type ;;
    }

    dimension: paid_organic {
      type: string
      sql: ${TABLE}.Paid__Organic;;
    }

    dimension: campaign {
      type: string
      sql: ${TABLE}.Campaign ;;
    }

    dimension: ad_group {
      type: string
      sql: ${TABLE}.Ad_Group ;;
    }

    dimension: ad {
      type: string
      sql: ${TABLE}.Ad ;;
    }

    dimension: keyword {
      type: string
      sql: ${TABLE}.Keyword ;;
    }

    dimension: cost {
      hidden: yes
      type: number
      sql: ${TABLE}.Cost ;;
    }

    dimension: clicks {
      hidden: yes
      type: number
      sql: ${TABLE}.Clicks ;;
    }

    dimension: impressions {
      hidden: yes
      type: number
      sql: ${TABLE}.Impressions ;;
    }

    measure: count {
      hidden: yes
      type: count
      drill_fields: [detail*]
    }

    measure: total_cost {
      type: sum
      sql: ${cost} ;;
      value_format_name: usd_0
      drill_fields: [detail*]
    }

    measure: total_impressions {
      type: sum
      sql: ${impressions} ;;
      value_format_name: decimal_0
      drill_fields: [detail*]
    }

    measure: total_clicks{
      type: sum
      sql: ${clicks} ;;
      value_format_name: decimal_0
      drill_fields: [detail*]
    }

    measure: click_rate {
      label: "Click Through Rate (CTR)"
      description: "Percent of people that click on an ad."
      type: number
      sql: ${total_clicks}*1.0/nullif(${total_impressions},0) ;;
      value_format_name: percent_2
      drill_fields: [detail*]

    }

    measure: cost_per_click {
      label: "Cost per Click (CPC)"
      description: "Average cost per ad click."
      type: number
      sql: ${total_cost}* 1.0/ NULLIF(${total_clicks},0) ;;
      value_format_name: usd
      drill_fields: [detail*]
    }

    measure: cost_per_impression {
      label: "Cost per Thousand Impressions (CPM)"
      description: "Average cost per one thousand ad impressions for display ads."
      type: number
      sql: ${total_cost}* 1.0/ NULLIF(1.0*${total_impressions}/1000,0) ;;
      value_format_name: usd
      drill_fields: [detail*]
    }


    set: detail {
      fields: [
        ad_date,
        connection_type_code,
        connection_id,
        currency,
        traffic_source,
        media_type,
        paid_organic,
        campaign,
        ad_group,
        ad,
        keyword,
        cost,
        clicks,
        impressions
      ]
    }
  }
