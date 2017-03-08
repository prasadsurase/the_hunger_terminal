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

ActiveRecord::Schema.define(version: 20170308105827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "landline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "subsidy"
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "name"
    t.boolean  "veg"
    t.float    "price"
    t.integer  "terminal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["terminal_id"], name: "index_menu_items_on_terminal_id", using: :btree
  end

  create_table "order_details", force: :cascade do |t|
    t.string   "menu_item_name"
    t.float    "menu_item_price"
    t.integer  "quantity"
    t.integer  "order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["order_id"], name: "index_order_details_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.float    "total_cost"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "terminals", force: :cascade do |t|
    t.string   "name"
    t.string   "landline"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_terminals_on_company_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "mobile"
    t.string   "role"
    t.string   "email"
    t.integer  "company_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "active",     default: true
    t.index ["company_id"], name: "index_users_on_company_id", using: :btree
  end

  add_foreign_key "menu_items", "terminals"
  add_foreign_key "order_details", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "terminals", "companies"
  add_foreign_key "users", "companies"
end
