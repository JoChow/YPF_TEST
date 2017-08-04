view: month_date_dim {
  sql_table_name: YPF_TEST_RDS.MONTH_DATE_DIM ;;

  dimension: month_date_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.MONTH_DATE_DIM_ID ;;
  }

  dimension: cal_month {
    type: string
    sql: ${TABLE}.CAL_MONTH ;;
  }

  dimension: cal_year {
    type: string
    sql: ${TABLE}.CAL_YEAR ;;
  }

  dimension: fiscal_month {
    type: string
    sql: ${TABLE}.FISCAL_MONTH ;;
  }

  dimension: fiscal_year {
    type: string
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: fiscal_year_end_month {
    type: string
    sql: ${TABLE}.FISCAL_YEAR_END_MONTH ;;
  }

  dimension: fiscal_month_number {
    type:  number
    sql: ${TABLE}.FISCAL_MONTH;;
  }


  measure:  date_month{
  type:  number
  sql: ${TABLE}.fiscal_month ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      month_date_dim_id,
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
