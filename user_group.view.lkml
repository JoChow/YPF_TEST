view: user_group {
  sql_table_name: YPF_TEST_RDS.USER_GROUP ;;

  dimension: user_group_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.USER_GROUP_ID ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: is_administrative {
    type: string
    sql: ${TABLE}.IS_ADMINISTRATIVE ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
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
      user_group_id,
      group_name,
      user_dim.user_dim_id,
      user_dim.user_name,
      user_dim.first_name,
      user_dim.last_name,
      user_dim.middle_name,
      user_dim.org_name,
      user_dim.manager_username,
      snapshot_time_dim.snapshot_time_dim_id
    ]
  }
}
