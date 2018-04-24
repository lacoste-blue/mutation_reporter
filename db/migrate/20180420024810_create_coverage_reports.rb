class CreateCoverageReports < ActiveRecord::Migration[5.1]
  def change
    create_table :coverage_reports do |t|
      t.string :application
      t.string :file_name
      t.float :covered_percent
      t.float :covered_strength
      t.integer :covered_lines
      t.integer :lines_of_code
      t.integer :line_number
      t.integer :repitition

      t.timestamps
    end
  end
end
