class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |table|
      table.string :name
      table.string :film
    end
  end
end
