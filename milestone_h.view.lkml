view: milestone_h {
  sql_table_name: YPF_TEST_RDS.MILESTONE_H ;;

  dimension_group: actual_complete {
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
    sql: ${TABLE}.ACTUAL_COMPLETE_DATE ;;
  }

  dimension: alternative_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ALTERNATIVE_DIM_ID ;;
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

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension_group: forecast_complete {
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
    sql: ${TABLE}.FORECAST_COMPLETE_DATE ;;
  }

  dimension: milestone_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.MILESTONE_DIM_ID ;;
  }

  dimension: milestone_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.MILESTONE_ID ;;
  }

  dimension: scenario_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  dimension_group: target_complete {
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
    sql: ${TABLE}.TARGET_COMPLETE_DATE ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      milestone_dim.milestone_dim_id,
      milestone_dim.name,
      milestone_dim.group_name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      alternative_dim.alternative_dim_id,
      alternative_dim.name,
      alternative_dim.type_name,
      alternative_dim.outage_occur_name,
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
      snapshot_time_dim.snapshot_time_dim_id,
      milestone.milestone_id
    ]
  }
}
