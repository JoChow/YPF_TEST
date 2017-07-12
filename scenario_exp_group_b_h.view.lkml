view: scenario_exp_group_b_h {
  sql_table_name: YPF_TEST_RDS.SCENARIO_EXP_GROUP_B_H ;;

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: expenditure_group_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_GROUP_DIM_ID ;;
  }

  dimension: scenario_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
  }

  dimension: scenario_exp_group_b_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_EXP_GROUP_B_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      scenario_exp_group_b.scenario_exp_group_b_id,
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      expenditure_group_dim.expenditure_group_dim_id,
      expenditure_group_dim.name,
      snapshot_time_dim.snapshot_time_dim_id
    ]
  }
}
