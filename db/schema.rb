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

ActiveRecord::Schema.define(version: 20141204101521) do

  create_table "badgets", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "name"
    t.date     "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dailygoals", force: true do |t|
    t.boolean  "done"
    t.string   "description"
    t.text     "comment"
    t.integer  "mygoal_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mygoals", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "start"
    t.date     "finish"
    t.integer  "days"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "description"
    t.boolean  "done"
    t.integer  "mygoal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["mygoal_id"], name: "index_tasks_on_mygoal_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
