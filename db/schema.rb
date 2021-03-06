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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130705034053) do

  create_table "booklists", :force => true do |t|
    t.string   "title"
    t.string   "creator"
    t.text     "intro"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "booklists", ["department_id"], :name => "index_booklists_on_department_id"

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "author"
    t.string   "publisher"
    t.string   "coverUrl"
    t.string   "link"
    t.text     "summary"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "review_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["review_id"], :name => "index_comments_on_review_id"

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.text     "story"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "coverUrl"
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.string   "creator"
    t.text     "content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "department_id"
  end

  add_index "reviews", ["department_id"], :name => "index_reviews_on_department_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "intro"
    t.string   "img"
    t.string   "url"
    t.integer  "department_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "videos", ["department_id"], :name => "index_videos_on_department_id"

  create_table "xes", :force => true do |t|
    t.string   "name"
    t.string   "lat"
    t.string   "lnt"
    t.text     "address"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "rrPage"
  end

end
