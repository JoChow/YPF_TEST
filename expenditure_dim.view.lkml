view: expenditure_dim {
  sql_table_name: YPF_TEST_RDS.EXPENDITURE_DIM ;;

  dimension: expenditure_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: asset_info {
    type: string
    sql: ${TABLE}.ASSET_INFO ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: created_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATED_TIMESTAMP ;;
  }

  dimension_group: deleted_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DELETED_TIMESTAMP ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: facility_code {
    type: string
    sql: ${TABLE}.FACILITY_CODE ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.FACILITY_NAME ;;
  }

  dimension: funder_org_code {
    type: string
    sql: ${TABLE}.FUNDER_ORG_CODE ;;
  }

  dimension: funder_org_name {
    type: string
    sql: ${TABLE}.FUNDER_ORG_NAME ;;
  }

  dimension: is_deleted {
    type: string
    sql: ${TABLE}.IS_DELETED ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: must_do {
    type: string
    sql: ${TABLE}.MUST_DO ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
    html: <a href= "http://ypfdemo.c55.copperleaf.cloud/YPF_TEST/Copperleaf5/Modules/Expenditures/Expenditure.aspx?code={{code}}"> {{name}}</a>;;
  }

  dimension: operating_unit_code {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_CODE ;;
  }

  dimension: operating_unit_name {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_NAME ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.OWNER_NAME ;;
  }

  dimension: owner_status {
    type: string
    sql: ${TABLE}.OWNER_STATUS ;;
  }

  dimension: parent_exp_code {
    type: string
    sql: ${TABLE}.PARENT_EXP_CODE ;;
  }

  dimension: planning_portfolio_name {
    type: string
    sql: ${TABLE}.PLANNING_PORTFOLIO_NAME ;;
  }

  dimension_group: snapshot {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SNAPSHOT_TIME ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}.STAGE_NAME ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.TYPE_NAME ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}.UPDATED_BY ;;
  }

  dimension_group: updated_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UPDATED_TIMESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      expenditure_dim_id,
      name,
      type_name,
      stage_name,
      owner_name,
      facility_name,
      funder_org_name,
      planning_portfolio_name,
      operating_unit_name,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      comment_value.count,
      committed_spend.count,
      committed_spend_h.count,
      expenditure_dim_cfv.count,
      forecast_fact.count,
      forecast_fact_h.count,
      milestone.count,
      milestone_h.count,
      portfolio_expenditure_b.count,
      portfolio_expenditure_b_h.count,
      scenario_exp_group_b.count,
      scenario_exp_group_b_h.count,
      score_value.count,
      score_value_h.count,
      value_measure.count,
      value_measure_h.count,
      workflow_status.count
    ]
  }
}
