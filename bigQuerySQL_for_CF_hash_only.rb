require 'shangrila'

#bundle exe ruby bigQuerySQL_for_CF.rb 2015 3 2015_C3a.2015_C7a

year = ARGV[0]
cours = ARGV[1]

#2015_C3a.2015_C7a
table_name = ARGV[2]

masters = Shangrila::Sora.new().get_master_data(year, cours)

count_limit = 10

val_title = ''

masters.each do |master|
 val_title += sprintf('        WHEN tweet_text CONTAINS \'#%s\' THEN \'%s\'' + "\n",
  master['twitter_hash_tag'],
  master['title'])
end

sql = <<"EOS"
SELECT
  name,
  title,
  IF(sum(score) > #{count_limit}, #{count_limit},  sum(score)) as score
FROM (
  SELECT
    name,
    title,
    1 AS score,
  FROM (
    SELECT
      name,
      CASE
#{val_title}
      ELSE NULL END AS title
    FROM [#{table_name}] ) )
WHERE
  title IS NOT NULL group by name, title order by name
EOS


puts sql
