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

ActiveRecord::Schema.define(version: 20150326224956) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "allotment_ticket_types", force: true do |t|
    t.integer  "ticket_type_id"
    t.integer  "allotment_id"
    t.integer  "quantity"
    t.integer  "quantity_commited"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "allotment_ticket_types", ["allotment_id"], name: "index_allotment_ticket_types_on_allotment_id"
  add_index "allotment_ticket_types", ["ticket_type_id"], name: "index_allotment_ticket_types_on_ticket_type_id"

  create_table "allotments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "allotments", ["division_id"], name: "index_allotments_on_division_id"

  create_table "allotments_invitation_groups", force: true do |t|
    t.integer "allotment_id"
    t.integer "invitation_group_id"
  end

  add_index "allotments_invitation_groups", ["allotment_id"], name: "index_allotments_invitation_groups_on_allotment_id"
  add_index "allotments_invitation_groups", ["invitation_group_id"], name: "index_allotments_invitation_groups_on_invitation_group_id"

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "divisions", ["event_id"], name: "index_divisions_on_event_id"

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitation_groups", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "division_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitation_groups", ["division_id"], name: "index_invitation_groups_on_division_id"

  create_table "invitation_tickets", force: true do |t|
    t.integer  "ticket_type_id"
    t.integer  "invitation_id"
    t.integer  "quantity_delivered"
    t.integer  "quantity_assigned"
    t.integer  "allotment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitation_tickets", ["allotment_id"], name: "index_invitation_tickets_on_allotment_id"
  add_index "invitation_tickets", ["invitation_id"], name: "index_invitation_tickets_on_invitation_id"
  add_index "invitation_tickets", ["ticket_type_id"], name: "index_invitation_tickets_on_ticket_type_id"

  create_table "invitations", force: true do |t|
    t.text     "notes"
    t.integer  "invitation_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invitations", ["invitation_group_id"], name: "index_invitations_on_invitation_group_id"

  create_table "ticket_types", force: true do |t|
    t.integer  "event_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ticket_types", ["event_id"], name: "index_ticket_types_on_event_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
