view: portfolio_expenditure_b_h {
  sql_table_name: YPF_TEST_RDS.PORTFOLIO_EXPENDITURE_B_H ;;

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: portfolio_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_DIM_ID ;;
  }

  dimension: portfolio_expenditure_b_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_EXPENDITURE_B_ID ;;
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
      portfolio_expenditure_b.portfolio_expenditure_b_id,
      portfolio_dim.portfolio_dim_id,
      portfolio_dim.name,
      portfolio_dim.org_node_name,
      portfolio_dim.parent_name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      snapshot_time_dim.snapshot_time_dim_id
    ]
  }
}
