# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_10_141649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: :cascade do |t|
    t.integer "price"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "rating"
    t.text "city_name"
    t.text "country_name"
    t.text "check_in"
  end

  create_table "bookings", force: :cascade do |t|
    t.boolean "status"
    t.bigint "offer_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["offer_id"], name: "index_bookings_on_offer_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "definitions", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.integer "budget"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "travellers"
    t.index ["user_id"], name: "index_definitions_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.bigint "accommodation_id", null: false
    t.bigint "flight_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city_name"
    t.string "country_name"
    t.string "airport_name"
    t.index ["accommodation_id"], name: "index_destinations_on_accommodation_id"
    t.index ["flight_id"], name: "index_destinations_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "price"
    t.string "company"
    t.string "flight_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "city_name"
    t.text "duration"
    t.text "departure"
    t.date "start_date"
    t.text "country_name"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "total_price"
    t.date "date"
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["destination_id"], name: "index_offers_on_destination_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_ratings_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "offers"
  add_foreign_key "bookings", "users"
  add_foreign_key "definitions", "users"
  add_foreign_key "destinations", "accommodations"
  add_foreign_key "destinations", "flights"
  add_foreign_key "offers", "destinations"
  add_foreign_key "ratings", "bookings"
end
