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

ActiveRecord::Schema.define(version: 20150429085715) do

  create_table "bamboo_items", force: :cascade do |t|
    t.integer  "structure_id"
    t.integer  "itemizable_id"
    t.string   "itemizable_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "bamboo_items", ["itemizable_type", "itemizable_id"], name: "index_bamboo_items_on_itemizable_type_and_itemizable_id"
  add_index "bamboo_items", ["structure_id"], name: "index_bamboo_items_on_structure_id"

  create_table "bamboo_structures", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.integer  "constructable_id"
    t.string   "constructable_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "bamboo_structures", ["constructable_type", "constructable_id"], name: "index_bamboo_structures_on_constructable"

  create_table "bamboo_text_items", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
