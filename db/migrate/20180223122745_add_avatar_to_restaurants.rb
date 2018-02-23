class AddAvatarToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :avatar, :string
  end
end
