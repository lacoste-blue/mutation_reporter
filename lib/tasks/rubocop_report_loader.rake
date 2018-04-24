require 'json'
namespace :rubocop_reports do

  task :load, [:file_name] => :environment do |t, args|
    # report_output = File.read('tmp/data/' + args[:file_name].to_s )
    report_output = File.read('tmp/data/' + args.to_s )
    report_json = JSON.parse( report_output )
    reports_by_file = report_json['files']

    reports_by_file.each do |report_on_file|
      path = report_on_file['path']
      offenses = report_on_file['offenses']
      offenses.each do |offense|
        
        RubocopReport.create(
          {
            # hash with column names and values
            application: args.to_s.split('-')[0], 
            file_name:  path, 
            line_number: offense['location']['line'],
            severity: offense['severity'],
            message: offense['message'],
            corrected: offense['corrected'],
            cop_name: offense['cop_name'],
            branch: args.to_s.split('-')[1],
            build: args.to_s.split('-')[2]
          }
        )
      end
    end
  end
end
