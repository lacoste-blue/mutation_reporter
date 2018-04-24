class CreateRubocopReports < ActiveRecord::Migration[5.1]
  def change
    create_table :rubocop_reports do |t|
      t.string :application
      t.string :string
      t.string :file_name
      t.integer :line_number
      t.string :severity
      t.text :message
      t.string :corrected
      t.string :cop_name

      t.timestamps
    end
  end
end
