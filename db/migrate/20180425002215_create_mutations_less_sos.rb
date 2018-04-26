class CreateMutationsLessSos < ActiveRecord::Migration[5.1]
  def change
    create_table :mutations_less_sos do |t|
      t.string :application
      t.string :branch
      t.integer :build
      t.string :file_name
      t.integer :line_number
      t.string :diff

      t.timestamps
    end
  end
end
