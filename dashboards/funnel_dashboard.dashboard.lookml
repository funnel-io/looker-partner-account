- dashboard: advertising_pulse_funnel
  title: Advertising Pulse (Funnel)
  layout: newspaper
  preferred_viewer: dashboards-next
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Traffic Source Overview
    name: Traffic Source Overview
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.total_cost, funnel_data.total_clicks, funnel_data.total_impressions,
      funnel_data.cost_per_impression, funnel_data.cost_per_click, funnel_data.click_rate,
      funnel_data.traffic_source]
    filters:
      funnel_data.traffic_source: "-NULL"
    sorts: [funnel_data.total_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 814ccbc9-f0d4-20e5-11cd-84c0a301de84
        label: Custom
        type: continuous
        stops:
        - color: "#ffdb5d"
          offset: 0
        - color: "#FBB555"
          offset: 50
        - color: "#E57947"
          offset: 100
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      measure: 113
      '2020-06-26': 118
    series_cell_visualizations:
      funnel_data.total_clicks:
        is_active: false
      funnel_data.total_cost:
        is_active: false
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
        value_display: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: []
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Week
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    colors: ["#294988", "#87d79b", "#476d70", "#294259", "#747474"]
    series_types: {}
    point_style: circle
    series_colors:
      funnel_data.total_clicks: "#E57947"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: monotone
    hidden_fields: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 15
    col: 0
    width: 24
    height: 5
  - title: CPC Over Time
    name: CPC Over Time
    model: demo
    explore: funnel_data
    type: looker_area
    fields: [funnel_data.cost_per_click, funnel_data.total_clicks, funnel_data.ad_date]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: CPC, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: funnel_data.cost_per_click,
            name: CPC, axisId: funnel_data.cost_per_click}]}, {label: Clicks, maxValue: !!null '',
        minValue: !!null '', orientation: right, showLabels: true, showValues: true,
        tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
        valueFormat: !!null '', series: [{id: funnel_data.total_clicks, name: Click,
            axisId: funnel_data.total_clicks}]}]
    x_axis_label: Date
    colors: ["#87d79b", "#294988", "#476d70", "#294259", "#747474"]
    series_types:
      funnel_data.total_clicks: column
    series_colors:
      funnel_data.total_clicks: "#00717d"
    series_labels:
      funnel_data.cost_per_click: CPC
      funnel_data.total_clicks: Click
    x_axis_datetime_label: "%b %d"
    ordering: none
    show_null_labels: false
    hidden_fields: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 8
    col: 0
    width: 12
    height: 7
  - title: Impressions
    name: Impressions
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_impressions]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: type, label: Type, expression: '"Display"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#00717d"
    single_value_title: Total Impressions
    comparison_label: Last week
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 3
    col: 8
    width: 4
    height: 5
  - title: CPM
    name: CPM
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.cost_per_impression]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: type, label: Type, expression: '"Display"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string, is_disabled: false}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#00717d"
    single_value_title: CPM
    comparison_label: Last week
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    hidden_fields: [type]
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 3
    col: 12
    width: 4
    height: 5
  - title: Cost Per Click
    name: Cost Per Click
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.cost_per_click]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
    custom_color: "#00717d"
    single_value_title: CPC
    comparison_label: Last week
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 3
    col: 4
    width: 4
    height: 5
  - title: Clicks
    name: Clicks
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_clicks, funnel_data.total_impressions, funnel_data.total_cost,
      funnel_data.cost_per_click]
    sorts: [funnel_data.total_clicks desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#00717d"
    single_value_title: Clicks
    comparison_label: Impressions
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    hidden_fields: [funnel_data.total_cost, funnel_data.cost_per_click]
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 3
    col: 0
    width: 4
    height: 5
  - title: Conversions
    name: Conversions
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.total_impressions, funnel_data.total_clicks]
    sorts: [funnel_data.total_impressions desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: funnel_data.total_impressions,
            id: funnel_data.total_impressions, name: Total Impressions}, {axisId: funnel_data.total_clicks,
            id: funnel_data.total_clicks, name: Total Clicks}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    colors: ["#54538f", "#88a7a9", "#605772", "#5b8ebe", "#7ec99a", "#5db794"]
    series_types: {}
    series_colors:
      funnel_data.total_impressions: "#00717d"
      funnel_data.total_clicks: "#0097a7"
    series_labels:
      sessions.count_purchase: Conversions (Purchases)
    show_dropoff: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: hidden
    percentType: prior
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#fdfffc"
    barColors: ["#476d70", "#294988", "#87d79b", "#294259", "#747474"]
    labelScale: ''
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    defaults_version: 1
    up_color: "#e57947"
    down_color: "#ffffff"
    total_color: "#ffbe63"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    title_hidden: true
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 3
    col: 16
    width: 8
    height: 5
  - title: Cost per Campaign
    name: Cost per Campaign
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.campaign, funnel_data.total_cost]
    sorts: [funnel_data.total_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: funnel-sequential-0
          collection_id: funnel
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#0097a7",
        font_color: !!null '', color_application: {collection_id: funnel, palette_id: funnel-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    funnel_data.total_cost:
    is_active: true
    palette:
    palette_id: eb3aaa58-e270-f4be-a43a-3b5a365d84e0
    collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    custom_colors: ["#ffffff", "#FBB555", "#E57947"]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 26
    col: 16
    width: 8
    height: 7
  - title: Top Performing Keywords
    name: Top Performing Keywords
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.keyword, funnel_data.total_clicks, funnel_data.total_impressions,
      funnel_data.click_rate, funnel_data.total_cost]
    filters:
      funnel_data.keyword: "-NULL"
    sorts: [funnel_data.click_rate desc]
    limit: 2000
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [funnel_data.keyword, funnel_data.click_rate, funnel_data.total_cost,
      funnel_data.total_clicks, funnel_data.total_impressions]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_clicks:
        is_active: false
      funnel_data.click_rate:
        is_active: true
        value_display: true
        palette:
          palette_id: funnel-sequential-0
          collection_id: funnel
    conditional_formatting: []
    truncate_column_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: []
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 33
    col: 0
    width: 24
    height: 8
  - title: Cost per Keyword
    name: Cost per Keyword
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.keyword, funnel_data.total_cost]
    filters:
      funnel_data.total_cost: ">0"
      funnel_data.keyword: "-NULL"
    sorts: [funnel_data.total_cost desc]
    limit: 1000
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: funnel_data.total_cost,
            id: funnel_data.total_cost, name: Total Cost}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '50'
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 41
    col: 0
    width: 24
    height: 10
  - title: Ad Spend over time
    name: Ad Spend over time
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.total_cost, funnel_data.ad_date]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date desc]
    limit: 5000
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: "% Change", expression: "${funnel_data.total_cost}/offset(${funnel_data.total_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {table_calculation: 7_day_rolling_average,
        label: 7 Day Rolling Average, expression: 'mean(offset_list(${funnel_data.total_cost},0,7))',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: Total Cost, orientation: left, series: [{axisId: funnel_data.total_cost,
            id: funnel_data.total_cost, name: Funnel Data Total Cost}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types:
      7_day_rolling_average: line
    series_colors:
      7_day_rolling_average: "#595959"
    series_labels:
      funnel_data.total_cost: Total Cost
    trend_lines: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#88a7a9"
    single_value_title: Total Spend
    value_format: ''
    comparison_label: Previous Period
    hidden_fields: []
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 20
    col: 0
    width: 24
    height: 6
  - title: CTR Over Time
    name: CTR Over Time
    model: demo
    explore: funnel_data
    type: looker_area
    fields: [funnel_data.ad_date, funnel_data.click_rate, funnel_data.total_clicks]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: CPC, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: funnel_data.cost_per_click,
            name: CPC, axisId: funnel_data.cost_per_click}]}, {label: Clicks, maxValue: !!null '',
        minValue: !!null '', orientation: right, showLabels: true, showValues: true,
        tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
        valueFormat: !!null '', series: [{id: funnel_data.total_clicks, name: Click,
            axisId: funnel_data.total_clicks}]}]
    x_axis_label: Date
    colors: ["#87d79b", "#294988", "#476d70", "#294259", "#747474"]
    series_types:
      funnel_data.total_clicks: column
    series_colors:
      funnel_data.total_clicks: "#00717d"
    series_labels:
      funnel_data.cost_per_click: CPC
      funnel_data.total_clicks: Click
      funnel_data.click_rate: CTR
    x_axis_datetime_label: "%b %d"
    ordering: none
    show_null_labels: false
    hidden_fields: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 8
    col: 12
    width: 12
    height: 7
  - title: Cost per Traffic Source
    name: Cost per Traffic Source
    model: demo
    explore: funnel_data
    type: looker_bar
    fields: [funnel_data.traffic_source, funnel_data.total_cost]
    filters:
      funnel_data.traffic_source: "-NULL"
    sorts: [funnel_data.total_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: funnel_data.total_cost,
            id: funnel_data.total_cost, name: Total Cost}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Traffic Source
    colors: ["#294988", "#87d79b", "#476d70", "#294259", "#747474"]
    label_value_format: ''
    series_types: {}
    series_colors: {}
    series_labels:
      funnel_data.total_clicks: Total Cost
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_clicks:
        is_active: true
        value_display: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    show_null_points: true
    interpolation: monotone
    hidden_fields: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 26
    col: 0
    width: 8
    height: 7
  - title: Cost per Media Type
    name: Cost per Media Type
    model: demo
    explore: funnel_data
    type: looker_bar
    fields: [funnel_data.total_cost, funnel_data.media_type]
    filters:
      funnel_data.media_type: "-NULL"
    sorts: [funnel_data.total_cost desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: funnel
      palette_id: funnel-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: funnel_data.total_cost,
            id: funnel_data.total_cost, name: Total Cost}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Traffic Source
    colors: ["#294988", "#87d79b", "#476d70", "#294259", "#747474"]
    label_value_format: ''
    series_types: {}
    series_colors: {}
    series_labels:
      funnel_data.total_clicks: Total Cost
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_clicks:
        is_active: true
        value_display: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    show_null_points: true
    interpolation: monotone
    hidden_fields: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 26
    col: 8
    width: 8
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "![alt text](https://funnel.io/hubfs/Funnel-logo-800x243%20(1).png)"
    row: 0
    col: 10
    width: 4
    height: 3
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 10
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 16
    width: 8
    height: 3
  filters:
  - name: Campaign Name
    title: Campaign Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: demo
    explore: funnel_data
    listens_to_filters: []
    field: funnel_data.campaign
  - name: Date
    title: Date
    type: field_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
    model: demo
    explore: funnel_data
    listens_to_filters: []
    field: funnel_data.ad_date
