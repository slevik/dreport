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

ActiveRecord::Schema.define(version: 20140807191204) do

  create_table "bugs", force: true do |t|
    t.integer  "user"
    t.integer  "number"
    t.text     "description"
    t.integer  "status"
    t.string   "estimate"
    t.string   "date"
    t.integer  "project"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "points",      default: 1
  end

  create_table "pr_modules", force: true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_api"
    t.boolean  "is_ui"
    t.integer  "position"
  end

  create_table "project_pr_modules", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.boolean  "status"
    t.string   "change_list_ui",  default: ""
    t.string   "change_list_api", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date"
    t.string   "modules"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
