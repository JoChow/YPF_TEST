view: portfolio_dim {
  sql_table_name: YPF_TEST_RDS.PORTFOLIO_DIM ;;

  dimension: portfolio_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.PORTFOLIO_DIM_ID ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: created_timestamp {
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
    sql: ${TABLE}.CREATED_TIMESTAMP ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: is_public {
    type: string
    sql: ${TABLE}.IS_PUBLIC ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: node_id {
    type: string
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: node_path {
    type: string
    sql: ${TABLE}.NODE_PATH ;;
  }

  dimension: org_node_name {
    type: string
    sql: ${TABLE}.ORG_NODE_NAME ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.OWNER ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
  }

  dimension: portfolio_type {
    type: string
    sql: ${TABLE}.PORTFOLIO_TYPE ;;
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

  dimension: updated_by {
    type: string
    sql: ${TABLE}.UPDATED_BY ;;
  }

  dimension_group: updated_timestamp {
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
    sql: ${TABLE}.UPDATED_TIMESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      portfolio_dim_id,
      name,
      org_node_name,
      parent_name,
      comment_value.count,
      portfolio_constraint.count,
      portfolio_constraint_h.count,
      portfolio_expenditure_b.count,
      portfolio_expenditure_b_h.count,
      workflow_status.count
    ]
  }
}
