class RemoveReviewerFromReviews < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :reviewer
  end
end
