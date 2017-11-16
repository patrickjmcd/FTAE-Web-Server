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

ActiveRecord::Schema.define(:version => 20121205180533) do

  create_table "events", :force => true do |t|
    t.string   "eventid"
    t.string   "sourcename"
    t.string   "sourcepath"
    t.string   "sourceid"
    t.string   "servername"
    t.string   "tickstimestamp"
    t.datetime "eventtimestamp"
    t.string   "eventcategory"
    t.integer  "severity"
    t.integer  "priority"
    t.string   "message"
    t.string   "conditionname"
    t.string   "subconditionname"
    t.string   "alarmclass"
    t.boolean  "active"
    t.boolean  "acked"
    t.boolean  "effdisabled"
    t.boolean  "disabled"
    t.boolean  "effsuppressed"
    t.boolean  "suppressed"
    t.string   "personid"
    t.integer  "changemask"
    t.float    "inputvalue"
    t.float    "limitvalue"
    t.integer  "quality"
    t.string   "eventassociationid"
    t.string   "usercomment"
    t.string   "usercomputerid"
    t.string   "tag1value"
    t.string   "tag2value"
    t.string   "tag3value"
    t.string   "tag4value"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
