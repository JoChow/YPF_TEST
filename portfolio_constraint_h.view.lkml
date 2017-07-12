view: portfolio_constraint_h {
  sql_table_name: YPF_TEST_RDS.PORTFOLIO_CONSTRAINT_H ;;

  dimension: constraint_type {
    type: string
    sql: ${TABLE}.CONSTRAINT_TYPE ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: maximum_value {
    type: string
    sql: ${TABLE}.MAXIMUM_VALUE ;;
  }

  dimension: minimum_value {
    type: string
    sql: ${TABLE}.MINIMUM_VALUE ;;
  }

  dimension: portfolio_constraint_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_CONSTRAINT_ID ;;
  }

  dimension: portfolio_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_DIM_ID ;;
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

  dimension: value_measure_name {
    type: string
    sql: ${TABLE}.VALUE_MEASURE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      value_measure_name,
      portfolio_constraint.portfolio_constraint_id,
      portfolio_constraint.value_measure_name,
      snapshot_time_dim.snapshot_time_dim_id,
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
      portfolio_dim.portfolio_dim_id,
      portfolio_dim.name,
      portfolio_dim.org_node_name,
      portfolio_dim.parent_name
    ]
  }
}
