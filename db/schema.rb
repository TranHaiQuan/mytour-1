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

ActiveRecord::Schema.define(version: 20180115162029) do

  create_table "bookings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.integer "number_customer"
    t.integer "total_price"
    t.string "notebook"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "data_fingerprint"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "images", force: :cascade do |t|
    t.integer "plan_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.integer "tour_id"
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tour_id"
    t.float "rate", default: 0.0
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sevice_attaches", force: :cascade do |t|
    t.integer "tour_id"
    t.string "insurrance"
    t.string "meal"
    t.string "tour_guide"
    t.string "entrance_tickets"
    t.string "chuttle_car"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stipulates", force: :cascade do |t|
    t.integer "tour_id"
    t.string "note"
    t.string "cancel_tour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tours", force: :cascade do |t|
    t.integer "user_id"
    t.string "tour_name", null: false
    t.string "tour_code"
    t.string "destination", default: "Nghe an"
    t.integer "number_day", default: 3
    t.integer "number_night", default: 4
    t.date "departure_date"
    t.date "return_date"
    t.string "pickup_place", default: "Nghe an"
    t.integer "price"
    t.string "image_small"
    t.string "image_title"
    t.float "rate_avg", default: 3.0
    t.string "created_by"
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
    t.string "name"
    t.integer "sex"
    t.string "phone"
    t.string "address"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
