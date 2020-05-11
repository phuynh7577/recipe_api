class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :difficulty, default: "Easy"
      t.integer :likes, default: 0
      t.string :image, default: "https://img.clipartlook.com/dog-dry-food-bowl-dog-food-clipart-416_416.jpg"
      t.string :ingredients, array: true, default: []
      t.string :instructions

      t.timestamps
    end
  end
end
