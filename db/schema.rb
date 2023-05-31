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

ActiveRecord::Schema[7.0].define(version: 2023_05_29_222004) do
  create_table "brands", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "designs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warehouse_id"], name: "index_inventories_on_warehouse_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.integer "item_id", null: false
    t.decimal "storing_format_units", default: "0.0"
    t.decimal "transferring_format_units", default: "0.0"
    t.integer "inventory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_id"], name: "index_inventory_items_on_inventory_id"
    t.index ["item_id"], name: "index_inventory_items_on_item_id"
  end

  create_table "items", id: :string, force: :cascade do |t|
    t.string "name", null: false
    t.decimal "conversion_factor", null: false
    t.decimal "size"
    t.integer "subcategory_id", null: false
    t.integer "brand_id"
    t.integer "design_id"
    t.decimal "minimum_stock", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_items_on_brand_id"
    t.index ["design_id"], name: "index_items_on_design_id"
    t.index ["subcategory_id"], name: "index_items_on_subcategory_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "name", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_subcategories_on_category_id"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inventories", "warehouses"
  add_foreign_key "inventory_items", "inventories"
  add_foreign_key "inventory_items", "items"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "designs"
  add_foreign_key "items", "subcategories"
  add_foreign_key "subcategories", "categories"
end
