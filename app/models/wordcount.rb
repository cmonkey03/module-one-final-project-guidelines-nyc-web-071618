class Wordcount < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :character
end




# 1. most_talkative_character
#   //per trilogy
#   //per film
# 2. least_talkative_character
#   //per trilogy
#   //per film
# 3. character_with_most_appearances
#   //per trilogy
#   //per film
# 4. character_with_least_appearances
#   //per trilogy
#   //per film


#Other interesting methods that could be written:
# 1. Count of wordcounts per chapter
# 2. Array of wordcounts per character
# 3. Wordcounts count per character
# 4. Words per movie
# 5. Array of all wordcounts per movie
# 6. Talking characters per movie
