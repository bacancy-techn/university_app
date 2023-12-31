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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_130932) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.date "publication_date"
    t.text "description"
    t.integer "library_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["library_id"], name: "index_books_on_library_id"
  end

  create_table "colleges", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "university_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_colleges_on_university_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_courses_on_department_id"
  end

  create_table "create_libraries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "college_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_create_libraries_on_college_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "college_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_departments_on_college_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_professors_on_department_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "date_of_birth"
    t.integer "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_students_on_department_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "libraries"
  add_foreign_key "colleges", "universities"
  add_foreign_key "courses", "departments"
  add_foreign_key "create_libraries", "colleges"
  add_foreign_key "departments", "colleges"
  add_foreign_key "professors", "departments"
  add_foreign_key "students", "departments"
end
