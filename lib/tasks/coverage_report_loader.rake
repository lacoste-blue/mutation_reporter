require 'json'
namespace :coverage_reports do

  task :load, [:file_name]  => :environment do |t, args|
    report_output = File.read('tmp/data/' + args[:file_name].to_s )
    report_json = JSON.parse( report_output )
    reports_by_file = report_json['files']

    reports_by_file.each do |report_on_file, counter|
      lines = report_on_file['coverage']
      lines.each_with_index do |line, index|
        
        CoverageReport.create(
          {
            # hash with column names and values
            #application: report_on_file['filename'].split('/')[4].split('-')[0], 
            application: args[:file_name].to_s.split('-')[0],
            file_name: report_on_file['filename'].split('/')[5..-1].join('/'), 
            covered_percent: report_on_file['covered_percent'] ,
            covered_strength: report_on_file['covered_strength'] ,
            covered_lines: report_on_file['covered_lines'] ,
            lines_of_code: report_on_file['lines_of_code'] ,
            line_number: index,
            repitition: line,
            branch: args[:file_name].to_s.split('-')[1],
            build: args[:file_name].to_s.split('-')[2]
          }
        )
      end
    end
  end
end
