view: organization_dim_cfv {
  sql_table_name: YPF_TEST_RDS.ORGANIZATION_DIM_CFV ;;

  dimension: organization_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ORGANIZATION_DIM_CFV_ID ;;
  }

  dimension: custom_field_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: numeric_value {
    type: string
    sql: ${TABLE}.NUMERIC_VALUE ;;
  }

  dimension: organization_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ORGANIZATION_DIM_ID ;;
  }

  dimension_group: snapshot {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SNAPSHOT_TIME ;;
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
      organization_dim_cfv_id,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name,
      organization_dim.organization_dim_id,
      organization_dim.name,
      organization_dim.type_name,
      organization_dim.node_name,
      organization_dim.parent_name
    ]
  }
}
