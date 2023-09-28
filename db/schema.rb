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

ActiveRecord::Schema[7.0].define(version: 2023_09_28_193057) do
  create_table "enderecos", force: :cascade do |t|
    t.string "endereco"
    t.string "tipo_endereco"
    t.string "complemento"
    t.integer "numero"
    t.integer "users_id"
    t.integer "parceiros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parceiros_id"], name: "index_enderecos_on_parceiros_id"
    t.index ["users_id"], name: "index_enderecos_on_users_id"
  end

  create_table "formapagamento", force: :cascade do |t|
    t.string "forma_pagamento"
    t.string "numero_cartao"
    t.string "validade_cartao"
    t.string "codigo_seguranca_cartao"
    t.string "nome_impresso_cartao"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_formapagamento_on_users_id"
  end

  create_table "itenspedido", force: :cascade do |t|
    t.integer "pedidos_id"
    t.integer "produtos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedidos_id"], name: "index_itenspedido_on_pedidos_id"
    t.index ["produtos_id"], name: "index_itenspedido_on_produtos_id"
  end

  create_table "parceiros", force: :cascade do |t|
    t.string "nome"
    t.float "nota"
    t.string "avaliacao"
    t.float "valor_frete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.float "valor"
    t.integer "users_id"
    t.integer "enderecos_id"
    t.integer "parceiros_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enderecos_id"], name: "index_pedidos_on_enderecos_id"
    t.index ["parceiros_id"], name: "index_pedidos_on_parceiros_id"
    t.index ["users_id"], name: "index_pedidos_on_users_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "img"
    t.string "descricao"
    t.decimal "valor"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "full_name"
    t.string "uid"
    t.string "avatar_url"
    t.string "provider"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
