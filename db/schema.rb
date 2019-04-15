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

ActiveRecord::Schema.define(version: 2019_03_11_004231) do

  create_table "ages", force: :cascade do |t|
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "caller_types", force: :cascade do |t|
    t.string "callertype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.boolean "gender"
    t.string "email"
    t.integer "mobilenumber"
    t.string "address"
    t.string "pincode"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age_id"
    t.index ["age_id"], name: "index_customers_on_age_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employeename"
    t.integer "employeecode"
    t.string "employeedesg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_skus", force: :cascade do |t|
    t.string "productsku"
    t.integer "createdby"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_skus_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "productdesc"
    t.integer "createdby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_roles_on_user_id"
  end

  create_table "sources", force: :cascade do |t|
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag_users", force: :cascade do |t|
    t.integer "ticket_id"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_tag_users_on_employee_id"
    t.index ["ticket_id"], name: "index_tag_users_on_ticket_id"
  end

  create_table "ticket_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_sub_statuses", force: :cascade do |t|
    t.string "ticketsubstatus"
    t.integer "creatredby"
    t.integer "ticket_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_status_id"], name: "index_ticket_sub_statuses_on_ticket_status_id"
  end

  create_table "ticket_sub_types", force: :cascade do |t|
    t.string "ticketsubtype"
    t.integer "createdby"
    t.boolean "active"
    t.integer "ticket_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_type_id"], name: "index_ticket_sub_types_on_ticket_type_id"
  end

  create_table "ticket_transcations", force: :cascade do |t|
    t.string "notes"
    t.integer "ticket_status_id"
    t.integer "ticket_id"
    t.integer "ticket_sub_status_id"
    t.integer "ticket_attachment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticket_attachment_id"], name: "index_ticket_transcations_on_ticket_attachment_id"
    t.index ["ticket_id"], name: "index_ticket_transcations_on_ticket_id"
    t.index ["ticket_status_id"], name: "index_ticket_transcations_on_ticket_status_id"
    t.index ["ticket_sub_status_id"], name: "index_ticket_transcations_on_ticket_sub_status_id"
  end

  create_table "ticket_types", force: :cascade do |t|
    t.string "tickettype"
    t.integer "createdby"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "batchnumber"
    t.datetime "manufacturedate"
    t.datetime "expirydate"
    t.string "purchasepoint"
    t.string "description"
    t.string "resolution"
    t.integer "customer_id"
    t.integer "caller_type_id"
    t.integer "ticket_type_id"
    t.integer "ticket_sub_type_id"
    t.integer "product_id"
    t.integer "product_sku_id"
    t.integer "ticket_status_id"
    t.integer "ticket_sub_status_id"
    t.integer "ticket_attachment_id"
    t.integer "employee_id"
    t.integer "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["caller_type_id"], name: "index_tickets_on_caller_type_id"
    t.index ["customer_id"], name: "index_tickets_on_customer_id"
    t.index ["employee_id"], name: "index_tickets_on_employee_id"
    t.index ["product_id"], name: "index_tickets_on_product_id"
    t.index ["product_sku_id"], name: "index_tickets_on_product_sku_id"
    t.index ["source_id"], name: "index_tickets_on_source_id"
    t.index ["ticket_attachment_id"], name: "index_tickets_on_ticket_attachment_id"
    t.index ["ticket_status_id"], name: "index_tickets_on_ticket_status_id"
    t.index ["ticket_sub_status_id"], name: "index_tickets_on_ticket_sub_status_id"
    t.index ["ticket_sub_type_id"], name: "index_tickets_on_ticket_sub_type_id"
    t.index ["ticket_type_id"], name: "index_tickets_on_ticket_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
