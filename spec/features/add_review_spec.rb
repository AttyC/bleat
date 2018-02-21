require 'rails_helper'

RSpec.describe "Add review", :type => :feature do
  feature 'Create Review' do
    scenario 'create one review for a restaurant' do
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      within('div#reviews') {expect(page).to have_content('2')}
      within('div#reviews') {expect(page).to have_content('really good!!')}
    end
  end
  feature 'Display Reviews' do
    scenario 'two reviews are displayed on the restaurant page' do
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      create_review(5, 'terrible rat problem!')
      within('div#reviews') {expect(page).to have_content('5')}
      within('div#reviews') {expect(page).to have_content('terrible rat problem!')}
    end
  end
end
