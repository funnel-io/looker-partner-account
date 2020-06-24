- dashboard: advertising_pulse
  title: Advertising Pulse (Funnel)
  layout: newspaper
  embed_style:
    background_color: "#f6f8fa"
    show_title: false
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: ''
  elements:
  - title: Total Clicks by Traffic Source
    name: Total Clicks by Traffic Source
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.total_clicks, funnel_data.traffic_source, funnel_data.ad_date]
    pivots: [funnel_data.traffic_source]
    fill_fields: [funnel_data.ad_date]
    filters:
      funnel_data.traffic_source: "-NULL"
    sorts: [funnel_data.traffic_source, funnel_data.ad_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
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
    show_null_points: true
    point_style: circle
    interpolation: monotone
    column_spacing_ratio:
    column_group_spacing_ratio:
    colors: ["#294988", "#87d79b", "#476d70", "#294259", "#747474"]
    series_colors: {}
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 16
    col: 0
    width: 24
    height: 8
  - title: Cost per Click Over Time
    name: Cost per Click Over Time
    model: demo
    explore: funnel_data
    type: looker_area
    fields: [funnel_data.cost_per_click, funnel_data.total_clicks, funnel_data.ad_date]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    y_axes: [{label: CPC, maxValue: !!null '', minValue: !!null '', orientation: left,
        showLabels: true, showValues: true, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: funnel_data.cost_per_click,
            name: CPC, axisId: funnel_data.cost_per_click}]}, {label: Clicks, maxValue: !!null '',
        minValue: !!null '', orientation: right, showLabels: true, showValues: true,
        tickDensity: default, tickDensityCustom: 5, type: linear, unpinAxis: false,
        valueFormat: !!null '', series: [{id: funnel_data.total_clicks, name: Click,
            axisId: funnel_data.total_clicks}]}]
    series_types:
      funnel_data.total_clicks: column
    series_labels:
      funnel_data.cost_per_click: CPC
      funnel_data.total_clicks: Click
    colors: ["#87d79b", "#294988", "#476d70", "#294259", "#747474"]
    series_colors: {}
    x_axis_datetime_label: "%b %d"
    hidden_fields: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 9
    col: 0
    width: 12
    height: 7
  - title: Impressions
    name: Impressions
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_impressions, funnel_data.total_clicks, funnel_data.cost_per_impression,
      funnel_data.total_cost]
    sorts: [funnel_data.total_clicks desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: type, label: Type, expression: '"Display"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#88a7a9"
    single_value_title: Active Views
    comparison_label: ''
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
    hidden_fields: [funnel_data.cost_per_impression, funnel_data.total_clicks, funnel_data.total_cost]
    y_axes: []
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 4
    col: 8
    width: 4
    height: 5
  - title: CPM
    name: CPM
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_impressions, funnel_data.total_clicks, funnel_data.cost_per_impression,
      funnel_data.total_cost]
    sorts: [funnel_data.total_clicks desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: type, label: Type, expression: '"Display"',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    custom_color_enabled: true
    custom_color: "#88a7a9"
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
    hidden_fields: [funnel_data.total_clicks, funnel_data.total_cost, funnel_data.total_impressions]
    single_value_title: Cost Per Thousand (CPM)
    comparison_label: Impressions
    y_axes: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 4
    col: 12
    width: 4
    height: 5
  - title: Cost Per Click
    name: Cost Per Click
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_impressions, funnel_data.total_clicks, funnel_data.total_cost,
      funnel_data.cost_per_click]
    sorts: [funnel_data.total_clicks desc]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    custom_color: "#88a7a9"
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
    hidden_fields: [funnel_data.total_clicks, funnel_data.total_cost, funnel_data.total_impressions]
    single_value_title: Cost Per Click
    comparison_label: Impressions
    y_axes: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 4
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
    custom_color: "#88a7a9"
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
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
    single_value_title: Clicks
    comparison_label: Impressions
    y_axes: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 4
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
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{id: funnel_data.total_impressions,
            name: Total Impressions, axisId: funnel_data.total_impressions}, {id: funnel_data.total_clicks,
            name: Total Clicks, axisId: funnel_data.total_clicks}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
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
    colors: ["#54538f", "#88a7a9", "#605772", "#5b8ebe", "#7ec99a", "#5db794"]
    series_types: {}
    point_style: circle
    series_colors: {}
    series_labels:
      sessions.count_purchase: Conversions (Purchases)
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: ["#476d70", "#294988", "#87d79b", "#294259", "#747474"]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    show_null_points: true
    interpolation: linear
    labelScale: ".1"
    hidden_fields: []
    title_hidden: true
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 4
    col: 16
    width: 8
    height: 5
  - title: Ad Spend
    name: Ad Spend
    model: demo
    explore: funnel_data
    type: single_value
    fields: [funnel_data.total_cost]
    sorts: [events.previous_period desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: "% Change", expression: "${funnel_data.total_cost}/offset(${funnel_data.total_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
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
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
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
    row: 26
    col: 1
    width: 6
    height: 6
  - name: "<span class='fa fa-laptop'> Clicks and Impressions</span>"
    type: text
    title_text: "<span class='fa fa-laptop'> Clicks and Impressions</span>"
    subtitle_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    subtitle_text: How are we doing in Clicks?
    body_text: ''
    row: 2
    col: 0
    width: 8
    height: 2
  - name: " (2)"
    type: text
    subtitle_text: How are we doing in Impressions?
    row: 2
    col: 8
    width: 8
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: How are we doing overall?
    row: 2
    col: 16
    width: 8
    height: 2
  - name: "<span class='fa fa-dollar'>Costs</span>"
    type: text
    title_text: "<span class='fa fa-dollar'>Costs</span>"
    subtitle_text: How are we tracking on our spending?
    body_text: ''
    row: 24
    col: 0
    width: 24
    height: 2
  - title: Top Spend Campaigns
    name: Top Spend Campaigns
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.campaign, funnel_data.total_cost]
    sorts: [funnel_data.total_cost desc]
    limit: 20
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: 9fc4dd92-9abf-efcd-570f-e4a481090299
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#ffffff"
          - "#FBB555"
          - "#E57947"
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
    row: 32
    col: 10
    width: 14
    height: 10
  - title: CTR over Time
    name: CTR over Time
    model: demo
    explore: funnel_data
    type: looker_area
    fields: [funnel_data.ad_date, funnel_data.click_rate, funnel_data.total_clicks]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: ordinal
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: false
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: []
    series_types:
      funnel_data.total_clicks: column
    y_axes: [{label: !!null '', maxValue: 0.5, minValue: !!null '', orientation: left,
        showLabels: true, showValues: false, tickDensity: default, tickDensityCustom: 5,
        type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: funnel_data.click_rate,
            name: Click Through Rate (CTR), axisId: funnel_data.click_rate}]}, {label: !!null '',
        orientation: right, series: [{id: funnel_data.total_clicks, name: Total Clicks,
            axisId: funnel_data.total_clicks}], showLabels: true, showValues: false,
        maxValue: !!null '', minValue: !!null '', valueFormat: !!null '', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    colors: ["#87d79b", "#294988", "#476d70", "#294259", "#747474"]
    series_colors: {}
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 9
    col: 12
    width: 12
    height: 7
  - title: Top Performing Keywords
    name: Top Performing Keywords
    model: demo
    explore: funnel_data
    type: table
    fields: [funnel_data.keyword, funnel_data.total_clicks, funnel_data.total_impressions,
      funnel_data.click_rate, funnel_data.total_cost]
    filters:
      funnel_data.keyword: "-NULL"
    sorts: [funnel_data.click_rate desc]
    limit: 100
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    conditional_formatting: [{type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Custom, colors: ["#ffffff", "#87d79b"]},
        bold: false, italic: false, strikethrough: false, fields: [funnel_data.total_cost]},
      {type: low to high, value: !!null '', background_color: !!null '', font_color: !!null '',
        palette: {name: Custom, colors: ["#ffffff", "#87d79b"]}, bold: false, italic: false,
        strikethrough: false, fields: [funnel_data.click_rate]}, {type: low to high,
        value: !!null '', background_color: !!null '', font_color: !!null '', palette: {
          name: Custom, colors: ["#ffffff", "#87d79b"]}, bold: false, italic: false,
        strikethrough: false, fields: [profit]}, {type: low to high, value: !!null '',
        background_color: !!null '', font_color: !!null '', palette: {name: Custom,
          colors: ["#ffffff", "#FFFFFF", "#87d79b"]}, bold: false, italic: false,
        strikethrough: false, fields: [funnel_data.click_rate]}]
    hidden_fields: []
    y_axes: []
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 44
    col: 12
    width: 12
    height: 10
  - title: Keyword Cost
    name: Keyword Cost
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.keyword, funnel_data.total_cost]
    filters:
      funnel_data.total_cost: ">0"
      funnel_data.keyword: "-NULL"
    sorts: [funnel_data.total_cost desc]
    limit: 500
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Campaign Name: funnel_data.campaign
      Date: funnel_data.ad_date
    row: 44
    col: 0
    width: 12
    height: 10
  - name: "<span class='fa fa-dollar'>Keywords Performance</span>"
    type: text
    title_text: "<span class='fa fa-dollar'>Keywords Performance</span>"
    subtitle_text: ''
    row: 42
    col: 0
    width: 24
    height: 2
  - title: Top Spend by Traffic Source
    name: Top Spend by Traffic Source
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.total_cost, funnel_data.traffic_source]
    filters:
      funnel_data.total_cost: ">0"
    sorts: [funnel_data.total_cost desc]
    limit: 20
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: 787de6fe-c08d-4c57-9702-b3a7eb98adb3
          collection_id: a1ef86f3-51c4-4d08-b50c-81fb8f063445
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
    row: 32
    col: 1
    width: 9
    height: 5
  - title: Cost by Media Type
    name: Cost by Media Type
    model: demo
    explore: funnel_data
    type: looker_grid
    fields: [funnel_data.media_type, funnel_data.total_cost]
    filters:
      funnel_data.total_cost: ">0"
    sorts: [funnel_data.total_cost desc]
    limit: 20
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      funnel_data.total_cost:
        is_active: true
        palette:
          palette_id: 43af005e-ae23-1e2d-aabd-308ecd596593
          collection_id: a1ef86f3-51c4-4d08-b50c-81fb8f063445
          custom_colors:
          - "#ffffff"
          - "#95c0e8"
          - "#6387cc"
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
    row: 37
    col: 1
    width: 9
    height: 5
  - title: Ad Spend over time
    name: Ad Spend over time
    model: demo
    explore: funnel_data
    type: looker_column
    fields: [funnel_data.total_cost, funnel_data.ad_date]
    fill_fields: [funnel_data.ad_date]
    sorts: [funnel_data.ad_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: change, label: "% Change", expression: "${funnel_data.total_cost}/offset(${funnel_data.total_cost},1)-1",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    y_axes: []
    series_types: {}
    trend_lines: [{color: "#000000", label_position: right, period: 7, regression_type: average,
        series_index: 1, show_label: true}]
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
    row: 26
    col: 7
    width: 17
    height: 6
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
