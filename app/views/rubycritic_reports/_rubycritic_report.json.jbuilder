json.extract! rubycritic_report, :id, :application, :module_name, :file_name, :line_number, :churn, :committed_at, :complexity, :duplication, :methods_count, :cost, :rating, :type, :created_at, :updated_at
json.url rubycritic_report_url(rubycritic_report, format: :json)
