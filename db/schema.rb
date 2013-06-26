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

ActiveRecord::Schema.define(:version => 20130626020645) do

  create_table "achievementnames", :force => true do |t|
    t.string   "achievementname"
    t.integer  "college_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "hourreq"
  end

  create_table "achievementtypes", :force => true do |t|
    t.string   "achievementtype"
    t.integer  "institution_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "catalogs", :force => true do |t|
    t.string   "college"
    t.string   "department"
    t.integer  "num"
    t.text     "brief"
    t.integer  "gradecode"
    t.integer  "credits"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.integer  "offered_id"
    t.boolean  "di"
    t.boolean  "dii"
    t.boolean  "diii"
  end

  create_table "ccourses", :force => true do |t|
    t.string   "department"
    t.integer  "corereq_id"
    t.integer  "num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "colleges", :force => true do |t|
    t.string   "college"
    t.integer  "achievementtype_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "corereqs", :force => true do |t|
    t.string   "corereqname"
    t.integer  "hgoal"
    t.integer  "cgoal"
    t.integer  "specialty_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institutions", :force => true do |t|
    t.string   "title"
    t.string   "nickname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "catalog_id"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ocourses", :force => true do |t|
    t.string   "department"
    t.integer  "option_id"
    t.integer  "num"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offereds", :force => true do |t|
    t.string   "semester"
    t.integer  "year"
    t.string   "professor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "opreqs", :force => true do |t|
    t.string   "opreqname"
    t.integer  "specialty_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "options", :force => true do |t|
    t.string   "optionname"
    t.integer  "opreq_id"
    t.integer  "hgoal"
    t.integer  "cgoal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["followed_id"], :name => "index_relationships_on_followed_id"
  add_index "relationships", ["follower_id", "followed_id"], :name => "index_relationships_on_follower_id_and_followed_id", :unique => true
  add_index "relationships", ["follower_id"], :name => "index_relationships_on_follower_id"

  create_table "specialties", :force => true do |t|
    t.string   "specialty"
    t.integer  "achievementname_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "usercatalogs", :force => true do |t|
    t.string   "department"
    t.integer  "num"
    t.integer  "credits"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.boolean  "taken"
    t.boolean  "taking"
    t.boolean  "willTake"
    t.string   "institution"
    t.string   "dreamJob"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.string   "college"
    t.string   "majors"
    t.integer  "gradyear"
    t.string   "minors"
    t.integer  "institution_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
