class Character < ActiveRecord::Base
  has_many :wordcounts
  has_many :chapters, through: :wordcounts

  def self.races
    Character.all.map { |character| character.race }.uniq
  end

  def self.characters
    Character.all.map { |character| character.name }
  end

  def self.character_count
    characters.count
  end

  def self.create_race_characters_hash
    race_character_hash = {}
    races.each { |race| race_character_hash[race.to_sym] = [] }
    race_character_hash
  end

  def self.add_characters_to_race_hash
    race_characters_hash = create_race_characters_hash
    Character.all.each do |character|
      race_characters_hash[character.race.to_sym] << character.name
    end
    race_characters_hash
  end

  def self.count_characters_per_race
    count_characters_hash = {}
    add_characters_to_race_hash.each do |race|
      count_characters_hash[race[0]] = race[1].size
    end
    count_characters_hash
  end

  def find_wordcounts_for_character
    Wordcount.all.select {|count| count.character_id == self.id}
  end

  def character_wordcount_total
    wordcount_objects = self.find_wordcounts_for_character
    wordcount_objects.map {|object| object.count}.reduce(:+)
  end

  
  # def find_character_films
  #   Wordcount.all.select do |wordcount|
  #       binding.pry
  #     wordcount.character_id == self.id
  #   end
  #
  #   id_arr.map {|id| Chapter.chapter_id_to_film(id)}.uniq
  # end

end # end of Character class


# 1. array_of_all_characters (total, per movie)
# 2. array_of_all_characters.uniq (total, per movie)
# 3.
