view: scenario_dim {
  sql_table_name: YPF_TEST_RDS.SCENARIO_DIM ;;

  dimension: scenario_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: is_locked {
    type: string
    sql: ${TABLE}.IS_LOCKED ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: scenario_type {
    type: string
    sql: ${TABLE}.SCENARIO_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      scenario_dim_id,
      name,
      accomplishment.count,
      comment_value.count,
      forecast_fact.count,
      forecast_fact_h.count,
      milestone.count,
      milestone_h.count,
      portfolio_constraint.count,
      portfolio_constraint_h.count,
      scenario_exp_group_b.count,
      scenario_exp_group_b_h.count,
      score_value.count,
      score_value_h.count,
      value_measure.count,
      value_measure_h.count
    ]
  }
}
