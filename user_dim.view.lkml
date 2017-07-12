view: user_dim {
  sql_table_name: YPF_TEST_RDS.USER_DIM ;;

  dimension: user_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.USER_DIM_ID ;;
  }

  dimension: approval_limit {
    type: string
    sql: ${TABLE}.APPROVAL_LIMIT ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}.EMAIL_ADDRESS ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FIRST_NAME ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LAST_NAME ;;
  }

  dimension: manager_username {
    type: string
    sql: ${TABLE}.MANAGER_USERNAME ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.MIDDLE_NAME ;;
  }

  dimension: org_code {
    type: string
    sql: ${TABLE}.ORG_CODE ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}.ORG_NAME ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.STATUS ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.USER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      user_dim_id,
      user_name,
      first_name,
      last_name,
      middle_name,
      org_name,
      manager_username,
      comment_value.count,
      user_dim_cfv.count,
      user_group.count
    ]
  }
}
