view: facility_dim {
  sql_table_name: YPF_TEST_RDS.FACILITY_DIM ;;

  dimension: facility_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.FACILITY_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [facility_dim_id, name, facility_dim_cfv.count]
  }
}
