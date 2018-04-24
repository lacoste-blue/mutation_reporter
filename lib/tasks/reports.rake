require 'aws-sdk-s3'

namespace :reports do

  task :fetch => :environment do
    s3 = Aws::S3::Client.new(profile: 'lacoste', region: 'us-east-1' )
    puts "created s3 object"
    response = s3.list_objects_v2(bucket: 'mutation-analysis' )
    puts "Recieved object list"
    response_hash = response.to_h
    puts "Convereted to hash"
    contents = response_hash[:contents]
    
    contents.each do |content|
      file_name = content[:key].gsub('/', '-')
      File.open( 'tmp/data/' + file_name, 'wb' ) do |file|
        response = s3.get_object({ bucket:'mutation-analysis', key:content[:key] }, target: file)
      end
    end
  end
end
