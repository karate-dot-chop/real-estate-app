class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.text :description
      t.string :year_built
      t.string :square_feet
      t.string :bedrooms
      t.string :bathrooms
      t.string :floors
      t.boolean :availability
      t.string :address
      t.string :price

      t.timestamps
    end
  end
end
