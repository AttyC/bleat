class AddForeignKeyToReview < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :reviews, :users, column: :reviewer_id
  end
end
