# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_24_222855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingred_recipes", force: :cascade do |t|
    t.bigint "Recipe_id"
    t.bigint "Ingredient_id"
    t.index ["Ingredient_id"], name: "index_ingred_recipes_on_Ingredient_id"
    t.index ["Recipe_id"], name: "index_ingred_recipes_on_Recipe_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.string "meal_type", limit: 2
    t.bigint "user_id"
    t.bigint "recipes_id"
    t.index ["recipes_id"], name: "index_ingredients_on_recipes_id"
    t.index ["user_id"], name: "index_ingredients_on_user_id"
  end

  create_table "measures", force: :cascade do |t|
    t.string "meas_name", null: false
    t.integer "grams", null: false
    t.string "meas_role", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_measures_on_user_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "instructions"
    t.string "meal_type", limit: 2
    t.bigint "user_id"
    t.bigint "ingredients_id"
    t.index ["ingredients_id"], name: "index_recipes_on_ingredients_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "login"
    t.string "password_digest"
  end

end
