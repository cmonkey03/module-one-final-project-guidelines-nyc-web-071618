require 'pry'
require 'csv'

# Chapter.delete_all
# Character.delete_all
# Wordcount.delete_all


CSV.read("db/concerns/WordsByCharacter.csv").each do |csv_row|
  new_character = Character.create(name:csv_row[2],csv_row[3])
  new_chapter = Chapter.new(csv_row[1],csv_row[0])
  binding.pry
  Wordcount.new(csv_row[4],new_character,chapter:new_chapter,character_id:new_character.id,chapter_id:new_chapter.id)
end
