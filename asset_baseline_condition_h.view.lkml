view: asset_baseline_condition_h {
  sql_table_name: YPF_TEST_RDS.ASSET_BASELINE_CONDITION_H ;;

  dimension: asset_baseline_condition_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_BASELINE_CONDITION_ID ;;
  }

  dimension: asset_condition_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_CONDITION_DIM_ID ;;
  }

  dimension: asset_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_DIM_ID ;;
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

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: has_value {
    type: string
    sql: ${TABLE}.HAS_VALUE ;;
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
      value_model_inst_name,
      asset_baseline_condition.asset_baseline_condition_id,
      asset_baseline_condition.value_model_inst_name,
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
      asset_condition_dim.asset_condition_dim_id,
      asset_condition_dim.name
    ]
  }
}
