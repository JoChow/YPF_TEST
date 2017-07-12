view: asset_condition_dim {
  sql_table_name: YPF_TEST_RDS.ASSET_CONDITION_DIM ;;

  dimension: asset_condition_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ASSET_CONDITION_DIM_ID ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.COLOR ;;
  }

  dimension: condition {
    type: string
    sql: ${TABLE}.CONDITION ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [asset_condition_dim_id, name, asset_baseline_condition.count, asset_baseline_condition_h.count]
  }
}
