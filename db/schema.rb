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

ActiveRecord::Schema[7.1].define(version: 2024_01_15_145656) do
  create_table "observations", force: :cascade do |t|
    t.references "patient"
    t.string "observe_date"
    t.integer "sofa"
    t.integer "gsc"
    t.integer "sistola"
    t.integer "diastola"
    t.integer "meanbp"
    t.integer "heartrate"
    t.float "temp"
    t.integer "ifusionvolume"
    t.integer "nutritionvolume"
    t.integer "diuresis"
    t.integer "hydrobalance"
    t.integer "vasopressor"
    t.boolean "na"
    t.float "lactat"
    t.boolean "ivl"
    t.boolean "ecmo"
    t.integer "fio2"
    t.integer "spo2"
    t.integer "pao2"
    t.integer "pfindex"
    t.integer "sfindex"
    t.boolean "anuria"
    t.boolean "kdigo"
    t.float "protinpee"
    t.float "kreatinin"
    t.float "mochevina"
    t.float "bilirubin"
    t.float "kalius"
    t.float "natrius"
    t.float "ph"
    t.float "hemoglob"
    t.float "gematocrit"
    t.boolean "bleeding"
    t.boolean "transfusion"
    t.integer "eritrocells"
    t.integer "szp"
    t.integer "tka"
    t.boolean "trombs"
    t.integer "trc"
    t.float "mho"
    t.float "anticoagul"
    t.float "lc"
    t.float "crp"
    t.float "rct"
    t.integer "moblood"
    t.integer "mopee"
    t.integer "mobal"
    t.integer "amtcorrection"
    t.text "amtcomment"
    t.boolean "sergery"
    t.boolean "zpt"
    t.boolean "serbtion"
    t.boolean "tpe"
    t.boolean "hdf"
    t.integer "expertmark"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.date "reg_date"
    t.date "orit_date"
    t.string "fio"
    t.integer "height"
    t.integer "weight"
    t.string "sex"
    t.datetime "dob"
    t.integer "age"
    t.float "imt"
    t.float "apache"
    t.boolean "hobl"
    t.boolean "astma"
    t.boolean "diabeth"
    t.boolean "ssz"
    t.boolean "hypertony"
    t.boolean "hbp"
    t.boolean "smoking"
    t.boolean "obesity"
    t.boolean "revma"
    t.boolean "liver_illness"
    t.boolean "hep_b"
    t.boolean "hep_c"
    t.boolean "id1"
    t.boolean "id2"
    t.boolean "aids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
