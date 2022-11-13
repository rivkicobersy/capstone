class CreateFavRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :fav_recipes do |t|
      t.string :uri
      t.string :url
      t.string :image
      t.string :label
      t.integer :user_id
      t.string :ingredientsFood
      t.string :ingredientsImage

      t.timestamps
    end
  end
end
