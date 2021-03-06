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

ActiveRecord::Schema.define(version: 2019_06_21_003958) do

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
    t.string "b_color"
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
    t.string "topic"
  end

  create_table "ds_points", force: :cascade do |t|
    t.integer "user_id"
    t.integer "point_type"
    t.integer "point_value"
    t.string "source_type"
    t.integer "source_id"
    t.datetime "award_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scorecards", force: :cascade do |t|
    t.integer "current_score", default: 0
    t.integer "user_id"
    t.string "guest_id"
    t.integer "card_id"
    t.datetime "current_score_date"
    t.integer "old_score_1"
    t.integer "old_score_2"
    t.integer "old_score_3"
    t.integer "old_score_4"
    t.integer "old_score_5"
    t.datetime "old_score_1_date"
    t.datetime "old_score_2_date"
    t.datetime "old_score_3_date"
    t.datetime "old_score_4_date"
    t.datetime "old_score_5_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.string "stripe_subscription_id"
    t.string "interval"
    t.integer "interval_count"
    t.integer "amount"
    t.boolean "active", default: true
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
    t.string "card_brand"
    t.integer "card_expiration_month"
    t.integer "card_expiration_year"
    t.string "card_last_4"
    t.boolean "comp_user"
    t.string "current_plan_id"
    t.string "current_plan_interval_count"
    t.string "current_plan_interval"
    t.string "current_plan_nickname"
    t.string "cust_id"
    t.boolean "gets_no_email", default: false
    t.boolean "is_an_admin"
    t.datetime "sent_trial_expiration_email"
    t.string "session_token"
    t.string "stripe_card_id"
    t.string "stripe_customer_id"
    t.string "stripe_subscription_id"
    t.datetime "subscribed_thru_date"
    t.boolean "subscription_ends", default: false
    t.boolean "subscription_is_active"
    t.string "subscription_plan_id"
    t.datetime "subscription_thru_date"
    t.integer "weekly_email_day"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weekly_reports", force: :cascade do |t|
    t.integer "report_id"
    t.integer "user_id"
    t.datetime "week_ending"
    t.integer "reviewed_card_count"
    t.integer "green_cards"
    t.text "direction"
    t.integer "points_earned"
    t.text "direction2"
    t.text "didwell"
    t.string "first_item_name"
    t.text "first_item_text"
    t.string "second_item_name"
    t.text "second_item_text"
    t.boolean "report_sent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_weekly_reports_on_report_id"
    t.index ["user_id"], name: "index_weekly_reports_on_user_id"
  end

end
