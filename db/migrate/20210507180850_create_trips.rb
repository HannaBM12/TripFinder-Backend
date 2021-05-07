class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :date
      t.integer :quantity
      t.string :reviews
      t.float :rating
      t.float :total
      t.references :client, null: false, foreign_key: true
      t.references :attraction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
