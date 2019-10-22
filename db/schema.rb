# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_22_130321) do

  create_table "kunden_datens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "firma"
    t.string "strasse"
    t.integer "hausnummer"
    t.integer "postleitzahl"
    t.string "stadt"
    t.string "ansprechpartner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kundens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "firma"
    t.string "strasse"
    t.integer "hausnummer"
    t.integer "postleitzahl"
    t.string "stadt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string "zukauf"
    t.string "kunden_id"
  end

end
