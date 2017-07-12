view: snapshot_time_dim {
  sql_table_name: YPF_TEST_RDS.SNAPSHOT_TIME_DIM ;;

  dimension: snapshot_time_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  dimension_group: expiry_timestamp {
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
    sql: ${TABLE}.EXPIRY_TIMESTAMP ;;
  }

  dimension_group: meas_timestamp {
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
    sql: ${TABLE}.MEAS_TIMESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      snapshot_time_dim_id,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      asset_baseline_condition.count,
      asset_baseline_condition_h.count,
      asset_bl_value_measure.count,
      asset_bl_value_measure_h.count,
      committed_spend.count,
      committed_spend_h.count,
      forecast_fact.count,
      forecast_fact_h.count,
      milestone.count,
      milestone_h.count,
      portfolio_constraint.count,
      portfolio_constraint_h.count,
      portfolio_expenditure_b.count,
      portfolio_expenditure_b_h.count,
      scenario_exp_group_b.count,
      scenario_exp_group_b_h.count,
      score_value.count,
      score_value_h.count,
      user_group.count,
      value_measure.count,
      value_measure_h.count,
      workflow_status.count
    ]
  }
}
