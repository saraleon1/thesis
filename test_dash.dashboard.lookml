# - dashboard: test_dash
#   title: Test Dash
#   layout: tile
#   tile_size: 100

#   # filters:


#   model: leon_thesis_dvd_rental
#   explore: rental_log
#   type: table
#   fields: [rental_log.film_title, rental_log.film_description, rental_log.rental_count,
#     rental_log.rank_limit]
#   filters:
#     rental_log.max_rank: ''
#     rental_log.film_rating: ''
#   sorts: [rank]
#   limit: 5000
#   column_limit: 50
#   dynamic_fields:
#   - table_calculation: rank
#     label: Rank
#     expression: rank(${rental_log.rental_count},${rental_log.rental_count})
#     value_format:
#     value_format_name:
#     _kind_hint: dimension
#     _type_hint: number
#   - table_calculation: show_in_visualization
#     label: Show In Visualization
#     expression: "${rental_log.rank_limit}>=${rank}"
#     value_format:
#     value_format_name:
#     _kind_hint: dimension
#     _type_hint: yesno
#   query_timezone: America/Los_Angeles
#   hidden_fields: [show_in_visualization, rental_log.rank_limit, rental_log.rental_count]
#   series_types: {}
#   hidden_points_if_no: [show_in_visualization]

# - dashboard: movie_chooser
#   title: Movie_Chooser
#   layout: newspaper
#   elements:
#   - title: Movie Chooser
#     name: Movie Chooser
#     model: leon_thesis_dvd_rental
#     explore: rental_log
#     type: table
#     fields:
#     - rental_log.film_title
#     - rental_log.film_description
#     - rental_log.rental_count
#     - rental_log.rank_limit
#     filters:
#       rental_log.film_rating_filter: ''
#     sorts:
#     - rank
#     limit: 5000
#     column_limit: 50
#     dynamic_fields:
#     - table_calculation: rank
#       label: Rank
#       expression: rank(${rental_log.rental_count},${rental_log.rental_count})
#       value_format:
#       value_format_name:
#       _kind_hint: dimension
#       _type_hint: number
#     - table_calculation: show_in_visualization
#       label: Show In Visualization
#       expression: "${rental_log.rank_limit}>=${rank}"
#       value_format:
#       value_format_name:
#       _kind_hint: dimension
#       _type_hint: yesno
#     query_timezone: America/Los_Angeles
#     hidden_fields:
#     - show_in_visualization
#     - rental_log.rank_limit
#     - rental_log.rental_count
#     series_types: {}
#     hidden_points_if_no:
#     - show_in_visualization
#     listen:
#       Show Top: rental_log.max_rank
#       Movie Rating: rental_log.film_rating
#     row: 0
#     col: 0
#     width: 24
#     height: 15
#   filters:
#   - name: Show Top
#     title: Show Top
#     type: number_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false
#   - name: Movie Rating
#     title: Movie Rating
#     type: string_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false




# - name:
#   title: Untitled Visualization
#   model: leon_thesis_dvd_rental
#   explore: rental_log
#   type: table
#   fields: [rental_log.film_title, rental_log.film_description, rental_log.rental_count,
#     rental_log.rank_limit]
#   filters:
#     rental_log.max_rank: ''
#     rental_log.film_rating: ''
#   sorts: [rank]
#   limit: 5000
#   column_limit: 50
#   dynamic_fields:
#   - table_calculation: rank
#     label: Rank
#     expression: rank(${rental_log.rental_count},${rental_log.rental_count})
#     value_format:
#     value_format_name:
#     _kind_hint: dimension
#     _type_hint: number
#   - table_calculation: show_in_visualization
#     label: Show In Visualization
#     expression: "${rental_log.rank_limit}>=${rank}"
#     value_format:
#     value_format_name:
#     _kind_hint: dimension
#     _type_hint: yesno
#   query_timezone: America/Los_Angeles
#   hidden_fields: [show_in_visualization, rental_log.rank_limit, rental_log.rental_count]
#   series_types: {}
#   hidden_points_if_no: [show_in_visualization]
