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

ActiveRecord::Schema.define(version: 20150422023436) do

  create_table "chr_mega_relations", force: :cascade do |t|
    t.string   "chr_id"
    t.string   "mega_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chr_mega_relations", ["chr_id", "mega_id"], name: "index_chr_mega_relations_on_chr_id_and_mega_id", unique: true
  add_index "chr_mega_relations", ["chr_id"], name: "index_chr_mega_relations_on_chr_id"
  add_index "chr_mega_relations", ["mega_id"], name: "index_chr_mega_relations_on_mega_id"

  create_table "chrs", force: :cascade do |t|
    t.string   "name",         default: "chr_"
    t.integer  "ctype"
    t.integer  "length"
    t.integer  "manipulation"
    t.integer  "version"
    t.boolean  "latest_flag",  default: true
    t.text     "introduction"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "chrs", ["name"], name: "index_chrs_on_name"

  create_table "chunk_mini_relations", force: :cascade do |t|
    t.integer  "chunk_id"
    t.integer  "mini_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chunk_mini_relations", ["chunk_id", "mini_id"], name: "index_chunk_mini_relations_on_chunk_id_and_mini_id", unique: true
  add_index "chunk_mini_relations", ["chunk_id"], name: "index_chunk_mini_relations_on_chunk_id"
  add_index "chunk_mini_relations", ["mini_id"], name: "index_chunk_mini_relations_on_mini_id"

  create_table "chunks", force: :cascade do |t|
    t.string   "name",           default: "chunk_"
    t.integer  "overall_length"
    t.integer  "synstart"
    t.integer  "synend"
    t.text     "introduction"
    t.boolean  "latest_flag",    default: true
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "mega_chunk_relations", force: :cascade do |t|
    t.integer  "mega_id"
    t.integer  "chunk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mega_chunk_relations", ["chunk_id"], name: "index_mega_chunk_relations_on_chunk_id"
  add_index "mega_chunk_relations", ["mega_id", "chunk_id"], name: "index_mega_chunk_relations_on_mega_id_and_chunk_id", unique: true
  add_index "mega_chunk_relations", ["mega_id"], name: "index_mega_chunk_relations_on_mega_id"

  create_table "megas", force: :cascade do |t|
    t.string   "name",         default: "mega_"
    t.integer  "synstart"
    t.integer  "synend"
    t.integer  "marker"
    t.text     "introduction"
    t.boolean  "latest_flag",  default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "megas", ["name"], name: "index_megas_on_name"

  create_table "minis", force: :cascade do |t|
    t.string   "name",         default: "mini_"
    t.integer  "synstart"
    t.integer  "synend"
    t.text     "sequence"
    t.integer  "ctype"
    t.text     "introduction"
    t.boolean  "latest_flag",  default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
