view: score_value_h {
  sql_table_name: YPF_TEST_RDS.SCORE_VALUE_H ;;

  dimension: alternative_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ALTERNATIVE_DIM_ID ;;
  }

  dimension_group: alternative_start {
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
    sql: ${TABLE}.ALTERNATIVE_START_DATE ;;
  }

  dimension: asset_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_DIM_ID ;;
  }

  dimension: boolean_value {
    type: string
    sql: ${TABLE}.BOOLEAN_VALUE ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: numerical_value {
    type: string
    sql: ${TABLE}.NUMERICAL_VALUE ;;
  }

  dimension: scenario_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
  }

  dimension: score_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCORE_DIM_ID ;;
  }

  dimension: score_value_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCORE_VALUE_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
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
      score_value.score_value_id,
      score_dim.score_dim_id,
      score_dim.name,
      asset_dim.asset_dim_id,
      asset_dim.name,
      asset_dim.parent_name,
      asset_dim.organization_name,
      asset_dim.asset_gen_group_name,
      scenario_dim.scenario_dim_id,
      scenario_dim.name,
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
      snapshot_time_dim.snapshot_time_dim_id
    ]
  }
}
