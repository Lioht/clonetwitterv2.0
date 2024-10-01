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

ActiveRecord::Schema[7.1].define(version: 2024_09_28_032006) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "cliente", id: false, force: :cascade do |t|
    t.integer "idcliente", null: false
    t.string "name", limit: 25, null: false
    t.string "mail", limit: 50

    t.unique_constraint ["idcliente"], name: "cliente_idcliente_key"
  end

  create_table "clientes", id: false, force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "apellido", limit: 30
  end

  create_table "colaborators", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "direction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuentas", primary_key: "numero_cuenta", id: :integer, default: nil, force: :cascade do |t|
    t.float "balance"
    t.check_constraint "balance >= 0.00::double precision", name: "cuentas_balance_check"
  end

  create_table "producto2", id: false, force: :cascade do |t|
    t.integer "id"
    t.string "nombre_producto", limit: 50
    t.integer "precio"
    t.boolean "en_stock"
    t.string "categoria", limit: 50
  end

  create_table "tweets", force: :cascade do |t|
    t.string "description"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", id: false, force: :cascade do |t|
    t.integer "id_venta"
    t.date "fecha"
    t.integer "idproducto"
    t.integer "cantidad"
    t.integer "precio_unitario"
  end

  create_table "world_cup_teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
