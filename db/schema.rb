# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131207020645) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "department_id"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authors"
    t.integer  "user_id"
    t.boolean  "featured"
    t.string   "hash_key"
  end

  create_table "authentications", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "affiliation"
    t.integer  "sabstract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "departments", force: true do |t|
    t.string   "title"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments_users", force: true do |t|
    t.integer "department_id"
    t.integer "user_id"
  end

  create_table "papers", force: true do |t|
    t.integer  "user_id"
    t.integer  "department_id"
    t.date     "date_published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.integer  "sabstract_id"
    t.boolean  "featured"
    t.boolean  "published"
  end

  create_table "peer_reviews", force: true do |t|
    t.integer  "document_id"
    t.string   "document_type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "title"
    t.text     "caption"
    t.integer  "document_id"
    t.string   "document_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "hash_key"
  end

  create_table "posters", force: true do |t|
    t.integer  "user_id"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.integer  "sabstract_id"
    t.boolean  "featured"
    t.boolean  "published"
  end

  create_table "roles", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sabstracts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
    t.string   "document_type"
    t.integer  "department_id"
    t.boolean  "featured"
    t.boolean  "published"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
