view: system_parameter {
  sql_table_name: YPF_TEST_RDS.SYSTEM_PARAMETER ;;

  dimension: system_parameter_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.SYSTEM_PARAMETER_ID ;;
  }

  dimension: boolean_value {
    type: string
    sql: ${TABLE}.BOOLEAN_VALUE ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension_group: date_value {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    sql: ${TABLE}.DATE_VALUE ;;
  }

  dimension: float_value {
    type: string
    sql: ${TABLE}.FLOAT_VALUE ;;
  }

  dimension: integer_value {
    type: string
    sql: ${TABLE}.INTEGER_VALUE ;;
  }

  dimension: long_text_value {
    type: string
    sql: ${TABLE}.LONG_TEXT_VALUE ;;
  }

  dimension: text_value {
    type: string
    sql: ${TABLE}.TEXT_VALUE ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [system_parameter_id]
  }
}
