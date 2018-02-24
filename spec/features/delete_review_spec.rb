require 'rails_helper'

RSpec.describe "Delete review", :type => :feature do
  feature 'User can delete review successfully when' do
    scenario 'logged in user owns review' do
      sign_up(email='restaurant_owner@example.com')
      create_restaurant('Testaurant', 'Delicious')
      sign_out
      sign_up(email="reviewer@example.com")
      visit '/restaurants'
      click_on 'Testaurant'
      create_review(4, 'really good!!')
      click_on 'Remove Review'
      expect(page).not_to have_content('really good!!')
    end
  end
  feature 'User cannot delete review when' do
    scenario 'user does not own review' do
      sign_up(email='restaurant_owner@example.com')
      create_restaurant('Testaurant', 'Delicious')
      sign_out
      sign_up(email="reviewer@example.com")
      visit '/restaurants'
      click_on 'Testaurant'
      create_review(4, 'really good!!')
      sign_out
      visit '/restaurants'
      click_on 'Testaurant'
      expect(page).not_to have_content('Remove Review')
    end
  end
end
