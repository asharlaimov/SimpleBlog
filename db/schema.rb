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

ActiveRecord::Schema.define(version: 20140504144126) do

  create_table "comments", force: true do |t|
    t.text "body"
    t.integer "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "post_tags", force: true do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_tags", ["post_id"], name: "index_post_tags_on_post_id"
  add_index "post_tags", ["tag_id"], name: "index_post_tags_on_tag_id"

  create_table "posts", force: true do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "user_id"
    t.boolean "approved", default: true
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id"

  create_table "settings", force: true do |t|
    t.string "var", null: false
    t.text "value"
    t.integer "thing_id"
    t.string "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true

  create_table "tags", force: true do |t|
    t.string "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "posts_count", default: 0
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "banned", default: false
  end

end
