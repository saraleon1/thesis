# If necessary, uncomment the line below to include explore_source.
# include: "leon_thesis_dvd_rental.model.lkml"

view: rental_log {
  derived_table: {
    sql:
      SELECT
        film.title  AS film_title,
        film.rating  AS film_rating,
        film.release_year  AS film_release_year,
        film.description  AS film_description,
        film.rental_rate  AS film_rental_rate,
        film.rental_duration  AS film_rental_duration,
        COUNT(*) AS rental_count
      FROM leon_thesis_data.rental  AS rental
      LEFT JOIN leon_thesis_data.inventory  AS inventory ON rental.inventory_id = inventory.inventory_id
      LEFT JOIN leon_thesis_data.film  AS film ON inventory.film_id = film.film_id

      GROUP BY 1,2,3,4,5,6 ;;


  }


dimension: film_title {
  type: string
  primary_key: yes
}

dimension:  film_rating {
  type: string
}

dimension: film_release_year {
  type: number
}

dimension: film_description {
  type: string
}

dimension: film_rental_rate {
  type: number
  value_format: "$0.00"
}

dimension: film_rental_duration {
  type: number
}

dimension: rental_count {
  type: number
}
}
