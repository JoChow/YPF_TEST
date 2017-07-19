connection: "oregon_demo_server"

# to set the cache to be 2 minutes
persist_for: "0 minutes"


# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: accomplishment {
  join: alternative_dim {
    type: left_outer
    sql_on: ${accomplishment.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${accomplishment.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${accomplishment.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${accomplishment.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${accomplishment.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${accomplishment.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${accomplishment.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${accomplishment.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${accomplishment.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: month_date_dim {
    type: left_outer
    sql_on: ${accomplishment.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${accomplishment.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${accomplishment.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${accomplishment.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: accomplishment_actual {
  join: activity_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: month_date_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${accomplishment_actual.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: account_dim {}

explore: account_dim_cfv {
  join: account_dim {
    type: left_outer
    sql_on: ${account_dim_cfv.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${account_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: activity_dim {}

explore: activity_dim_cfv {
  join: activity_dim {
    type: left_outer
    sql_on: ${activity_dim_cfv.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${activity_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: actual {
  join: month_date_dim {
    type: left_outer
    sql_on: ${actual.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${actual.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${actual.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${actual.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${actual.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${actual.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${actual.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${actual.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${actual.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${actual.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${actual.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: actual_h {
  join: actual {
    type: left_outer
    sql_on: ${actual_h.actual_id} = ${actual.actual_id} ;;
    relationship: many_to_one
  }

  join: month_date_dim {
    type: left_outer
    sql_on: ${actual_h.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${actual_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${actual_h.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${actual_h.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${actual_h.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${actual_h.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${actual_h.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${actual_h.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${actual_h.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${actual_h.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${actual_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: alternative_dim {}

explore: alternative_dim_cfv {
  join: alternative_dim {
    type: left_outer
    sql_on: ${alternative_dim_cfv.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${alternative_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: asset_baseline_condition {
  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_condition_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition.asset_condition_dim_id} = ${asset_condition_dim.asset_condition_dim_id} ;;
    relationship: many_to_one
  }
}

explore: asset_baseline_condition_h {
  join: asset_baseline_condition {
    type: left_outer
    sql_on: ${asset_baseline_condition_h.asset_baseline_condition_id} = ${asset_baseline_condition.asset_baseline_condition_id} ;;
    relationship: many_to_one
  }

  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition_h.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition_h.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_condition_dim {
    type: left_outer
    sql_on: ${asset_baseline_condition_h.asset_condition_dim_id} = ${asset_condition_dim.asset_condition_dim_id} ;;
    relationship: many_to_one
  }
}

explore: asset_bl_value_measure {
  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: risk_level_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure.risk_level_dim_id} = ${risk_level_dim.risk_level_dim_id} ;;
    relationship: many_to_one
  }
}

explore: asset_bl_value_measure_h {
  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure_h.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure_h.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: risk_level_dim {
    type: left_outer
    sql_on: ${asset_bl_value_measure_h.risk_level_dim_id} = ${risk_level_dim.risk_level_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_bl_value_measure {
    type: left_outer
    sql_on: ${asset_bl_value_measure_h.asset_bl_value_measure_id} = ${asset_bl_value_measure.asset_bl_value_measure_id} ;;
    relationship: many_to_one
  }
}

explore: asset_condition_dim {}

explore: asset_dim {}

explore: asset_dim_cfv {
  join: asset_dim {
    type: left_outer
    sql_on: ${asset_dim_cfv.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${asset_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: comment_dim {}

explore: comment_value {
  join: comment_dim {
    type: left_outer
    sql_on: ${comment_value.comment_dim_id} = ${comment_dim.comment_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${comment_value.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${comment_value.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${comment_value.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${comment_value.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: portfolio_dim {
    type: left_outer
    sql_on: ${comment_value.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }

  join: user_dim {
    type: left_outer
    sql_on: ${comment_value.user_dim_id} = ${user_dim.user_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${comment_value.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }
}

explore: committed_spend {
  join: month_date_dim {
    type: left_outer
    sql_on: ${committed_spend.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${committed_spend.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${committed_spend.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${committed_spend.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${committed_spend.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${committed_spend.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${committed_spend.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${committed_spend.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${committed_spend.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${committed_spend.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${committed_spend.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_dim {
    type: left_outer
    sql_on: ${committed_spend.purchase_order_dim_id} = ${purchase_order_dim.purchase_order_dim_id} ;;
    relationship: many_to_one
  }
}

explore: committed_spend_h {
  join: committed_spend {
    type: left_outer
    sql_on: ${committed_spend_h.committed_spend_id} = ${committed_spend.committed_spend_id} ;;
    relationship: many_to_one
  }

  join: month_date_dim {
    type: left_outer
    sql_on: ${committed_spend_h.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${committed_spend_h.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${committed_spend_h.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${committed_spend_h.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${committed_spend_h.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${committed_spend_h.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${committed_spend_h.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${committed_spend_h.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${committed_spend_h.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${committed_spend_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${committed_spend_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: purchase_order_dim {
    type: left_outer
    sql_on: ${committed_spend_h.purchase_order_dim_id} = ${purchase_order_dim.purchase_order_dim_id} ;;
    relationship: many_to_one
  }
}

explore: custom_field_dim {}

explore: database_version {}

explore: expenditure_dim {}

explore: expenditure_dim_cfv {
  join: custom_field_dim {
    type: left_outer
    sql_on: ${expenditure_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${expenditure_dim_cfv.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }
}

explore: expenditure_group_dim {}

explore: facility_dim {}

explore: facility_dim_cfv {
  join: facility_dim {
    type: left_outer
    sql_on: ${facility_dim_cfv.facility_dim_id} = ${facility_dim.facility_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${facility_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: forecast_fact {
  join: month_date_dim {
    type: left_outer
    sql_on: ${forecast_fact.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${forecast_fact.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${forecast_fact.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${forecast_fact.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${forecast_fact.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${forecast_fact.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: spend_dim {
    type: left_outer
    sql_on: ${forecast_fact.spend_dim_id} = ${spend_dim.spend_dim_id} ;;
    relationship: many_to_one
  }

  join: outage_dim {
    type: left_outer
    sql_on: ${forecast_fact.outage_dim_id} = ${outage_dim.outage_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${forecast_fact.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${forecast_fact.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${forecast_fact.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${forecast_fact.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${forecast_fact.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${forecast_fact.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${forecast_fact.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }
}

explore: forecast_fact_h {
  join: organization_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }

  join: spend_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.spend_dim_id} = ${spend_dim.spend_dim_id} ;;
    relationship: many_to_one
  }

  join: outage_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.outage_dim_id} = ${outage_dim.outage_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_item_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.wbs_item_dim_id} = ${wbs_item_dim.wbs_item_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: supplier_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.supplier_dim_id} = ${supplier_dim.supplier_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: forecast_fact {
    type: left_outer
    sql_on: ${forecast_fact_h.forecast_fact_id} = ${forecast_fact.forecast_fact_id} ;;
    relationship: many_to_one
  }

  join: month_date_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.month_date_dim_id} = ${month_date_dim.month_date_dim_id} ;;
    relationship: many_to_one
  }

  join: account_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.account_dim_id} = ${account_dim.account_dim_id} ;;
    relationship: many_to_one
  }

  join: activity_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.activity_dim_id} = ${activity_dim.activity_dim_id} ;;
    relationship: many_to_one
  }

  join: resource_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: wbs_dim {
    type: left_outer
    sql_on: ${forecast_fact_h.wbs_dim_id} = ${wbs_dim.wbs_dim_id} ;;
    relationship: many_to_one
  }
}

explore: loader_instance {}

explore: milestone {
  join: milestone_dim {
    type: left_outer
    sql_on: ${milestone.milestone_dim_id} = ${milestone_dim.milestone_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${milestone.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${milestone.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${milestone.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${milestone.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: milestone_dim {}

explore: milestone_dim_cfv {
  join: custom_field_dim {
    type: left_outer
    sql_on: ${milestone_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }

  join: milestone_dim {
    type: left_outer
    sql_on: ${milestone_dim_cfv.milestone_dim_id} = ${milestone_dim.milestone_dim_id} ;;
    relationship: many_to_one
  }
}

explore: milestone_h {
  join: milestone_dim {
    type: left_outer
    sql_on: ${milestone_h.milestone_dim_id} = ${milestone_dim.milestone_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${milestone_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${milestone_h.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${milestone_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${milestone_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: milestone {
    type: left_outer
    sql_on: ${milestone_h.milestone_id} = ${milestone.milestone_id} ;;
    relationship: many_to_one
  }
}

explore: month_date_dim {}

explore: operating_unit_dim {}

explore: operating_unit_dim_cfv {
  join: operating_unit_dim {
    type: left_outer
    sql_on: ${operating_unit_dim_cfv.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${operating_unit_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: organization_dim {}

explore: organization_dim_cfv {
  join: custom_field_dim {
    type: left_outer
    sql_on: ${organization_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }

  join: organization_dim {
    type: left_outer
    sql_on: ${organization_dim_cfv.organization_dim_id} = ${organization_dim.organization_dim_id} ;;
    relationship: many_to_one
  }
}

explore: outage_dim {}

explore: portfolio_constraint {
  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${portfolio_constraint.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${portfolio_constraint.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: portfolio_dim {
    type: left_outer
    sql_on: ${portfolio_constraint.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }
}

explore: portfolio_constraint_h {
  join: portfolio_constraint {
    type: left_outer
    sql_on: ${portfolio_constraint_h.portfolio_constraint_id} = ${portfolio_constraint.portfolio_constraint_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${portfolio_constraint_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${portfolio_constraint_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: portfolio_dim {
    type: left_outer
    sql_on: ${portfolio_constraint_h.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }
}

explore: portfolio_dim {}

explore: portfolio_expenditure_b {
  join: portfolio_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: portfolio_expenditure_b_h {
  join: portfolio_expenditure_b {
    type: left_outer
    sql_on: ${portfolio_expenditure_b_h.portfolio_expenditure_b_id} = ${portfolio_expenditure_b.portfolio_expenditure_b_id} ;;
    relationship: many_to_one
  }

  join: portfolio_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b_h.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${portfolio_expenditure_b_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: purchase_order_dim {}

explore: resource_dim {}

explore: resource_dim_cfv {
  join: resource_dim {
    type: left_outer
    sql_on: ${resource_dim_cfv.resource_dim_id} = ${resource_dim.resource_dim_id} ;;
    relationship: many_to_one
  }

  join: custom_field_dim {
    type: left_outer
    sql_on: ${resource_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }
}

explore: risk_level_dim {}

explore: scenario_dim {}

explore: scenario_exp_group_b {
  join: scenario_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_group_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b.expenditure_group_dim_id} = ${expenditure_group_dim.expenditure_group_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: scenario_exp_group_b_h {
  join: scenario_exp_group_b {
    type: left_outer
    sql_on: ${scenario_exp_group_b_h.scenario_exp_group_b_id} = ${scenario_exp_group_b.scenario_exp_group_b_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_group_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b_h.expenditure_group_dim_id} = ${expenditure_group_dim.expenditure_group_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${scenario_exp_group_b_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: score_dim {}

explore: score_value {
  join: score_dim {
    type: left_outer
    sql_on: ${score_value.score_dim_id} = ${score_dim.score_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${score_value.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${score_value.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${score_value.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${score_value.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${score_value.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: score_value_h {
  join: score_value {
    type: left_outer
    sql_on: ${score_value_h.score_value_id} = ${score_value.score_value_id} ;;
    relationship: many_to_one
  }

  join: score_dim {
    type: left_outer
    sql_on: ${score_value_h.score_dim_id} = ${score_dim.score_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${score_value_h.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${score_value_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${score_value_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${score_value_h.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${score_value_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: snapshot_time_dim {}

explore: spend_dim {}

explore: spend_dim_cfv {
  join: custom_field_dim {
    type: left_outer
    sql_on: ${spend_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }

  join: spend_dim {
    type: left_outer
    sql_on: ${spend_dim_cfv.spend_dim_id} = ${spend_dim.spend_dim_id} ;;
    relationship: many_to_one
  }
}

explore: supplier_dim {}

explore: system_parameter {}

explore: update_statistics {}

explore: user_dim {}

explore: user_dim_cfv {
  join: custom_field_dim {
    type: left_outer
    sql_on: ${user_dim_cfv.custom_field_dim_id} = ${custom_field_dim.custom_field_dim_id} ;;
    relationship: many_to_one
  }

  join: user_dim {
    type: left_outer
    sql_on: ${user_dim_cfv.user_dim_id} = ${user_dim.user_dim_id} ;;
    relationship: many_to_one
  }
}

explore: user_group {
  join: user_dim {
    type: left_outer
    sql_on: ${user_group.user_dim_id} = ${user_dim.user_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${user_group.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}

explore: value_function_dim {}

explore: value_measure {
  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${value_measure.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: value_function_dim {
    type: left_outer
    sql_on: ${value_measure.value_function_dim_id} = ${value_function_dim.value_function_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${value_measure.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${value_measure.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${value_measure.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${value_measure.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${value_measure.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: risk_level_dim {
    type: left_outer
    sql_on: ${value_measure.risk_level_dim_id} = ${risk_level_dim.risk_level_dim_id} ;;
    relationship: many_to_one
  }
}

explore: value_measure_h {
  join: value_measure {
    type: left_outer
    sql_on: ${value_measure_h.value_measure_id} = ${value_measure.value_measure_id} ;;
    relationship: many_to_one
  }

  join: value_measure_model_dim {
    type: left_outer
    sql_on: ${value_measure_h.value_measure_model_dim_id} = ${value_measure_model_dim.value_measure_model_dim_id} ;;
    relationship: many_to_one
  }

  join: value_function_dim {
    type: left_outer
    sql_on: ${value_measure_h.value_function_dim_id} = ${value_function_dim.value_function_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${value_measure_h.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${value_measure_h.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: alternative_dim {
    type: left_outer
    sql_on: ${value_measure_h.alternative_dim_id} = ${alternative_dim.alternative_dim_id} ;;
    relationship: many_to_one
  }

  join: scenario_dim {
    type: left_outer
    sql_on: ${value_measure_h.scenario_dim_id} = ${scenario_dim.scenario_dim_id} ;;
    relationship: many_to_one
  }

  join: asset_dim {
    type: left_outer
    sql_on: ${value_measure_h.asset_dim_id} = ${asset_dim.asset_dim_id} ;;
    relationship: many_to_one
  }

  join: risk_level_dim {
    type: left_outer
    sql_on: ${value_measure_h.risk_level_dim_id} = ${risk_level_dim.risk_level_dim_id} ;;
    relationship: many_to_one
  }
}

explore: value_measure_model_dim {}

explore: wbs_dim {}

explore: wbs_item_dim {}

explore: workflow_dim {}

explore: workflow_status {
  join: workflow_dim {
    type: left_outer
    sql_on: ${workflow_status.workflow_dim_id} = ${workflow_dim.workflow_dim_id} ;;
    relationship: many_to_one
  }

  join: expenditure_dim {
    type: left_outer
    sql_on: ${workflow_status.expenditure_dim_id} = ${expenditure_dim.expenditure_dim_id} ;;
    relationship: many_to_one
  }

  join: portfolio_dim {
    type: left_outer
    sql_on: ${workflow_status.portfolio_dim_id} = ${portfolio_dim.portfolio_dim_id} ;;
    relationship: many_to_one
  }

  join: operating_unit_dim {
    type: left_outer
    sql_on: ${workflow_status.operating_unit_dim_id} = ${operating_unit_dim.operating_unit_dim_id} ;;
    relationship: many_to_one
  }

  join: snapshot_time_dim {
    type: left_outer
    sql_on: ${workflow_status.snapshot_time_dim_id} = ${snapshot_time_dim.snapshot_time_dim_id} ;;
    relationship: many_to_one
  }
}
