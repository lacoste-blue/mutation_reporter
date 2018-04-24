json.extract! mutant_coverage_report, :id, :application, :file_name, :covered_percent, :covered_strength, :covered_lines, :lines_of_code, :line_number, :repitition, :created_at, :updated_at
json.url mutant_coverage_report_url(mutant_coverage_report, format: :json)
