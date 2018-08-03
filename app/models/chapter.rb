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

  def self.chapters_within_a_film(film)
    chapters = Chapter.all.select do |chap|
      chap.film == film
    end
  end

  def self.populated_race_count_hash(film)
    film_chapters = Chapter.all.where(:film => film)
    film_wordcounts = film_chapters.map {|chapter| chapter.wordcounts}.flatten
    film_races = film_wordcounts.map {|wordcount| wordcount.character.race }.uniq


    race_count = {}
    film_races.each do |race|
      race_count[race] = 0
    end

    film_wordcounts.each {|wordcount| race_count[wordcount.character.race] += wordcount.count }
    race_count

  end

  def self.most_talkative_race_in_film(film)
    Chapter.populated_race_count_hash(film).sort_by { |_key, value| value }.to_h.keys.last
  end

  def self.least_talkative_race_in_film(film)
    Chapter.populated_race_count_hash(film).sort_by { |_key, value| value }.to_h.keys.first
  end
    # film_unique_races.each do |race|
    #   race_count[race.to_sym] = 0
    # end
    #
    # film_races.each do |race|
    #   race_count[race.to_sym] +=
    # end

    # race_count.sort_by { |_key, value| value }.to_h.keys.last



end # end of Chapter class
