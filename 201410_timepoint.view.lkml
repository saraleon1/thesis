view: timepoint_14 {
  sql_table_name: `fh-bigquery.mta_nyc_si.201410_timepoint`
    ;;

  dimension: act_arr {
    type: number
    sql: ${TABLE}.act_arr ;;
  }

  dimension: act_dest_sign_code {
    type: number
    sql: ${TABLE}.act_dest_sign_code ;;
  }

  dimension: act_lv {
    type: number
    sql: ${TABLE}.act_lv ;;
  }

  dimension: act_run {
    type: number
    sql: ${TABLE}.act_run ;;
  }

  dimension: act_runroute {
    type: number
    sql: ${TABLE}.act_runroute ;;
  }

  dimension: assigned_run_id {
    type: string
    sql: ${TABLE}.assigned_run_id ;;
  }

  dimension: block_number {
    type: number
    sql: ${TABLE}.block_number ;;
  }

  dimension: bus {
    type: string
    sql: ${TABLE}.bus ;;
  }

  dimension: depot {
    type: string
    sql: ${TABLE}.depot ;;
  }

  dimension: dist {
    type: number
    sql: ${TABLE}.dist ;;
  }

  dimension: dt {
    type: string
    sql: ${TABLE}.dt ;;
  }

  dimension: inferred_dest_sign_code {
    type: number
    sql: ${TABLE}.inferred_dest_sign_code ;;
  }

  dimension: inferred_is_formal {
    type: string
    sql: ${TABLE}.inferred_is_formal ;;
  }

  dimension: inferred_run_id {
    type: string
    sql: ${TABLE}.inferred_run_id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: loop_match {
    type: number
    sql: ${TABLE}.loop_match ;;
  }

  dimension: otp {
    type: number
    sql: ${TABLE}.otp ;;
  }

  dimension: pickup_type {
    type: string
    sql: ${TABLE}.pickup_type ;;
  }

  dimension: roadcalls {
    type: number
    sql: ${TABLE}.roadcalls ;;
  }

  dimension: route_id {
    type: string
    sql: ${TABLE}.route_id ;;
  }

  dimension: service_day_type {
    type: number
    sql: ${TABLE}.service_day_type ;;
  }

  dimension: sign_code {
    type: number
    sql: ${TABLE}.sign_code ;;
  }

  dimension: spa_dir {
    type: string
    sql: ${TABLE}.spa_dir ;;
  }

  dimension: spa_path {
    type: string
    sql: ${TABLE}.spa_path ;;
  }

  dimension: spa_seq_no {
    type: number
    sql: ${TABLE}.spa_seq_no ;;
  }

  dimension: sps_locn_type {
    type: string
    sql: ${TABLE}.sps_locn_type ;;
  }

  dimension: srs_rel_stop {
    type: number
    sql: ${TABLE}.srs_rel_stop ;;
  }

  dimension: srs_sch_time {
    type: number
    sql: ${TABLE}.srs_sch_time ;;
  }

  dimension: srt_rrel_stop {
    type: string
    sql: ${TABLE}.srt_rrel_stop ;;
  }

  dimension: srt_sr_seq_no {
    type: number
    sql: ${TABLE}.srt_sr_seq_no ;;
  }

  dimension: srt_time {
    type: number
    sql: ${TABLE}.srt_time ;;
  }

  dimension: srt_type {
    type: number
    sql: ${TABLE}.srt_type ;;
  }

  dimension: sru_rel_run {
    type: string
    sql: ${TABLE}.sru_rel_run ;;
  }

  dimension: sru_rte {
    type: string
    sql: ${TABLE}.sru_rte ;;
  }

  dimension: sru_run {
    type: number
    sql: ${TABLE}.sru_run ;;
  }

  dimension: sto_box_id {
    type: number
    sql: ${TABLE}.sto_box_id ;;
  }

  dimension: stop_id {
    type: number
    sql: ${TABLE}.stop_id ;;
  }

  dimension: stop_name {
    type: string
    sql: ${TABLE}.stop_name ;;
  }

  dimension: stt_seq_no {
    type: number
    sql: ${TABLE}.stt_seq_no ;;
  }

  dimension: uts_bus {
    type: string
    sql: ${TABLE}.uts_bus ;;
  }

  measure: count {
    type: count
    drill_fields: [stop_name]
  }
}
