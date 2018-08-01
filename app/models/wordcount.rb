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
