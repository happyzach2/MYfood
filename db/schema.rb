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

ActiveRecord::Schema.define(version: 20171123180557) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meal_id"], name: "index_ingredients_on_meal_id"
  end

  create_table "meal_plans", force: :cascade do |t|
    t.decimal "budget"
    t.bigint "week_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "number_of_weeks"
    t.date "start_date"
    t.index ["user_id"], name: "index_meal_plans_on_user_id"
    t.index ["week_day_id"], name: "index_meal_plans_on_week_day_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_meals_on_user_id"
  end

  create_table "user_meals", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "meal_id"
    t.boolean "selected"
    t.index ["meal_id"], name: "index_user_meals_on_meal_id"
    t.index ["user_id"], name: "index_user_meals_on_user_id"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "week_day_meals", force: :cascade do |t|
    t.bigint "week_day_id"
    t.bigint "meal_id"
    t.boolean "eaten"
    t.index ["meal_id"], name: "index_week_day_meals_on_meal_id"
    t.index ["week_day_id"], name: "index_week_day_meals_on_week_day_id"
  end

  create_table "week_days", force: :cascade do |t|
    t.date "date"
    t.bigint "meal_id"
    t.boolean "eaten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "meal_plan_id"
    t.index ["meal_id"], name: "index_week_days_on_meal_id"
    t.index ["meal_plan_id"], name: "index_week_days_on_meal_plan_id"
  end

  add_foreign_key "ingredients", "meals"
  add_foreign_key "meal_plans", "users"
  add_foreign_key "meal_plans", "week_days"
  add_foreign_key "meals", "users"
  add_foreign_key "user_meals", "meals"
  add_foreign_key "user_meals", "users"
  add_foreign_key "week_day_meals", "meals"
  add_foreign_key "week_day_meals", "week_days"
  add_foreign_key "week_days", "meal_plans"
  add_foreign_key "week_days", "meals"
end
