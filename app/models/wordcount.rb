class Wordcount < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :character
end


# #4.Array of wordcounts per chapter
# 5. Array of wordcounts per character
# 6. Wordcounts count per character
#7. Words per movie
#8. Talking characters per movie.

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
