view: user_dim_cfv {
  sql_table_name: YPF_TEST_RDS.USER_DIM_CFV ;;

  dimension: user_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.USER_DIM_CFV_ID ;;
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

  dimension: user_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.USER_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_dim_cfv_id,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name,
      user_dim.user_dim_id,
      user_dim.user_name,
      user_dim.first_name,
      user_dim.last_name,
      user_dim.middle_name,
      user_dim.org_name,
      user_dim.manager_username
    ]
  }
}
