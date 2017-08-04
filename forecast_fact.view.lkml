view: forecast_fact {
  sql_table_name: YPF_TEST_RDS.FORECAST_FACT ;;

  dimension: forecast_fact_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.FORECAST_FACT_ID ;;
  }

  dimension: account_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNT_DIM_ID ;;
  }

  dimension: activity_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACTIVITY_DIM_ID ;;
  }

  dimension: alternative_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ALTERNATIVE_DIM_ID ;;
  }

  dimension_group: alternative_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.ALTERNATIVE_START_DATE ;;
  }

  dimension: draft_resource_units {
    type: string
    sql: ${TABLE}.DRAFT_RESOURCE_UNITS ;;
  }

  dimension: draft_value {
    type: string
    sql: ${TABLE}.DRAFT_VALUE ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: forecast_resource_units {
    type: string
    sql: ${TABLE}.FORECAST_RESOURCE_UNITS ;;
  }

  dimension: forecast_value {
    type: string
    sql: ${TABLE}.FORECAST_VALUE ;;
  }

  dimension_group: last_actuals_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.LAST_ACTUALS_DAY ;;
  }

  dimension: month_date_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.MONTH_DATE_DIM_ID ;;
  }

  dimension: operating_unit_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPERATING_UNIT_DIM_ID ;;
  }

  dimension: organization_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ORGANIZATION_DIM_ID ;;
  }

  dimension: outage_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OUTAGE_DIM_ID ;;
  }

  dimension: resource_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.RESOURCE_DIM_ID ;;
  }

  dimension: resource_supply_units {
    type: string
    sql: ${TABLE}.RESOURCE_SUPPLY_UNITS ;;
  }

  dimension: scenario_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  dimension: spend_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SPEND_DIM_ID ;;
  }

  dimension: spend_type {
    type: string
    sql: ${TABLE}.SPEND_TYPE ;;
  }

  dimension: supplier_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SUPPLIER_DIM_ID ;;
  }

  dimension: wbs_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.WBS_DIM_ID ;;
  }

  dimension: wbs_item_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.WBS_ITEM_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: Total_Forecast_value {
    type:  sum
    sql: ${TABLE}.FORECAST_VALUE;;
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      forecast_fact_id,
      month_date_dim.month_date_dim_id,
      account_dim.account_dim_id,
      account_dim.name,
      account_dim.type_name,
      account_dim.parent_name,
      activity_dim.activity_dim_id,
      activity_dim.name,
      activity_dim.type_name,
      activity_dim.parent_name,
      resource_dim.resource_dim_id,
      resource_dim.name,
      resource_dim.type_name,
      resource_dim.parent_name,
      wbs_dim.wbs_dim_id,
      wbs_dim.name,
      wbs_dim.type_name,
      wbs_dim.parent_name,
      organization_dim.organization_dim_id,
      organization_dim.name,
      organization_dim.type_name,
      organization_dim.node_name,
      organization_dim.parent_name,
      spend_dim.spend_dim_id,
      spend_dim.type_name,
      spend_dim.name,
      spend_dim.group_name,
      outage_dim.outage_dim_id,
      outage_dim.asset_outage_name,
      outage_dim.outage_occur_name,
      outage_dim.asset_name,
      outage_dim.asset_type_name,
      outage_dim.facility_name,
      outage_dim.operating_unit_name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      alternative_dim.alternative_dim_id,
      alternative_dim.name,
      alternative_dim.type_name,
      alternative_dim.outage_occur_name,
      operating_unit_dim.operating_unit_dim_id,
      operating_unit_dim.name,
      operating_unit_dim.facility_name,
      wbs_item_dim.wbs_item_dim_id,
      wbs_item_dim.name,
      wbs_item_dim.type_name,
      snapshot_time_dim.snapshot_time_dim_id,
      supplier_dim.supplier_dim_id,
      supplier_dim.name,
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
      forecast_fact_h.count
    ]
  }
}
