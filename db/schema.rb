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

ActiveRecord::Schema.define(version: 2021_08_23_221150) do

  create_table "custos", force: :cascade do |t|
    t.float "cost_value"
    t.integer "employee_id"
    t.integer "ordem"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "especialidades", force: :cascade do |t|
    t.string "descricao"
    t.boolean "ativo"
    t.string "localidade"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome_completo"
    t.string "endereco"
    t.integer "especialidade_id", null: false
    t.date "data_admissao"
    t.date "data_dispensa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["especialidade_id"], name: "index_funcionarios_on_especialidade_id"
  end

  add_foreign_key "funcionarios", "especialidades"
end
