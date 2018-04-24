class RemoveColumnStringRubocopReports < ActiveRecord::Migration[5.1]
  def change
    remove_column :rubocop_reports, :string
  end
end
