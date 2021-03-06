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

ActiveRecord::Schema.define(:version => 20120710035156) do

  create_table "answers", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.integer  "question_id"
    t.integer  "statistic_id"
    t.integer  "impressions_count"
  end

  create_table "answers_tags", :id => false, :force => true do |t|
    t.integer "answer_id"
    t.integer "tag_id"
  end

  add_index "answers_tags", ["answer_id", "tag_id"], :name => "index_answers_tags_on_answer_id_and_tag_id"
  add_index "answers_tags", ["tag_id", "answer_id"], :name => "index_answers_tags_on_tag_id_and_answer_id"

  create_table "categories", :force => true do |t|
    t.string "name"
    t.string "question_id"
    t.string "answer_id"
  end

  create_table "impressions", :force => true do |t|
    t.string   "impressionable_type"
    t.integer  "impressionable_id"
    t.integer  "user_id"
    t.string   "controller_name"
    t.string   "action_name"
    t.string   "view_name"
    t.string   "request_hash"
    t.string   "ip_address"
    t.string   "session_hash"
    t.text     "message"
    t.text     "referrer"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "impressions", ["controller_name", "action_name", "ip_address"], :name => "controlleraction_ip_index"
  add_index "impressions", ["controller_name", "action_name", "request_hash"], :name => "controlleraction_request_index"
  add_index "impressions", ["controller_name", "action_name", "session_hash"], :name => "controlleraction_session_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "ip_address"], :name => "poly_ip_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "request_hash"], :name => "poly_request_index"
  add_index "impressions", ["impressionable_type", "impressionable_id", "session_hash"], :name => "poly_session_index"
  add_index "impressions", ["user_id"], :name => "index_impressions_on_user_id"

  create_table "pushes", :force => true do |t|
    t.boolean  "push",          :default => false
    t.integer  "pushable_id",                      :null => false
    t.string   "pushable_type",                    :null => false
    t.integer  "pusher_id"
    t.string   "pusher_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "pushes", ["pushable_id", "pushable_type"], :name => "fk_pushables"
  add_index "pushes", ["pusher_id", "pusher_type", "pushable_id", "pushable_type"], :name => "uniq_one_push_only", :unique => true
  add_index "pushes", ["pusher_id", "pusher_type"], :name => "fk_pushers"

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.integer  "statistic_id"
    t.integer  "impressions_count"
  end

  create_table "questions_tags", :id => false, :force => true do |t|
    t.integer "question_id"
    t.integer "tag_id"
  end

  add_index "questions_tags", ["question_id", "tag_id"], :name => "index_questions_tags_on_question_id_and_tag_id"
  add_index "questions_tags", ["tag_id", "question_id"], :name => "index_questions_tags_on_tag_id_and_question_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "statistics", :force => true do |t|
    t.integer "likes"
    t.integer "pushes"
    t.integer "views"
    t.integer "question_id"
    t.integer "answer_id"
  end

  create_table "tags", :force => true do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school_name"
    t.string   "position"
    t.string   "password_digest"
    t.string   "account_type"
    t.string   "email"
    t.datetime "created_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "votes", :force => true do |t|
    t.boolean  "vote",          :default => false
    t.integer  "voteable_id",                      :null => false
    t.string   "voteable_type",                    :null => false
    t.integer  "voter_id"
    t.string   "voter_type"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  add_index "votes", ["voteable_id", "voteable_type"], :name => "fk_voteables"
  add_index "votes", ["voter_id", "voter_type", "voteable_id", "voteable_type"], :name => "uniq_one_vote_only", :unique => true
  add_index "votes", ["voter_id", "voter_type"], :name => "fk_voters"

end
