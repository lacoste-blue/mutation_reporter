class CreateMutationTests < ActiveRecord::Migration[5.1]
  def change
    create_table :mutation_tests do |t|
      t.string :application
      t.string :mutant_id
      t.string :file_name
      t.integer :lineno
      t.string :class
      t.string :method
      t.string :diff
      t.string :type

      t.timestamps
    end
  end
end
