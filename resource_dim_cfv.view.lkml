view: resource_dim_cfv {
  sql_table_name: YPF_TEST_RDS.RESOURCE_DIM_CFV ;;

  dimension: resource_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.RESOURCE_DIM_CFV_ID ;;
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

  dimension: resource_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.RESOURCE_DIM_ID ;;
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
      resource_dim_cfv_id,
      resource_dim.resource_dim_id,
      resource_dim.name,
      resource_dim.type_name,
      resource_dim.parent_name,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name
    ]
  }
}
