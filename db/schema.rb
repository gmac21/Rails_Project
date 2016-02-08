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

ActiveRecord::Schema.define(version: 20160208094715) do

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "screening_id"
    t.date     "booking_date"
    t.time     "bookingtime"
    t.integer  "number_of_seats"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "director"
    t.string   "genre"
    t.date     "release_date"
    t.datetime "film_lenght"
    t.string   "trailer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "screenings", force: :cascade do |t|
    t.integer  "cinema_id"
    t.integer  "movie_id"
    t.string   "seats"
    t.string   "handicap_accesibility"
    t.string   "scree_size"
    t.date     "date_start_showing"
    t.date     "date_end_showing"
    t.date     "time_showing"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "theatres", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "cost"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "Date_of_birth"
    t.string   "email"
    t.string   "user_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
