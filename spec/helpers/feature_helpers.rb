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

def sign_up
  visit '/'
  click_on 'Login'
  click_on 'Sign up'
  fill_in 'user[email]', with: 'new_user@abc.com'
  fill_in 'user[password]', with: 'password'
  fill_in 'user[password_confirmation]', with: 'password'
  click_button 'Sign up'
end
