view: spend_dim {
  sql_table_name: YPF_TEST_RDS.SPEND_DIM ;;

  dimension: spend_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SPEND_DIM_ID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: parent_spend_id {
    type: string
    sql: ${TABLE}.PARENT_SPEND_ID ;;
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

  dimension: spend_id {
    type: string
    sql: ${TABLE}.SPEND_ID ;;
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
      spend_dim_id,
      type_name,
      name,
      group_name,
      forecast_fact.count,
      forecast_fact_h.count,
      spend_dim_cfv.count
    ]
  }
}
