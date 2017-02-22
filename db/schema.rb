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

ActiveRecord::Schema.define(version: 20170222074119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.integer  "estimated_price"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "status"
    t.integer  "user_id"
    t.integer  "demand_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["demand_id"], name: "index_consultations_on_demand_id", using: :btree
    t.index ["user_id"], name: "index_consultations_on_user_id", using: :btree
  end

  create_table "demands", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "birthday"
    t.string   "sex"
    t.float    "lat"
    t.float    "long"
    t.string   "photo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "request_time"
    t.string   "illness"
    t.datetime "due_date"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "specialty"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.string   "fav_address"
    t.string   "fav_city"
    t.string   "fav_zipcode"
    t.string   "phone"
    t.integer  "min_consultation"
    t.string   "sex"
    t.float    "lat"
    t.float    "long"
    t.float    "fav_lat"
    t.float    "fav_long"
    t.string   "photo"
    t.string   "cardnumber"
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "consultations", "demands"
  add_foreign_key "consultations", "users"
end
