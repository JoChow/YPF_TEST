view: outage_dim {
  sql_table_name: YPF_TEST_RDS.OUTAGE_DIM ;;

  dimension: outage_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.OUTAGE_DIM_ID ;;
  }

  dimension: asset_name {
    type: string
    sql: ${TABLE}.ASSET_NAME ;;
  }

  dimension: asset_outage_name {
    type: string
    sql: ${TABLE}.ASSET_OUTAGE_NAME ;;
  }

  dimension: asset_type_code {
    type: string
    sql: ${TABLE}.ASSET_TYPE_CODE ;;
  }

  dimension: asset_type_name {
    type: string
    sql: ${TABLE}.ASSET_TYPE_NAME ;;
  }

  dimension: asset_unique_id {
    type: string
    sql: ${TABLE}.ASSET_UNIQUE_ID ;;
  }

  dimension: duration {
    type: string
    sql: ${TABLE}.DURATION ;;
  }

  dimension: facility_code {
    type: string
    sql: ${TABLE}.FACILITY_CODE ;;
  }

  dimension: facility_name {
    type: string
    sql: ${TABLE}.FACILITY_NAME ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: operating_unit_code {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_CODE ;;
  }

  dimension: operating_unit_name {
    type: string
    sql: ${TABLE}.OPERATING_UNIT_NAME ;;
  }

  dimension: outage_occur_name {
    type: string
    sql: ${TABLE}.OUTAGE_OCCUR_NAME ;;
  }

  dimension_group: planned {
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
    sql: ${TABLE}.PLANNED_DATE ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      outage_dim_id,
      asset_outage_name,
      outage_occur_name,
      asset_name,
      asset_type_name,
      facility_name,
      operating_unit_name,
      forecast_fact.count,
      forecast_fact_h.count
    ]
  }
}
