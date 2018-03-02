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

ActiveRecord::Schema.define(version: 20180228003229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_selections", force: :cascade do |t|
    t.bigint "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answer_selections_on_answer_id"
  end

  create_table "answers", force: :cascade do |t|
    t.string "task_question_answer"
    t.integer "max_score"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "game_episodes", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "game_sessions", force: :cascade do |t|
    t.datetime "game_session_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_game_sessions_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "account_holder_name"
    t.string "account_holder_email"
    t.text "password_digest"
    t.string "student_name"
    t.integer "student_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "task_question"
    t.bigint "game_episode_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_episode_id"], name: "index_questions_on_game_episode_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "game_session_id"
    t.decimal "try_1"
    t.decimal "try_2"
    t.decimal "try_3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_session_id"], name: "index_results_on_game_session_id"
  end

  add_foreign_key "answer_selections", "answers"
  add_foreign_key "answers", "questions"
  add_foreign_key "game_sessions", "profiles"
  add_foreign_key "questions", "game_episodes"
  add_foreign_key "results", "game_sessions"
end
