view: database_version {
  sql_table_name: YPF_TEST_RDS.DATABASE_VERSION ;;

  dimension: database_version_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.DATABASE_VERSION_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: espdb_version_label {
    type: string
    sql: ${TABLE}.ESPDB_VERSION_LABEL ;;
  }

  dimension_group: expiry {
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
    sql: ${TABLE}.EXPIRY_DATE ;;
  }

  dimension_group: release {
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
    sql: ${TABLE}.RELEASE_DATE ;;
  }

  dimension: upgrade_script {
    type: string
    sql: ${TABLE}.UPGRADE_SCRIPT ;;
  }

  dimension: version_label {
    type: string
    sql: ${TABLE}.VERSION_LABEL ;;
  }

  measure: count {
    type: count
    drill_fields: [database_version_id]
  }
}
