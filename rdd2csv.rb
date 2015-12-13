open(ARGV[0]) {|file|
  while l = file.gets
    puts l.gsub(/\(|\)/,'')
  end
}