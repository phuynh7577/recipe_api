class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :difficulty, array: true, default: ["Easy", "Medium", "Hard"]
      t.integer :likes, default: 0
      t.string :image
      t.string :ingredients, array: true, default: []
      t.string :instructions

      t.timestamps
    end
  end
end
