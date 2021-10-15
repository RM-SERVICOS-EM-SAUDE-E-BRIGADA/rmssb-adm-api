# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_15_132820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cancellation_reasons", force: :cascade do |t|
    t.boolean "status"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.boolean "status"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nome"], name: "index_categories_on_nome", unique: true
  end

  create_table "destinies", force: :cascade do |t|
    t.boolean "status", null: false
    t.string "nome", null: false
    t.decimal "valor", precision: 14, scale: 2, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospital_unities", force: :cascade do |t|
    t.boolean "status", null: false
    t.string "nome", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "modalities", force: :cascade do |t|
    t.boolean "status"
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nome"], name: "index_modalities_on_nome", unique: true
  end

end
