view: accidents {
  sql_table_name: faa.accidents ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: accident_number {
    sql: ${TABLE}.accident_number ;;
  }

  dimension: air_carrier {
    sql: ${TABLE}.air_carrier ;;
  }

  dimension: aircraft_category {
    sql: ${TABLE}.aircraft_category ;;
  }

  dimension: aircraft_damage {
    sql: ${TABLE}.aircraft_damage ;;
  }

  dimension: aircraft_id {
    # hidden: true
    sql: ${TABLE}.aircraft_id ;;
  }

  dimension: airport_code {
    sql: ${TABLE}.airport_code ;;
  }

  dimension: airport_name {
    sql: ${TABLE}.airport_name ;;
  }

  dimension: amateur_built {
    sql: ${TABLE}.amateur_built ;;
  }

  dimension: broad_phase_of_flight {
    sql: ${TABLE}.broad_phase_of_flight ;;
  }

  dimension: country {
    sql: ${TABLE}.country ;;
  }

  dimension: engine_type {
    sql: ${TABLE}.engine_type ;;
  }

  dimension_group: event {
    type: time
    timeframes: [time, date, week, month,year]
    sql: ${TABLE}.event_date ;;
  }

  dimension: event_id {
    sql: ${TABLE}.event_id ;;
  }

  dimension: far_description {
    sql: ${TABLE}.far_description ;;
  }

  dimension: injury_severity {
    sql: ${TABLE}.injury_severity ;;
  }

  dimension: investigation_type {
    sql: ${TABLE}.investigation_type ;;
  }

  dimension: latitude {
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    sql: ${TABLE}.longitude ;;
  }

  dimension: make {
    sql: ${TABLE}.make ;;
  }

  dimension: model {
    sql: ${TABLE}.model ;;
  }

  dimension: number_of_engines {
    sql: ${TABLE}.number_of_engines ;;
  }

  dimension: number_of_fatalities {
    sql: ${TABLE}.number_of_fatalities ;;
  }

  dimension: number_of_minor_injuries {
    sql: ${TABLE}.number_of_minor_injuries ;;
  }

  dimension: number_of_serious_injuries {
    sql: ${TABLE}.number_of_serious_injuries ;;
  }

  dimension: number_of_uninjured {
    sql: ${TABLE}.number_of_uninjured ;;
  }

  dimension_group: publication {
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.publication_date ;;
  }

  dimension: purpose_of_flight {
    sql: ${TABLE}.purpose_of_flight ;;
  }

  dimension: report_status {
    sql: ${TABLE}.report_status ;;
  }

  dimension: schedule {
    sql: ${TABLE}.schedule ;;
  }

  dimension: weather_condition {
    sql: ${TABLE}.weather_condition ;;
  }

  measure: count {
    type: count
    drill_fields: [id, airport_name, aircrafts.id, aircrafts.name]
  }
}
