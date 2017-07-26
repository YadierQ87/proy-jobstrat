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

ActiveRecord::Schema.define(version: 20170726152946) do

  create_table "aplicationjobs", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "employee_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["employee_id"], name: "index_aplicationjobs_on_employee_id"
    t.index ["job_id"], name: "index_aplicationjobs_on_job_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company"
    t.string   "fullname"
    t.string   "picture"
    t.text     "description"
    t.string   "country"
    t.string   "contact"
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "fullname"
    t.string   "picture"
    t.text     "description"
    t.string   "contact"
    t.string   "email"
    t.string   "sex"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "curriculum"
    t.string   "username"
    t.string   "password"
    t.string   "country"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.string   "country"
    t.integer  "company_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "active"
    t.text     "description"
    t.string   "picture"
    t.date     "publicate_at"
    t.string   "job_stat"
    t.integer  "category_id"
    t.index ["category_id"], name: "index_jobs_on_category_id"
    t.index ["company_id"], name: "index_jobs_on_company_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messageemployees", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "company_id"
    t.text     "mail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["company_id"], name: "index_messageemployees_on_company_id"
    t.index ["employee_id"], name: "index_messageemployees_on_employee_id"
  end

end
