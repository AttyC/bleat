def create_restaurant(name, description)
  visit '/restaurants'
  click_on 'New restaurant'
  fill_in 'restaurant[name]', with: name
  fill_in 'restaurant[description]', with: description
  click_button 'Create Restaurant'
end

def create_review(rating, comment)
  click_on 'Add Review'
  fill_in 'review[rating]', with: rating
  fill_in 'review[comment]', with: comment
  click_button 'Create Review'
end
