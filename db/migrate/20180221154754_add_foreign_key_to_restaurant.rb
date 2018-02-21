class AddForeignKeyToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :restaurants, :users, column: :owner_id
  end
end
