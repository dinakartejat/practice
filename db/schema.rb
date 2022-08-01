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

ActiveRecord::Schema[7.0].define(version: 2022_08_01_165333) do
  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "addressses", force: :cascade do |t|
    t.string "name"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addressses_on_customer_id"
  end

  create_table "amazonloginpages", force: :cascade do |t|
    t.string "username"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customerrs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dells", force: :cascade do |t|
    t.string "name"
    t.string "ram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fbs", force: :cascade do |t|
    t.string "firstname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flipkarts", force: :cascade do |t|
    t.string "username"
    t.integer "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "iphonemobiles", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "iteeems", force: :cascade do |t|
    t.string "name"
    t.integer "orderr_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orderr_id"], name: "index_iteeems_on_orderr_id"
  end

  create_table "iteems", force: :cascade do |t|
    t.string "name"
    t.integer "orderr_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orderr_id"], name: "index_iteems_on_orderr_id"
  end

  create_table "itemms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lenovos", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderrs", force: :cascade do |t|
    t.string "name"
    t.integer "customerr_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customerr_id"], name: "index_orderrs_on_customerr_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_orders_on_item_id"
  end

  create_table "pants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productitems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productitems_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "productitem_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shirts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skybags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sponsorships", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "writer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_sponsorships_on_book_id"
    t.index ["writer_id"], name: "index_sponsorships_on_writer_id"
  end

  create_table "spotifies", force: :cascade do |t|
    t.string "gmail"
    t.integer "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "addressses", "customers"
  add_foreign_key "iteeems", "orderrs"
  add_foreign_key "iteems", "orderrs"
  add_foreign_key "orderrs", "customers", column: "customerr_id"
  add_foreign_key "orders", "items"
  add_foreign_key "sponsorships", "books"
  add_foreign_key "sponsorships", "writers"
end
