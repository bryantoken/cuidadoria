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

ActiveRecord::Schema[7.1].define(version: 2024_07_08_231658) do
  create_table "diario_cuidadors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "data"
    t.string "cuidador"
    t.string "turno_entrada"
    t.string "turno_saida"
    t.string "assinatura"
    t.text "refeicoes"
    t.text "medicamentos"
    t.text "atividades_diarias"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome_completo"
    t.string "cpf"
    t.date "data_nascimento"
    t.string "enfermidade"
    t.string "estado_civil"
    t.text "endereco_completo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_cuidadors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "data"
    t.string "cuidador"
    t.string "turno_entrada"
    t.string "turno_saida"
    t.string "assinatura"
    t.text "refeicoes"
    t.text "medicamentos"
    t.text "atividades_diarias"
    t.text "observacoes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.bigint "paciente_id", null: false
    t.index ["paciente_id"], name: "index_registro_cuidadors_on_paciente_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
