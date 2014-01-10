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

ActiveRecord::Schema.define(:version => 20140109022046) do

  create_table "camp_offerings", :force => true do |t|
    t.integer  "camp_id"
    t.string   "teacher"
    t.string   "assistant"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "location_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "camp_offerings_registrations", :id => false, :force => true do |t|
    t.integer "camp_offering_id", :null => false
    t.integer "registration_id",  :null => false
  end

  add_index "camp_offerings_registrations", ["camp_offering_id", "registration_id"], :name => "camp_off_reg", :unique => true

  create_table "camps", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "capacity"
    t.string   "age"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "price"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registrations", :force => true do |t|
    t.string   "parent_first_name"
    t.string   "parent_last_name"
    t.string   "parent_address_1"
    t.string   "parent_address_2"
    t.string   "parent_email"
    t.string   "parent_phone"
    t.string   "student_first_name"
    t.string   "student_last_name"
    t.string   "student_grade"
    t.string   "student_allergies"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

end
