view: risk_level_dim {
  sql_table_name: YPF_TEST_RDS.RISK_LEVEL_DIM ;;

  dimension: risk_level_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.RISK_LEVEL_DIM_ID ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.COLOR ;;
  }

  dimension: min_threshold {
    type: string
    sql: ${TABLE}.MIN_THRESHOLD ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      risk_level_dim_id,
      name,
      asset_bl_value_measure.count,
      asset_bl_value_measure_h.count,
      value_measure.count,
      value_measure_h.count
    ]
  }
}
