class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :category
      t.integer :rating
      t.integer :max_travellers
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
