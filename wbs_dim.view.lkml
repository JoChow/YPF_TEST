view: wbs_dim {
  sql_table_name: YPF_TEST_RDS.WBS_DIM ;;

  dimension: wbs_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WBS_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
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

  dimension: parent_code {
    type: string
    sql: ${TABLE}.PARENT_CODE ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
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
      wbs_dim_id,
      name,
      type_name,
      parent_name,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      committed_spend.count,
      committed_spend_h.count,
      forecast_fact.count,
      forecast_fact_h.count
    ]
  }
}
