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

end
