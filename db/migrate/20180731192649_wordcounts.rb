class Wordcounts < ActiveRecord::Migration[5.0]
  def change
    create_table :wordcounts do |table|
      table.integer :count
      table.string :character
      table.string :chapter
      table.integer :character_id
      table.integer :chapter_id
    end
  end
end
