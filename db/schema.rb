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

ActiveRecord::Schema.define(version: 20160301021511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adults", force: :cascade do |t|
    t.string   "name"
    t.integer  "earnings"
    t.string   "earnings_times"
    t.integer  "public"
    t.string   "public_times"
    t.integer  "pensions"
    t.string   "pensions_times"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "form_id"
  end

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "form_id"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",                     default: 0, null: false
    t.integer  "attempts",                     default: 0, null: false
    t.text     "handler",                                  null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",        limit: 255
    t.string   "queue",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "progress_stage",   limit: 255
    t.integer  "progress_current",             default: 0
    t.integer  "progress_max",                 default: 0
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "forms", force: :cascade do |t|
    t.string   "address"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "case_number"
    t.integer  "total_household_members"
    t.integer  "ssn"
    t.string   "signature"
    t.string   "daytime_phone"
    t.string   "ethnicity"
    t.string   "race"
    t.boolean  "agrees"
    t.integer  "child_income"
    t.string   "child_income_times"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
