# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
Rails.application.config.assets.precompile += %w( 
  normalize.css
  main.js
  users/registrations.js
  users/registrations.css
  users/sessions.js
  users/sessions.css
  navigations.js
  navigations.css
  countries.js
  countries.css
  currencies.js
  currencies.css
  accounts.js
  accounts.css
  payment_options.js
  payment_options.css
  employees.js
  employees.css
  freight_terms.js
  freight_terms.css
  payment_terms.js
  payment_terms.css
  unit_of_measures.js
  unit_of_measures.css
  account_addresses.js
  account_addresses.css
  account_contacts.js
  account_contacts.css
  warehouses.js
  warehouses.css
  customers.js
  customers.css
  suppliers.js
  suppliers.css
)
