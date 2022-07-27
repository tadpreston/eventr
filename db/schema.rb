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

ActiveRecord::Schema[7.0].define(version: 2022_07_27_142429) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "number"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_phone_numbers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid"
    t.string "provider"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["uid"], name: "index_users_on_uid", unique: true
  end

  create_table "voter_uploads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "voters", force: :cascade do |t|
    t.string "sos_voter_id"
    t.string "voter_reg_id"
    t.string "voter_status"
    t.string "party_code"
    t.string "last_name"
    t.string "first_name"
    t.string "middle_name"
    t.string "name_suffix"
    t.integer "street_number"
    t.string "street_building"
    t.string "street_direction"
    t.string "street_name"
    t.string "street_type"
    t.string "street_postdir"
    t.string "unit_type"
    t.string "unit"
    t.string "city"
    t.string "zip"
    t.string "zip4"
    t.string "mail1"
    t.string "mail2"
    t.string "mail3"
    t.string "mail_city"
    t.string "mail_state"
    t.string "mail_zip"
    t.string "mail_zip4"
    t.string "birthdate"
    t.string "eligible_date"
    t.string "effective_date"
    t.string "precinct"
    t.string "precsub"
    t.string "cong_district"
    t.string "state_sd"
    t.string "state_hd"
    t.string "cnty_precinct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sos_voter_id"], name: "index_voters_on_sos_voter_id"
    t.index ["voter_reg_id"], name: "index_voters_on_voter_reg_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "phone_numbers", "users"
end
