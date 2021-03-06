view: asset_bl_value_measure {
  sql_table_name: YPF_TEST_RDS.ASSET_BL_VALUE_MEASURE ;;

  dimension: asset_bl_value_measure_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ASSET_BL_VALUE_MEASURE_ID ;;
  }

  dimension: asset_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_DIM_ID ;;
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

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: has_value {
    type: string
    sql: ${TABLE}.HAS_VALUE ;;
  }

  dimension: risk_level_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.RISK_LEVEL_DIM_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      asset_bl_value_measure_id,
      value_model_inst_name,
      value_measure_model_dim.value_measure_model_dim_id,
      value_measure_model_dim.value_measure_name,
      value_measure_model_dim.measure_name,
      value_measure_model_dim.value_model_name,
      value_measure_model_dim.value_model_group_name,
      snapshot_time_dim.snapshot_time_dim_id,
      asset_dim.asset_dim_id,
      asset_dim.name,
      asset_dim.parent_name,
      asset_dim.organization_name,
      asset_dim.asset_gen_group_name,
      risk_level_dim.risk_level_dim_id,
      risk_level_dim.name,
      asset_bl_value_measure_h.count
    ]
  }
}
