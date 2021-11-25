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

ActiveRecord::Schema.define(version: 2021_11_25_123045) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "time_slot_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "client_id"
    t.boolean "payment_received"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["time_slot_id"], name: "index_bookings_on_time_slot_id"
  end

  create_table "sport_classes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "coach_id"
    t.string "level"
    t.integer "group_size"
    t.float "price"
    t.integer "duration"
    t.string "address1"
    t.string "address2"
    t.string "post_code"
    t.string "town"
    t.index ["coach_id"], name: "index_sport_classes_on_coach_id"
  end

  create_table "time_slots", force: :cascade do |t|
    t.string "level"
    t.integer "group_size"
    t.float "price"
    t.datetime "start_at"
    t.datetime "end_at"
    t.bigint "sport_class_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
    t.string "address1"
    t.string "address2"
    t.string "post_code"
    t.string "town"
    t.index ["sport_class_id"], name: "index_time_slots_on_sport_class_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "time_slots"
  add_foreign_key "bookings", "users", column: "client_id"
  add_foreign_key "sport_classes", "users", column: "coach_id"
  add_foreign_key "time_slots", "sport_classes"
end
