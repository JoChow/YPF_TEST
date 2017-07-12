view: activity_dim_cfv {
  sql_table_name: YPF_TEST_RDS.ACTIVITY_DIM_CFV ;;

  dimension: activity_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ACTIVITY_DIM_CFV_ID ;;
  }

  dimension: activity_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACTIVITY_DIM_ID ;;
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
      activity_dim_cfv_id,
      activity_dim.activity_dim_id,
      activity_dim.name,
      activity_dim.type_name,
      activity_dim.parent_name,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name
    ]
  }
}
