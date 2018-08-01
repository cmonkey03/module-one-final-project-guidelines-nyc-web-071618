require 'pry'
require 'csv'

# Chapter.delete_all
# Character.delete_all
# Wordcount.delete_all

unique_chapters = []

CSV.read("db/concerns/WordsByCharacter.csv").each do |csv_row|
  unless unique_chapters.include?(csv_row[1])
    unique_chapters << csv_row[1]
    Chapter.create(name: csv_row[1],film: csv_row[0])
  end
end

unique_characters = []

CSV.read("db/concerns/WordsByCharacter.csv").each do |csv_row|
  unless unique_characters.include?(csv_row[2])
    unique_characters << csv_row[2]
    Character.create(name: csv_row[2],race: csv_row[3])
  end
end

# CSV.read("db/")
