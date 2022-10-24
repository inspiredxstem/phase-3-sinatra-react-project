class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string :name
      t.integer :quantity
      t.integer :total_cost
      
      #Foreign
      t.integer :furniture_id
    end
  end
end
