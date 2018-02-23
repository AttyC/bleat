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
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      create_review(5, 'terrible rat problem!')
      within('td.rating2') {expect(page).to have_content('5')}
      within('td.review2') {expect(page).to have_content('terrible rat problem!')}
    end
  end
  feature 'Delete review' do
    scenario 'when on resturant show page' do
      sign_up
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      create_review(5, 'terrible rat problem!')
      click_on 'Remove Review 1'
      expect(page).not_to have_content('really good!!')
    end
  end
end
