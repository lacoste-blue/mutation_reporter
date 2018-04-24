namespace :mutant_test do

  task :load, [:file_name] => :environment do |t, args|
    test_output = File.read('tmp/data/' + args[:file_name].to_s)
    
    test_entries = test_output.match(/((evil|neutral).*-----------------------)/m)[0].split('-----------------------') rescue []

    test_entries.each_with_index do |test_entry, counter|
      nolead_entry = test_entry.match(/((evil|neutral).*)/m)[0]
      clean_entry = nolead_entry.split( "\n" ).reject{ |c| c.empty?}
      header = clean_entry[0].split(":")
      diff = clean_entry[1..-1].join("\n")  
      MutationTest.create(
        {
          # hash with column names and values
          application: header[2].split('/')[4].split('-')[0], 
          mutant_id: header[4],
          file_name: header[2].split('/')[5..-1].join('/'),
          line_number: header[3],
          class_name: header[1].split('#')[0],
          method_name: header[1].split('#')[1],
          diff: diff,
          mutation_type: header[0],
          branch: args[:file_name].to_s.split('-')[1],
          build: args[:file_name].to_s.split('-')[2]
        }
      )
    end
  end
end
