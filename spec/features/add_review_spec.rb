require 'rails_helper'

RSpec.describe "Add review", :type => :feature do
  feature 'Create Review' do
    scenario 'create one review for a restaurant' do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      within('td.rating1') {expect(page).to have_content('2')}
      within('td.review1') {expect(page).to have_content('really good!!')}
    end

    scenario 'create one review for a restaurant and check the reviewer is displayed' do
      sign_up(email='bob@bobsbananas.com')
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      within('td.reviewer') {expect(page).to have_content('bob@bobsbananas.com')}
    end

    scenario 'user can only review a restaurant once' do
      sign_up(email='restauranteur@example.com')
      create_restaurant('Testaurant', 'Delicious')
      sign_out
      sign_up(email='reviewer@example.com')
      visit '/restaurants'
      click_on 'Testaurant'
      create_review(2, 'this place was nice the first time')
      create_review(3, 'not so good the second time')
      expect(page).to have_content("You've already reviewed this restaurant!")
      visit '/restaurants'
      click_on 'Testaurant'
      expect(page).to have_content('this place was nice the first time')
      expect(page).not_to have_content('not so good the second time')
    end

  end
end
