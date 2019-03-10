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

ActiveRecord::Schema.define(version: 2019_03_10_125003) do

  create_table "projects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "noInt"
    t.string "noExt"
    t.text "workTodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "completed_at"
    t.text "workTodo1"
    t.text "workTodo2"
    t.text "workTodo3"
    t.text "workTodo4"
    t.datetime "w0_started_at"
    t.datetime "w0_stopped_at"
    t.string "work"
    t.string "work1"
    t.string "work2"
    t.string "work3"
    t.string "work4"
    t.string "bearbeiter"
    t.datetime "liefTermn"
    t.datetime "warEing"
    t.string "ext"
    t.string "ext1"
    t.string "ext2"
    t.string "ext3"
    t.string "ansprech"
    t.string "kunde"
    t.string "befund"
  end

end
