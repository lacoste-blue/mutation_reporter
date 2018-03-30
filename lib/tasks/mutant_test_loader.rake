namespace :mutant_test do

  task :load do
    test_output = File.read '/Users/jonathan/source/mutation_project/mutant_output.txt')
    
    test_entries = test_output.scan( /(evil|neutral)(.*)(-----------------------)/m)

    MutantTest.create(
      # hash with column names and values
      # mutant_id: blah,
      # application: blah,
      # linenumber: blah,
      # etc
      
    )
  end
end
