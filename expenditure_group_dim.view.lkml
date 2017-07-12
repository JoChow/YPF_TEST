view: expenditure_group_dim {
  sql_table_name: YPF_TEST_RDS.EXPENDITURE_GROUP_DIM ;;

  dimension: expenditure_group_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EXPENDITURE_GROUP_DIM_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [expenditure_group_dim_id, name, scenario_exp_group_b.count, scenario_exp_group_b_h.count]
  }
}
