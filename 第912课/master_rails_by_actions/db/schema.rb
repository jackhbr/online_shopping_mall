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

ActiveRecord::Schema.define(version: 20180302153248) do

  create_table "categories", force: true do |t|
    t.string   "title"
    t.integer  "weight",           default: 0
    t.integer  "products_counter", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], name: "index_categories_on_ancestry", using: :btree
  add_index "categories", ["title"], name: "index_categories_on_title", using: :btree

  create_table "product_images", force: true do |t|
    t.integer  "product_id"
    t.integer  "weight",             default: 0
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_images", ["product_id", "weight"], name: "index_product_images_on_product_id_and_weight", using: :btree

  create_table "products", force: true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.string   "status",                               default: "off"
    t.integer  "amount",                               default: 0
    t.string   "uuid"
    t.decimal  "msrp",        precision: 10, scale: 2
    t.decimal  "price",       precision: 10, scale: 2
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree
  add_index "products", ["status", "category_id"], name: "index_products_on_status_and_category_id", using: :btree
  add_index "products", ["title"], name: "index_products_on_title", using: :btree
  add_index "products", ["uuid"], name: "index_products_on_uuid", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["activation_token"], name: "index_users_on_activation_token", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
