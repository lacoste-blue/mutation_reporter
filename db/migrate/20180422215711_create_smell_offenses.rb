class CreateSmellOffenses < ActiveRecord::Migration[5.1]
  def change
    create_table :smell_offenses do |t|
      t.string :application
      t.string :branch
      t.integer :build
      t.string :file_name
      t.integer :line_number
      t.string :smell
      t.string :offense

      t.timestamps
    end
  end
end
