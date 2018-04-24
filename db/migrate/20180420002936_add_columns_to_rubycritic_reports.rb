class AddColumnsToRubycriticReports < ActiveRecord::Migration[5.1]
  def change
    add_column :rubycritic_reports, :status, :string
    add_column :rubycritic_reports, :score, :integer
    add_column :rubycritic_reports, :message, :string
    add_column :rubycritic_reports, :smell_cost, :integer
    add_column :rubycritic_reports, :context, :string
  end
end
