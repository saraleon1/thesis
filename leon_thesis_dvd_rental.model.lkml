connection: "lookerdata_standard_sql"

include: "*.view.lkml"         # include all views in this project
include: "test_dash.dashboard.lookml"  # include all dashboards in this project


explore: actor {
  hidden: yes
}


explore: address {
  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}


explore: category {
  hidden: yes
}


explore: city {
  hidden: yes
}


explore: country {
  hidden: yes
}


explore: customer {
  join: address {
    type: left_outer
    sql_on: ${customer.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${customer.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}


explore: film {
  hidden: yes
}


explore: film_actor {
  join: film {
    type: left_outer
    sql_on: ${film_actor.film_id} = ${film.film_id} ;;
    relationship: many_to_one
  }

  join: actor {
    type: left_outer
    sql_on: ${film_actor.actor_id} = ${actor.actor_id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${film.language_id} = ${language.language_id} ;;
    relationship: many_to_one
  }
}


explore: film_category {
  join: film {
    type: left_outer
    sql_on: ${film_category.film_id} = ${film.film_id} ;;
    relationship: many_to_one
  }

  join: category {
    type: left_outer
    sql_on: ${film_category.category_id} = ${category.category_id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${film.language_id} = ${language.language_id} ;;
    relationship: many_to_one
  }
}


explore: inventory {
  join: store {
    type: left_outer
    sql_on: ${inventory.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: film {
    type: left_outer
    sql_on: ${inventory.film_id} = ${film.film_id} ;;
    relationship: many_to_one
  }

  join: address {
    type: left_outer
    sql_on: ${store.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${film.language_id} = ${language.language_id} ;;
    relationship: many_to_one
  }
}


explore: language {
  hidden: yes
}


explore: payment {
  join: rental {
    type: left_outer
    sql_on: ${payment.rental_id} = ${rental.rental_id} ;;
    relationship: many_to_one
  }

  join: staff {
    type: left_outer
    sql_on: ${payment.staff_id} = ${staff.staff_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${payment.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: inventory {
    type: left_outer
    sql_on: ${rental.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${inventory.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: film {
    type: left_outer
    sql_on: ${inventory.film_id} = ${film.film_id} ;;
    relationship: many_to_one
  }

  join: address {
    type: left_outer
    sql_on: ${store.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${film.language_id} = ${language.language_id} ;;
    relationship: many_to_one
  }
}


explore: rental {
  join: inventory {
    type: left_outer
    sql_on: ${rental.inventory_id} = ${inventory.inventory_id} ;;
    relationship: many_to_one
  }

  join: customer {
    type: left_outer
    sql_on: ${rental.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }

  join: staff {
    type: left_outer
    sql_on: ${rental.staff_id} = ${staff.staff_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${inventory.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: film {
    type: left_outer
    sql_on: ${inventory.film_id} = ${film.film_id} ;;
    relationship: many_to_one
  }

  join: address {
    type: left_outer
    sql_on: ${store.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }

  join: language {
    type: left_outer
    sql_on: ${film.language_id} = ${language.language_id} ;;
    relationship: many_to_one
  }
}


# explore: revenue_dt {}



explore: staff {
  join: address {
    type: left_outer
    sql_on: ${staff.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: store {
    type: left_outer
    sql_on: ${staff.store_id} = ${store.store_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: customer_count {}

explore: store {
  join: address {
    type: left_outer
    sql_on: ${store.address_id} = ${address.address_id} ;;
    relationship: many_to_one
  }

  join: city {
    type: left_outer
    sql_on: ${address.city_id} = ${city.city_id} ;;
    relationship: many_to_one
  }

  join: country {
    type: left_outer
    sql_on: ${city.country_id} = ${country.country_id} ;;
    relationship: many_to_one
  }
}

explore: first_rental {}

explore: revenue_dt {}

explore: rental_log {}
explore: monthly_activity {}

explore: dt_block {
  label: "Cohorts"
}

explore: customer_order_facts {}
explore: test_param_preservetype {}
