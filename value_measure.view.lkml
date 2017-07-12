view: value_measure {
  sql_table_name: YPF_TEST_RDS.VALUE_MEASURE ;;

  dimension: value_measure_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.VALUE_MEASURE_ID ;;
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

  dimension: asset_cond_dim_id {
    type: string
    sql: ${TABLE}.ASSET_COND_DIM_ID ;;
  }

  dimension: asset_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_DIM_ID ;;
  }

  dimension: baseline_asset_cond_dim_id {
    type: string
    sql: ${TABLE}.BASELINE_ASSET_COND_DIM_ID ;;
  }

  dimension: baseline_conseq_text {
    type: string
    sql: ${TABLE}.BASELINE_CONSEQ_TEXT ;;
  }

  dimension: baseline_expected_units {
    type: string
    sql: ${TABLE}.BASELINE_EXPECTED_UNITS ;;
  }

  dimension: baseline_expected_zynos {
    type: string
    sql: ${TABLE}.BASELINE_EXPECTED_ZYNOS ;;
  }

  dimension: baseline_likelihood {
    type: string
    sql: ${TABLE}.BASELINE_LIKELIHOOD ;;
  }

  dimension: baseline_likelihood_text {
    type: string
    sql: ${TABLE}.BASELINE_LIKELIHOOD_TEXT ;;
  }

  dimension: baseline_risk_level_dim_id {
    type: string
    sql: ${TABLE}.BASELINE_RISK_LEVEL_DIM_ID ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension_group: first_impact {
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
    sql: ${TABLE}.FIRST_IMPACT_DATE ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: has_value {
    type: string
    sql: ${TABLE}.HAS_VALUE ;;
  }

  dimension: residual_conseq_text {
    type: string
    sql: ${TABLE}.RESIDUAL_CONSEQ_TEXT ;;
  }

  dimension: residual_expected_units {
    type: string
    sql: ${TABLE}.RESIDUAL_EXPECTED_UNITS ;;
  }

  dimension: residual_expected_zynos {
    type: string
    sql: ${TABLE}.RESIDUAL_EXPECTED_ZYNOS ;;
  }

  dimension: residual_likelihood {
    type: string
    sql: ${TABLE}.RESIDUAL_LIKELIHOOD ;;
  }

  dimension: residual_likelihood_text {
    type: string
    sql: ${TABLE}.RESIDUAL_LIKELIHOOD_TEXT ;;
  }

  dimension: risk_level_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.RISK_LEVEL_DIM_ID ;;
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

  dimension: value_function_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.VALUE_FUNCTION_DIM_ID ;;
  }

  dimension: value_function_value {
    type: string
    sql: ${TABLE}.VALUE_FUNCTION_VALUE ;;
  }

  dimension: value_measure_model_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.VALUE_MEASURE_MODEL_DIM_ID ;;
  }

  dimension: value_model_inst_name {
    type: string
    sql: ${TABLE}.VALUE_MODEL_INST_NAME ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.WEIGHT ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      value_measure_id,
      value_model_inst_name,
      value_measure_model_dim.value_measure_model_dim_id,
      value_measure_model_dim.value_measure_name,
      value_measure_model_dim.measure_name,
      value_measure_model_dim.value_model_name,
      value_measure_model_dim.value_model_group_name,
      value_function_dim.value_function_dim_id,
      value_function_dim.name,
      snapshot_time_dim.snapshot_time_dim_id,
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
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
      asset_dim.asset_dim_id,
      asset_dim.name,
      asset_dim.parent_name,
      asset_dim.organization_name,
      asset_dim.asset_gen_group_name,
      risk_level_dim.risk_level_dim_id,
      risk_level_dim.name,
      value_measure_h.count
    ]
  }
}
