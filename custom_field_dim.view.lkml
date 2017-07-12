view: custom_field_dim {
  sql_table_name: YPF_TEST_RDS.CUSTOM_FIELD_DIM ;;

  dimension: custom_field_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.CUSTOM_FIELD_DIM_ID ;;
  }

  dimension: associated_dim {
    type: string
    sql: ${TABLE}.ASSOCIATED_DIM ;;
  }

  dimension: field_name {
    type: string
    sql: ${TABLE}.FIELD_NAME ;;
  }

  dimension: field_order {
    type: string
    sql: ${TABLE}.FIELD_ORDER ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GROUP_NAME ;;
  }

  dimension: unique_id_ref {
    type: string
    sql: ${TABLE}.UNIQUE_ID_REF ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      custom_field_dim_id,
      field_name,
      group_name,
      account_dim_cfv.count,
      activity_dim_cfv.count,
      alternative_dim_cfv.count,
      asset_dim_cfv.count,
      expenditure_dim_cfv.count,
      facility_dim_cfv.count,
      milestone_dim_cfv.count,
      operating_unit_dim_cfv.count,
      organization_dim_cfv.count,
      resource_dim_cfv.count,
      spend_dim_cfv.count,
      user_dim_cfv.count
    ]
  }
}
