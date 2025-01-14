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

ActiveRecord::Schema.define(version: 2022_10_24_181344) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.integer "total_cost"
    t.integer "furniture_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
  end

  create_table "furnitures", force: :cascade do |t|
    t.string "name"
    t.string "designer"
    t.string "material"
    t.integer "price"
    t.string "dimensions"
    t.string "origin"
    t.integer "inventory"
    t.integer "category_id"
    t.integer "image_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "angle1"
    t.string "angle2"
    t.string "angle3"
    t.string "thumbnail"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.integer "cost"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
