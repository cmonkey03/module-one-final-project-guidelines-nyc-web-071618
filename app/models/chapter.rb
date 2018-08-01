class Chapter < ActiveRecord::Base
  has_many :wordcounts
  has_many :characters, through: :wordcounts

  def self.all_unique_chapters
    Chapter.all.map { |chapter_wordcount| chapter_wordcount.name  }
  end

end


#1. Array of all chapters (all, then unique )
#2. Array of all movies
#3. Array of all chapters per movie
#4. Array of wordcounts per chapter
#5. Array of all wordcounts per movie
