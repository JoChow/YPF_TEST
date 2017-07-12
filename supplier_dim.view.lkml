view: supplier_dim {
  sql_table_name: YPF_TEST_RDS.SUPPLIER_DIM ;;

  dimension: supplier_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SUPPLIER_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: organization_code {
    type: string
    sql: ${TABLE}.ORGANIZATION_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      supplier_dim_id,
      name,
      accomplishment.count,
      accomplishment_actual.count,
      actual.count,
      actual_h.count,
      committed_spend.count,
      committed_spend_h.count,
      forecast_fact.count,
      forecast_fact_h.count
    ]
  }
}
