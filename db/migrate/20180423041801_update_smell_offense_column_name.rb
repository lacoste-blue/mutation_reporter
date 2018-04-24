class UpdateSmellOffenseColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :smell_offenses, :smell, :smell_type
  end
end
