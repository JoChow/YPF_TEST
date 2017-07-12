view: workflow_status {
  sql_table_name: YPF_TEST_RDS.WORKFLOW_STATUS ;;

  dimension: workflow_status_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WORKFLOW_STATUS_ID ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.ACTION ;;
  }

  dimension: actioned_by_user {
    type: string
    sql: ${TABLE}.ACTIONED_BY_USER ;;
  }

  dimension: assigned_to_user {
    type: string
    sql: ${TABLE}.ASSIGNED_TO_USER ;;
  }

  dimension: comment_text {
    type: string
    sql: ${TABLE}.COMMENT_TEXT ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: operating_unit_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPERATING_UNIT_DIM_ID ;;
  }

  dimension: portfolio_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_DIM_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_TIME ;;
  }

  dimension: task {
    type: string
    sql: ${TABLE}.TASK ;;
  }

  dimension: task_description {
    type: string
    sql: ${TABLE}.TASK_DESCRIPTION ;;
  }

  dimension: workflow_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.WORKFLOW_DIM_ID ;;
  }

  dimension: workflow_initiation_id {
    type: string
    sql: ${TABLE}.WORKFLOW_INITIATION_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      workflow_status_id,
      workflow_dim.workflow_dim_id,
      workflow_dim.name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      portfolio_dim.portfolio_dim_id,
      portfolio_dim.name,
      portfolio_dim.org_node_name,
      portfolio_dim.parent_name,
      operating_unit_dim.operating_unit_dim_id,
      operating_unit_dim.name,
      operating_unit_dim.facility_name,
      snapshot_time_dim.snapshot_time_dim_id
    ]
  }
}
