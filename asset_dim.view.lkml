view: asset_dim {
  sql_table_name: YPF_TEST_RDS.ASSET_DIM ;;

  dimension: asset_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ASSET_DIM_ID ;;
  }

  dimension: asset_gen_group_name {
    type: string
    sql: ${TABLE}.ASSET_GEN_GROUP_NAME ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.ASSET_TYPE ;;
  }

  dimension: asset_type_code {
    type: string
    sql: ${TABLE}.ASSET_TYPE_CODE ;;
  }

  dimension: asset_type_useful_lifetime_yrs {
    type: string
    sql: ${TABLE}.ASSET_TYPE_USEFUL_LIFETIME_YRS ;;
  }

  dimension: facility {
    type: string
    sql: ${TABLE}.FACILITY ;;
  }

  dimension_group: in_service {
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
    sql: ${TABLE}.IN_SERVICE_DATE ;;
  }

  dimension: is_latest {
    type: string
    sql: ${TABLE}.IS_LATEST ;;
  }

  dimension: is_pool {
    type: string
    sql: ${TABLE}.IS_POOL ;;
  }

  dimension: is_spare_available {
    type: string
    sql: ${TABLE}.IS_SPARE_AVAILABLE ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}.LENGTH ;;
  }

  dimension: length_unit {
    type: string
    sql: ${TABLE}.LENGTH_UNIT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: node_id {
    type: string
    sql: ${TABLE}.NODE_ID ;;
  }

  dimension: node_path {
    type: string
    sql: ${TABLE}.NODE_PATH ;;
  }

  dimension: operating_unit {
    type: string
    sql: ${TABLE}.OPERATING_UNIT ;;
  }

  dimension_group: optimal_replacement {
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
    sql: ${TABLE}.OPTIMAL_REPLACEMENT_DATE ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.ORGANIZATION_NAME ;;
  }

  dimension: parent_name {
    type: string
    sql: ${TABLE}.PARENT_NAME ;;
  }

  dimension: parent_pool_id {
    type: string
    sql: ${TABLE}.PARENT_POOL_ID ;;
  }

  dimension: parent_unique_id {
    type: string
    sql: ${TABLE}.PARENT_UNIQUE_ID ;;
  }

  dimension_group: recommended_replacement {
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
    sql: ${TABLE}.RECOMMENDED_REPLACEMENT_DATE ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: replacement_cost {
    type: string
    sql: ${TABLE}.REPLACEMENT_COST ;;
  }

  dimension: replacement_cost_fiscal_year {
    type: string
    sql: ${TABLE}.REPLACEMENT_COST_FISCAL_YEAR ;;
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

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UNIQUE_ID ;;
  }

  dimension: useful_lifetime_years {
    type: string
    sql: ${TABLE}.USEFUL_LIFETIME_YEARS ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      asset_dim_id,
      name,
      parent_name,
      organization_name,
      asset_gen_group_name,
      asset_baseline_condition.count,
      asset_baseline_condition_h.count,
      asset_bl_value_measure.count,
      asset_bl_value_measure_h.count,
      asset_dim_cfv.count,
      comment_value.count,
      score_value.count,
      score_value_h.count,
      value_measure.count,
      value_measure_h.count
    ]
  }
}
