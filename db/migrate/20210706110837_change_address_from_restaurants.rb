class ChangeAddressFromRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :address, :string
  end
end
