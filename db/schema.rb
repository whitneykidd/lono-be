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

ActiveRecord::Schema.define(version: 20200914193012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "days", force: :cascade do |t|
    t.text "date"
    t.float "temperature"
    t.boolean "high_risk", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_days_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "start_date"
    t.integer "avg_period", default: 6
    t.integer "avg_cycle", default: 28
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "day_of_ovulation"
    t.string "name"
  end

  add_foreign_key "days", "users"
end
