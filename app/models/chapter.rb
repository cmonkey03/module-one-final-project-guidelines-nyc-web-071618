class Chapter < ActiveRecord::Base
  has_many :wordcounts
  has_many :characters, through: :wordcounts

  def self.films
    Chapter.all.map { |chapter| chapter.film }.uniq
  end

  def self.chapters
    Chapter.all.map { |chapter| chapter.name.slice(4..-1) }
  end

  def self.chapter_count
    chapters.count
  end

  def self.chapter_id_to_film(chapter_id)
    Chapter.all.find {|chapter| chapter.id == chapter_id}.film
  end


  # def characters_per_film(film)
  #
  # end


end # end of Chapter class
