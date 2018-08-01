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
  end

end


# 1. array_of_all_characters (total, per movie)
# 2. array_of_all_characters.uniq (total, per movie)
# 3.
