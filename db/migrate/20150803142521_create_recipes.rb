class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :photo_url
      t.text :directions
      t.text :ingredients
      t.text :notes
      t.timestamps null: false
    end
  end
end
