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

ActiveRecord::Schema.define(version: 20151115174400) do

  create_table "control_estados", force: :cascade do |t|
    t.integer  "control_id", limit: 4
    t.integer  "estado_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "control_estados", ["control_id"], name: "index_control_estados_on_control_id", using: :btree
  add_index "control_estados", ["estado_id"], name: "index_control_estados_on_estado_id", using: :btree

  create_table "controls", force: :cascade do |t|
    t.text     "control",       limit: 65535
    t.integer  "riesgo_id",     limit: 4
    t.text     "recomendacion", limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "controls", ["riesgo_id"], name: "index_controls_on_riesgo_id", using: :btree

  create_table "estados", force: :cascade do |t|
    t.string   "estado",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "riesgos", force: :cascade do |t|
    t.integer  "valor",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "usuario",    limit: 255
    t.string   "contrasena", limit: 255
    t.integer  "rol_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "usuarios", ["rol_id"], name: "index_usuarios_on_rol_id", using: :btree

  add_foreign_key "control_estados", "controls"
  add_foreign_key "control_estados", "estados"
  add_foreign_key "controls", "riesgos"
  add_foreign_key "usuarios", "rols"
end
