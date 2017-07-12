view: update_statistics {
  sql_table_name: YPF_TEST_RDS.UPDATE_STATISTICS ;;

  dimension: update_statistics_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.UPDATE_STATISTICS_ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.COMMENTS ;;
  }


  dimension: last_item_ref_id {
    type: string
    sql: ${TABLE}.LAST_ITEM_REF_ID ;;
  }

  dimension_group: snapshot_timestamp {
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
    sql: ${TABLE}.SNAPSHOT_TIMESTAMP ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TABLE_NAME ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [update_statistics_id, table_name]
  }
}
