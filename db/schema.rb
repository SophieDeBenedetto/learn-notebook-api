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

ActiveRecord::Schema.define(version: 20151211173500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.string "content"
  end

  create_table "readmes", force: :cascade do |t|
    t.string "topic"
    t.string "unit"
    t.string "content"
    t.string "title"
  end

  create_table "sentence_notes", force: :cascade do |t|
    t.integer "sentence_id"
    t.integer "note_id"
  end

  create_table "sentences", force: :cascade do |t|
    t.integer "readme_id"
    t.string  "tag_type"
    t.string  "content"
    t.boolean "title"
    t.boolean "highlighted"
  end

end
