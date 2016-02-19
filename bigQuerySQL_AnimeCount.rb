require 'shangrila'

#bundle exe ruby bigQuerySQL_AnimeCount.rb 2015 3 2015_C3a.2015_C7a

year = ARGV[0]
cours = ARGV[1]

#2015_C3a.2015_C7a
table_name = ARGV[2]

masters = Shangrila::Sora.new().get_master_data(year, cours)

count_limit = 10

val_title = ''

masters.each do |master|
 val_title += sprintf('        WHEN tweet_text CONTAINS \'%s\' OR tweet_text CONTAINS \'%s\'  OR tweet_text CONTAINS \'%s\' OR tweet_text CONTAINS \'%s\' OR tweet_text CONTAINS \'%s\' THEN \'%s\'' + "\n",
  master['title'],
  master['title_short1'] != '' ? master['title_short1'] : master['title'],
  master['title_short2'] != '' ? master['title_short2'] : master['title'],
  master['title_short3'] != '' ? master['title_short3'] : master['title'],
  master['twitter_hash_tag'],
  master['title'])
end

sql = <<"EOS"
SELECT
 title, COUNT(*) AS count
FROM (
  SELECT
    title
  FROM
   (select
     CASE
#{val_title}
      ELSE NULL END AS title
    FROM [#{table_name}]))
WHERE
  title IS NOT NULL group by title order by count desc;
EOS


puts sql