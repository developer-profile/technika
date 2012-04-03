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

ActiveRecord::Schema.define(:version => 20120403092115) do

  create_table "analitics", :force => true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "goods"
    t.integer  "counts"
    t.text     "comments"
    t.integer  "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "categoryid"
    t.string   "name"
    t.integer  "price"
    t.integer  "weight"
    t.integer  "volume"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.integer  "count"
    t.string   "name"
    t.text     "contact"
    t.text     "comments"
    t.integer  "sale"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "categoryid"
    t.integer  "number"
    t.date     "date"
    t.text     "goods"
    t.integer  "price"
    t.integer  "sale"
    t.integer  "total"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "logistics", :force => true do |t|
    t.date     "date"
    t.string   "logistic"
    t.integer  "docnumber"
    t.text     "comments"
    t.string   "client"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
