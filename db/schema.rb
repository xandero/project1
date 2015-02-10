# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150207070318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "serving_size"
    t.float    "quantity"
    t.integer  "meal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods_meals", force: :cascade do |t|
    t.integer "food_id"
    t.integer "meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string   "meal_type"
    t.date     "meal_date"
    t.integer  "protein_guess"
    t.integer  "carb_guess"
    t.integer  "fat_guess"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nutritions", force: :cascade do |t|
    t.string   "name"
    t.integer  "daily_carb"
    t.integer  "daily_fat"
    t.integer  "daily_protein"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "gender"
    t.string   "activity_level"
    t.integer  "weight"
    t.integer  "height"
    t.integer  "nutrition_id"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end