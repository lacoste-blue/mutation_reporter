json.extract! rubocop_report, :id, :application, :string, :file_name, :line_number, :severity, :message, :corrected, :cop_name, :created_at, :updated_at
json.url rubocop_report_url(rubocop_report, format: :json)
