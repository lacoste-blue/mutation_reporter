namespace :data do

  task :import => :environment do
    Dir.foreach('tmp/data') do |file|
      name = file.split('-')[-1]
      #puts "File " + file + " with file name: " + name
      if name == 'mutate.out' 
        puts "mutate loaded " + file
        Rake::Task['mutant_test:load'].invoke(file)
        Rake::Task['mutant_test:load'].reenable()
      elsif name == 'coverage.json' 
        puts "coverage loaded " + file
        Rake::Task['coverage_reports:load'].invoke(file)
        Rake::Task['coverage_reports:load'].reenable()
      elsif name == 'report.json' 
         puts "report loaded " + file
         Rake::Task['rubycritic_reports:load'].invoke(file)
         Rake::Task['rubycritic_reports:load'].reenable()
      elsif name == 'rubocop.json' 
        puts "rubocop loaded " + file  
        Rake::Task['rubocop_reports:load'].execute(file)
        Rake::Task['rubocop_reports:load'].reenable()
      elsif name == 'mutate_coverage.json' 
        puts "mutate coverage loaded " + file
        Rake::Task['mutant_coverage_reports:load'].invoke(file)
        Rake::Task['mutant_coverage_reports:load'].reenable()
      end
    end
  end
end
