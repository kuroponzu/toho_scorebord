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

ActiveRecord::Schema.define(version: 20171218191812) do

  create_table "chara_eiyashos", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_huzinrokus", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_kanzyudens", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_kisinzyos", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_komakyos", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_seirensens", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_sinreibyos", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_tenkusyos", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_tireiden", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chara_yoyomus", force: :cascade do |t|
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulity1s", force: :cascade do |t|
    t.string "difficult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulity2s", force: :cascade do |t|
    t.string "difficult"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gamescores", force: :cascade do |t|
    t.integer "score"
    t.string "clear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "score_id"
    t.string "name"
    t.string "difficulty"
    t.string "character"
  end

  create_table "series", force: :cascade do |t|
    t.string "name"
    t.string "difficulty"
    t.string "character"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "score_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin"
    t.string "activation_digest"
    t.boolean "activated"
    t.datetime "activeted_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
  end

end
