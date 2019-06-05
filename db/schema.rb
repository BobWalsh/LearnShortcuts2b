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

ActiveRecord::Schema.define(version: 2019_06_05_191055) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.string "citation_title"
    t.string "citation_url"
    t.string "keycaps"
    t.integer "cheatsheet_id"
    t.integer "answer_type"
    t.text "answer_data"
    t.string "cheatsheet_display_name"
    t.boolean "is_sample"
    t.string "notes"
    t.string "mnemonic"
    t.string "gif_url"
    t.string "os"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "interface"
    t.string "description"
  end

  create_table "cheatsheets", force: :cascade do |t|
    t.string "display_name"
    t.string "description"
    t.string "os"
    t.string "image"
    t.integer "card_count"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
