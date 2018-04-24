class CreateRubycriticReports < ActiveRecord::Migration[5.1]
  def change
    create_table :rubycritic_reports do |t|
      t.string :application
      t.string :module_name
      t.string :file_name
      t.integer :line_number
      t.integer :churn
      t.date :committed_at
      t.integer :complexity
      t.integer :duplication
      t.integer :methods_count
      t.integer :cost
      t.string :rating
      t.string :type

      t.timestamps
    end
  end
end
