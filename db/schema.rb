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

ActiveRecord::Schema.define(version: 2018_05_23_174310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", id: :serial, force: :cascade do |t|
    t.text "body"
    t.string "commentable_type"
    t.integer "commentable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_file_name"
    t.string "picture_content_type"
    t.integer "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "sermons", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "scriptures"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "media_file_name"
    t.string "media_content_type"
    t.integer "media_file_size"
    t.datetime "media_updated_at"
    t.string "status"
    t.bigint "user_id"
    t.index ["created_at"], name: "index_sermons_on_created_at"
    t.index ["user_id"], name: "index_sermons_on_user_id"
  end

  create_table "upcomings", id: :serial, force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "sermons", "users"
end
