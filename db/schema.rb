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

ActiveRecord::Schema.define(version: 20141214215753) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",         null: false
    t.string   "password_hash", null: false
    t.string   "password_salt", null: false
    t.date     "birthdate"
    t.string   "cellphone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "fname"
    t.text     "lname"
  end

  create_table "cars", force: true do |t|
    t.string   "title"
    t.string   "make"
    t.string   "model"
    t.integer  "year_info"
    t.string   "color"
    t.string   "fueltype"
    t.integer  "hp"
    t.string   "image"
    t.integer  "price"
    t.integer  "stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "email",         null: false
    t.string   "password_hash", null: false
    t.string   "password_salt", null: false
    t.date     "birthdate"
    t.string   "cellphone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "fname"
    t.text     "lname"
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree

  create_table "options", force: true do |t|
    t.string   "opt_key"
    t.text     "opt_val"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentals", force: true do |t|
    t.string   "location"
    t.date     "pickupdate"
    t.date     "dropoffdate"
    t.integer  "cars_id"
    t.integer  "members_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
