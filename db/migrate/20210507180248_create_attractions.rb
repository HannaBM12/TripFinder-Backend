class CreateAttractions < ActiveRecord::Migration[6.1]
  
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :location
      t.float :price
      t.string :video
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
