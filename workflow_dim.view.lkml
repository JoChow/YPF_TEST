view: workflow_dim {
  sql_table_name: YPF_TEST_RDS.WORKFLOW_DIM ;;

  dimension: workflow_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WORKFLOW_DIM_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.IS_ACTIVE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UNIQUE_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [workflow_dim_id, name, workflow_status.count]
  }
}
