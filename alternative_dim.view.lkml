view: alternative_dim {
  sql_table_name: YPF_TEST_RDS.ALTERNATIVE_DIM ;;

  dimension: alternative_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ALTERNATIVE_DIM_ID ;;
  }

  dimension: can_optimization_choose {
    type: string
    sql: ${TABLE}.CAN_OPTIMIZATION_CHOOSE ;;
  }

  dimension: can_optimization_shift_start {
    type: string
    sql: ${TABLE}.CAN_OPTIMIZATION_SHIFT_START ;;
  }

  dimension: expenditure_code {
    type: string
    sql: ${TABLE}.EXPENDITURE_CODE ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: is_selected {
    type: string
    sql: ${TABLE}.IS_SELECTED ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: outage_occur_name {
    type: string
    sql: ${TABLE}.OUTAGE_OCCUR_NAME ;;
  }

  dimension_group: outage_occur_planned {
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
    sql: ${TABLE}.OUTAGE_OCCUR_PLANNED_DATE ;;
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

  dimension: source_identifier {
    type: string
    sql: ${TABLE}.SOURCE_IDENTIFIER ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.START_DATE ;;
  }

  dimension: start_outage_offset {
    type: string
    sql: ${TABLE}.START_OUTAGE_OFFSET ;;
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
      alternative_dim_id,
      name,
      type_name,
      outage_occur_name,
      accomplishment.count,
      alternative_dim_cfv.count,
      comment_value.count,
      forecast_fact.count,
      forecast_fact_h.count,
      milestone.count,
      milestone_h.count,
      score_value.count,
      score_value_h.count,
      value_measure.count,
      value_measure_h.count
    ]
  }
}
