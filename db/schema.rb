# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180529235352) do

  create_table "account_addresses", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "contact"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "country_id"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.text "comment"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "account_contacts", force: :cascade do |t|
    t.integer "account_id"
    t.string "first_name"
    t.string "last_name"
    t.string "job_title"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.text "comment"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.integer "currency_id"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.integer "account_id"
    t.string "type"
    t.string "name"
    t.text "comment"
    t.integer "warehouse_id"
    t.integer "payment_term_id"
    t.integer "currency_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type", "account_id"], name: "index_companies_on_type_and_account_id"
  end

  create_table "company_addresses", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.string "contact"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "country_id"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.text "comment"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_orders", force: :cascade do |t|
    t.integer "company_id"
    t.string "order_reference"
    t.string "type"
    t.integer "warehouse_id"
    t.integer "company_address_id"
    t.integer "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "alpha_2_code"
    t.string "alpha_3_code"
    t.string "numeric_code"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "alpha_3_code"
    t.string "numeric_code"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "user_id"
    t.integer "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "freight_terms", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_options", force: :cascade do |t|
    t.string "name"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_terms", force: :cascade do |t|
    t.integer "account_id"
    t.integer "payment_option_id"
    t.string "name"
    t.float "trade_credit_rate"
    t.integer "trade_credit_days"
    t.integer "days"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "sku"
    t.text "description"
    t.decimal "price", precision: 20, scale: 5
    t.integer "unit_of_measure_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unit_of_measures", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.integer "current_account_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "contact"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.integer "country_id"
    t.string "postal_code"
    t.string "email"
    t.string "phone"
    t.string "fax"
    t.boolean "status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
