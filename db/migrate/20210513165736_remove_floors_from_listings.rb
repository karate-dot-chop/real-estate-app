class RemoveFloorsFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :floors, :string
  end
end
