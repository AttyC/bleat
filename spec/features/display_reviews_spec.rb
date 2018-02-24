require 'rails_helper'

RSpec.describe "Display Reviews", :type => :feature do
  feature 'Show reviews for one restaurant ' do
    scenario 'when on restaurant index page' do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      visit '/restaurants'
      within('td.review') {expect(page).to have_content('really good!!')}
    end
  end
  feature 'Show reviews for two restaurants' do
    scenario 'when on restaurant index page' do
      sign_up(email='restaurant_owner@example.com')
      create_restaurant('Testaurant', 'Delicious')
      create_restaurant('Fancy House', 'OMGeezies!')
      sign_out
      sign_up(email="reviewer@example.com")
      visit '/restaurants'
      click_on 'Testaurant'
      create_review(1, 'terrible rat problem!')
      expect(page).to have_content('terrible rat problem!')
      click_on 'Back'
      click_on 'Fancy House'
      create_review(5, 'so Freaking Fancy!!')
      expect(page).to have_content('so Freaking Fancy!!')
    end
  end
  feature 'Delete review' do
    scenario 'when on resturant show page' do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      click_on 'remove_review_1'
      expect(page).not_to have_content('really good!!')
    end
  end
end
