require 'shangrila'

year = ARGV[0]
cours = ARGV[1]

master =  Shangrila::Sora.new().get_flat_data(year, cours, ['title', 'title_short1', 'title_short2', 'title_short3','twitter_account','twitter_hash_tag'])

flat_data = master.flatten

words = ""

flat_data.each{|f|
  if f != ''
    words += sprintf('%s,', f)
  end
}

words.slice!(words.length - 1)
print words

puts ""
puts "------------"
puts flat_data.length
puts "------------"