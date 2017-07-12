view: comment_dim {
  sql_table_name: YPF_TEST_RDS.COMMENT_DIM ;;

  dimension: comment_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.COMMENT_DIM_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [comment_dim_id, name, comment_value.count]
  }
}
