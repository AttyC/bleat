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

  end
end
