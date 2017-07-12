view: operating_unit_dim {
  sql_table_name: YPF_TEST_RDS.OPERATING_UNIT_DIM ;;

  dimension: operating_unit_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OPERATING_UNIT_DIM_ID ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.FACILITY_NAME ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      operating_unit_dim_id,
      name,
      facility_name,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      committed_spend.count,
      committed_spend_h.count,
      forecast_fact.count,
      forecast_fact_h.count,
      operating_unit_dim_cfv.count,
      workflow_status.count
    ]
  }
}
