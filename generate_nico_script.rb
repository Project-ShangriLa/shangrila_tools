require 'net/http'
require 'uri'
require 'json'
require 'optparse'

@cours_id = nil
@nico_exe_jar = 'nico.jar' 

opt = OptionParser.new
Version = "1.0.0"
opt.on('-c COURS_ID', 'cours_id') {|v| @cours_id = v }
opt.on('-n NICO_JAR', 'nico_jar_file_name') {|v| @nico_exe_jar = v}
opt.parse!(ARGV)

rest_api_url = "http://localhost:3000/bases.json"

if @cours_id then
  rest_api_url = "http://localhost:3000/bases.json?cours_id=#{@cours_id}"
end

result = Net::HTTP.get(URI.parse(rest_api_url))
bases = JSON.load(result)

word_list = []
bases.each do |base|
  word_list.push base["twitter_account"]
  word_list.push base["title"]

  if base["title_short"]
   word_list.push base["title_short"]
  end

  word_list.push base["twitter_hash_tag"]
end

shebang = '#!/bin/sh'
shell_cmd = sprintf('java -jar %s "%s"', @nico_exe_jar, word_list.join(','))

puts shebang
puts shell_cmd
