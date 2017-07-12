view: committed_spend_h {
  sql_table_name: YPF_TEST_RDS.COMMITTED_SPEND_H ;;

  dimension: account_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACCOUNT_DIM_ID ;;
  }

  dimension: activity_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ACTIVITY_DIM_ID ;;
  }

  dimension: committed_spend_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.COMMITTED_SPEND_ID ;;
  }

  dimension: committed_spend_value {
    type: string
    sql: ${TABLE}.COMMITTED_SPEND_VALUE ;;
  }

  dimension: expenditure_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.EXPENDITURE_DIM_ID ;;
  }

  dimension: month_date_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.MONTH_DATE_DIM_ID ;;
  }

  dimension: operating_unit_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.OPERATING_UNIT_DIM_ID ;;
  }

  dimension: organization_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.ORGANIZATION_DIM_ID ;;
  }

  dimension: purchase_order_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.PURCHASE_ORDER_DIM_ID ;;
  }

  dimension: resource_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.RESOURCE_DIM_ID ;;
  }

  dimension: snapshot_time_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SNAPSHOT_TIME_DIM_ID ;;
  }

  dimension: supplier_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.SUPPLIER_DIM_ID ;;
  }

  dimension: wbs_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.WBS_DIM_ID ;;
  }

  dimension: wbs_item_dim_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.WBS_ITEM_DIM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      committed_spend.committed_spend_id,
      month_date_dim.month_date_dim_id,
      account_dim.account_dim_id,
      account_dim.name,
      account_dim.type_name,
      account_dim.parent_name,
      activity_dim.activity_dim_id,
      activity_dim.name,
      activity_dim.type_name,
      activity_dim.parent_name,
      operating_unit_dim.operating_unit_dim_id,
      operating_unit_dim.name,
      operating_unit_dim.facility_name,
      organization_dim.organization_dim_id,
      organization_dim.name,
      organization_dim.type_name,
      organization_dim.node_name,
      organization_dim.parent_name,
      resource_dim.resource_dim_id,
      resource_dim.name,
      resource_dim.type_name,
      resource_dim.parent_name,
      supplier_dim.supplier_dim_id,
      supplier_dim.name,
      wbs_dim.wbs_dim_id,
      wbs_dim.name,
      wbs_dim.type_name,
      wbs_dim.parent_name,
      wbs_item_dim.wbs_item_dim_id,
      wbs_item_dim.name,
      wbs_item_dim.type_name,
      expenditure_dim.expenditure_dim_id,
      expenditure_dim.name,
      expenditure_dim.type_name,
      expenditure_dim.stage_name,
      expenditure_dim.owner_name,
      expenditure_dim.facility_name,
      expenditure_dim.funder_org_name,
      expenditure_dim.planning_portfolio_name,
      expenditure_dim.operating_unit_name,
      snapshot_time_dim.snapshot_time_dim_id,
      purchase_order_dim.purchase_order_dim_id,
      purchase_order_dim.item_name
    ]
  }
}
