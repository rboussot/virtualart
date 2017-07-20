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

ActiveRecord::Schema.define(version: 20170719081918) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blocks", force: :cascade do |t|
    t.string   "tag"
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.string   "link"
    t.boolean  "visible",     default: false, null: false
    t.boolean  "footer",      default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "picture"
    t.boolean  "visible",     default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "courses_softwares", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "software_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["course_id"], name: "index_courses_softwares_on_course_id", using: :btree
    t.index ["software_id"], name: "index_courses_softwares_on_software_id", using: :btree
  end

  create_table "lectures", force: :cascade do |t|
    t.integer  "software_id"
    t.integer  "course_id"
    t.string   "title"
    t.string   "video"
    t.text     "description"
    t.string   "order"
    t.boolean  "visible",     default: true, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["course_id"], name: "index_lectures_on_course_id", using: :btree
    t.index ["software_id"], name: "index_lectures_on_software_id", using: :btree
  end

  create_table "realisations", force: :cascade do |t|
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "title"
    t.string   "link"
    t.string   "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_realisations_on_course_id", using: :btree
    t.index ["user_id"], name: "index_realisations_on_user_id", using: :btree
  end

  create_table "softwares", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stages", force: :cascade do |t|
    t.integer  "stagetype_id"
    t.string   "timeslot"
    t.boolean  "visible",      default: false, null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["stagetype_id"], name: "index_stages_on_stagetype_id", using: :btree
  end

  create_table "stagetypes", force: :cascade do |t|
    t.string   "title"
    t.string   "picture"
    t.text     "description"
    t.boolean  "visible",     default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.string   "title"
    t.boolean  "visible",    default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "adress"
    t.string   "phone"
    t.date     "birth"
    t.text     "contact"
    t.string   "stripe"
    t.string   "plan"
    t.text     "note"
    t.integer  "tutored_by_id"
    t.boolean  "tutor",                  default: false, null: false
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["tutored_by_id"], name: "index_users_on_tutored_by_id", using: :btree
  end

  create_table "users_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "timeslot_id"
    t.boolean  "confirmed",   default: false, null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["course_id"], name: "index_users_courses_on_course_id", using: :btree
    t.index ["timeslot_id"], name: "index_users_courses_on_timeslot_id", using: :btree
    t.index ["user_id"], name: "index_users_courses_on_user_id", using: :btree
  end

  create_table "users_lectures", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "lecture_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecture_id"], name: "index_users_lectures_on_lecture_id", using: :btree
    t.index ["user_id"], name: "index_users_lectures_on_user_id", using: :btree
  end

  create_table "users_stages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "stage_id"
    t.boolean  "confirmed",  default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["stage_id"], name: "index_users_stages_on_stage_id", using: :btree
    t.index ["user_id"], name: "index_users_stages_on_user_id", using: :btree
  end

  add_foreign_key "courses_softwares", "courses"
  add_foreign_key "courses_softwares", "softwares"
  add_foreign_key "lectures", "courses"
  add_foreign_key "lectures", "softwares"
  add_foreign_key "realisations", "courses"
  add_foreign_key "realisations", "users"
  add_foreign_key "stages", "stagetypes"
  add_foreign_key "users_courses", "courses"
  add_foreign_key "users_courses", "timeslots"
  add_foreign_key "users_courses", "users"
  add_foreign_key "users_lectures", "lectures"
  add_foreign_key "users_lectures", "users"
  add_foreign_key "users_stages", "stages"
  add_foreign_key "users_stages", "users"
end
