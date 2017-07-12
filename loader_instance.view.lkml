view: loader_instance {
  sql_table_name: YPF_TEST_RDS.LOADER_INSTANCE ;;

  dimension: loader_instance_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.LOADER_INSTANCE_ID ;;
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.HOST_NAME ;;
  }

  dimension: os_user_name {
    type: string
    sql: ${TABLE}.OS_USER_NAME ;;
  }

  dimension_group: process_start_datetime {
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
    sql: ${TABLE}.PROCESS_START_DATETIME ;;
  }

  measure: count {
    type: count
    drill_fields: [loader_instance_id, host_name, os_user_name]
  }
}
