view: comment_value {
  sql_table_name: YPF_TEST_RDS.COMMENT_VALUE ;;

  dimension: comment_value_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.COMMENT_VALUE_ID ;;
  }

  dimension: alternative_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ALTERNATIVE_DIM_ID ;;
  }

  dimension: asset_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ASSET_DIM_ID ;;
  }

  dimension: comment_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.COMMENT_DIM_ID ;;
  }

  dimension: comment_text {
    type: string
    sql: ${TABLE}.COMMENT_TEXT ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: organization_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ORGANIZATION_DIM_ID ;;
  }

  dimension: portfolio_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PORTFOLIO_DIM_ID ;;
  }

  dimension: scenario_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SCENARIO_DIM_ID ;;
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

  dimension: user_comment_id {
    type: string
    sql: ${TABLE}.USER_COMMENT_ID ;;
  }

  dimension: user_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.USER_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      comment_value_id,
      comment_dim.comment_dim_id,
      comment_dim.name,
      asset_dim.asset_dim_id,
      asset_dim.name,
      asset_dim.parent_name,
      asset_dim.organization_name,
      asset_dim.asset_gen_group_name,
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
      organization_dim.organization_dim_id,
      organization_dim.name,
      organization_dim.type_name,
      organization_dim.node_name,
      organization_dim.parent_name,
      portfolio_dim.portfolio_dim_id,
      portfolio_dim.name,
      portfolio_dim.org_node_name,
      portfolio_dim.parent_name,
      user_dim.user_dim_id,
      user_dim.user_name,
      user_dim.first_name,
      user_dim.last_name,
      user_dim.middle_name,
      user_dim.org_name,
      user_dim.manager_username,
      scenario_dim.scenario_dim_id,
      scenario_dim.name
    ]
  }
}
