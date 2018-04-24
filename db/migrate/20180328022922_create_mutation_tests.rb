class CreateMutationTests < ActiveRecord::Migration[5.1]
  def change
    create_table :mutation_tests do |t|
      t.string :application
      t.string :mutant_id
      t.string :file_name
      t.integer :line_number
      t.string :class_name
      t.string :method_name
      t.string :diff
      t.string :mutation_type

      t.timestamps
    end
  end
end
