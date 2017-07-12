view: milestone_dim {
  sql_table_name: YPF_TEST_RDS.MILESTONE_DIM ;;

  dimension: milestone_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.MILESTONE_DIM_ID ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.CODE ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: milestone_order {
    type: string
    sql: ${TABLE}.MILESTONE_ORDER ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }


  dimension: unique_id {
    type: string
    sql: ${TABLE}.UNIQUE_ID ;;
  }

  dimension: wbs_code {
    type: string
    sql: ${TABLE}.WBS_CODE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      milestone_dim_id,
      name,
      group_name,
      milestone.count,
      milestone_dim_cfv.count,
      milestone_h.count
    ]
  }
}
