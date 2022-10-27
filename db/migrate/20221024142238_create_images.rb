class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :angle1
      t.string :angle2
      t.string :angle3
      t.string :thumbnail
    end
  end
end
