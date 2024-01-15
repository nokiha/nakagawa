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

ActiveRecord::Schema[7.0].define(version: 2024_01_07_071836) do
  create_table "administrators", force: :cascade do |t|
    t.string "username", null: false
    t.string "usertype", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "slot_id", null: false
    t.time "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["slot_id"], name: "index_appointments_on_slot_id"
  end

  create_table "checks", force: :cascade do |t|
    t.integer "appointment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_checks_on_appointment_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "username", null: false
    t.string "usertype", null: false
    t.integer "department_id", null: false
    t.string "password_digest"
    t.integer "sex", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_doctors_on_department_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "username", null: false
    t.string "usertype", null: false
    t.string "password_digest"
    t.date "birthday"
    t.string "email"
    t.string "number", null: false
    t.integer "sex", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receptions", force: :cascade do |t|
    t.string "username", null: false
    t.string "usertype", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slots", force: :cascade do |t|
    t.integer "doctor_id", null: false
    t.integer "appointment_id"
    t.datetime "time", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointment_id"], name: "index_slots_on_appointment_id"
    t.index ["doctor_id"], name: "index_slots_on_doctor_id"
  end

end
