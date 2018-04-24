require 'json'
namespace :rubycritic_reports do

  task :load, [:file_name] => :environment do |t, args|
    report_output = File.read('tmp/data/' + args[:file_name].to_s)
    application_name = 'uno_classifieds'
    report_json = JSON.parse( report_output )
    reports_by_file = report_json['analysed_modules']

    reports_by_file.each do |report_on_file|
      smells = report_on_file['smells']
      smells.each do |smell|
        locations = smell['locations']
        locations.each do |location|
          RubycriticReport.create(
            {
              # hash with column names and values
              application: application_name, 
              module_name: report_on_file['name'],
              file_name: report_on_file['path'] , 
              line_number: location['line'],
              churn: report_on_file['churn'],
              committed_at: report_on_file['committed_at'],
              complexity: report_on_file['complexity'],
              duplication: report_on_file['duplication'],
              methods_count: report_on_file['methods_count'],
              cost: report_on_file['cost'],
              rating: report_on_file['rating'],
              smell_type: smell['type'],
              status: smell['status'],
              score: smell['score'],
              message: smell['message'],
              smell_cost: smell['cost'],
              context: smell['context'],
              branch: args[:file_name].to_s.split('-')[1],
              build: args[:file_name].to_s.split('-')[2]
            
            }
          )
        end
      end
    end
  end
end
