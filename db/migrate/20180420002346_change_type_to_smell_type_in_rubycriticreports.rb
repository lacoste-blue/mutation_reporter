class ChangeTypeToSmellTypeInRubycriticreports < ActiveRecord::Migration[5.1]
  def change
    rename_column :rubycritic_reports, :type, :smell_type
  end
end
