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

ActiveRecord::Schema.define(version: 20180413142009) do

  create_table "Goals", force: :cascade do |t|
    t.text "goals"
    t.text "days"
    t.text "months"
    t.text "years"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "period"
    t.index ["days"], name: "index_goals_on_days"
    t.index ["months"], name: "index_goals_on_months"
    t.index ["years"], name: "index_goals_on_years"
  end

end
