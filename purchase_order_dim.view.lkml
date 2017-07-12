view: purchase_order_dim {
  sql_table_name: YPF_TEST_RDS.PURCHASE_ORDER_DIM ;;

  dimension: purchase_order_dim_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.PURCHASE_ORDER_DIM_ID ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ITEM_NAME ;;
  }

  dimension: item_number {
    type: string
    sql: ${TABLE}.ITEM_NUMBER ;;
  }

  dimension: purchase_order_code {
    type: string
    sql: ${TABLE}.PURCHASE_ORDER_CODE ;;
  }

  dimension: purchase_order_item_id {
    type: string
    sql: ${TABLE}.PURCHASE_ORDER_ITEM_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [purchase_order_dim_id, item_name, committed_spend.count, committed_spend_h.count]
  }
}
