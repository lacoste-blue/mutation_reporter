namespace :mutants_less_so do

  task :load  => :environment do 

    mutations_less_so = MutationTest.select( 'mutation_tests.application,mutation_tests.branch, mutation_tests.build, mutation_tests.file_name, mutation_tests.line_number' ).where( 'NOT EXISTS (SELECT * FROM  smell_offenses WHERE smell_offenses.application=mutation_tests.application AND smell_offenses.branch=mutation_tests.branch AND smell_offenses.build=mutation_tests.build AND smell_offenses.file_name=mutation_tests.file_name AND smell_offenses.line_number=mutation_tests.line_number) ' )
     mutations_less_so.each do |mutation|
         SmellOffense.create(
         {
            # hash with column names and values
            application: mutation['application'],
            branch: mutation['branch'],
            build: mutation['build'],
            file_name: mutation['file_name'],
            line_number: mutation['line_number'],
         }
       )
     end
  end
end
