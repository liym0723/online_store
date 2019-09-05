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

ActiveRecord::Schema.define(version: 2019_09_05_055855) do

  create_table "main_categroys", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "categroy_type", null: false
    t.string "name", null: false
    t.boolean "is_show", default: true, null: false
    t.integer "sort_no"
    t.text "explanation"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "sub_categroy_id", null: false
    t.string "name", null: false
    t.text "explanation"
    t.integer "price", null: false
    t.integer "amount", default: 0, null: false
    t.text "phone"
    t.integer "sold"
    t.datetime "lock_time"
    t.integer "status", default: 1, null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categroys", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "main_catrgroy_id", null: false
    t.string "name"
    t.text "explanation"
    t.integer "sort_no"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "login_name", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "address"
    t.string "phone"
    t.boolean "lock_flag", default: false
    t.datetime "last_log"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
