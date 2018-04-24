namespace :smell_offenses do

  task :load  => :environment do 

    smell_offenses = RubycriticReport.select( 'rubycritic_reports.application,rubycritic_reports.branch, rubycritic_reports.build, rubycritic_reports.file_name, rubycritic_reports.line_number, rubycritic_reports.smell_type, rubocop_reports.message' ).joins( 'JOIN rubocop_reports ON rubocop_reports.application=rubycritic_reports.application AND rubocop_reports.branch=rubycritic_reports.branch AND rubocop_reports.build=rubycritic_reports.build AND rubocop_reports.file_name=rubycritic_reports.file_name AND rubocop_reports.line_number=rubycritic_reports.line_number ' )
     smell_offenses.each do |smell_offense|
         SmellOffense.create(
         {
            # hash with column names and values
            application: smell_offense['application'],
            branch: smell_offense['branch'],
            build: smell_offense['build'],
            file_name: smell_offense['file_name'],
            line_number: smell_offense['line_number'],
            smell_type: smell_offense['smell_type'],
            offense: smell_offense['message'] 
         }
       )
     end
  end
end
