class Wordcount < ActiveRecord::Base
  belongs_to :chapter
  belongs_to :character
end

#Interesting methods
# 1. Count of wordcounts per chapter
# 2. Array of wordcounts per character
# 3. Wordcounts count per character
# 4. Words per movie
# 5. Array of all wordcounts per movie
# 6. Talking characters per movie
# 7. Most_talkative_race
# 8. Least_talkative_race
# 9. Character_with_most_appearances
#     //per trilogy
#     //per film
# 10. Character_with_least_appearances
#     //per trilogy
#     //per film
