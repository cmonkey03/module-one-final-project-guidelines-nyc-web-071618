class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |table|
      table.string :name
      table.string :race
    end
  end
end
