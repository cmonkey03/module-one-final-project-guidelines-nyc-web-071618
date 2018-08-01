class Chapter < ActiveRecord::Base
  has_many :wordcounts
  has_many :characters, through: :wordcounts

end


#1. Array of all movies
#2. Array of all chapters per movie
#5. Array of all wordcounts per movie
