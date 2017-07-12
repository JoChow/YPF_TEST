view: expenditure_dim_cfv {
  sql_table_name: YPF_TEST_RDS.EXPENDITURE_DIM_CFV ;;

  dimension: expenditure_dim_cfv_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.EXPENDITURE_DIM_CFV_ID ;;
  }

  dimension: custom_field_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: numeric_value {
    type: string
    sql: ${TABLE}.NUMERIC_VALUE ;;
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
      expenditure_dim_cfv_id,
      custom_field_dim.custom_field_dim_id,
      custom_field_dim.field_name,
      custom_field_dim.group_name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name
    ]
  }
}
