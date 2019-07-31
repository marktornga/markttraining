connection: "faa_training"

include: "*.view.lkml"                       # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: accidents {
  always_filter: {
    filters: {
      field: aircraft_models.manufacturer
      value: "AMOS"
    }
  }
  join: aircraft_models {
    relationship: many_to_one
    sql_on: ${accidents.model} = ${aircraft_models.model} ;;
  }
}
