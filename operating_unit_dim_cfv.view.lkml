view: operating_unit_dim_cfv {
  sql_table_name: YPF_TEST_RDS.OPERATING_UNIT_DIM_CFV ;;

  dimension: operating_unit_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OPERATING_UNIT_DIM_CFV_ID ;;
  }

  dimension: custom_field_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
  }

  dimension: numeric_value {
    type: string
    sql: ${TABLE}.NUMERIC_VALUE ;;
    html:
    <div style="float:left;">$</div>
    <div style="float:right;">{{ rendered_numeric_value }}</div>;;
  }

  dimension: operating_unit_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPERATING_UNIT_DIM_ID ;;
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
      operating_unit_dim_cfv_id,
      operating_unit_dim.operating_unit_dim_id,
      operating_unit_dim.name,
      operating_unit_dim.facility_name,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name
    ]
  }
}
