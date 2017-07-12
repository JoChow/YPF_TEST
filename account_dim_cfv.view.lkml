view: account_dim_cfv {
  sql_table_name: YPF_TEST_RDS.ACCOUNT_DIM_CFV ;;

  dimension: account_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ACCOUNT_DIM_CFV_ID ;;
  }

  dimension: account_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNT_DIM_ID ;;
  }

  dimension: custom_field_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
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
      account_dim_cfv_id,
      account_dim.account_dim_id,
      account_dim.name,
      account_dim.type_name,
      account_dim.parent_name,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name
    ]
  }
}
