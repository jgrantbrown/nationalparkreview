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

ActiveRecord::Schema.define(version: 20200403165336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "traveller_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "natparks", force: :cascade do |t|
    t.text     "states"
    t.string   "latLong"
    t.text     "description"
    t.text     "designation"
    t.text     "parkCode"
    t.text     "nps_id"
    t.text     "directionsInfo"
    t.text     "directionsUrl"
    t.text     "fullName"
    t.text     "url"
    t.text     "name"
    t.text     "weatherInfo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "contacts"
    t.string   "longitude"
    t.string   "entranceFees"
    t.string   "entrancePasses"
    t.string   "operatingHours"
    t.string   "images"
    t.string   "addresses"
    t.string   "latitude"
    t.text     "topics"
    t.text     "activities"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.text     "comment"
    t.integer  "natpark_id"
    t.integer  "traveller_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "travellers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
