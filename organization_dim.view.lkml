view: organization_dim {
  sql_table_name: YPF_TEST_RDS.ORGANIZATION_DIM ;;

  dimension: organization_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ORGANIZATION_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.DEPARTMENT ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: node_code {
    type: string
    sql: ${TABLE}.NODE_CODE ;;
  }

  dimension: node_id {
    type: string
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: node_name {
    type: string
    sql: ${TABLE}.NODE_NAME ;;
  }

  dimension: node_path {
    type: string
    sql: ${TABLE}.NODE_PATH ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.OWNER ;;
  }

  dimension: parent_code {
    type: string
    sql: ${TABLE}.PARENT_CODE ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
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

  dimension: tree_end_fy {
    type: string
    sql: ${TABLE}.TREE_END_FY ;;
  }

  dimension: tree_start_fy {
    type: string
    sql: ${TABLE}.TREE_START_FY ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization_dim_id,
      name,
      type_name,
      node_name,
      parent_name,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      comment_value.count,
      committed_spend.count,
      committed_spend_h.count,
      forecast_fact.count,
      forecast_fact_h.count,
      organization_dim_cfv.count
    ]
  }
}
