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

ActiveRecord::Schema.define(version: 2020_10_26_010227) do

  create_table "kartes", force: :cascade do |t|
    t.string "name", null: false
    t.text "before_treatment", null: false
    t.text "after_treatment", null: false
    t.text "part", null: false
    t.string "doctor_name", null: false
    t.string "facility_name", null: false
    t.integer "sex_id", null: false
    t.integer "clinic_id", null: false
    t.integer "instructions_id", null: false
    t.integer "medical_examination_id", null: false
    t.integer "day_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
