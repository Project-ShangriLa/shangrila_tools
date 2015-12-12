
my_id = -1
pre_id = nil

open(ARGV[0]) {|file|
    while l = file.gets
      fields = l.split(',')
      now_id = fields[0]
      if now_id != pre_id
        my_id = my_id + 1
        pre_id = now_id
      end
      puts "#{my_id},#{fields[1]},#{fields[2]}"
    end
}