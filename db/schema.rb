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

ActiveRecord::Schema.define(version: 20170329094050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "followers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "teddy_id"
    t.index ["teddy_id"], name: "index_followers_on_teddy_id", using: :btree
    t.index ["user_id"], name: "index_followers_on_user_id", using: :btree
  end

  create_table "stages", force: :cascade do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at",             null: false
    t.date     "date"
    t.text     "content"
    t.string   "backpacker_name"
    t.text     "backpacker_description"
    t.integer  "teddy_id"
    t.datetime "updated_at",             null: false
    t.string   "adress"
    t.string   "backpacker_origin"
    t.string   "backpacker_email"
    t.string   "crush"
    t.string   "city"
    t.string   "country"
    t.index ["teddy_id"], name: "index_stages_on_teddy_id", using: :btree
  end

  create_table "teddies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
    t.string   "personality"
    t.string   "origin"
    t.string   "gender"
    t.index ["code"], name: "index_teddies_on_code", using: :btree
    t.index ["user_id"], name: "index_teddies_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "followers", "teddies"
  add_foreign_key "followers", "users"
  add_foreign_key "stages", "teddies"
  add_foreign_key "teddies", "users"
end
