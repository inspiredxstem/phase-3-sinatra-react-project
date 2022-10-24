class CreateFurnitures < ActiveRecord::Migration[6.1]
  def change
    create_table :furnitures do |t|
      t.string :name
      t.string :designer
      t.string :material
      t.integer :price
      t.string :dimensions
      t.string :origin
      t.integer :inventory

      # Foreign Key
      t.integer :category_id
      t.integer :image_id
    end
  end
end
