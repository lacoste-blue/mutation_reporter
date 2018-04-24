class AddBranchAndBuildToAll < ActiveRecord::Migration[5.1]
  def change
    add_column :mutation_tests, :branch, :string
    add_column :mutation_tests, :build, :integer 
    add_column :mutant_coverage_reports, :branch, :string
    add_column :mutant_coverage_reports, :build, :integer 
    add_column :rubocop_reports, :branch, :string
    add_column :rubocop_reports, :build, :integer 
    add_column :rubycritic_reports, :branch, :string
    add_column :rubycritic_reports, :build, :integer 
    add_column :coverage_reports, :branch, :string
    add_column :coverage_reports, :build, :integer 

  end
end
