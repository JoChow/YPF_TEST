view: wbs_item_dim {
  sql_table_name: YPF_TEST_RDS.WBS_ITEM_DIM ;;

  dimension: wbs_item_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.WBS_ITEM_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: type_name {
    type: string
    sql: ${TABLE}.TYPE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      wbs_item_dim_id,
      name,
      type_name,
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
