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

ActiveRecord::Schema.define(version: 20180425003801) do

  create_table "coverage_reports", force: :cascade do |t|
    t.string "application"
    t.string "file_name"
    t.float "covered_percent"
    t.float "covered_strength"
    t.integer "covered_lines"
    t.integer "lines_of_code"
    t.integer "line_number"
    t.integer "repitition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch"
    t.integer "build"
  end

  create_table "mutant_coverage_reports", force: :cascade do |t|
    t.string "application"
    t.string "file_name"
    t.float "covered_percent"
    t.float "covered_strength"
    t.integer "covered_lines"
    t.integer "lines_of_code"
    t.integer "line_number"
    t.integer "repitition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch"
    t.integer "build"
  end

  create_table "mutation_tests", force: :cascade do |t|
    t.string "application"
    t.string "mutant_id"
    t.string "file_name"
    t.integer "line_number"
    t.string "class_name"
    t.string "method_name"
    t.string "diff"
    t.string "mutation_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch"
    t.integer "build"
  end

  create_table "mutations_less_sos", force: :cascade do |t|
    t.string "application"
    t.string "branch"
    t.integer "build"
    t.string "file_name"
    t.integer "line_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rubocop_reports", force: :cascade do |t|
    t.string "application"
    t.string "file_name"
    t.integer "line_number"
    t.string "severity"
    t.text "message"
    t.string "corrected"
    t.string "cop_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "branch"
    t.integer "build"
  end

  create_table "rubycritic_reports", force: :cascade do |t|
    t.string "application"
    t.string "module_name"
    t.string "file_name"
    t.integer "line_number"
    t.integer "churn"
    t.date "committed_at"
    t.integer "complexity"
    t.integer "duplication"
    t.integer "methods_count"
    t.integer "cost"
    t.string "rating"
    t.string "smell_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.integer "score"
    t.string "message"
    t.integer "smell_cost"
    t.string "context"
    t.string "branch"
    t.integer "build"
  end

  create_table "smell_offenses", force: :cascade do |t|
    t.string "application"
    t.string "branch"
    t.integer "build"
    t.string "file_name"
    t.integer "line_number"
    t.string "smell_type"
    t.string "offense"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
