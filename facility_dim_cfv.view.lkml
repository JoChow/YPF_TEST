view: facility_dim_cfv {
  sql_table_name: YPF_TEST_RDS.FACILITY_DIM_CFV ;;

  dimension: facility_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.FACILITY_DIM_CFV_ID ;;
  }

  dimension: custom_field_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
  }

  dimension: facility_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.FACILITY_DIM_ID ;;
  }

  dimension: numeric_value {
    type: string
    sql: ${TABLE}.NUMERIC_VALUE ;;
  }

  dimension: string_value {
    type: string
    sql: ${TABLE}.STRING_VALUE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      facility_dim_cfv_id,
      facility_dim.facility_dim_id,
      facility_dim.name,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name
    ]
  }
}
