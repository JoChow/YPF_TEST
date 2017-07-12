view: score_dim {
  sql_table_name: YPF_TEST_RDS.SCORE_DIM ;;

  dimension: score_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SCORE_DIM_ID ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}.VALUE_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [score_dim_id, name, score_value.count, score_value_h.count]
  }
}
