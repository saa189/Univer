# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101225115356) do

  create_table "cafedras", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", :force => true do |t|
    t.text     "surname"
    t.text     "name"
    t.text     "lastname"
    t.datetime "birthday"
    t.integer  "passport"
    t.integer  "medpolis"
    t.integer  "pens"
    t.integer  "inn"
    t.text     "education"
    t.integer  "salary"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disciplines", :force => true do |t|
    t.text     "name"
    t.integer  "group_id"
    t.text     "cafedra_name"
    t.integer  "cafedra_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "numb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reportings", :force => true do |t|
    t.text     "rtype"
    t.text     "rktype"
    t.integer  "discipline_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "surname"
    t.string   "name"
    t.string   "lastname"
    t.string   "info"
    t.string   "bday"
    t.string   "bmounth"
    t.string   "byear"
    t.string   "from"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.text     "surname"
    t.text     "name"
    t.text     "lastname"
    t.text     "title"
    t.text     "cafedra_name"
    t.integer  "cafedra_number"
    t.text     "ltype"
    t.text     "stype"
    t.text     "labtype"
    t.integer  "discipline_id"
    t.integer  "group_id"
    t.integer  "kontrakt_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
