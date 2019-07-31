view: aircraft_models {
  sql_table_name: faa.aircraft_models ;;

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: aircraft_category_id {
    type: number
    sql: ${TABLE}.aircraft_category_id ;;
  }

  dimension: aircraft_engine_type_id {
    type: number
    sql: ${TABLE}.aircraft_engine_type_id ;;
  }

  dimension: aircraft_type_id {
    type: number
    sql: ${TABLE}.aircraft_type_id ;;
  }

  dimension: amateur {
    type: number
    sql: ${TABLE}.amateur ;;
  }

  dimension: engines {
    type: number
    sql: ${TABLE}.engines ;;
  }

  dimension: manufacturer {
    sql: ${TABLE}.manufacturer ;;
  }

  dimension: model {
    sql: ${TABLE}.model ;;
  }

  dimension: seats {
    type: number
    sql: ${TABLE}.seats ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
    drill_fields: [id, aircrafts.count]
  }
}
