class Character < ActiveRecord::Base
  has_many :wordcounts
  has_many :chapters, through: :wordcounts
end


# 1. array_of_all_characters (total, per movie)
# 2. array_of_all_characters.uniq (total, per movie)
# 3.
