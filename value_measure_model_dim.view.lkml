view: value_measure_model_dim {
  sql_table_name: YPF_TEST_RDS.VALUE_MEASURE_MODEL_DIM ;;

  dimension: value_measure_model_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.VALUE_MEASURE_MODEL_DIM_ID ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.COLOR ;;
  }

  dimension: conseq_unit {
    type: string
    sql: ${TABLE}.CONSEQ_UNIT ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: likelihood_type {
    type: string
    sql: ${TABLE}.LIKELIHOOD_TYPE ;;
  }

  dimension: measure_calculation {
    type: string
    sql: ${TABLE}.MEASURE_CALCULATION ;;
  }

  dimension: measure_category {
    type: string
    sql: ${TABLE}.MEASURE_CATEGORY ;;
  }

  dimension: measure_code {
    type: string
    sql: ${TABLE}.MEASURE_CODE ;;
  }

  dimension: measure_name {
    type: string
    sql: ${TABLE}.MEASURE_NAME ;;
  }

  dimension: measure_value_function_usage {
    type: string
    sql: ${TABLE}.MEASURE_VALUE_FUNCTION_USAGE ;;
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

  dimension: value_measure_name {
    type: string
    sql: ${TABLE}.VALUE_MEASURE_NAME ;;
  }

  dimension: value_model_code {
    type: string
    sql: ${TABLE}.VALUE_MODEL_CODE ;;
  }

  dimension: value_model_group_name {
    type: string
    sql: ${TABLE}.VALUE_MODEL_GROUP_NAME ;;
  }

  dimension: value_model_name {
    type: string
    sql: ${TABLE}.VALUE_MODEL_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      value_measure_model_dim_id,
      value_measure_name,
      measure_name,
      value_model_name,
      value_model_group_name,
      asset_baseline_condition.count,
      asset_baseline_condition_h.count,
      asset_bl_value_measure.count,
      asset_bl_value_measure_h.count,
      value_measure.count,
      value_measure_h.count
    ]
  }
}
