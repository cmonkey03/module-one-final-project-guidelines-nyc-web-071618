class RemoveCharacterAndChapterFromWordcount < ActiveRecord::Migration[5.0]
  def change
    remove_column :wordcounts, :character
    remove_column :wordcounts, :chapter
  end
end
