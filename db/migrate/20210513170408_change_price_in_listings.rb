class ChangePriceInListings < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :price, "boolean USING CAST(price AS boolean)"
    change_column :listings, :price, :boolean
  end
end
