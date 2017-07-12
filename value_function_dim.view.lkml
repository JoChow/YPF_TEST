view: value_function_dim {
  sql_table_name: YPF_TEST_RDS.VALUE_FUNCTION_DIM ;;

  dimension: value_function_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.VALUE_FUNCTION_DIM_ID ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}.CREATED_BY ;;
  }

  dimension_group: created_timestamp {
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
    sql: ${TABLE}.CREATED_TIMESTAMP ;;
  }

  dimension: is_default {
    type: string
    sql: ${TABLE}.IS_DEFAULT ;;
  }

  dimension: is_public {
    type: string
    sql: ${TABLE}.IS_PUBLIC ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UNIQUE_ID ;;
  }

  dimension: updated_by {
    type: string
    sql: ${TABLE}.UPDATED_BY ;;
  }

  dimension_group: updated_timestamp {
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
    sql: ${TABLE}.UPDATED_TIMESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [value_function_dim_id, name, value_measure.count, value_measure_h.count]
  }
}
