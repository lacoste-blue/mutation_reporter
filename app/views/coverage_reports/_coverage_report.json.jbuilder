json.extract! coverage_report, :id, :application, :file_name, :covered_percent, :covered_strength, :covered_lines, :lines_of_code, :line_number, :repitition, :created_at, :updated_at
json.url coverage_report_url(coverage_report, format: :json)
